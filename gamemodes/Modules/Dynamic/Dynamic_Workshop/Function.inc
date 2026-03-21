forward Workshop_Load();
public Workshop_Load()
{
	new id, rowcount = cache_num_rows();
	if(rowcount)
	{
		for(new x; x < rowcount; x ++)
		{
			cache_get_value_name_int(x, "ID", id);
			
			cache_get_value_name(x, "Owner", WorkshopData[id][wsOwner]);
			cache_get_value_name(x, "Name", WorkshopData[id][wsName]);
			
			cache_get_value_name_int(x, "OwnerID", WorkshopData[id][wsOwnerID]);
			cache_get_value_name_int(x, "Component", WorkshopData[id][wsComponent]);
			cache_get_value_name_int(x, "Status", WorkshopData[id][wsStatus]);
			cache_get_value_name_int(x, "Money", WorkshopData[id][wsMoney]);

			cache_get_value_name_float(x, "posX", WorkshopData[id][wsPos][0]);
			cache_get_value_name_float(x, "posY", WorkshopData[id][wsPos][1]);
			cache_get_value_name_float(x, "posZ", WorkshopData[id][wsPos][2]);
			for(new z = 0; z < MAX_WORKSHOP_EMPLOYE; z ++)
			{
				new string[64];
				format(string, sizeof(string), "employe%d", z);
				cache_get_value_name(x, string, wsEmploy[id][z]);
			}
            if(WorkshopData[id][wsStatus]) {
                WorkshopData[id][wsStatus] = false;
            }

			Workshop_Refresh(id);
			Iter_Add(Workshop, id);
		}
		printf("[Dynamic Workshop] Jumlah dynamic workshop yang dimuat %d", rowcount);
	}
	return 1;
}

stock InsertWorkshopLogs(playerid, activity[], workshopid)
{
    workshopid = IsPlayerInRangeAreaWorkshop(playerid, 10.0);
    if(workshopid > -1)
    {
        if(IsWorkshopOwner(playerid, workshopid) || IsWorkshopEmploye(playerid, workshopid))
        {
            new query[1024];
            mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `workshoplogs` SET `WorkshopID`=%d, `Name`='%s', `Activity`='%s', `Date`=%d", workshopid, AccountData[playerid][pName], activity, gettime());
            mysql_tquery(g_SQL, query);
        }
    }
    return 1;
}

stock ShowWorkshopLogs(playerid, id)
{
    if (id > -1)
    {
        if (IsWorkshopOwner(playerid, id))
        {
            new page = WorkshopLogPage[playerid]; // Menyimpan halaman saat ini untuk player
            new query[128], rowcount, Cache:execute;
            mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `workshoplogs` WHERE `WorkshopID`=%d ORDER BY `Date` ASC", id);
            execute = mysql_query(g_SQL, query, true);

            rowcount = cache_num_rows();
            if (rowcount)
            {
                new sha[2046], string[255], name[MAX_PLAYER_NAME], reason[128];
                new startIndex = page * 15, endIndex = startIndex + 15, count = 0;

                strcat(sha, "No\tName\tActivity\n");
                for (new i = startIndex; i < endIndex && i < rowcount; i++)
                {
                    cache_get_value_name(i, "Name", name);
                    cache_get_value_name(i, "Activity", reason);

                    format(string, sizeof(string), "%d\t%s\t%s\n", i + 1, name, reason);
                    strcat(sha, string);

                    WorkshopLogList[playerid][count++] = i; // Simpan index data untuk referensi
                }

                if (count)
                {
                    format(string, sizeof(string), ""YELLOW">> Hapus Semua Logs\n");
                    strcat(sha, string);
                    
                    if (count == 15) strcat(sha, ""LIGHTGREEN">> Next Page\t\n");
                    if (page > 0) strcat(sha, ""LIGHTGOLDENROD"<< Previous Page\t\n");

                    Dialog_Show(playerid, WORKSHOP_LOGS, DIALOG_STYLE_TABLIST_HEADERS, "Workshop Logs", sha, "Select", "Cancel");
                }
                else
                {
                    Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, "Workshop Logs", "Tidak ada log ditemukan.", "Close", "");
                }
            }
            else
            {
                Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, "Workshop Logs", "Tidak ada log ditemukan.", "Close", "");
            }

            cache_delete(execute);
        }
        else
        {
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pekerja atau pemilik Workshop ini!");
        }
    }
    return 1;
}

stock ShowWorkshopLocation(playerid)
{
    new page = WorkshopPage[playerid],
        sha[1046],
        string[525],
        count = 0,
        startIndex = page * 15,
        endIndex = startIndex + 15
    ;

    strcat(sha, "No\tWorkshop Name(Status)\tJarak\n");
    for(new i = startIndex; i < endIndex && i < MAX_WORKSHOP; i ++) if(WorkshopData[i][wsPos][0] != 0.0)
    {
        format(string, sizeof(string), "%d\t%s (%s)\t"YELLOW"%.0f m\n", i, WorkshopData[i][wsName], (WorkshopData[i][wsStatus] == 1 ? ""GREEN"Open"WHITE"" : ""RED"Closed"WHITE""), GetPlayerDistanceFromPoint(playerid, WorkshopData[i][wsPos][0], WorkshopData[i][wsPos][1], WorkshopData[i][wsPos][2]));
        strcat(sha, string);
        WorkshopListPage[playerid][count ++] = i;
    }

    if(count)
    {
        if(count == 15) strcat(sha, ""LIGHTGREEN">> Next Page\t\n");
        if(page != 0) strcat(sha, ""LIGHTGOLDENROD"<< Previous Page\t\n");
        Dialog_Show(playerid, WORKSHOP_GPS, DIALOG_STYLE_TABLIST_HEADERS, ""TTR""SERVER_NAME""WHITE"- Workshop Location", sha, "Select", "Cancel");
        return 1;
    }
    else Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, ""TTR""SERVER_NAME""WHITE"- Workshop Location", "Tidak ada data Workshop yang ditemukan...", "Close", "");
    return 1;
}

Dialog:WORKSHOP_LOGS(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    if(listitem == -1) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda belum memilih listitem!");
    new id = AccountData[playerid][pInWs];
    if(id == -1) return 0;

    if(strfind(inputtext, "<< Previous Page") != -1)
    {
        WorkshopLogPage[playerid] --;
        ShowWorkshopLogs(playerid, id);
        return 1;
    }
    
    if(strfind(inputtext, ">> Next Page") != -1)
    {
        new nextPage = WorkshopLogPage[playerid] + 1;
        new startIndex = nextPage * 15;

        // Query untuk memeriksa data di halaman berikutnya
        new query[128];
        mysql_format(g_SQL, query, sizeof(query), "SELECT 1 FROM `workshoplogs` WHERE `WorkshopID`=%d ORDER BY `Date` ASC LIMIT %d, 1", id, startIndex);
        new Cache:checkResult = mysql_query(g_SQL, query, true);

        if (cache_num_rows() > 0) // Jika ada data di halaman berikutnya
        {
            WorkshopLogPage[playerid]++; // Pindah ke halaman berikutnya
            ShowWorkshopLogs(playerid, id); // Tampilkan data halaman berikutnya
        }
        else
        {
            ShowWorkshopLogs(playerid, id); // Tampilkan ulang halaman saat ini
            ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada halaman berikutnya!");
        }
        
        cache_delete(checkResult); // Hapus cache hasil query validasi
        return 1;
    }

    if(strfind(inputtext, ">> Hapus Semua Logs") != -1)
    {
        SetPVarInt(playerid, "wsLogsID", id);
        Dialog_Show(playerid, WORKSHOP_DELETELOGS, DIALOG_STYLE_MSGBOX, ""TTR""SERVER_NAME""WHITE" - Hapus All Logs",
        "Apakah anda yakin ingin menghapus semua logs workshop %s?", "Delete", "Cancel", WorkshopData[id][wsName]);
        return 1;
    }

    // Validasi jika tidak ada yang dipilih
    if (listitem == -1) 
        return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda belum memilih listitem!");

    // Ambil index dari log yang dipilih pada halaman ini
    new selectedIndex = WorkshopLogList[playerid][listitem];
    new query[100];
    mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `workshoplogs` WHERE `WorkshopID`=%d ORDER BY `Date` ASC", id);
    new Cache: result = mysql_query(g_SQL, query, true);

    if (cache_num_rows() > 0)
    {
        if (selectedIndex >= 0 && selectedIndex < cache_num_rows())
        {
            cache_get_value_name_int(selectedIndex, "ID", WorkshopLogs[playerid][workshoptempID]);
            cache_get_value_name_int(selectedIndex, "Date", WorkshopLogs[playerid][workshoptempDate]);
            cache_get_value_name(selectedIndex, "Name", WorkshopLogs[playerid][workshoptempName]);
            cache_get_value_name(selectedIndex, "Activity", WorkshopLogs[playerid][workshoptempReason]);

            new shstr[525];
            format(shstr, sizeof(shstr), ""WHITE"Workshop %s Logs:\
            \n"WHITE"Name Member Activity:"GRAY" %s\
            \n"WHITE"Activity: "GRAY"%s"WHITE" | Date: "GRAY"%s\
            \n\n"WHITE"Apakah anda yakin ingin menghapus logs tersebut?", WorkshopData[id][wsName], WorkshopLogs[playerid][workshoptempName], WorkshopLogs[playerid][workshoptempReason], ReturnDate(WorkshopLogs[playerid][workshoptempDate]));

            Dialog_Show(playerid, WORKSHOP_LOGSDELETE, DIALOG_STYLE_MSGBOX, "Workshop > Logs Info", shstr, "Delete", "Cancel");
        }
    }

    cache_delete(result);
    return 1;
}

