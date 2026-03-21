
#include <YSI_Coding\y_hooks>
new TempText[MAX_PLAYERS][128];

enum E_CHARGES_DATA
{
    chargesID,                  // ID surat perintah (warrant ID)
    chargesTempDate[32],        // Tanggal penerbitan
    chargesTempReason[128],     // Alasan/dakwaan
    chargesTempIssuer[MAX_PLAYER_NAME], // Nama petugas/penerbit
    chargesTempStatus
};

new ChargesData[MAX_PLAYERS][E_CHARGES_DATA];

//functions
NearMDTArea(playerid)
{
    if(IsPlayerInRangeOfPoint(playerid, 3.0, 254.4390, 1846.5514, 8.7734)) // Federal
        return 1;

    if(IsPlayerInRangeOfPoint(playerid, 3.0, 673.1735,-1498.9163,17.4984)) // Kantor Polisi
        return 1;
    
    return 0;
}

ResetTempMDT(playerid)
{
    if(GetPVarType(playerid, "RegIDMDT")) DeletePVar(playerid, "RegIDMDT");
    if(GetPVarType(playerid, "NameMDT")) DeletePVar(playerid, "NameMDT");
    return 1;
}

stock ShowMDT(playerid)
{
    Dialog_Show(playerid, MAIN_MDC, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- MDT Dashboard",
    "1) Name Search\
    \n"GRAY"2) Plate Search\
    \n3) All point bulletin\
    \n"GRAY"4) Crime broadcast\
    \n5) Roster\
    \n"GRAY"6) Emergency History\
    \n7) Trace", "Select", "Cancel");
    return 1;
}

ReturnMDT(playerid)
{
    new playerName[24];
    GetPVarString(playerid, "NameMDT", playerName, sizeof(playerName));

    Dialog_Show(playerid, MDT_INFORMATION, DIALOG_STYLE_LIST, sprintf("MDT: %s - Dashboard", playerName),
    "Personal Information\
    \n"GRAY"Registered Vehicles\
    \nPersonal Charges\
    \n"GRAY"Personal Warrants\
    \nArrest Record", "Select", "Return");
    return 1;
}

IsPlayerFactionPolice(playerNameDB[])
{
    new query[128], FactID, Cache:execute;
    mysql_format(g_SQL, query, sizeof(query), "SELECT `Char_Faction` FROM `player_characters` WHERE `Char_Name` = '%e'", playerNameDB);
    execute = mysql_query(g_SQL, query, true);

    new rowcount = cache_num_rows();
    if(rowcount)
    {
        cache_get_value_index_int(0, 0, FactID);

        if(FactID == FACTION_POLISI)
            return 1;
    }

    cache_delete(execute);
    return 0;
}

ViewAllPointBulletin(playerid)
{
    new Cache:execute;
    execute = mysql_query(g_SQL, "SELECT * FROM `bulletin` WHERE `ID` = 1 ORDER BY `Date` ASC", true);

    if(cache_num_rows())
    {
        new list[1024], shstr[255], date[64], text[128], issuer[24], suspect[24];

        strcat(list, "Time\tWarrant Description\tIssuer\tSuspect\n");
        for(new i; i < cache_num_rows(); i ++)
        {
            cache_get_value_name(i, "Date", date);
            cache_get_value_name(i, "Text", text);
            cache_get_value_name(i, "Issuer", issuer);
            cache_get_value_name(i, "Suspect", suspect);

            format(shstr, sizeof(shstr), ""WHITE"%s\t%s\t"SKYBLUE"%s\t"YELLOW"%s\n", date, text, issuer, suspect);
            strcat(list, shstr);
        }

        Dialog_Show(playerid, BULLETIN_ACTIVE, DIALOG_STYLE_TABLIST_HEADERS, "MDT: Check All Point Bulletin", list, "Select", "Return");
    }
    else
    {
        Dialog_Show(playerid, BULLETIN_NF, DIALOG_STYLE_MSGBOX, "MDT: Check All Point Bulletin", "no data found...", "Return", "");
    }

    cache_delete(execute);
    return 1;
}

ViewCrimeBroadcast(playerid)
{
    new Cache:execute;
    execute = mysql_query(g_SQL, "SELECT * FROM crimebroadcast WHERE ID = 1 ORDER BY Date ASC", true);

    if(cache_num_rows())
    {
        new list[2500], date[64], text[128], sender[MAX_PLAYER_NAME];

        format(list, sizeof(list), "Time\tBroadcast Description\tAnnouce by\n");
        for(new i; i < cache_num_rows(); ++ i)
        {
            cache_get_value_name(i, "Date", date);
            cache_get_value_name(i, "Text", text);
            cache_get_value_name(i, "Sender", sender);

            format(list, sizeof(list), "%s%s\t%s\t"SKYBLUE"%s\n", list, date, text, sender);
        }

        Dialog_Show(playerid, CRIMEBROADCAST_ACTIVE, DIALOG_STYLE_TABLIST_HEADERS, "MDT: Siaran Kriminal", list, "Select", "Return");
    }
    else
    {
        Dialog_Show(playerid, CRIMEBROADCAST_NF, DIALOG_STYLE_MSGBOX, "MDT: Siaran Kriminal", "no data found...", "Return", "");
    }

    cache_delete(execute);
    return 1;
}

ShowPersonalInformation(playerid)
{
    new query[525], playerdbName[24], rowcounts, Cache:execute;
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    mysql_format(g_SQL, query, sizeof(query), "SELECT `Char_Name`, `Char_Age`, `Char_Job`, `Char_Faction`, `Char_FactionRank`, `Char_PhoneNum`, `Char_SimA`, `Char_SimATime`, `Char_SimB`, `Char_SimBTime`, `Char_SimC`, `Char_SimCTime` FROM `player_characters` WHERE `pID` = %d AND `Char_Name` = '%e'", GetPVarInt(playerid, "RegIDMDT"), playerdbName);
    execute = mysql_query(g_SQL, query, true);

    rowcounts = cache_num_rows();
    if(rowcounts)
    {
        new playerName[24], DOB[64], JobID, FactID, FactRank, Number[24], LicA, LicB, LicC, LicATime, LicBTime, LicCTime;
        cache_get_value_index(0, 0, playerName);
        cache_get_value_index(0, 1, DOB);
        cache_get_value_index_int(0, 2, JobID);
        cache_get_value_index_int(0, 3, FactID);
        cache_get_value_index_int(0, 4, FactRank);
        cache_get_value_index(0, 5, Number);
        cache_get_value_index_int(0, 6, LicA);
        cache_get_value_index_int(0, 7, LicATime);
        cache_get_value_index_int(0, 8, LicB);
        cache_get_value_index_int(0, 9, LicBTime);
        cache_get_value_index_int(0, 10, LicC);
        cache_get_value_index_int(0, 11, LicCTime);

        static StatusA[128], StatusB[128], StatusC[128], sha[1024];
        if(LicA == 1) format(StatusA, sizeof(StatusA), ""DARKGREEN"Valid, %s"WHITE"", ReturnDate(LicATime));
        else format(StatusA, sizeof(StatusA), ""RED"Invalid"WHITE"");
        
        if(LicB == 1) format(StatusB, sizeof(StatusB), ""DARKGREEN"Valid, %s"WHITE"", ReturnDate(LicBTime));
        else format(StatusB, sizeof(StatusB), ""RED"Invalid"WHITE"");
        
        if(LicC == 1) format(StatusC, sizeof(StatusC), ""DARKGREEN"Valid, %s"WHITE"", ReturnDate(LicATime));
        else format(StatusC, sizeof(StatusC), ""RED"Invalid"WHITE"");

        format(sha, sizeof(sha), ""WHITE"Hasil dari pencarian nama: %s\n\
        \n"WHITE"Nama Lengkap: [ %s ]\
        \n"WHITE"Tanggal Lahir: [ %s ]\
        \n"WHITE"Pekerjaan: [ %s ]\
        \n"WHITE"Faction: [ %s as %s ]\n\
        \n"WHITE"Nomor Telepon:\
        \n"WHITE"%s\n\
        \n"WHITE"Izin Pengoperasian kendaraan:\
        \n"WHITE"Sim Kendaraan Roda 4 [A] [%s]\
        \n"WHITE"Sim Kendaraan Roda 4 Berat [B] [%s]\
        \n"WHITE"Sim Kendaraan Roda 2 [C] [%s]", 
            playerName,
            playerdbName,
            DOB,
            GetPlayerJobName(JobID),
            GetFactName(FactID),
            GetFactRank(FactID, FactRank),
            Number,
            StatusA,
            StatusB,
            StatusC
        );

        Dialog_Show(playerid, PERSONAL_INFORMATION, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Personal Information", playerdbName), sha, "Return", "");
    }

    cache_delete(execute);
    return 1;
}

ShowVehiclesInformation(playerid)
{
    new query[525], Cache:execute, playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `player_vehicles` WHERE `PVeh_OwnerID` = '%d'", GetPVarInt(playerid, "RegIDMDT"));
    execute = mysql_query(g_SQL, query, true);

    if(cache_num_rows())
    {
        new list[666], hvmod, hvplate[64];

        format(list, sizeof(list), "Kendaraan terdaftar milik %s:\n\n", playerdbName);
        for(new i; i < cache_num_rows(); ++ i)
        {
            cache_get_value_name_int(i, "PVeh_ModelID", hvmod);
            cache_get_value_name(i, "PVeh_Plate", hvplate);

            format(list, sizeof(list), "%s%s - %s\n", list, GetVehicleModelName(hvmod), hvplate);
        }

        Dialog_Show(playerid, REGISTERED_VEHICLES, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Registered Vehicles", playerdbName), list, "Return", "");
    }
    else
    {
        Dialog_Show(playerid, REGISTERED_VEHICLES, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Registered Vehicles", playerdbName),
        "Kendaraan terdaftar milik: %s:\n\nno data found...", "Return", "", playerdbName);
    }

    cache_delete(execute);
    return 1;
}

forward OnPlayerSearchNameMDT(playerid, playerdbName[]);
public OnPlayerSearchNameMDT(playerid, playerdbName[])
{
    if(cache_num_rows())
    {
        new tempRegID;
        cache_get_value_index_int(0, 0, tempRegID);

        Dialog_Show(playerid, MDT_INFORMATION, DIALOG_STYLE_LIST, sprintf("MDT: %s - Dashboard", playerdbName),
        "Personal Information\
        \n"GRAY"Registered Vehicles\
        \nPersonal Charges\
        \n"GRAY"Personal Warrants\
        \nArrest Record", "Select", "Return");

        SetPVarInt(playerid, "RegIDMDT", tempRegID);
        SetPVarString(playerid, "NameMDT", playerdbName);
    }
    else
    {
        Error(playerid, "Nama tidak ditemukan!");
    }
    return 1;
}

//events
hook OnPlayerConnect(playerid)
{
    ResetTempMDT(playerid);
    return 1;
}

hook OnGameModeInitEx()
{
    // Mobile Data Terminal
    CreateDynamicPickup(1239, 23, 254.4390, 1846.5514, 8.7734, -1, -1, -1, 10.0);
	CreateDynamic3DTextLabel(""LIGHTGREY"[Mobile Data Terminal]\n"WHITE"Gunakan "YELLOW"'/mdt'"WHITE" untuk akses MDT", -1, 254.4390, 1846.5514, 8.7734 + 0.6, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);    
    
    CreateDynamicPickup(1239, 23, 673.1735, -1498.9163, 17.4984, -1, -1, -1, 10.0);
	CreateDynamic3DTextLabel(""LIGHTGREY"[Mobile Data Terminal]\n"WHITE"Gunakan "YELLOW"'/mdt'"WHITE" untuk akses MDT", -1, 673.1735, -1498.9163, 17.4984 + 0.6, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);    

    CreateDynamicPickup(1239, 23, 245.5974, 1843.6448, 8.7606, -1, -1, -1, 10.0);
	CreateDynamic3DTextLabel(""LIGHTGREY"[Penjara Federal]\n"WHITE"Gunakan "YELLOW"'OTOT N'"WHITE" untuk akses PENJARA", -1, 245.5974, 1843.6448, 8.7606 + 0.6, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);  
    return 1;
}

//commands
CMD:mdt(playerid, params[])
{
    if(!AccountData[playerid][pSpawned] || !AccountData[playerid][IsLoggedIn])
        return 0;

    if(AccountData[playerid][pFaction] != FACTION_POLISI)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota kepolisian!");

    new isDirectCall = 1;
    if(sscanf(params, "d", isDirectCall)) isDirectCall = 1;
    
    new vehicle_index, vehicleid;
    vehicleid = GetPlayerVehicleID(playerid);

    if(!IsPlayerInAnyVehicle(playerid))
    {
        if(!NearMDTArea(playerid)) return Error(playerid, "Anda harus berada di point MDT / kendaraan kepolisian");

        ShowMDT(playerid);
        if(isDirectCall) SendRPMeAboveHead(playerid, "Login ke Mobile Data Terminal", X11_PLUM1);
    }
    else
    {
        if((vehicle_index = Vehicle_ReturnID(vehicleid)) != -1 && IsValidVehicle(vehicleid))
        {
            if(PlayerVehicle[vehicle_index][pVehFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik kepolisian!");
            if(IsABike(GetPlayerVehicleID(playerid)) || !IsEngineVehicle(GetPlayerVehicleID(playerid))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Hanya dapat digunakan di mobil kepolisian!");
        }

        ShowMDT(playerid);
        if(isDirectCall) SendRPMeAboveHead(playerid, "Login ke Mobile Data Terminal", X11_PLUM1);
    }
    return 1;
}

//dialogs
Dialog:MAIN_MDC(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        SendRPMeAboveHead(playerid, "Logout dari Mobile Data Terminal", X11_PLUM1);
        ResetTempMDT(playerid);
        return 1;
    }

    new list[1025], sha[255];

    switch(listitem)
    {
        case 0: // name search
        {
            Dialog_Show(playerid, MDT_NAMESEARCH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- MDT Name Search",
            "Kepolisian Kan\
            \nMobile Data Terminal (MDT)\
            \n============================\
            \nSelamat datang, %s %s!\n\
            \nMohon masukkan nama lengkap untuk diperiksa:", "Insert", "Return", GetFactionRank(playerid), ReturnName(playerid));
        }
        case 1: //plate search
        {
            Dialog_Show(playerid, MDT_PLATESEARCH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- MDT Plate Search",
            "Kepolisian Kan\
            \nMobile Data Terminal (MDT)\
            \n============================\
            \nSelamat datang, %s %s!\n\
            \nMohon masukkan plate kendaraan untuk diperiksa:", "Insert", "Return", GetFactionRank(playerid), ReturnName(playerid));
        }
        case 2: 
        {
            Dialog_Show(playerid, BULLETIN_MENU, DIALOG_STYLE_LIST, "MDT: All Point Bulletin",
            "Add New Point Bulletin\
            \n"GRAY"Check Active Point Bulletin", "Select", "Return");
        }
        case 3:
        {
            Dialog_Show(playerid, MDT_CRIMEBROADCAST, DIALOG_STYLE_LIST, "MDT: Siaran Kriminal",
            "Add new criminal broadcats\
            \n"GRAY"View criminal broadcast", "Select", "Return");
        }
        case 4: //roster
        {
            new count = 0;

            strcat(list, "No\tCallsign\tOfficer in charge\n");
            for(new index = 0; index < MAX_VEHICLES; index ++) if (IsValidVehicle(index))
            {
                if(gVehicleCallsign[index] && gVehicleCallsignText[index][0] != EOS)
                {
                    format(sha, sizeof(sha), "%d.\t%s\t%s\n", count + 1, gVehicleCallsignText[index], gVehicleCallsignOwner[index]);
                    count ++;

                    strcat(list, sha);
                }
            }

            if(!count) Dialog_Show(playerid, ROSTER, DIALOG_STYLE_MSGBOX, "MDT: Unit Patroli", "no data found...", "Close", "");
            else Dialog_Show(playerid, ROSTER, DIALOG_STYLE_TABLIST_HEADERS, "MDT: Unit Patroli", list, "Close", "");
        }
        case 5: {
            new count = 0;
            strcat(list, "Issuer\tNumber\n");
            foreach(new i : Player) if(AccountData[i][pCallCop]) {
                strcat(list, sprintf("%s\t%s\n", GetRPName(i), AccountData[i][pPhone]));
                ListedItems[playerid][count++] = i;
            }
            Dialog_Show(playerid, EmergencyList, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- Emergency Calls", list, "Select", "Close");
        }
        case 6: {
            ShowTraceMainDialog(playerid);
        }
    }
    return 1;
}

stock ShowEmergencyMenu(playerid)
{
    Dialog_Show(playerid, EmergencyOption, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Emergency Option",
    "1) Lacak Nomor\
    \n"GRAY"2) Kirim Pesan\
    \n3) Detail Laporan\
    \n"GRAY"4) Hapus Laporan", "Select", "Cancel");
    return 1;
}

Dialog:EmergencyOption(playerid, response, listitem, inputtext[]) {
    if(response) {

        new targetid = GetPVarInt(playerid, "TargetID");

        if(!IsPlayerConnected(targetid)) {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Pelapor sudah tidak terkoneksi di server.");
            return ShowMDT(playerid);
        }
        if(listitem == 0) {
            if(GetPlayerInterior(targetid) != 0) {
                ShowTDN(playerid, NOTIFICATION_ERROR, "Pelapor tidak berada diluar ruangan.");
                return ShowEmergencyMenu(playerid);
            }
            new Float:x, Float:y, Float:z;
            GetPlayerPos(targetid, x, y, z);

            SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Nama: "YELLOW"%s", ReturnName(targetid));
            SendClientMessageEx(playerid, -1, ""WHITE"- Nomor Telepon: "YELLOW"%s", AccountData[targetid][pPhone]);
            SendClientMessageEx(playerid, -1, ""WHITE"- Jenis Kelamin: "YELLOW"%s", (AccountData[targetid][pGender]) ? ("Laki-Laki") : ("Perempuan"));
            SendClientMessageEx(playerid, -1, ""WHITE"- Tanggal Lahir: "YELLOW"%s", AccountData[targetid][pAge]);
            SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Ponsel Sekarang: "YELLOW"%s", GetLocation(x, y, z));
            ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi tertandai di map!");
            
            if(IsPlayerInAnyVehicle(playerid)) {
                foreach(new i : Player) if(IsPlayerInVehicle(i, GetPlayerVehicleID(playerid))) {
                    SetPlayerRaceCheckpoint(i, 1, x, y, z, x, y, z, 5.0);
                    pMapCP[i] = true;
                }
            }
            else {
                SetPlayerRaceCheckpoint(playerid, 1, x, y, z, x, y, z, 5.0);
                pMapCP[playerid] = true;
            }
        }
        if(listitem == 1) {
            Dialog_Show(playerid, EmergencyPesan, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Emergency Message", "Masukkan pesan yang akan anda kirim kepada pelapor.", "Kirim", "Tutup");
        }
        if(listitem == 2) {
            new string[712];
            strcat(string, sprintf(""WHITE"Nomor Ponsel: "YELLOW"%s\n", AccountData[targetid][pPhone]));
            strcat(string, sprintf(""WHITE"Pelapor: "CYAN"%s\n", AccountData[targetid][pName]));
            strcat(string, sprintf(""WHITE"Date & Time: "GREEN"%s\n", AccountData[targetid][pCallCopTime]));
            strcat(string, sprintf(""WHITE"Lokasi Terakhir: "GREEN"%s\n", AccountData[targetid][pCallCopLocation]));
            strcat(string, ""WHITE"Description:\n");
            strcat(string, sprintf(""RED"**"YELLOW"%s"RED"**", AccountData[targetid][pCallCopReason]));
            Dialog_Show(playerid, EmergencyBack, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Detail Emergency", string, "Close", "");
        }
        if(listitem == 3) {
            AccountData[targetid][pCallCop] = 0;
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil menghapus laporan darurat.");
            ShowMDT(playerid);
        }
    }
    else {
        ShowMDT(playerid);
    }
    return 1;
}

Dialog:EmergencyBack(playerid, response, listitem, inputtext[]) {
    ShowEmergencyMenu(playerid);
    return 1;
}

Dialog:EmergencyPesan(playerid, response, listitem, inputtext[]) {
    if(response) {
        new targetid = GetPVarInt(playerid, "TargetID");

        if(!IsPlayerConnected(targetid)) {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Pelapor sudah tidak terkoneksi di server.");
            return ShowMDT(playerid);
        }

        SendClientMessageEx(targetid, -1, ""GRAY"[Balasan Pesan Darurat] "WHITE"%s", inputtext);
        ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda telah mengirim balasan pesan darurat.");
        ShowTDN(targetid, NOTIFICATION_INFO, "Anda menerima balasan pesan darurat!");
    }
    ShowEmergencyMenu(playerid);
    return 1;
}
Dialog:EmergencyList(playerid, response, listitem, inputtext[]) {
    if(response) {
        new targetid = ListedItems[playerid][listitem];
        if(!IsPlayerConnected(targetid)) {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Pelapor sudah tidak terkoneksi dari server.");
            return ShowMDT(playerid);
        }

        SetPVarInt(playerid, "TargetID", targetid);
        ShowEmergencyMenu(playerid);
    }
    else {
        ShowMDT(playerid);
    }
    return 1;
}
// mdt
Dialog:MDT_NAMESEARCH(playerid, response, listitem, inputtext[])
{
    if(!response) 
    {
        callcmd::mdt(playerid, "0");
        return 1;
    }

    if(isnull(inputtext))
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Kolom nama harus diisi!");
        Dialog_Show(playerid, MDT_NAMESEARCH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- MDT Name Search",
        "Kepolisian Kan\
        \nMobile Data Terminal (MDT)\
        \n============================\
        \nSelamat datang, %s %s!\n\
        \nMohon masukkan nama lengkap untuk diperiksa:", "Insert", "Return", GetFactionRank(playerid), ReturnName(playerid));
        return 1;
    }

    if(IsNumeric(inputtext))
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Tidak dapat diisi angka!");
        Dialog_Show(playerid, MDT_NAMESEARCH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- MDT Name Search",
        "Kepolisian Kan\
        \nMobile Data Terminal (MDT)\
        \n============================\
        \nSelamat datang, %s %s!\n\
        \nMohon masukkan nama lengkap untuk diperiksa:", "Insert", "Return", GetFactionRank(playerid), ReturnName(playerid));
        return 1;
    }

    if(!IsValidRoleplayName(inputtext))
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Format nama salah!");
        Dialog_Show(playerid, MDT_NAMESEARCH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- MDT Name Search",
        "Kepolisian Kan\
        \nMobile Data Terminal (MDT)\
        \n============================\
        \nSelamat datang, %s %s!\n\
        \nMohon masukkan nama lengkap untuk diperiksa:", "Insert", "Return", GetFactionRank(playerid), ReturnName(playerid));
        return 1;
    }

    new query[155];
    mysql_format(g_SQL, query, sizeof(query), "SELECT `pID` FROM `player_characters` WHERE `Char_Name` = '%e'", inputtext);
    mysql_tquery(g_SQL, query, "OnPlayerSearchNameMDT", "ds", playerid, inputtext);
    return 1;
}

Dialog:MDT_PLATESEARCH(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        callcmd::mdt(playerid, "0");
        return 1;
    }

    if(isnull(inputtext))
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Tidak dapat diisi kosong!");
        Dialog_Show(playerid, MDT_PLATESEARCH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- MDT Plate Search",
        "Kepolisian Kan\
        \nMobile Data Terminal (MDT)\
        \n============================\
        \nSelamat datang, %s %s!\n\
        \nMohon masukkan plate kendaraan untuk diperiksa:", "Insert", "Return", GetFactionRank(playerid), ReturnName(playerid));
        return 1;
    }

    if(IsNumeric(inputtext))
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Tidak dapat diisi angka!");
        Dialog_Show(playerid, MDT_PLATESEARCH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- MDT Plate Search",
        "Kepolisian Kan\
        \nMobile Data Terminal (MDT)\
        \n============================\
        \nSelamat datang, %s %s!\n\
        \nMohon masukkan plate kendaraan untuk diperiksa:", "Insert", "Return", GetFactionRank(playerid), ReturnName(playerid));
        return 1;
    }

    new query[300], Cache:execute;
    mysql_format(g_SQL, query, sizeof(query), "SELECT player_characters.Char_Name, player_vehicles.PVeh_OwnerID FROM player_vehicles LEFT JOIN player_characters ON player_vehicles.PVeh_OwnerID=player_characters.pID WHERE PVeh_Plate = '%e'", inputtext);
    execute = mysql_query(g_SQL, query, true);

    new rowcount = cache_num_rows();
    if(rowcount)
    {   
        new tempRegID, playerdbName[24];
        cache_get_value_index(0, 0, playerdbName);
        cache_get_value_index_int(0, 1, tempRegID);

        Dialog_Show(playerid, MDT_INFORMATION, DIALOG_STYLE_LIST, sprintf("MDT: %s - Dashboard", playerdbName),
        "Personal Information\
        \n"GRAY"Registered Vehicles\
        \nPersonal Charges\
        \n"GRAY"Personal Warrants\
        \nArrest Record", "Select", "Return");

        SetPVarString(playerid, "NameMDT", playerdbName);
        SetPVarInt(playerid, "RegIDMDT", tempRegID);
    }
    else
    {
        Error(playerid, "Plate kendaraan tidak ditemukan");
    }

    cache_delete(execute);
    return 1;
}

Dialog:MDT_INFORMATION(playerid, response, listitem, inputtext[])
{
    if(!response) 
    {
        callcmd::mdt(playerid, "0");
        return 1;
    }

    new playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));
    switch(listitem)
    {
        case 0: //personal information
        {
            ShowPersonalInformation(playerid);
        }
        case 1: //registered vehicles
        {
            ShowVehiclesInformation(playerid);
        }
        case 2: //personal charges
        {
            Dialog_Show(playerid, CHARGES_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Charges", playerdbName), 
            "Add New Charges\
            \n"GRAY"Check Active Charges\
            \nCheck Charges History", "Select", "Return");
        }
        case 3: //personal warrants
        {
            Dialog_Show(playerid, WARRANTS_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Warrants", playerdbName), 
            "Add New Warrants\
            \n"GRAY"Check Active Warrants", "Select", "Return");
        }
        case 4: //arrest record
        {
            ShowArrestRecord(playerid, GetPVarInt(playerid, "RegIDMDT"), playerdbName);
        }
    }
    return 1;
}