Dialog:WORKSHOP_DELETELOGS(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        DeletePVar(playerid, "wsLogsID");
        callcmd::workshopmenu(playerid, "");
        return 1;
    }

    new id = GetPVarInt(playerid, "wsLogsID");
    if(id == -1) return 0;

    mysql_tquery(g_SQL, sprintf("DELETE FROM `workshoplogs` WHERE `WorkshopID`=%d", id));
    ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menghapus semua logs workshop!");
    DeletePVar(playerid, "wsLogsID");
    return 1;
}

Dialog:WORKSHOP_LOGSDELETE(playerid, response, listitem, inputtext[])
{
    new id = AccountData[playerid][pInWs];
    if(id == -1) return 0;

    if(!response)
    {
        ShowWorkshopLogs(playerid, id);

        WorkshopLogs[playerid][workshoptempID] = 0;
        WorkshopLogs[playerid][workshoptempDate] = 0;
        WorkshopLogs[playerid][workshoptempName] = EOS;
        WorkshopLogs[playerid][workshoptempReason] = EOS;
        return 1;
    }

    new query[100];
    mysql_format(g_SQL, query, sizeof(query), "DELETE FROM `workshoplogs` WHERE `ID`=%d AND `WorkshopID`=%d", WorkshopLogs[playerid][workshoptempID], id);
    mysql_tquery(g_SQL, query, "OnWorkshopLogsDelete", "d", playerid);
    return 1;
}

Function: OnWorkshopLogsDelete(playerid)
{
    SendCustomMessage(playerid, "WORKSHOP", "Anda berhasil menghapus logs id %d", WorkshopLogs[playerid][workshoptempID]);
    WorkshopLogs[playerid][workshoptempID] = 0;
    WorkshopLogs[playerid][workshoptempDate] = 0;
    WorkshopLogs[playerid][workshoptempName] = EOS;
    WorkshopLogs[playerid][workshoptempReason] = EOS;

    ShowWorkshopLogs(playerid, AccountData[playerid][pInWs]);
    return 1;
}

Dialog:WORKSHOP_GPS(playerid, response, listitem, inputtext[])
{
	if(!response)
	{
		WorkshopPage[playerid] = 0;
		return ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Lokasi",
        "Lokasi Umum\
        \n"GRAY"Lokasi Pekerjaan\
        \nLokasi Hobi\
        \n"GRAY"Lokasi Pertokoan\
        \nLokasi Rental\
        \n"GRAY"Business Location\
        \nWorkshop Location\
        \n"GRAY"ATM Terdekat\
        \nGarasi Umum Terdekat\
        \n"GRAY"Tong Sampah Terdekat\
        \nWarung Terdekat\
        \n"GRAY"Pom Bensin Terdekat\
        \nBengkel Modshop\
        \n"GRAY"Rumah Saya\
        \n"LIGHTGOLDENROD"(Disable Checkpoint)\
        \n"LIGHTGOLDENROD"(Disable Shareloc)", "Pilih", "Batal");
	}
	new index = WorkshopListPage[playerid][listitem];
	if(strfind(inputtext, "<< Previous page") != -1)
	{
		WorkshopPage[playerid] --;
		ShowWorkshopLocation(playerid);
		return 1;
	}
	else if(strfind(inputtext, ">> Next page") != -1)
	{
		new nextPage = WorkshopPage[playerid] + 1;
		new startIndex = nextPage * 15;
		if(WorkshopData[startIndex][wsPos][0] != 0.0)
		{
			WorkshopPage[playerid] ++;
			ShowWorkshopLocation(playerid);
		}
		else
		{
			WorkshopPage[playerid] = WorkshopPage[playerid];
			ShowWorkshopLocation(playerid);
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada halaman lagi di berikutnya!");
		}
	}
	else
	{
		new Float: x = WorkshopData[index][wsPos][0],
			Float: y = WorkshopData[index][wsPos][1],
			Float: z = WorkshopData[index][wsPos][2];
		
        SetPlayerRaceCheckpoint(playerid, 1, x, y, z, 0.0, 0.0, 0.0, 5.0);
        pMapCP[playerid] = true;
		Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");

		for(new i = 0; i < MAX_WORKSHOP; i ++) {
			WorkshopListPage[playerid][i] = -1;
			WorkshopPage[playerid] = 0;
		}
	}
	return 1;
}

Workshop_Refresh(id)
{
	if(id != -1)
	{
		if(DestroyDynamic3DTextLabel(WorkshopData[id][wsLabel]))
			WorkshopData[id][wsLabel] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;

		if(DestroyDynamicPickup(WorkshopData[id][wsPickup]))
			WorkshopData[id][wsPickup] = STREAMER_TAG_PICKUP: INVALID_STREAMER_ID;

		if(WorkshopData[id][wsPos][0] != 0.0)
		{
            new string[500];
            format(string, sizeof(string), ""LIGHTGREY"[Workshop %d]\n"LIGHTGREEN"Workshop Name:"WHITE" %s\n"LIGHTGREEN"Workshop Owner:"WHITE" %s\n"GREEN"[Y]"WHITE"Untuk Membuka Menu WS\n"WHITE"Status: %s", id, WorkshopData[id][wsName], WorkshopData[id][wsOwner], WorkshopData[id][wsStatus] == 1 ? ""GREEN"Open" : ""RED"Closed");
			WorkshopData[id][wsLabel] = CreateDynamic3DTextLabel(string, -1, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2], 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
			WorkshopData[id][wsPickup] = CreateDynamicPickup(1239, 23, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2], 0, 0, -1, 15.0);
		}
	}
	return 1;
}

Workshop_Save(id)
{
	new query[2046];
	format(query, sizeof(query), "UPDATE `workshop` SET `Owner`='%s', `OwnerID`=%d, `Name`='%s', `Component`=%d, `Money`=%d, `Status`=%d, `posX`='%f', `posY`='%f', `posZ`='%f'",
	WorkshopData[id][wsOwner],
	WorkshopData[id][wsOwnerID],
	WorkshopData[id][wsName],
	WorkshopData[id][wsComponent],
	WorkshopData[id][wsMoney],
	WorkshopData[id][wsStatus],
	WorkshopData[id][wsPos][0],
	WorkshopData[id][wsPos][1],
	WorkshopData[id][wsPos][2]
	);
	for(new index = 0; index < MAX_WORKSHOP_EMPLOYE; index ++)
	{
		format(query, sizeof(query), "%s, employe%d='%s'", query, index, wsEmploy[id][index]);
	}
	format(query, sizeof(query), "%s WHERE `ID`=%d", query, id);
	return mysql_tquery(g_SQL, query);
}