//warrants
Dialog:WARRANTS_MENU(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        ReturnMDT(playerid);
        return 1;
    }

    new playerdbName[32];
    GetPVarString(playerid, "NameMDT", playerdbName, 32);
    switch(listitem)
    {
        case 0: //add
        {
            if(AccountData[playerid][pFactionRank] < 14) return Error(playerid, "Minimal rank KOMJEN untuk menambahkan warrants!");

            Dialog_Show(playerid, WARRANTS_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Warrants", playerdbName),
            "Mohon masukkan deskripsi warrants yang akan diberikan:", "Input", "Return");
        }
        case 1: //check
        {
            ShowWarrantsActived(playerid, GetPVarInt(playerid, "RegIDMDT"), playerdbName);
        }
    }
    return 1;
}

Dialog:WARRANTS_ADD(playerid, response, listitem, inputtext[])
{
    new playerNameDB[MAX_PLAYER_NAME];
    GetPVarString(playerid, "NameMDT", playerNameDB, sizeof(playerNameDB));

    if(!response)
    {
        Dialog_Show(playerid, WARRANTS_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Warrants", playerNameDB), 
        "Add New Warrants\
        \n"GRAY"Check Active Warrants", "Select", "Return");
        return 1;
    }
    if(AccountData[playerid][pFactionRank] < 14) return Error(playerid, "Minimal rank KOMJEN untuk menambahkan warrants!");
    
    if(isnull(inputtext))
    {
        Dialog_Show(playerid, WARRANTS_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Warrants", playerNameDB),
        "Error: Tidak dapat diisi kosong!\nMohon masukkan deskripsi warrants yang akan diberikan:", "Input", "Return");
        return 1;
    }

    if(IsNumeric(inputtext)) 
    {
        Dialog_Show(playerid, WARRANTS_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Warrants", playerNameDB),
        "Error: Tidak dapat hanya diisi angka!\nMohon masukkan deskripsi warrants yang akan diberikan:", "Input", "Return");
        return 1;
    }

    if(strlen(inputtext) > 128)
    {
        Dialog_Show(playerid, WARRANTS_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Warrants", playerNameDB),
        "Error: Tidak dapat diisi lebih dari 128 characters!\nMohon masukkan deskripsi warrants yang akan diberikan:", "Input", "Return");
        return 1;
    }

    if(IsPlayerFactionPolice(playerNameDB))
    {
        Dialog_Show(playerid, WARRANTS_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Warrants", playerNameDB),
        "Error: Pemain tersebut adalah Anggota Kepolisian!\nMohon masukkan deskripsi warrants yang akan diberikan:", "Input", "Return");
        return 1;
    }

    new query[525];
    mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `warrants` SET `ID` = %d, `Date` = CURRENT_TIMESTAMP(), `Reason` = '%e', `Issuer` = '%e'", GetPVarInt(playerid, "RegIDMDT"), inputtext, AccountData[playerid][pName]);
    mysql_tquery(g_SQL, query);
    
    SendFactionMessage(FACTION_POLISI, X11_ORANGE, "[ WARRANTS:"YELLOW" %s %s"ORANGE" has issued a new warrants for "RED"%s"ORANGE" ]", GetFactionRank(playerid), ReturnName(playerid), playerNameDB);
    SendFactionMessage(FACTION_POLISI, X11_ORANGE, "[ WARRANTS:"LIGHTGREEN" %s"ORANGE" ]", inputtext);
    return 1;
}

Dialog:WARRANTS_ACTIVE(playerid, response, listitem, inputtext[])
{
    if(!response) 
    {
        ReturnMDT(playerid);
        return 1;
    }   

    if(listitem == -1)
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Anda belum memilih Active Warrants yang ingin dihapus!");
        return 1;
    }

    new tss[100], playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    if(AccountData[playerid][pFactionRank] < 14) 
    {
        Error(playerid, "Minimal rank KOMJEN untuk menghapus Warrants!");
        return ShowWarrantsActived(playerid, GetPVarInt(playerid, "RegIDMDT"), playerdbName);
    }

    mysql_format(g_SQL, tss, sizeof(tss), "SELECT * FROM `warrants` WHERE `ID` = %d ORDER BY `Date` ASC", GetPVarInt(playerid, "RegIDMDT"));
    new Cache:result = mysql_query(g_SQL, tss);
    if(cache_num_rows() > 0)
    {
        if(listitem >= 0 && listitem < cache_num_rows())
        {
            cache_get_value_name_int(listitem, "WarrantsID", ChargesData[playerid][chargesID]);
            cache_get_value_name(listitem, "Date", ChargesData[playerid][chargesTempDate]);
            cache_get_value_name(listitem, "Reason", ChargesData[playerid][chargesTempReason]);
            cache_get_value_name(listitem, "Issuer", ChargesData[playerid][chargesTempIssuer]);

            new shstr[525];
            format(shstr, sizeof(shstr), ""YELLOW"Active warrant detail:"WHITE"\
            \n.\
            \nIssuer: "SKYBLUE"%s"WHITE" | Issuer on: "ORANGE"%s\
            \n\n"WHITE"Apakah anda yakin ingin menghapus active warrant ini?", ChargesData[playerid][chargesTempIssuer], ChargesData[playerid][chargesTempDate]);

            Dialog_Show(playerid, WARRANTS_DELETE, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Check Active Warrants", playerdbName), shstr, "Confirm", "Return");
        }
    }
    cache_delete(result);
    return 1;
}