Workshop_Reset(id)
{
	format(WorkshopData[id][wsOwner], MAX_PLAYER_NAME, "-");
	format(wsEmploy[id][0], MAX_PLAYER_NAME, "-");
	format(wsEmploy[id][1], MAX_PLAYER_NAME, "-");
	format(wsEmploy[id][2], MAX_PLAYER_NAME, "-");
	WorkshopData[id][wsOwnerID] = 0;
	WorkshopData[id][wsComponent] = 0;
	WorkshopData[id][wsMoney] = 0;
	Workshop_Refresh(id);
	return 1;
}

IsWorkshopEmploye(playerid, id)
{
	if(!strcmp(wsEmploy[id][0], AccountData[playerid][pName], true)) return 1;
	if(!strcmp(wsEmploy[id][1], AccountData[playerid][pName], true)) return 1;
	if(!strcmp(wsEmploy[id][2], AccountData[playerid][pName], true)) return 1;
	if(!strcmp(wsEmploy[id][3], AccountData[playerid][pName], true)) return 1;
	if(!strcmp(wsEmploy[id][4], AccountData[playerid][pName], true)) return 1;
	return 0;
}

IsWorkshopOwner(playerid, id)
{
	return (WorkshopData[id][wsOwnerID] == AccountData[playerid][pID] || (!strcmp(WorkshopData[id][wsOwner], AccountData[playerid][pName], true)));
}

ReturnPlayerWorkshopID(playerid, hslot)
{
    new tmpcount;
    if(hslot < 1 && hslot > MAX_WORKSHOP) return -1;
    foreach(new wid : Workshop)
    {
        if(!strcmp(AccountData[playerid][pName], WorkshopData[wid][wsOwner], true))
        {
            tmpcount++;
            if(tmpcount == hslot)
            {
                return wid;
            }
        }
    }
    return -1;
}

GetOwnedWorkshop(playerid)
{
	new tmpcount;
	foreach(new id : Workshop)
	{
		if(!strcmp(WorkshopData[id][wsOwner], AccountData[playerid][pName]) || WorkshopData[id][wsOwnerID] == AccountData[playerid][pID])
		{
			tmpcount ++;
		}
	}
	return tmpcount;
}

IsPlayerNearWorkshop(playerid)
{
	foreach(new id : Workshop) 
	{
		if(IsPlayerInRangeOfPoint(playerid, 3.0, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]))
		{
			return id;
		}
	}
	return -1;
}

IsPlayerInRangeAreaWorkshop(playerid, Float:range)
{
	foreach(new id : Workshop)
	{
		if(IsPlayerInRangeOfPoint(playerid, range, WorkshopData[id][wsPos][0], WorkshopData[id][wsPos][1], WorkshopData[id][wsPos][2]))
		{
			return id;
		}
	}
	return -1;
}

ShowWorkshopMenu(playerid, id)
{
	AccountData[playerid][pMenuType] = 0;
	AccountData[playerid][pInWs] = id;

    Dialog_Show(playerid, WORKSHOP_MENU, DIALOG_STYLE_TABLIST_HEADERS, "Workshop > Menu",
    "Action\tValue\
    \nAdjust Workshop Name\t"GRAY"%s\
    \nWorkshop Status\t"GRAY"%s\
    \nEmploye Menu\t"GRAY"(Manage your employees)\
    \nWorkshop Logs\t"GRAY"(See workshop logs)\
    \nComponent\t"GRAY"(%d/%d)\
    \nMoney\t"LIMEGREEN"%s\
    \nGate Actived\t"GRAY"(%d Actived)", "Select", "Cancel", WorkshopData[id][wsName], WorkshopData[id][wsStatus] == 1 ? "Open" : "Closed", WorkshopData[id][wsComponent], MAX_WORKSHOP_INT, FormatMoney(WorkshopData[id][wsMoney]), GetWorkshopGateCount(id));
	return 1;
}

forward OnWorkshopCreated(id);
public OnWorkshopCreated(id)
{
	Workshop_Save(id);
	return 1;
}

// Dialog & Functions
Dialog:WORKSHOP_COLOR(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    AccountData[playerid][pMechColor1] = floatround(strval(inputtext));

    if(AccountData[playerid][pMechColor1] < 0 || AccountData[playerid][pMechColor1] > 255)
        return Dialog_Show(playerid, WORKSHOP_COLOR, DIALOG_STYLE_INPUT, "Spray Color ID 1", color_string, "Submit", "Cancel");
    
    Dialog_Show(playerid, WORKSHOP_COLOR2, DIALOG_STYLE_INPUT, "Spray Color ID 12", color_string, "Submit", "Cancel");
    return 1;
}

Dialog:WORKSHOP_COLOR2(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    AccountData[playerid][pMechColor2] = floatround(strval(inputtext));

    if(AccountData[playerid][pMechColor2] < 0 || AccountData[playerid][pMechColor2] > 255)
        return Dialog_Show(playerid, WORKSHOP_COLOR2, DIALOG_STYLE_INPUT, "Spray Color ID 2", color_string, "Submit", "Cancel");
    
    if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
    {
        if(Inventory_Count(playerid, "Component") < 40) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
        Inventory_Remove(playerid, "Component", 40);
        ShowItemBox(playerid, "Removed 40x", "Component", 19772);
        SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti warna kendaraan dengan "YELLOW"40 Components.");

        AccountData[playerid][ActivityTime] = 1;
        AccountData[playerid][pMechTimer] = SetTimerEx("SprayCar", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
        PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "SPRAYING CAR");
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        ShowProgressBar(playerid);
        ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
    }
    else
    {
        KillTimer(AccountData[playerid][pMechTimer]);
        HideProgressBar(playerid);
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][ActivityTime] = 0;
        ClearAnimations(playerid);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
        return 1;
    }
    return 1;
}

Dialog:WORKSHOP_PAINTJOB(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    AccountData[playerid][pMechColor1] = floatround(strval(inputtext));

    if(AccountData[playerid][pMechColor1] < 0 || AccountData[playerid][pMechColor1] > 3)
        return Dialog_Show(playerid, WORKSHOP_PAINTJOB, DIALOG_STYLE_INPUT, "Paintjob Car", "Error: Masukkan angka yang valid!\nMasukkan ID Paintjob kendaraan: (0 - 2 | 3 - Remove Paintjob)", "Paintjob", "Cancel");
 
    if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
    {
        if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
        Inventory_Remove(playerid, "Component", 100);
        ShowItemBox(playerid, "Removed 100x", "Component", 19772);
        SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti paintjob kendaraan dengan "YELLOW"100 Components.");

        AccountData[playerid][ActivityTime] = 1;
        AccountData[playerid][pMechTimer] = SetTimerEx("PaintjobCar", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
        PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "PAINTING CAR");
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        ShowProgressBar(playerid);
        ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
    }
    else
    {
        KillTimer(AccountData[playerid][pMechTimer]);
        HideProgressBar(playerid);
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][ActivityTime] = 0;
        ClearAnimations(playerid);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
        return 1;
    }
    return 1;
}