Dialog:WARRANTS_DELETE(playerid, response, listitem, inputtext[])
{
    new playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    if(!response)
    {
        ShowWarrantsActived(playerid, GetPVarInt(playerid, "RegIDMDT"), playerdbName);

        ChargesData[playerid][chargesID] = 0;
        ChargesData[playerid][chargesTempDate] = EOS;
        ChargesData[playerid][chargesTempReason] = EOS;
        ChargesData[playerid][chargesTempIssuer] = EOS;
        ChargesData[playerid][chargesTempStatus] = 0;
        return 1;
    }

    new query[100];
    mysql_format(g_SQL, query, sizeof(query), "DELETE FROM `warrants` WHERE `WarrantsID` = %d", ChargesData[playerid][chargesID]);
    mysql_tquery(g_SQL, query);

    ChargesData[playerid][chargesID] = 0;
    ChargesData[playerid][chargesTempDate] = EOS;
    ChargesData[playerid][chargesTempReason] = EOS;
    ChargesData[playerid][chargesTempIssuer] = EOS;
    ChargesData[playerid][chargesTempStatus] = 0;
    SendClientMessageEx(playerid, X11_ORANGE, "WARRANTS:"WHITE" Anda berhasil menghapus 1 active warrants milik "RED"%s", playerdbName);

    ReturnMDT(playerid);
    return 1;
}

Dialog:WARRANTS_NOTFOUND(playerid, response, listitem, inputtext[])
{
    new playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    if(!response) {
        Dialog_Show(playerid, WARRANTS_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Warrants", playerdbName), 
        "Add New Warrants\
        \n"GRAY"Check Active Warrants", "Select", "Return");
    } else {
        Dialog_Show(playerid, WARRANTS_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Warrants", playerdbName), 
        "Add New Warrants\
        \n"GRAY"Check Active Warrants", "Select", "Return");
    }
    return 1;
}

//charges
Dialog:CHARGES_MENU(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        ReturnMDT(playerid);
        return 1;
    }

    new playerNameDB[24];
    GetPVarString(playerid, "NameMDT", playerNameDB, MAX_PLAYER_NAME);
    switch(listitem)
    {
        case 0: // Tambah Tagihan Baru
        {
            Dialog_Show(playerid, CHARGES_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Charges", playerNameDB),
            "Mohon masukkan deskripsi charges yang akan diberikan:", "Input", "Return");
        }
        case 1: //Check Active Charges
        {
            ShowChargesActived(playerid, GetPVarInt(playerid, "RegIDMDT"), playerNameDB);
        }
        case 2: //Periksaa history charges
        {
            ShowChargesHistory(playerid, GetPVarInt(playerid, "RegIDMDT"), playerNameDB);
        }
    }
    return 1;
}

Dialog:CHARGES_ADD(playerid, response, listitem, inputtext[])
{
    new playerNameDB[24];
    GetPVarString(playerid, "NameMDT", playerNameDB, sizeof(playerNameDB));

    if(!response)
    {
        Dialog_Show(playerid, CHARGES_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Charges", playerNameDB), 
        "Add New Charges\
        \n"GRAY"Check Active Charges\
        \nCheck Charges History", "Select", "Return");
        return 1;
    }

    if(isnull(inputtext))
    {
        Dialog_Show(playerid, CHARGES_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Charges", playerNameDB),
        "Error: Tidak dapat diisi kosong!\nMohon masukkan deskripsi tagihan yang akan diberikan:", "Input", "Return");
        return 1;
    }

    if(IsNumeric(inputtext))
    {
        Dialog_Show(playerid, CHARGES_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Charges", playerNameDB),
        "Error: Tidak dapat hanya diisi angka!\nMohon masukkan deskripsi tagihan yang akan diberikan:", "Input", "Return");
        return 1;
    }

    if(strlen(inputtext) > 128)
    {
        Dialog_Show(playerid, CHARGES_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Charges", playerNameDB),
        "Error: Tidak dapat diisi lebih dari 128 characters!\nMohon masukkan deskripsi tagihan yang akan diberikan:", "Input", "Return");
        return 1;
    }

    if(IsPlayerFactionPolice(playerNameDB))
    {
        Dialog_Show(playerid, CHARGES_ADD, DIALOG_STYLE_INPUT, sprintf("MDT: %s - Add New Charges", playerNameDB),
        "Error: Pemain tersebut adalah Anggota Kepolisian!\nMohon masukkan deskripsi tagihan yang akan diberikan:", "Input", "Return");
        return 1;
    }
    
    new query[525];
    mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `charges` SET `ID` = %d, `Date` = CURRENT_TIMESTAMP(), `Description` = '%e', `Issuer` = '%e', `StatusActived` = 1", GetPVarInt(playerid, "RegIDMDT"), inputtext, AccountData[playerid][pName]);
    mysql_tquery(g_SQL, query);

    SendFactionMessage(FACTION_POLISI, X11_BLUE, "[ CHARGE:"YELLOW" %s %s"BLUE" has issued a new charger for "RED"%s"BLUE" ]", GetFactionRank(playerid), ReturnName(playerid), playerNameDB);
    SendFactionMessage(FACTION_POLISI, X11_BLUE, "[ CHARGE:"LIGHTGREEN" %s"BLUE" ]", inputtext);
    return 1;
}

Dialog:CHARGES_ACTIVE(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        ReturnMDT(playerid);
        return 1;
    }

    if(listitem == -1)
    {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Anda belum memilih listitem!");
        return 1;
    }

    new tss[100], playerNameDB[32];
    GetPVarString(playerid, "NameMDT", playerNameDB, MAX_PLAYER_NAME);

    mysql_format(g_SQL, tss, sizeof(tss), "SELECT * FROM `charges` WHERE `ID` = %d AND `StatusActived` = 1 ORDER BY `Date` ASC", GetPVarInt(playerid, "RegIDMDT"));
    new Cache:result = mysql_query(g_SQL, tss);
    if(cache_num_rows() > 0)
    {
        if(listitem >= 0 && listitem < cache_num_rows())
        {
            cache_get_value_name_int(listitem, "ChargesID", ChargesData[playerid][chargesID]);
            cache_get_value_name(listitem, "Date", ChargesData[playerid][chargesTempDate]);
            cache_get_value_name(listitem, "Description", ChargesData[playerid][chargesTempReason]);
            cache_get_value_name(listitem, "Issuer", ChargesData[playerid][chargesTempIssuer]);
            cache_get_value_name_int(listitem, "StatusActived", ChargesData[playerid][chargesTempStatus]);

            new shstr[525];
            format(shstr, sizeof(shstr), ""YELLOW"Active charges detail:"WHITE"\n.\
            \nIssuer: "SKYBLUE"%s"WHITE" | Issued On: "ORANGE"%s\n\
            \n"WHITE"Apakah anda yakin ingin menghapus active charges ini?", ChargesData[playerid][chargesTempIssuer], ChargesData[playerid][chargesTempDate]);

            Dialog_Show(playerid, CHARGES_DELETE, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Check Active Charges", playerNameDB), shstr, "Confirm", "Return");
        }
    }
    cache_delete(result);
    return 1;
}