Dialog:WORKSHOP_WHEELS(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::service(playerid, "");
    switch(listitem)
    {
        case 0:
        {
            AccountData[playerid][pMechColor1] = 1025;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            AccountData[playerid][pMechColor1] = 1074;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 2:
        {
            AccountData[playerid][pMechColor1] = 1076;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 3:
        {
            AccountData[playerid][pMechColor1] = 1078;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 4:
        {
            AccountData[playerid][pMechColor1] = 1081;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 5:
        {
            AccountData[playerid][pMechColor1] = 1082;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 6:
        {
            AccountData[playerid][pMechColor1] = 1085;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 7:
        {
            AccountData[playerid][pMechColor1] = 1096;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 8:
        {
            AccountData[playerid][pMechColor1] = 1097;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 9:
        {
            AccountData[playerid][pMechColor1] = 1098;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 10:
        {
            AccountData[playerid][pMechColor1] = 1084;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 11:
        {
            AccountData[playerid][pMechColor1] = 1073;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 12:
        {
            AccountData[playerid][pMechColor1] = 1075;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 13:
        {
            AccountData[playerid][pMechColor1] = 1077;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 14:
        {
            AccountData[playerid][pMechColor1] = 1079;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 15:
        {
            AccountData[playerid][pMechColor1] = 1080;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 16:
        {
            AccountData[playerid][pMechColor1] = 1083;
            AccountData[playerid][pMechColor2] = 0;

            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 65) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                Inventory_Remove(playerid, "Component", 65);
                ShowItemBox(playerid, "Removed 65x", "Component", 19772);
                SendCustomMessage(playerid, "WORKSHOP", "Anda mengganti velg kendaraan dengan "YELLOW"65 Components.");

                AccountData[playerid][ActivityTime] = 1;
                AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "dd", playerid, AccountData[playerid][pMechVeh]);
                PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                ShowProgressBar(playerid);
                ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

Dialog:WORKSHOP_SPOILER(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::service(playerid, "");
    switch(listitem)
    {
        case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)  {
                        AccountData[playerid][pMechColor1] = 1147;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 565)  {
                        AccountData[playerid][pMechColor1] = 1049;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 559)  {
                        AccountData[playerid][pMechColor1] = 1162;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 561)  {
                        AccountData[playerid][pMechColor1] = 1058;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 558)  {
                        AccountData[playerid][pMechColor1] = 1164;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 560)  {
                        AccountData[playerid][pMechColor1] = 1138;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 ||  VehicleModel == 565 ||  VehicleModel == 559 ||  VehicleModel == 561 ||  VehicleModel == 558 ||  VehicleModel == 560)
                {
                    if(VehicleModel == 562)
                    {
                        AccountData[playerid][pMechColor1] = 1146;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 565)
                    {
                        AccountData[playerid][pMechColor1] = 1050;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 559)
                    {
                        AccountData[playerid][pMechColor1] = 1158;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 561)
                    {
                        AccountData[playerid][pMechColor1] = 1060;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 558)
                    {
                        AccountData[playerid][pMechColor1] = 1163;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 560)
                    {
                        AccountData[playerid][pMechColor1] = 1139;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 ||  VehicleModel == 518 ||  VehicleModel == 527 ||  VehicleModel == 415 ||  VehicleModel == 546 ||  VehicleModel == 603 ||  VehicleModel == 426 ||  VehicleModel == 436 ||  VehicleModel == 405 ||  VehicleModel == 477 ||  VehicleModel == 580 ||  VehicleModel == 550 ||  VehicleModel == 549)
                {
                    AccountData[playerid][pMechColor1] = 1001;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 518 || VehicleModel == 415 || VehicleModel == 546 || VehicleModel == 517 || VehicleModel == 603 || VehicleModel == 405 || VehicleModel == 477 || VehicleModel == 580 || VehicleModel == 550 || VehicleModel == 549)
                {
                    AccountData[playerid][pMechColor1] = 1023;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 4:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 518 || VehicleModel == 415 || VehicleModel == 401 || VehicleModel == 517 || VehicleModel == 426 || VehicleModel == 436 || VehicleModel == 477 || VehicleModel == 547 || VehicleModel == 550 || VehicleModel == 549)
                {
                    AccountData[playerid][pMechColor1] = 1003;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 5:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 589 || VehicleModel == 492 || VehicleModel == 547 || VehicleModel == 405)
                {
                    AccountData[playerid][pMechColor1] = 1000;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 6:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 527 || VehicleModel == 542 || VehicleModel == 405)
                {
                    AccountData[playerid][pMechColor1] = 1014;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 7:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 527 || VehicleModel == 542)
                {
                    AccountData[playerid][pMechColor1] = 1015;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 8:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 546 || VehicleModel == 517)
                {
                    AccountData[playerid][pMechColor1] = 1002;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

Dialog:WORKSHOP_HOODS(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::service(playerid, "");
    switch(listitem)
    {
        case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 518 || VehicleModel == 589 || VehicleModel == 492 || VehicleModel == 426 || VehicleModel == 550)
                {
                    AccountData[playerid][pMechColor1] = 1005;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
					ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 402 || VehicleModel == 546 || VehicleModel == 426 || VehicleModel == 550)
                {
                    AccountData[playerid][pMechColor1] = 1004;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
					ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401)
                {
                    AccountData[playerid][pMechColor1] = 1011;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
					ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 549)
                {
                    AccountData[playerid][pMechColor1] = 1012;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
					ApplyAnimationEx(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

Dialog:WORKSHOP_VENTS(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::service(playerid, "");
    switch(listitem)
    {
        case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 518 || VehicleModel == 546 || VehicleModel == 517 || VehicleModel == 603 || VehicleModel == 547 || VehicleModel == 439 || VehicleModel == 550 || VehicleModel == 549)
                {
                    AccountData[playerid][pMechColor1] = 1142;
                    AccountData[playerid][pMechColor2] = 1143;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 518 || VehicleModel == 589 || VehicleModel == 546 || VehicleModel == 517 || VehicleModel == 603 || VehicleModel == 439 || VehicleModel == 550 || VehicleModel == 549)
                {
                    AccountData[playerid][pMechColor1] = 1144;
                    AccountData[playerid][pMechColor2] = 1145;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

Dialog:WORKSHOP_LIGHTS(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::service(playerid, "");
    switch(listitem)
    {
        case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 ||  VehicleModel == 518 ||  VehicleModel == 589 ||  VehicleModel == 400 ||  VehicleModel == 436 ||  VehicleModel == 439)
                {
                    AccountData[playerid][pMechColor1] = 1013;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 589 ||VehicleModel == 603 ||VehicleModel == 400)
                {
                    AccountData[playerid][pMechColor1] = 1024;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

Dialog:WORKSHOP_EXHAUSTS(playerid, response, listitem, inputtex[])
{
    if(!response) return callcmd::service(playerid, "");
    switch(listitem)
    {
        case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 558 || VehicleModel == 561 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
                    {
                        AccountData[playerid][pMechColor1] = 1034;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 565)
                    {
                        AccountData[playerid][pMechColor1] = 1046;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 559)
                    {
                        AccountData[playerid][pMechColor1] = 1065;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 561)
                    {
                        AccountData[playerid][pMechColor1] = 1064;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 560)
                    {
                        AccountData[playerid][pMechColor1] = 1028;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 558)
                    {
                        AccountData[playerid][pMechColor1] = 1089;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 558 || VehicleModel == 561 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
                    {
                        AccountData[playerid][pMechColor1] = 1037;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 565)
                    {
                        AccountData[playerid][pMechColor1] = 1045;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 559)
                    {
                        AccountData[playerid][pMechColor1] = 1066;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 561)
                    {
                        AccountData[playerid][pMechColor1] = 1059;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 560)
                    {
                        AccountData[playerid][pMechColor1] = 1029;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 558)
                    {
                        AccountData[playerid][pMechColor1] = 1092;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 575 || VehicleModel == 534 || VehicleModel == 567 || VehicleModel == 536 || VehicleModel == 576 || VehicleModel == 535)
                {
                    if(VehicleModel == 575)
                    {
                        AccountData[playerid][pMechColor1] = 1044;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 534)
                    {
                        AccountData[playerid][pMechColor1] = 1126;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 567)
                    {
                        AccountData[playerid][pMechColor1] = 1129;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 536)
                    {
                        AccountData[playerid][pMechColor1] = 1104;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 576)
                    {
                        AccountData[playerid][pMechColor1] = 1113;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 535)
                    {
                        AccountData[playerid][pMechColor1] = 1136;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 575 ||  VehicleModel == 534 ||  VehicleModel == 567 ||  VehicleModel == 536 ||  VehicleModel == 576 ||  VehicleModel == 535)
                {
                    if(VehicleModel == 575)
                    {
                        AccountData[playerid][pMechColor1] = 1043;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 534)
                    {
                        AccountData[playerid][pMechColor1] = 1127;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 567)
                    {
                        AccountData[playerid][pMechColor1] = 1132;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 536)
                    {
                        AccountData[playerid][pMechColor1] = 1105;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 576)
                    {
                        AccountData[playerid][pMechColor1] = 1135;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 535)
                    {
                        AccountData[playerid][pMechColor1] = 1114;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 4:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 518 || VehicleModel == 527 || VehicleModel == 542 || VehicleModel == 589 || VehicleModel == 400 || VehicleModel == 517 || VehicleModel == 603 || VehicleModel == 426 || VehicleModel == 547 || VehicleModel == 405 || VehicleModel == 580 || VehicleModel == 550 || VehicleModel == 549 || VehicleModel == 477)
                {
                    AccountData[playerid][pMechColor1] = 1020;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 5:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 527 || VehicleModel == 542 || VehicleModel == 400 || VehicleModel == 426 || VehicleModel == 436 || VehicleModel == 547 || VehicleModel == 405 || VehicleModel == 477)
                {
                    AccountData[playerid][pMechColor1] = 1021;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 6:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 436)
                {
                    AccountData[playerid][pMechColor1] = 1022;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 7:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 518 || VehicleModel == 415 || VehicleModel == 542 || VehicleModel == 546 || VehicleModel == 400 || VehicleModel == 517 || VehicleModel == 603 || VehicleModel == 426 || VehicleModel == 436 || VehicleModel == 547 || VehicleModel == 405 || VehicleModel == 550 || VehicleModel == 549 || VehicleModel == 477)
                {
                    AccountData[playerid][pMechColor1] = 1019;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 8:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 518 || VehicleModel == 415 || VehicleModel == 542 || VehicleModel == 546 || VehicleModel == 400 || VehicleModel == 517 || VehicleModel == 603 || VehicleModel == 426 || VehicleModel == 415 || VehicleModel == 547 || VehicleModel == 405 || VehicleModel == 550 || VehicleModel == 549 || VehicleModel == 477)
                {
                    AccountData[playerid][pMechColor1] = 1018;
                    AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 80);
                    ShowItemBox(playerid, "Removed 80x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"80 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

Dialog:WORKSHOP_FRONTBUMPER(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::service(playerid, "");
    switch(listitem)
    {
        case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
                    {
                        AccountData[playerid][pMechColor1] = 1171;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 565)
                    {
                        AccountData[playerid][pMechColor1] = 1153;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 559)
                    {
                        AccountData[playerid][pMechColor1] = 1160;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 561)
                    {
                        AccountData[playerid][pMechColor1] = 1155;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 558)
                    {
                        AccountData[playerid][pMechColor1] = 1166;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 560)
                    {
                        AccountData[playerid][pMechColor1] = 1169;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
                    {
                        AccountData[playerid][pMechColor1] = 1172;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 565)
                    {
                        AccountData[playerid][pMechColor1] = 1152;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 559)
                    {
                        AccountData[playerid][pMechColor1] = 1173;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 561)
                    {
                        AccountData[playerid][pMechColor1] = 1157;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 558)
                    {
                        AccountData[playerid][pMechColor1] = 1165;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 560)
                    {
                        AccountData[playerid][pMechColor1] = 1170;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 575 || VehicleModel == 534 || VehicleModel == 567 || VehicleModel == 536 || VehicleModel == 576 || VehicleModel == 535)
                {
                    if(VehicleModel == 575)
                    {
                        AccountData[playerid][pMechColor1] = 1174;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 534)
                    {
                        AccountData[playerid][pMechColor1] = 1179;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 567)
                    {
                        AccountData[playerid][pMechColor1] = 1189;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 536)
                    {
                        AccountData[playerid][pMechColor1] = 1182;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 576)
                    {
                        AccountData[playerid][pMechColor1] = 1191;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 535)
                    {
                        AccountData[playerid][pMechColor1] = 1115;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
        case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 575 || VehicleModel == 534 || VehicleModel == 567 || VehicleModel == 536 || VehicleModel == 576 || VehicleModel == 535)
                {
                    if(VehicleModel == 575)
                    {
                        AccountData[playerid][pMechColor1] = 1175;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 534)
                    {
                        AccountData[playerid][pMechColor1] = 1185;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 567)
                    {
                        AccountData[playerid][pMechColor1] = 1188;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 536)
                    {
                        AccountData[playerid][pMechColor1] = 1181;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 576)
                    {
                        AccountData[playerid][pMechColor1] = 1190;
                        AccountData[playerid][pMechColor2] = 0;
                    }
                    if(VehicleModel == 535)
                    {
                        AccountData[playerid][pMechColor1] = 1116;
                        AccountData[playerid][pMechColor2] = 0;
                    }

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
    }
    return 1;
}

Dialog:WORKSHOP_REARBUMPER(playerid, response, listitem, inputtext[])
{
	if(!response) return callcmd::service(playerid, "");
    switch(listitem)
	{
		case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
					{
						AccountData[playerid][pMechColor1] = 1149;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 565)
					{
						AccountData[playerid][pMechColor1] = 1150;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 559)
					{
						AccountData[playerid][pMechColor1] = 1159;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 561)
					{
						AccountData[playerid][pMechColor1] = 1154;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 558)
					{
						AccountData[playerid][pMechColor1] = 1168;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 560)
					{
						AccountData[playerid][pMechColor1] = 1141;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
					{
						AccountData[playerid][pMechColor1] = 1148;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 565)
					{
						AccountData[playerid][pMechColor1] = 1151;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 559)
					{
						AccountData[playerid][pMechColor1] = 1161;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 561)
					{
						AccountData[playerid][pMechColor1] = 1156;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 558)
					{
						AccountData[playerid][pMechColor1] = 1167;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 560)
					{
						AccountData[playerid][pMechColor1] = 1140;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 575 || VehicleModel == 534 || VehicleModel == 567 || VehicleModel == 536 || VehicleModel == 576 || VehicleModel == 535)
                {
                    if(VehicleModel == 575)
					{
						AccountData[playerid][pMechColor1] = 1176;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 534)
					{
						AccountData[playerid][pMechColor1] = 1180;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 567)
					{
						AccountData[playerid][pMechColor1] = 1187;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 536)
					{
						AccountData[playerid][pMechColor1] = 1184;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 576)
					{
						AccountData[playerid][pMechColor1] = 1192;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 535)
					{
						AccountData[playerid][pMechColor1] = 1109;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 575 || VehicleModel == 534 || VehicleModel == 567 || VehicleModel == 536 || VehicleModel == 576 || VehicleModel == 535)
                {
                    if(VehicleModel == 575)
					{
						AccountData[playerid][pMechColor1] = 1177;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 534)
					{
						AccountData[playerid][pMechColor1] = 1178;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 567)
					{
						AccountData[playerid][pMechColor1] = 1186;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 536)
					{
						AccountData[playerid][pMechColor1] = 1183;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 576)
					{
						AccountData[playerid][pMechColor1] = 1193;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 535)
					{
						AccountData[playerid][pMechColor1] = 1110;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 100);
                    ShowItemBox(playerid, "Removed 100x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"100 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
	}
	return 1;
}

Dialog:WORKSHOP_ROOFS(playerid, response, listitem, inputtext[])
{
	if(!response) return callcmd::service(playerid, "");
    switch(listitem)
	{
		case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
					{
						AccountData[playerid][pMechColor1] = 1038;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 565)
					{
						AccountData[playerid][pMechColor1] = 1054;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 559)
					{
						AccountData[playerid][pMechColor1] = 1067;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 561)
					{
						AccountData[playerid][pMechColor1] = 1055;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 558)
					{
						AccountData[playerid][pMechColor1] = 1088;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 560)
					{
						AccountData[playerid][pMechColor1] = 1032;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "MISC", "BNG_WNDW", 4.1,1,1,1,1,1,1); // Ngintip
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
					{
						AccountData[playerid][pMechColor1] = 1038;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 565)
					{
						AccountData[playerid][pMechColor1] = 1053;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 559)
					{
						AccountData[playerid][pMechColor1] = 1068;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 561)
					{
						AccountData[playerid][pMechColor1] = 1061;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 558)
					{
						AccountData[playerid][pMechColor1] = 1091;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 560)
					{
						AccountData[playerid][pMechColor1] = 1033;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "MISC", "BNG_WNDW", 4.1,1,1,1,1,1,1); // Ngintip
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 567 || VehicleModel == 536)
                {
                    if(VehicleModel == 567)
					{
						AccountData[playerid][pMechColor1] = 1130;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 536)
					{
						AccountData[playerid][pMechColor1] = 1128;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "MISC", "BNG_WNDW", 4.1,1,1,1,1,1,1); // Ngintip
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 567 || VehicleModel == 536)
                {
                    if(VehicleModel == 567)
					{
						AccountData[playerid][pMechColor1] = 1131;
						AccountData[playerid][pMechColor2] = 0;
					}
					if(VehicleModel == 536)
					{
						AccountData[playerid][pMechColor1] = 1103;
						AccountData[playerid][pMechColor2] = 0;
					}

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "MISC", "BNG_WNDW", 4.1,1,1,1,1,1,1); // Ngintip
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 4:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 518 || VehicleModel == 589 || VehicleModel == 492 || VehicleModel == 546 || VehicleModel == 603 || VehicleModel == 426 || VehicleModel == 436 || VehicleModel == 580 || VehicleModel == 550 || VehicleModel == 477)
                {
					AccountData[playerid][pMechColor1] = 1006;
					AccountData[playerid][pMechColor2] = 0;

                    Inventory_Remove(playerid, "Component", 70);
                    ShowItemBox(playerid, "Removed 70x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"70 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "MISC", "BNG_WNDW", 4.1,1,1,1,1,1,1); // Ngintip
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
	}
	return 1;
}

Dialog:WORKSHOP_SIDESKIRT(playerid, response, listitem, inputtext[])
{
	if(!response) return callcmd::service(playerid, "");
    switch(listitem)
	{
		case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
					{
						AccountData[playerid][pMechColor1] = 1036;
						AccountData[playerid][pMechColor2] = 1040;
					}
					if(VehicleModel == 565)
					{
						AccountData[playerid][pMechColor1] = 1047;
						AccountData[playerid][pMechColor2] = 1051;
					}
					if(VehicleModel == 559)
					{
						AccountData[playerid][pMechColor1] = 1069;
						AccountData[playerid][pMechColor2] = 1071;
					}
					if(VehicleModel == 561)
					{
						AccountData[playerid][pMechColor1] = 1056;
						AccountData[playerid][pMechColor2] = 1062;
					}
					if(VehicleModel == 558)
					{
						AccountData[playerid][pMechColor1] = 1090;
						AccountData[playerid][pMechColor2] = 1094;
					}
					if(VehicleModel == 560)
					{
						AccountData[playerid][pMechColor1] = 1026;
						AccountData[playerid][pMechColor2] = 1027;
					}

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 562 || VehicleModel == 565 || VehicleModel == 559 || VehicleModel == 561 || VehicleModel == 558 || VehicleModel == 560)
                {
                    if(VehicleModel == 562)
					{
						AccountData[playerid][pMechColor1] = 1039;
						AccountData[playerid][pMechColor2] = 1041;
					}
					if(VehicleModel == 565)
					{
						AccountData[playerid][pMechColor1] = 1048;
						AccountData[playerid][pMechColor2] = 1052;
					}
					if(VehicleModel == 559)
					{
						AccountData[playerid][pMechColor1] = 1070;
						AccountData[playerid][pMechColor2] = 1072;
					}
					if(VehicleModel == 561)
					{
						AccountData[playerid][pMechColor1] = 1057;
						AccountData[playerid][pMechColor2] = 1063;
					}
					if(VehicleModel == 558)
					{
						AccountData[playerid][pMechColor1] = 1093;
						AccountData[playerid][pMechColor2] = 1095;
					}
					if(VehicleModel == 560)
					{
						AccountData[playerid][pMechColor1] = 1031;
						AccountData[playerid][pMechColor2] = 1030;
					}

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 575 || VehicleModel == 536 || VehicleModel == 576 || VehicleModel == 567)
                {
                    if(VehicleModel == 575)
					{
						AccountData[playerid][pMechColor1] = 1042;
						AccountData[playerid][pMechColor2] = 1099;
					}
					if(VehicleModel == 536)
					{
						AccountData[playerid][pMechColor1] = 1108;
						AccountData[playerid][pMechColor2] = 1107;
					}
					if(VehicleModel == 576)
					{
						AccountData[playerid][pMechColor1] = 1134;
						AccountData[playerid][pMechColor2] = 1137;
					}
					if(VehicleModel == 567)
					{
						AccountData[playerid][pMechColor1] = 1102;
						AccountData[playerid][pMechColor2] = 1133;
					}

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 534)
                {
					AccountData[playerid][pMechColor1] = 1102;
					AccountData[playerid][pMechColor2] = 1101;

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 4:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 534)
                {
					AccountData[playerid][pMechColor1] = 1106;
					AccountData[playerid][pMechColor2] = 1124;

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 5:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 535)
                {
					AccountData[playerid][pMechColor1] = 1118;
					AccountData[playerid][pMechColor2] = 1120;

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 6:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 535)
                {
					AccountData[playerid][pMechColor1] = 1119;
					AccountData[playerid][pMechColor2] = 1121;

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 7:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 90) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 401 || VehicleModel == 518 || VehicleModel == 527 || VehicleModel == 415 || VehicleModel == 589 || VehicleModel == 546 || VehicleModel == 517 || VehicleModel == 603 || VehicleModel == 436 || VehicleModel == 439 || VehicleModel == 580 || VehicleModel == 549 || VehicleModel == 477)
                {
					AccountData[playerid][pMechColor1] = 1007;
					AccountData[playerid][pMechColor2] = 1017;

                    Inventory_Remove(playerid, "Component", 90);
                    ShowItemBox(playerid, "Removed 90x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"90 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
	}
	return 1;
}

Dialog:WORKSHOP_NEON(playerid, response, listitem, inputtext[])
{
	if(!response) return callcmd::service(playerid, "");
    switch(listitem)
	{
		case 0:
        {
            AccountData[playerid][pMechColor1] = RED_NEON;
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                
				Inventory_Remove(playerid, "Component", 100);
				ShowItemBox(playerid, "Removed 100x", "Component", 19772);
				SendCustomMessage(playerid, "WORKSHOP", "Anda memasang neon merah ke kendaraan. "YELLOW"100 Components.");
				AccountData[playerid][pMechTimer] = SetTimerEx("NeonVehicle", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
				PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "NEON CAR");
				PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
				ShowProgressBar(playerid);
				ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 1:
        {
            AccountData[playerid][pMechColor1] = BLUE_NEON;
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                
				Inventory_Remove(playerid, "Component", 100);
				ShowItemBox(playerid, "Removed 100x", "Component", 19772);
				SendCustomMessage(playerid, "WORKSHOP", "Anda memasang neon biru ke kendaraan. "YELLOW"100 Components.");
				AccountData[playerid][pMechTimer] = SetTimerEx("NeonVehicle", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
				PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "NEON CAR");
				PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
				ShowProgressBar(playerid);
				ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 2:
        {
            AccountData[playerid][pMechColor1] = GREEN_NEON;
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                
				Inventory_Remove(playerid, "Component", 100);
				ShowItemBox(playerid, "Removed 100x", "Component", 19772);
				SendCustomMessage(playerid, "WORKSHOP", "Anda memasang neon hijau ke kendaraan. "YELLOW"100 Components.");
				AccountData[playerid][pMechTimer] = SetTimerEx("NeonVehicle", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
				PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "NEON CAR");
				PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
				ShowProgressBar(playerid);
				ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 3:
        {
            AccountData[playerid][pMechColor1] = YELLOW_NEON;
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                
				Inventory_Remove(playerid, "Component", 100);
				ShowItemBox(playerid, "Removed 100x", "Component", 19772);
				SendCustomMessage(playerid, "WORKSHOP", "Anda memasang neon kuning ke kendaraan. "YELLOW"100 Components.");
				AccountData[playerid][pMechTimer] = SetTimerEx("NeonVehicle", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
				PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "NEON CAR");
				PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
				ShowProgressBar(playerid);
				ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 4:
        {
            AccountData[playerid][pMechColor1] = PINK_NEON;
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                
				Inventory_Remove(playerid, "Component", 100);
				ShowItemBox(playerid, "Removed 100x", "Component", 19772);
				SendCustomMessage(playerid, "WORKSHOP", "Anda memasang neon pink ke kendaraan. "YELLOW"100 Components.");
				AccountData[playerid][pMechTimer] = SetTimerEx("NeonVehicle", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
				PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "NEON CAR");
				PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
				ShowProgressBar(playerid);
				ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 5:
        {
            AccountData[playerid][pMechColor1] = WHITE_NEON;
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                
				Inventory_Remove(playerid, "Component", 100);
				ShowItemBox(playerid, "Removed 100x", "Component", 19772);
				SendCustomMessage(playerid, "WORKSHOP", "Anda memasang neon putih ke kendaraan. "YELLOW"100 Components.");
				AccountData[playerid][pMechTimer] = SetTimerEx("NeonVehicle", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
				PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "NEON CAR");
				PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
				ShowProgressBar(playerid);
				ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 6:
        {
            AccountData[playerid][pMechColor1] = 0;
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                
				Inventory_Remove(playerid, "Component", 100);
				ShowItemBox(playerid, "Removed 100x", "Component", 19772);
				SendCustomMessage(playerid, "WORKSHOP", "Anda melepaskan neon dari kendaraan dengan "YELLOW"100 Components.");
				AccountData[playerid][pMechTimer] = SetTimerEx("NeonVehicle", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
				PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "REMOVING NEON");
				PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
				ShowProgressBar(playerid);
				ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
	}
	return 1;
}

Dialog:WORKSHOP_BULLBARS(playerid, response, listitem, inputtext[])
{
	if(!response) return callcmd::service(playerid, "");
	switch(listitem)
	{
		case 0:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 534)
                {
					AccountData[playerid][pMechColor1] = 1100;
					AccountData[playerid][pMechColor2] = 0;
                
				    Inventory_Remove(playerid, "Component", 50);
                    ShowItemBox(playerid, "Removed 50x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"50 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 1:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 534)
                {
					AccountData[playerid][pMechColor1] = 1123;
					AccountData[playerid][pMechColor2] = 0;
                
				    Inventory_Remove(playerid, "Component", 50);
                    ShowItemBox(playerid, "Removed 50x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"50 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 2:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 534)
                {
					AccountData[playerid][pMechColor1] = 1125;
					AccountData[playerid][pMechColor2] = 0;
                
				    Inventory_Remove(playerid, "Component", 50);
                    ShowItemBox(playerid, "Removed 50x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"50 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
		case 3:
        {
            new VehicleModel = GetVehicleModel(AccountData[playerid][pMechVeh]);
					
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");
            if(GetNearestVehicleToPlayer(playerid, 3.8, false) == AccountData[playerid][pMechVeh])
            {
                if(Inventory_Count(playerid, "Component") < 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Component anda tidak cukup!");
                if(VehicleModel == 534)
                {
					AccountData[playerid][pMechColor1] = 1117;
					AccountData[playerid][pMechColor2] = 0;
                
				    Inventory_Remove(playerid, "Component", 50);
                    ShowItemBox(playerid, "Removed 50x", "Component", 19772);
                    SendCustomMessage(playerid, "WORKSHOP", "Anda memodifikasi kendaraan dengan "YELLOW"50 Components.");
                    AccountData[playerid][pMechTimer] = SetTimerEx("ModificationVeh", 1000, true, "id", playerid, AccountData[playerid][pMechVeh]);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "MODIF CAR");
                    PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
                    ShowProgressBar(playerid);
                    ApplyAnimationEx(playerid, "COP_AMBIENT", "Copbrowse_loop", 4.1, 1, 0, 0, 0, 0, 1);
                }
                else return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini tidak support!");
            }
            else
            {
                KillTimer(AccountData[playerid][pMechTimer]);
                HideProgressBar(playerid);
                AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
                AccountData[playerid][pMechTimer] = 0;
                AccountData[playerid][pMechColor1] = 0;
                AccountData[playerid][pMechColor2] = 0;
                AccountData[playerid][ActivityTime] = 0;
                ClearAnimations(playerid);
                ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan pelanggan anda yang sebelumnya sudah terlalu jauh!");
                return 1;
            }
        }
	}
	return 1;
}

Function: CheckVehicleConditions(playerid, carid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == carid)
    {
        if(AccountData[playerid][ActivityTime] >= 10 && IsValidVehicle(carid))
        {
            AccountData[playerid][pMechVeh] = carid;
            ShowTDN(playerid, NOTIFICATION_INFO, "Pengecekan kendaraan selesai!");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 10 &&  IsValidVehicle(carid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/10;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Pengecekan gagal! Anda tidak berada di dekat kendaraan.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        //ShowTDN(playerid, NOTIFICATION_ERROR, "Pengecekan gagal! Anda tidak berada di dekat kendaraan.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: EngineFix(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 10 && IsValidVehicle(vehicleid))
        {
            foreach(new i : PvtVehicles) if(PlayerVehicle[i][pVehExists] && IsValidVehicle(PlayerVehicle[i][pVehPhysic])) {
                if(PlayerVehicle[i][pVehPhysic] == vehicleid) {
                    if(PlayerVehicle[i][pVehEngineUpgrade] == 1) {
                        SetValidVehicleHealth(vehicleid, 2000);
                    }
                    else if(PlayerVehicle[i][pVehEngineUpgrade] == 2) {
                        SetValidVehicleHealth(vehicleid, 3000);
                    }
                    else if(PlayerVehicle[i][pVehEngineUpgrade] == 4) {
                        SetValidVehicleHealth(vehicleid, 5000);
                    }
                    else {
                        SetValidVehicleHealth(vehicleid, 1000);
                    }
                }
            }

            ShowTDN(playerid, NOTIFICATION_SUKSES, "Fix mesin selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 10 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/10;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Fix mesin gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Fix mesin gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: BodyFix(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 10 && IsValidVehicle(vehicleid))
        {
            new panels, doors, light, tires;
            GetVehicleDamageStatus(vehicleid, panels, doors, light, tires);
            UpdateVehicleDamageStatus(vehicleid, 0, 0, 0, tires);

            foreach(new i : PvtVehicles) if(PlayerVehicle[i][pVehExists] && IsValidVehicle(PlayerVehicle[i][pVehPhysic]))
            {
                if(PlayerVehicle[i][pVehPhysic] == vehicleid) {
                    if(PlayerVehicle[i][pVehBodyUpgrade]) {
                        PlayerVehicle[i][pVehBodyRepair] = 1000.0;
                    }
                }
            }
         
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Fix body selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 10 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/10;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Fix body gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Fix body gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: OilChange(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 10 && IsValidVehicle(vehicleid))
        {
            new idx = Vehicle_ReturnID(vehicleid);
            if(idx != RETURN_INVALID_VEHICLE_ID)
            {
                PlayerVehicle[idx][pVehOilLife] = 100.0;
                PlayerVehicle[idx][pVehOilLastTime] = gettime();
                format(PlayerVehicle[idx][pVehOilLastBy], 24, "%s", AccountData[playerid][pName]);

                new query[200];
                mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `invoices` SET `Name`='%e', `Sender`=%d, `Faction`=%d, `Cost`=%d, `Owner`=%d",
                    "Bengkel - Ganti Oli", AccountData[playerid][pID], FACTION_BENGKEL, 250, PlayerVehicle[idx][pVehOwnerID]);
                mysql_tquery(g_SQL, query);

                foreach(new i : Player)
                {
                    if(AccountData[i][IsLoggedIn] && AccountData[i][pSpawned] && AccountData[i][pID] == PlayerVehicle[idx][pVehOwnerID])
                    {
                        ShowTDN(i, NOTIFICATION_INFO, "Anda mendapatkan invoice dari bengkel (Ganti Oli).");
                        break;
                    }
                }
            }

            ShowTDN(playerid, NOTIFICATION_SUKSES, "Ganti oli selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 10 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/10;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Ganti oli gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Ganti oli gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: TireReplace(playerid, vehicleid, wheel)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 10 && IsValidVehicle(vehicleid))
        {
            new idx = Vehicle_ReturnID(vehicleid);
            if(idx != RETURN_INVALID_VEHICLE_ID)
            {
                if(wheel >= 0 && wheel < 4) PlayerVehicle[idx][pVehTireWear][wheel] = 100.0;
                new now = gettime();
                switch(wheel)
                {
                    case 0: { PlayerVehicle[idx][pVehTireFLTime] = now; format(PlayerVehicle[idx][pVehTireFLBy], 24, "%s", AccountData[playerid][pName]); }
                    case 1: { PlayerVehicle[idx][pVehTireFRTime] = now; format(PlayerVehicle[idx][pVehTireFRBy], 24, "%s", AccountData[playerid][pName]); }
                    case 2: { PlayerVehicle[idx][pVehTireRLTime] = now; format(PlayerVehicle[idx][pVehTireRLBy], 24, "%s", AccountData[playerid][pName]); }
                    case 3: { PlayerVehicle[idx][pVehTireRRTime] = now; format(PlayerVehicle[idx][pVehTireRRBy], 24, "%s", AccountData[playerid][pName]); }
                }

                new panels, doors, light, tires;
                GetVehicleDamageStatus(vehicleid, panels, doors, light, tires);
                if(wheel >= 0 && wheel < 4) tires &= ~(1 << wheel);
                UpdateVehicleDamageStatus(vehicleid, panels, doors, light, tires);

                new query[200];
                mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `invoices` SET `Name`='%e', `Sender`=%d, `Faction`=%d, `Cost`=%d, `Owner`=%d",
                    "Bengkel - Ganti Ban", AccountData[playerid][pID], FACTION_BENGKEL, 200, PlayerVehicle[idx][pVehOwnerID]);
                mysql_tquery(g_SQL, query);

                foreach(new i : Player)
                {
                    if(AccountData[i][IsLoggedIn] && AccountData[i][pSpawned] && AccountData[i][pID] == PlayerVehicle[idx][pVehOwnerID])
                    {
                        ShowTDN(i, NOTIFICATION_INFO, "Anda mendapatkan invoice dari bengkel (Ganti Ban).");
                        break;
                    }
                }
            }

            ShowTDN(playerid, NOTIFICATION_SUKSES, "Ganti ban selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 10 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/10;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Ganti ban gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Ganti ban gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: SprayCar(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 5 && IsValidVehicle(vehicleid))
        {
            ChangeVehicleColor(vehicleid, AccountData[playerid][pMechColor1], AccountData[playerid][pMechColor2]);
            if((vehicleid = Vehicle_Nearest(playerid)) != -1)
            {
                PlayerVehicle[vehicleid][pVehColor1] = AccountData[playerid][pMechColor1];
                PlayerVehicle[vehicleid][pVehColor2] = AccountData[playerid][pMechColor2];
            }
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Spray car selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 5 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/5;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Spray car gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Spray car gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][pMechColor1] = 0;
        AccountData[playerid][pMechColor2] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: PaintjobCar(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 5 && IsValidVehicle(vehicleid))
        {
            ChangeVehiclePaintjob(vehicleid, AccountData[playerid][pMechColor1]);
            if((vehicleid = Vehicle_Nearest(playerid)) != -1)
            {
                PlayerVehicle[vehicleid][pVehPaintjob] = AccountData[playerid][pMechColor1];
            }
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Painting selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 5 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/5;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Painting car gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Painting car gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][pMechColor1] = 0;
        AccountData[playerid][pMechColor2] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: ModificationVeh(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 8 && IsValidVehicle(vehicleid))
        {
            AddVehicleComponent(vehicleid, AccountData[playerid][pMechColor1]);
            SavePVComponents(vehicleid, AccountData[playerid][pMechColor1]);
            if(AccountData[playerid][pMechColor2] != 0)
            {
                AddVehicleComponent(vehicleid, AccountData[playerid][pMechColor2]);
                SavePVComponents(vehicleid, AccountData[playerid][pMechColor2]);
            }
            
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Modif selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ClearAnimations(playerid);
            PlayerPlaySound(playerid, 1133, 0.0, 0.0, 0.0);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 8 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/8;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Modification gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Modification gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][pMechColor1] = 0;
        AccountData[playerid][pMechColor2] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: EngineUpgradeWS(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 15 && IsValidVehicle(vehicleid))
        {
            Vehicle_AddUpgrade(vehicleid, 1);
            ValidRepairVehicle(vehicleid);
            if(PlayerVehicle[vehicleid][pVehEngineUpgrade] == 1)
            {
                SetValidVehicleHealth(vehicleid, 2000);
            }
            else if(PlayerVehicle[vehicleid][pVehEngineUpgrade] == 2)
            {
                SetValidVehicleHealth(vehicleid, 3000);
            }
            else if(PlayerVehicle[vehicleid][pVehEngineUpgrade] == 4)
            {
                SetValidVehicleHealth(vehicleid, 5000);
            }
            else
            {
                SetValidVehicleHealth(vehicleid, 1000);
            }
            
            ShowPlayerFooter(playerid, "~w~Engine Upgrade ~b~Done", 4000);
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ClearAnimations(playerid);
            PlayerPlaySound(playerid, 1133, 0.0, 0.0, 0.0);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 15 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/15;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Engine Upgrade gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Engine Upgrade gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][pMechColor1] = 0;
        AccountData[playerid][pMechColor2] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: BodyUpgradeWS(playerid, vehicleid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 15 && IsValidVehicle(vehicleid))
        {
            Vehicle_AddUpgrade(vehicleid, 3);
            PlayerVehicle[vehicleid][pVehBodyRepair] = 1000.0;
            
            ShowPlayerFooter(playerid, "~w~Body Upgrade ~b~Done", 4000);
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ClearAnimations(playerid);
            PlayerPlaySound(playerid, 1133, 0.0, 0.0, 0.0);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 15 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/15;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Engine Upgrade gagal! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Engine Upgrade gagal! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][pMechColor1] = 0;
        AccountData[playerid][pMechColor2] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}

Function: NeonVehicle(playerid, vehicleid)
{
	if(!IsPlayerConnected(playerid)) return 0;
    if(GetNearestVehicleToPlayer(playerid, 3.8, false) == vehicleid)
    {
        if(AccountData[playerid][ActivityTime] >= 8 && IsValidVehicle(vehicleid))
        {
			if(AccountData[playerid][pMechColor1] == 0)
			{
				SetVehicleNeonLights(vehicleid, false, AccountData[playerid][pMechColor1], 0);
			}
			else
			{
				SetVehicleNeonLights(vehicleid, true, AccountData[playerid][pMechColor1], 0);
			}
			if((vehicleid = Vehicle_Nearest(playerid)) != -1)
			{
				PlayerVehicle[vehicleid][pVehNeon] = AccountData[playerid][pMechColor1];
				if(PlayerVehicle[vehicleid][cTogNeon] == 0) PlayerVehicle[vehicleid][cTogNeon] = 0;
				else PlayerVehicle[vehicleid][cTogNeon] = 1;
			}
            
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Pemasangan Neon selesai");
            AccountData[playerid][pMechVeh] = vehicleid;
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            HideProgressBar(playerid);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ClearAnimations(playerid);
            PlayerPlaySound(playerid, 1133, 0.0, 0.0, 0.0);
            return 1;
        }
        else if(AccountData[playerid][ActivityTime] < 8 && IsValidVehicle(vehicleid))
        {
            AccountData[playerid][ActivityTime] ++;

            static Float:progressvalue;
            progressvalue = AccountData[playerid][ActivityTime] * 85/8;
            PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
            PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        }
        else
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Pemasangan neon! Anda tidak berada di dekat kendaraan tersebut.");
            KillTimer(AccountData[playerid][pMechTimer]);
            AccountData[playerid][pMechTimer] = 0;
            AccountData[playerid][pMechColor1] = 0;
            AccountData[playerid][pMechColor2] = 0;
            AccountData[playerid][ActivityTime] = 0;
            AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
            HideProgressBar(playerid);
            ClearAnimations(playerid);
        }
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Pemasangan neon! Anda tidak berada di dekat kendaraan tersebut.");
        KillTimer(AccountData[playerid][pMechTimer]);
        AccountData[playerid][pMechTimer] = 0;
        AccountData[playerid][pMechColor1] = 0;
        AccountData[playerid][pMechColor2] = 0;
        AccountData[playerid][ActivityTime] = 0;
        AccountData[playerid][pMechVeh] = INVALID_VEHICLE_ID;
        HideProgressBar(playerid);
        ClearAnimations(playerid);
        return 1;
    }
    return 1;
}