Dialog:CHARGES_DELETE(playerid, response, listitem, inputtext[])
{
    new playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    if(!response) {
        ShowChargesActived(playerid, GetPVarInt(playerid, "RegIDMDT"), playerdbName);
        
        ChargesData[playerid][chargesID] = 0;
        ChargesData[playerid][chargesTempDate] = EOS;
        ChargesData[playerid][chargesTempReason] = EOS;
        ChargesData[playerid][chargesTempIssuer] = EOS;
        ChargesData[playerid][chargesTempStatus] = 0;
        return 1;
    }
    
    new query[100];
    mysql_format(g_SQL, query, sizeof(query), "DELETE FROM `charges` WHERE `ChargesID` = %d", ChargesData[playerid][chargesID]);
    mysql_tquery(g_SQL, query);

    ChargesData[playerid][chargesID] = 0;
    ChargesData[playerid][chargesTempDate] = EOS;
    ChargesData[playerid][chargesTempReason] = EOS;
    ChargesData[playerid][chargesTempIssuer] = EOS;
    ChargesData[playerid][chargesTempStatus] = 0;

    SendClientMessageEx(playerid, COLOR_BLUE, "CHARGES:"WHITE" Anda berhasil menghapus 1 active charges milik "RED"%s", playerdbName);
    ReturnMDT(playerid);
    return 1;
}

Dialog:CHARGES_ACTIVENF(playerid, response, listitem, inputtext[])
{
    new playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    if(!response)
    {
        Dialog_Show(playerid, CHARGES_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Charges", playerdbName), 
        "Add New Charges\
        \n"GRAY"Check Active Charges\
        \nCheck Charges History", "Select", "Return");
    }
    else
    {
        Dialog_Show(playerid, CHARGES_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Charges", playerdbName), 
        "Add New Charges\
        \n"GRAY"Check Active Charges\
        \nCheck Charges History", "Select", "Return");
    }
    return 1;
}

Dialog:CHARGES_HISTORY(playerid, response, listitem, inputtext[])
{
    new playerdbName[24];
    GetPVarString(playerid, "NameMDT", playerdbName, sizeof(playerdbName));

    if(!response)
    {
        Dialog_Show(playerid, CHARGES_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Charges", playerdbName), 
        "Add New Charges\
        \n"GRAY"Check Active Charges\
        \nCheck Charges History", "Select", "Return");
    }
    else
    {
        Dialog_Show(playerid, CHARGES_MENU, DIALOG_STYLE_LIST, sprintf("MDT: %s - Personal Charges", playerdbName), 
        "Add New Charges\
        \n"GRAY"Check Active Charges\
        \nCheck Charges History", "Select", "Return");
    }
    return 1;
}

//vehicles
Dialog:REGISTERED_VEHICLES(playerid, response, listitem, inputtext[])
{
    if(!response) ReturnMDT(playerid);
    else ReturnMDT(playerid);
    return 1;
}

// bulletin
Dialog:BULLETIN_MENU(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::mdt(playerid, "0");
    switch(listitem)
    {
        case 0: Dialog_Show(playerid, BULLETIN_ADD, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", "Mohon masukkan deskripsi bulletin yang ingin diterbitkan:", "Submit", "Return");
        case 1: ViewAllPointBulletin(playerid);
    }
    return 1;
}

Dialog:BULLETIN_ADD(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        Dialog_Show(playerid, BULLETIN_MENU, DIALOG_STYLE_LIST, "MDT: All Point Bulletin",
        "Add New Point Bulletin\
        \n"GRAY"Check Active Point Bulletin", "Select", "Return");
        return 1;
    }

    if(isnull(inputtext)) return Dialog_Show(playerid, BULLETIN_ADD, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", 
    "Error: Tidak dapat diisi kosong!\nMohon masukkan deskripsi bulletin yang ingin diterbitkan:", "Submit", "Return");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, BULLETIN_ADD, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", 
    "Error: Tidak dapat diisi angka!\nMohon masukkan deskripsi bulletin yang ingin diterbitkan:", "Submit", "Return");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, BULLETIN_ADD, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", 
    "Error: Tidak dapat diisi lebih dari 128 characters!\nMohon masukkan deskripsi bulletin yang ingin diterbitkan:", "Submit", "Return");
    
    format(TempText[playerid], 128, inputtext);
    Dialog_Show(playerid, BULLETIN_SUSPECT, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", "Mohon masukkan nama suspect yang ingin diterbitkan:", "Submit", "Return");
    return 1;
}

Dialog:BULLETIN_SUSPECT(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        Dialog_Show(playerid, BULLETIN_MENU, DIALOG_STYLE_LIST, "MDT: All Point Bulletin",
        "Add New Point Bulletin\
        \n"GRAY"Check Active Point Bulletin", "Select", "Return");
        
        TempText[playerid][0] = EOS;
        return 1;
    }

    if(isnull(inputtext)) return Dialog_Show(playerid, BULLETIN_SUSPECT, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", 
    "Error: Tidak dapat diisi kosong!\nMohon masukkan nama suspect yang ingin diterbitkan:", "Submit", "Return");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, BULLETIN_SUSPECT, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", 
    "Error: Tidak dapat diisi angka!\nMohon masukkan nama suspect yang ingin diterbitkan:", "Submit", "Return");
    
    if(!IsValidRoleplayName(inputtext)) return Dialog_Show(playerid, BULLETIN_SUSPECT, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", 
    "Error: Harus diisi sesuai roleplay name menggunakan '_'!\nMohon masukkan nama suspect yang ingin diterbitkan:", "Submit", "Return");
    
    if(strlen(inputtext) > MAX_PLAYER_NAME) return Dialog_Show(playerid, BULLETIN_SUSPECT, DIALOG_STYLE_INPUT, "MDT: Add New Point Bulletin", 
    "Error: Tidak dapat diisi lebih dari 24 Characters!\nMohon masukkan nama suspect yang ingin diterbitkan:", "Submit", "Return");
    
    new query[255];
    mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `bulletin` SET `ID` = 1, `Date` = CURRENT_TIMESTAMP(), `Text` = '%e', `Issuer` = '%e', `Suspect` = '%e'", TempText[playerid], AccountData[playerid][pName], inputtext);
    mysql_tquery(g_SQL, query);

    Info(playerid, "Berhasil menerbitkan point bulletin");
    Info(playerid, "Reason: "LIGHTGREEN"%s"WHITE" | Suspect: "RED"%s", TempText[playerid], inputtext);
    TempText[playerid][0] = EOS;
    return 1;
}

Dialog:BULLETIN_ACTIVE(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::mdt(playerid, "0");
    if(listitem == -1) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda belum memilih listitem!");

    
    new Cache:execute;
    execute = mysql_query(g_SQL, "SELECT * FROM `bulletin` WHERE `ID` = 1 ORDER BY `Date` ASC", true);
    if(cache_num_rows() > 0)
    {
        if(listitem >= 0 && listitem < cache_num_rows())
        {
            new date[64], issuer[24], suspect[24], text[128];

            cache_get_value_name(listitem, "Date", date);
            cache_get_value_name(listitem, "Text", text);
            cache_get_value_name(listitem, "Issuer", issuer);
            cache_get_value_name(listitem, "Suspect", suspect);

            new shstr[255];
            format(shstr, sizeof(shstr), ""YELLOW"Active warrant details:\
            \n"WHITE"Suspect name: "RED"%s\
            \n"LIGHTGREEN"%s\
            \n"WHITE"Issuer: "SKYBLUE"%s"WHITE" | Issued on: "ORANGE"%s", suspect, text, issuer, date);

            Dialog_Show(playerid, BULLETIN_VIEW, DIALOG_STYLE_MSGBOX, "MDT: Check All Point Bulletin", shstr, "Return", "");
        }
    }
    
    cache_delete(execute);
    return 1;
}

Dialog:BULLETIN_NF(playerid, response, listitem, inputtext[])
{
    if(!response) callcmd::mdt(playerid, "0");
    else callcmd::mdt(playerid, "0");
    return 1;
}

Dialog:BULLETIN_VIEW(playerid, response, listitem, inputtext[])
{
    if(!response) ViewAllPointBulletin(playerid);
    else ViewAllPointBulletin(playerid);
    return 1;
}

//crime broadcast
Dialog:MDT_CRIMEBROADCAST(playerid, response, listitem, inputtext[])
{
    if(!response) return callcmd::mdt(playerid, "0");
    switch(listitem)
    {
        case 0: //add crime broadcast
        {
            Dialog_Show(playerid, CRIMEBROADCAST_ADD, DIALOG_STYLE_INPUT, "MDT: Tambah siaran kriminal",
            "Mohon masukkan deskripsi siaran kriminal yang akan diterbitkan:", "Input", "Return");
        }
        case 1: //view crime broadcast
        {
            ViewCrimeBroadcast(playerid);
        }
    }
    return 1;
}

Dialog:CRIMEBROADCAST_ADD(playerid, response, listitem, inputtext[])
{
    if(!response) 
    {
        return Dialog_Show(playerid, MDT_CRIMEBROADCAST, DIALOG_STYLE_LIST, "MDT: Siaran Kriminal",
        "Add new criminal broadcast\
        \n"GRAY"View criminal broadcast", "Select", "Return");
    }

    if(isnull(inputtext)) return Dialog_Show(playerid, CRIMEBROADCAST_ADD, DIALOG_STYLE_INPUT, "MDT: Tambah siaran kriminal",
    "Error: Tidak dapat diisi kosong!\nMohon masukkan deskripsi siaran kriminal yang akan diterbitkan:", "Input", "Return");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CRIMEBROADCAST_ADD, DIALOG_STYLE_INPUT, "MDT: Tambah siaran kriminal",
    "Error: Tidak dapat diisi angka!\nMohon masukkan deskripsi siaran kriminal yang akan diterbitkan:", "Input", "Return");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CRIMEBROADCAST_ADD, DIALOG_STYLE_INPUT, "MDT: Tambah siaran kriminal",
    "Error: Hanya 128 karakter yang diizinkan!\nMohon masukkan deskripsi siaran kriminal yang akan diterbitkan:", "Input", "Return");
    
    new query[255];
    mysql_format(g_SQL, query, sizeof(query), "INSERT INTO crimebroadcast SET ID = 1, Date = CURRENT_TIMESTAMP(), Text = '%e', Sender = '%e'", inputtext, ReturnName(playerid));
    mysql_tquery(g_SQL, query);

    foreach(new i : Player) if (IsPlayerConnected(i) && AccountData[i][IsLoggedIn])
    {
        if(AccountData[i][pFaction] == FACTION_POLISI)
        {
            SendClientMessageEx(i, X11_SKYBLUE, "POLICE BROADCAST | %s", inputtext);
        }
    }
    ShowTDN(playerid, NOTIFICATION_SUKSES, "Broadcast terkirim ke semua anggota polisi");
    return 1;
}

Dialog:CRIMEBROADCAST_ACTIVE(playerid, response, listitem, inputtext[])
{
    if(!response)
    {
        return Dialog_Show(playerid, MDT_CRIMEBROADCAST, DIALOG_STYLE_LIST, "MDT: Siaran Kriminal",
        "Add new criminal broadcast\
        \n"GRAY"View criminal broadcast", "Select", "Return");
    }

    new string[155], Cache:execute;
    mysql_format(g_SQL, string, sizeof(string), "SELECT * FROM `crimebroadcast` WHERE `ID` = 1 ORDER BY Date ASC");
    execute = mysql_query(g_SQL, string, true);
    if(cache_num_rows())
    {
        new list[525], date[64], text[128], sender[24];
        if(listitem >= 0 && listitem < cache_num_rows())
        {
            cache_get_value_name(listitem, "Date", date);
            cache_get_value_name(listitem, "Text", text);
            cache_get_value_name(listitem, "Sender", sender);

            format(list, sizeof(list), ""YELLOW"Detail Siaran:\n"LIGHTGREEN"%s\n"WHITE"Annouce by: "LIGHTBLUE"%s"WHITE" | Annouce on: "ORANGE"%s", text, sender, date);
        }

        Dialog_Show(playerid, CRIMEBROADCAST_DETAIL, DIALOG_STYLE_MSGBOX, "MDT: Siaran Kriminal", list, "Return", "");
    }
    cache_delete(execute);
    return 1;
}

Dialog:CRIMEBROADCAST_DETAIL(playerid, response, listitem, inputtext)
{
    if(!response) ViewCrimeBroadcast(playerid);
    else ViewCrimeBroadcast(playerid);
    return 1;
}

Dialog:CRIMEBROADCAST_NF(playerid, response, listitem, inputtext[])
{
    if(!response) {
        Dialog_Show(playerid, MDT_CRIMEBROADCAST, DIALOG_STYLE_LIST, "MDT: Siaran Kriminal",
        "Add new criminal broadcast\
        \n"GRAY"View criminal broadcast", "Select", "Return");
    } else {
        Dialog_Show(playerid, MDT_CRIMEBROADCAST, DIALOG_STYLE_LIST, "MDT: Siaran Kriminal",
        "Add new criminal broadcast\
        \n"GRAY"View criminal broadcast", "Select", "Return");
    }
    return 1;
}

//
Dialog:PERSONAL_INFORMATION(playerid, response, listitem, inputtext[])
{
    if(!response) ReturnMDT(playerid);
    else ReturnMDT(playerid);
    return 1;
}

//arrest
Dialog:ARREST_RECORD(playerid, response, listitem, inputtext[])
{
    if(!response) ReturnMDT(playerid);
    else ReturnMDT(playerid);
    return 1;
}

Dialog:ROSTER(playerid, response, listitem, inputtext[])
{
    if(!response) callcmd::mdt(playerid, "0");
    else callcmd::mdt(playerid, "0");
    return 1;
}

