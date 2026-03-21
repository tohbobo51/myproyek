#include <YSI\y_hooks>

#define MAX_DYNAMIC_BISNIS  500
new GPSBizPage[MAX_PLAYERS] = { 0, ... },
    ListGPSBiz[MAX_PLAYERS][MAX_DYNAMIC_BISNIS];

enum e_bisnisdata
{
    bizOwner[MAX_PLAYER_NAME],
    bizName[128],
    bizMoney,
    bizType,
    bizPrice[12],
    Float:bizPoint[3],
    bizStock,
    bizVw,
    bizInt,

    // not save
    STREAMER_TAG_3D_TEXT_LABEL:bizLabel,
    STREAMER_TAG_PICKUP:bizPickup
};
new BisnisData[MAX_DYNAMIC_BISNIS][e_bisnisdata],
    Iterator:Bisnis<MAX_DYNAMIC_BISNIS>;

forward Business_Load();
public Business_Load()
{
    new rowcount = cache_num_rows(), id;
    if(rowcount)
    {
        for(new i; i < rowcount && i < MAX_DYNAMIC_BISNIS; i ++)
        {
            cache_get_value_name_int(i, "ID", id);
            cache_get_value_name(i, "Owner", BisnisData[id][bizOwner]);
            cache_get_value_name(i, "Name", BisnisData[id][bizName]);
            cache_get_value_name_int(i, "Money", BisnisData[id][bizMoney]);
            cache_get_value_name_int(i, "Type", BisnisData[id][bizType]);
            cache_get_value_name_int(i, "Stock", BisnisData[id][bizStock]);
            cache_get_value_name_int(i, "Price0", BisnisData[id][bizPrice][0]);
            cache_get_value_name_int(i, "Price1", BisnisData[id][bizPrice][1]);
            cache_get_value_name_int(i, "Price2", BisnisData[id][bizPrice][2]);
            cache_get_value_name_int(i, "Price3", BisnisData[id][bizPrice][3]);
            cache_get_value_name_int(i, "Price4", BisnisData[id][bizPrice][4]);
            cache_get_value_name_int(i, "Price5", BisnisData[id][bizPrice][5]);
            cache_get_value_name_int(i, "Price6", BisnisData[id][bizPrice][6]);
            cache_get_value_name_int(i, "Price7", BisnisData[id][bizPrice][7]);
            cache_get_value_name_int(i, "Price8", BisnisData[id][bizPrice][8]);
            cache_get_value_name_int(i, "Price9", BisnisData[id][bizPrice][9]);
            cache_get_value_name_int(i, "Price10", BisnisData[id][bizPrice][10]);
            cache_get_value_name_int(i, "World", BisnisData[id][bizVw]);
            cache_get_value_name_int(i, "Interior", BisnisData[id][bizInt]);

            cache_get_value_name_float(i, "pointX", BisnisData[id][bizPoint][0]);
            cache_get_value_name_float(i, "pointY", BisnisData[id][bizPoint][1]);
            cache_get_value_name_float(i, "pointZ", BisnisData[id][bizPoint][2]);

            Bisnis_Refresh(id);
            Iter_Add(Bisnis, id);
        }
        printf("[Dynamic Business]: Jumlah total Business yang dimuat %d", rowcount);
    }
    return 1;
}

Bisnis_Save(id)
{
    new query[1024];
    mysql_format(g_SQL, query, sizeof(query), 
        "UPDATE `business` SET `Owner`='%s', `Name`='%s', `Money`=%d, `Type`=%d, \
        `Price0`=%d, `Price1`=%d, `Price2`=%d, `Price3`=%d, `Price4`=%d, `Price5`=%d, \
        `Price6`=%d, `Price7`=%d, `Price8`=%d, `Price9`=%d, `Price10`=%d, \
        `pointX`=%.2f, `pointY`=%.2f, `pointZ`=%.2f, `Stock`=%d, `World`=%d, `Interior`=%d \
        WHERE `ID`=%d",
        BisnisData[id][bizOwner], 
        BisnisData[id][bizName], 
        BisnisData[id][bizMoney], 
        BisnisData[id][bizType], 
        BisnisData[id][bizPrice][0], BisnisData[id][bizPrice][1], 
        BisnisData[id][bizPrice][2], BisnisData[id][bizPrice][3], 
        BisnisData[id][bizPrice][4], BisnisData[id][bizPrice][5], 
        BisnisData[id][bizPrice][6], BisnisData[id][bizPrice][7], 
        BisnisData[id][bizPrice][8], BisnisData[id][bizPrice][9], 
        BisnisData[id][bizPrice][10], 
        BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], 
        BisnisData[id][bizPoint][2], 
        BisnisData[id][bizStock], 
        BisnisData[id][bizVw], 
        BisnisData[id][bizInt], 
        id
    );

    return mysql_tquery(g_SQL, query);
}

stock ShowBusinessLocation(playerid)
{
    new page = GPSBizPage[playerid],
        sha[1046],
        string[525],
        count = 0,
        startIndex = page * 15,
        endIndex = startIndex + 15
    ;

    strcat(sha, "No\tNama Bisnis\tTipe Bisnis\tJarak\n");
    for(new i = startIndex; i < endIndex && i < MAX_DYNAMIC_BISNIS; i ++) if(BisnisData[i][bizPoint][0] != 0.0)
    {
        format(string, sizeof(string), "%d\t%s\t%s\t"YELLOW"%.2f m\n", i, BisnisData[i][bizName], GetBisnisType(i), GetPlayerDistanceFromPoint(playerid, BisnisData[i][bizPoint][0], BisnisData[i][bizPoint][1], BisnisData[i][bizPoint][2]));
        strcat(sha, string);
        ListGPSBiz[playerid][count ++] = i;
    }

    if(count)
    {
        if(count == 15) strcat(sha, ""LIGHTGREEN">> Next Page\t\n");
        if(page != 0) strcat(sha, ""LIGHTGOLDENROD"<< Previous Page\t\n");
        Dialog_Show(playerid, GPS_BUSINESS, DIALOG_STYLE_TABLIST_HEADERS, "Business Location", sha, "Select", "Cancel");
        return 1;
    }
    else Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, "Business Location", "Tidak ada data business yang ditemukan...", "Close", "");
    return 1;
}

stock ShowBizStats(playerid)
{
    new id = AccountData[playerid][pInBiz];
    if(id == -1) return 0;

    new string[512];
    strcat(string, "Name\tInformation\n");
    strcat(string, sprintf("Business Name:\t"LIGHTGOLDENROD"%s\n", BisnisData[id][bizName]));
    strcat(string, sprintf("Business Type:\t"LIGHTGOLDENROD"%s\n", GetBisnisType(id)));
    strcat(string, sprintf("Avaible Stock\t%d left\n", BisnisData[id][bizStock]));
    strcat(string, sprintf("Cash Vault\t"LIGHTGREEN"%s", FormatMoney(BisnisData[id][bizMoney])));
    ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_TABLIST_HEADERS, "Business Stats", string, "Close", "");
    return 1;
}

stock SetProductPrice(playerid)
{
    new id = AccountData[playerid][pInBiz], string[712];
    if(id == -1) return 0;

    switch(BisnisData[id][bizType])
    {
        case 1:
        {
            format(string, sizeof(string), "Nama Item\tHarga\
            \nNasi Uduk\t%s\
            \n"GRAY"Air Mineral\t"GRAY"%s\
            \nRokok (12 batang)\t%s\
            \n"GRAY"Korek Api\t"GRAY"%s\
            \nHelm\t%s\
            \n"GRAY"Masker\t"GRAY"%s\
            \nPilox\t%s\
            \n"GRAY"Senter\t"GRAY"%s\
            \nTools Kit\t%s", 
                FormatMoney(BisnisData[id][bizPrice][0]),
                FormatMoney(BisnisData[id][bizPrice][1]),
                FormatMoney(BisnisData[id][bizPrice][2]),
                FormatMoney(BisnisData[id][bizPrice][3]),
                FormatMoney(BisnisData[id][bizPrice][4]),
                FormatMoney(BisnisData[id][bizPrice][5]),
                FormatMoney(BisnisData[id][bizPrice][6]),
                FormatMoney(BisnisData[id][bizPrice][7]),
                FormatMoney(BisnisData[id][bizPrice][8])
            );
        }
        case 2:
        {
            format(string, sizeof(string), "Nama Item\tHarga\
            \nSmartphone\t%s\
            \n"GRAY"Radio\t"GRAY"%s\
            \nEarphone\t%s\
            \n"GRAY"Boombox\t"GRAY"%s\
            \nVape\t%s", 
                FormatMoney(BisnisData[id][bizPrice][0]),
                FormatMoney(BisnisData[id][bizPrice][1]),
                FormatMoney(BisnisData[id][bizPrice][2]),
                FormatMoney(BisnisData[id][bizPrice][3]),
                FormatMoney(BisnisData[id][bizPrice][4])
            );
        }
        case 3: // Toko Olahraga
        {
            format(string, sizeof(string), "Nama Item\tAmmo\tHarga\
            \nStick Golf\t1 Ammo\t%s\
            \n"GRAY"Baseball\t"GRAY"1 Ammo\t"GRAY"%s\
            \nTongkat Satpam\t1 Ammo\t%s\
            \n"GRAY"Pisau\t"GRAY"1 Ammo\t"GRAY"%s\
            \nShovel\t1 Ammo\t%s\
            \n"GRAY"Stick Billiard\t"GRAY"1 Ammo\t"GRAY"%s\
            \nKatana\t1 Ammo\t%s\
            \n"GRAY"Gagang Payung\t"GRAY"1 Ammo\t"GRAY"%s\
            \nBrass Knuckles\t1 Ammo\t%s\
            \n"GRAY"Colt-45\t"GRAY"150 Ammo\t"GRAY"%s",
                FormatMoney(BisnisData[id][bizPrice][0]),
                FormatMoney(BisnisData[id][bizPrice][1]),
                FormatMoney(BisnisData[id][bizPrice][2]),
                FormatMoney(BisnisData[id][bizPrice][3]),
                FormatMoney(BisnisData[id][bizPrice][4]),
                FormatMoney(BisnisData[id][bizPrice][5]),
                FormatMoney(BisnisData[id][bizPrice][6]),
                FormatMoney(BisnisData[id][bizPrice][7]),
                FormatMoney(BisnisData[id][bizPrice][8]),
                FormatMoney(BisnisData[id][bizPrice][9])
            );
        }
        case 4: // Pom
        {
            format(string, sizeof(string), "Nama\tParameters\
            \nHarga Perliter\t%s\
            \n"GRAY"Harga Jerigen\t"GRAY"%s",
                FormatMoney(BisnisData[id][bizPrice][0]),
                FormatMoney(BisnisData[id][bizPrice][1])
            );
        }
    }
    Dialog_Show(playerid, BISNIS_PRICE, DIALOG_STYLE_TABLIST_HEADERS, "Set Product Price", string, "Select", "Cancel");
    return 1;
}

stock ShowBusinessMenu(playerid)
{ 
    new id = AccountData[playerid][pInBiz];
    if(id == -1) return 0;

    switch(BisnisData[id][bizType])
    {
        case 1: // market
        {
            Dialog_Show(playerid, BISNIS_BUY, DIALOG_STYLE_TABLIST_HEADERS, sprintf("%s - %s", GetBisnisType(id), BisnisData[id][bizOwner]),
            "Nama Item\tHarga\
            \nNasi Uduk\t%s\
            \n"GRAY"Air Mineral\t"GRAY"%s\
            \nRokok (12 batang)\t%s\
            \n"GRAY"Korek Api\t"GRAY"%s\
            \nHelm\t%s\
            \n"GRAY"Masker\t"GRAY"%s\
            \nPilox\t%s\
            \n"GRAY"Senter\t"GRAY"%s\
            \nTools Kit\t%s", "Pilih", "Batal", 
                FormatMoney(BisnisData[id][bizPrice][0]),
                FormatMoney(BisnisData[id][bizPrice][1]),
                FormatMoney(BisnisData[id][bizPrice][2]),
                FormatMoney(BisnisData[id][bizPrice][3]),
                FormatMoney(BisnisData[id][bizPrice][4]),
                FormatMoney(BisnisData[id][bizPrice][5]),
                FormatMoney(BisnisData[id][bizPrice][6]),
                FormatMoney(BisnisData[id][bizPrice][7]),
                FormatMoney(BisnisData[id][bizPrice][8]));
        }
        case 2: // Electronic Store
        {
            Dialog_Show(playerid, BISNIS_BUY, DIALOG_STYLE_TABLIST_HEADERS, sprintf("%s - %s", GetBisnisType(id), BisnisData[id][bizOwner]),
            "Nama Item\tHarga\
            \nSmartphone\t%s\
            \n"GRAY"Radio\t"GRAY"%s\
            \nEarphone\t%s\
            \n"GRAY"Boombox\t"GRAY"%s\
            \nVape\t%s", "Pilih", "Batal", 
                FormatMoney(BisnisData[id][bizPrice][0]),
                FormatMoney(BisnisData[id][bizPrice][1]),
                FormatMoney(BisnisData[id][bizPrice][2]),
                FormatMoney(BisnisData[id][bizPrice][3]),
                FormatMoney(BisnisData[id][bizPrice][4]));
        }
        case 3:
        {
            Dialog_Show(playerid, BISNIS_BUY, DIALOG_STYLE_TABLIST_HEADERS, sprintf("%s - %s", GetBisnisType(id), BisnisData[id][bizOwner]),
            "Nama Item\tAmmo\tHarga\
            \nStick Golf\t1 Ammo\t%s\
            \n"GRAY"Baseball\t"GRAY"1 Ammo\t"GRAY"%s\
            \nTongkat Satpam\t1 Ammo\t%s\
            \n"GRAY"Pisau\t"GRAY"1 Ammo\t"GRAY"%s\
            \nShovel\t1 Ammo\t%s\
            \n"GRAY"Stick Billiard\t"GRAY"1 Ammo\t"GRAY"%s\
            \nKatana\t1 Ammo\t%s\
            \n"GRAY"Gagang Payung\t"GRAY"1 Ammo\t"GRAY"%s\
            \nBrass Knuckles\t1 Ammo\t%s\
            \n"GRAY"Colt-45\t"GRAY"150 Ammo\t"GRAY"%s", "Pilih", "Batal", 
                FormatMoney(BisnisData[id][bizPrice][0]),
                FormatMoney(BisnisData[id][bizPrice][1]),
                FormatMoney(BisnisData[id][bizPrice][2]),
                FormatMoney(BisnisData[id][bizPrice][3]),
                FormatMoney(BisnisData[id][bizPrice][4]),
                FormatMoney(BisnisData[id][bizPrice][5]),
                FormatMoney(BisnisData[id][bizPrice][6]),
                FormatMoney(BisnisData[id][bizPrice][7]),
                FormatMoney(BisnisData[id][bizPrice][8]),
                FormatMoney(BisnisData[id][bizPrice][9])
            );
        }
        case 4: // Pom Bensin
        {
            if(BisnisData[id][bizStock] <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Stock business ini tidak ada!");
            if(!BisnisData[id][bizPrice][0]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Harga product belum di set oleh owner!");
            if(!BisnisData[id][bizPrice][1]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Harga product belum di set oleh owner!");

            new carid = GetNearestVehicleToPlayer(playerid, 2.0, false);
            if(id != -1 && BisnisData[id][bizType] == 3)
            {
                if(carid != INVALID_VEHICLE_ID)
                {
                    if(!DurringRefill[playerid])
                    {
                        if(AccountData[playerid][pMoney] < BisnisData[id][bizPrice][0]) return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Uang anda tidak mencukupi! (%s/Liter)", FormatMoney(BisnisData[id][bizPrice][0])));
                        if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
                        if(GetEngineStatus(carid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus mematikan mesin!");
                        if(GetFuel(carid) >= 100) return ShowTDN(playerid, NOTIFICATION_WARNING, "Bensin kendaraan ini full!");

                        ApplyAnimationEx(playerid,"CAMERA","camstnd_idleloop", 4.1, 1, 0, 0, 0, 0, 1);
                        SendRPMeAboveHead(playerid, "Mengisi bahan bakar kendaraan didepan", X11_PLUM1);

                        if(DestroyDynamic3DTextLabel(RefillLabel[playerid]))
                            RefillLabel[playerid] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;
                    
                        DurringRefill[playerid] = true;
                        AccountData[playerid][pTempVehID] = carid;
                        RefillPrice[playerid] = 0;
                        RefillLabel[playerid] = CreateDynamic3DTextLabel(" ", -1, 0.0, 0.0, 1.1, 5.0, INVALID_PLAYER_ID, carid, 1, 0, 0, -1, 5.0, -1, 0);
                        pTimerRefill[playerid] = SetTimerEx("VehicleRefillBiz", 550, true, "dd", playerid, carid);
                    }
                    else 
                    {
                        KillTimer(pTimerRefill[playerid]);
                        pTimerRefill[playerid] = -1;
                        DurringRefill[playerid] = false;
                        RefillPrice[playerid] = 0;

                        if(DestroyDynamic3DTextLabel(RefillLabel[playerid]))
                            RefillLabel[playerid] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;

                        ClearAnimations(playerid);
                        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengisi bbm");
                        Bisnis_Refresh(id);
                        Bisnis_Save(id);
                        Streamer_Update(playerid);
                    }
                }
                else 
                {
                    if(BisnisData[id][bizStock] <= 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Stock business ini tidak ada!");
                    if(AccountData[playerid][pMoney] < BisnisData[id][bizPrice][1]) return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Uang anda tidak mencukupi! (%s/Jerigen)", FormatMoney(BisnisData[id][bizPrice][1])));
                    if(GetTotalWeightFloat(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
                    TakePlayerMoneyEx(playerid, BisnisData[id][bizPrice][1]);

                    Inventory_Add(playerid, "Jerigen", 1650);
                    ShowItemBox(playerid, "Recieved 1x", "Jerigen", 1650);
                    ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(BisnisData[id][bizPrice][1])), "Uang", 1212);
                }
            }
        }
    }
    return 1;
}

NearestBusiness(playerid)
{
    foreach(new id : Bisnis) if(Iter_Contains(Bisnis, id))
    {
        if(IsPlayerInRangeOfPoint(playerid, 2.5, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2]))
        {
            AccountData[playerid][pInBiz] = id;
            return id;
        }
    }
    return -1;
}

PlayerOwnsBisnis(playerid, id)
{
    if(!IsPlayerConnected(playerid) || !AccountData[playerid][IsLoggedIn]) return 0;
    if(id == -1) return 0;
    if(!strcmp(BisnisData[id][bizOwner], AccountData[playerid][pName], true)) return 1;
    return 0;
}

GetBisnisType(id)
{
    new string[255];
    switch(BisnisData[id][bizType])
    {
        case 1: string = "Market";
        case 2: string = "Electronic Store";
        case 3: string = "Ammunation";
        case 4: string = "Pom Bensin";
        default: string = "Unknowns";
    }
    return string;
}

Bisnis_Reset(id)
{
    format(BisnisData[id][bizOwner], MAX_PLAYER_NAME, "-");
    BisnisData[id][bizMoney] = 0;
    BisnisData[id][bizStock] = 0;
    for(new i = 0; i < 12; i ++) BisnisData[id][bizPrice][i] = 0;
    Bisnis_Refresh(id);
    return 1;
}

Bisnis_Refresh(id)
{
    if(id != -1)
    {
        if(DestroyDynamic3DTextLabel(BisnisData[id][bizLabel]))
            BisnisData[id][bizLabel] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;
        
        if(DestroyDynamicPickup(BisnisData[id][bizPickup]))
            BisnisData[id][bizPickup] = STREAMER_TAG_PICKUP: INVALID_STREAMER_ID;
        
        new string[255];
        if(strcmp(BisnisData[id][bizOwner], "-"))
        {
            if(BisnisData[id][bizType] == 4) {
                format(string, sizeof(string), ""CYAN"[%s]\n"YELLOW"%s\n"WHITE"%s\n"GREEN"[Y]"WHITE" untuk mengisi bbm\nStock:"LIGHTGOLDENROD" %d Liter\n"GREEN"%s"WHITE"/Liter\n"GREEN"%s"WHITE"/Jerigen", GetBisnisType(id), BisnisData[id][bizName], BisnisData[id][bizOwner], BisnisData[id][bizStock], FormatMoney(BisnisData[id][bizPrice][0]), FormatMoney(BisnisData[id][bizPrice][1]));
            } else format(string, sizeof(string), ""CYAN"[%s]\n"YELLOW"%s\n"WHITE"%s\n"GREEN"[Y]"WHITE" untuk membeli", GetBisnisType(id), BisnisData[id][bizName], BisnisData[id][bizOwner]);
        }
        else
        {
            if(BisnisData[id][bizType] == 4) {
                format(string, sizeof(string), ""CYAN"[%s]\n"YELLOW"Bisnis ini masih tersegel\n"WHITE"Unknowns\n"GREEN"[Y]"WHITE" untuk mengisi bbm\nStock:"LIGHTGOLDENROD" %d Liter\n"GREEN"%s"WHITE"/Liter\n"GREEN"%s"WHITE"/Jerigen", GetBisnisType(id), BisnisData[id][bizStock], FormatMoney(BisnisData[id][bizPrice][0]), FormatMoney(BisnisData[id][bizPrice][1]));
            } else format(string, sizeof(string), ""CYAN"[%s]\n"YELLOW"Bisnis ini masih tersegel\n"WHITE"Unknowns\n"GREEN"[Y]"WHITE" untuk membeli", GetBisnisType(id));
        }

        switch(BisnisData[id][bizType])
        {
            case 1: BisnisData[id][bizPickup] = CreateDynamicPickup(2992, 23, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2], BisnisData[id][bizVw], BisnisData[id][bizInt], -1, 10.0);
            case 2: BisnisData[id][bizPickup] = CreateDynamicPickup(1277, 23, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2], BisnisData[id][bizVw], BisnisData[id][bizInt], -1, 10.0);
            case 3: BisnisData[id][bizPickup] = CreateDynamicPickup(1239, 23, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2], BisnisData[id][bizVw], BisnisData[id][bizInt], -1, 10.0);
            case 4: BisnisData[id][bizPickup] = CreateDynamicPickup(1650, 23, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2], BisnisData[id][bizVw], BisnisData[id][bizInt], -1, 10.0);
        }
        BisnisData[id][bizLabel] = CreateDynamic3DTextLabel(string, -1, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2] + 1.0, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, BisnisData[id][bizVw], BisnisData[id][bizInt], _);
    }
    return 1;
}

Function: OnBusinessCreted(id)
{
    Bisnis_Save(id);
    return 1;
}

Function: VehicleRefillBiz(playerid, vehicleid)
{
    new id = AccountData[playerid][pInBiz];
    if(id == -1) return 0;
    if(vehicleid == -1) return 0;
    
    new FuelCount = GetFuel(vehicleid);

    if(GetNearestVehicleToPlayer(playerid, 3.0, false) != vehicleid)
    {
        KillTimer(pTimerRefill[playerid]);
        pTimerRefill[playerid] = -1;
        DurringRefill[playerid] = false;
        RefillPrice[playerid] = 0;

        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        Error(playerid, "Anda terlalu jauh dari kendaraan");
        if(IsValidDynamic3DTextLabel(RefillLabel[playerid])) DestroyDynamic3DTextLabel(RefillLabel[playerid]);
        AccountData[playerid][pTempVehID] = INVALID_VEHICLE_ID;
        return 0;
    }

    if(AccountData[playerid][pTempVehID] == vehicleid)
    {
        FuelCount ++;
        UpdateDynamic3DTextLabelText(RefillLabel[playerid], -1, sprintf("%d%", FuelCount));

        PlayerPlaySound(playerid, 1085, 0.0, 0.0, 0.0);
        TakePlayerMoneyEx(playerid, BisnisData[id][bizPrice][0]);
        BisnisData[id][bizMoney]  += BisnisData[id][bizPrice][0];
        BisnisData[id][bizStock] --;
        Bisnis_Refresh(id);
        Streamer_Update(playerid);
        VehicleCore[AccountData[playerid][pTempVehID]][vCoreFuel] += 1;

        if(FuelCount >= 100)
        {
            KillTimer(pTimerRefill[playerid]);
            pTimerRefill[playerid] = -1;
            DurringRefill[playerid] = false;
            Bisnis_Refresh(id);
            Bisnis_Save(id);

            ClearAnimations(playerid);
            SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengisi bbm");
            if(IsValidDynamic3DTextLabel(RefillLabel[playerid])) DestroyDynamic3DTextLabel(RefillLabel[playerid]);
            AccountData[playerid][pTempVehID] = INVALID_VEHICLE_ID;
        }

        if(AccountData[playerid][pMoney] < BisnisData[id][bizPrice][0])
        {
            KillTimer(pTimerRefill[playerid]);
            pTimerRefill[playerid] = -1;
            DurringRefill[playerid] = false;
            Bisnis_Refresh(id);
            Bisnis_Save(id);

            ClearAnimations(playerid);
            SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengisi bbm");
            if(IsValidDynamic3DTextLabel(RefillLabel[playerid])) DestroyDynamic3DTextLabel(RefillLabel[playerid]);
            AccountData[playerid][pTempVehID] = INVALID_VEHICLE_ID;
        }

        if(BisnisData[id][bizStock] <= 0)
        {
            SendClientMessageEx(playerid, -1, "[%s]"WHITE" Stock Bensin pada Business ini telah habis!", stringtoupper(BisnisData[id][bizName]));
            KillTimer(pTimerRefill[playerid]);
            pTimerRefill[playerid] = -1;
            DurringRefill[playerid] = false;
            Bisnis_Refresh(id);
            Bisnis_Save(id);

            ClearAnimations(playerid);
            SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengisi bbm");
            if(IsValidDynamic3DTextLabel(RefillLabel[playerid])) DestroyDynamic3DTextLabel(RefillLabel[playerid]);
            AccountData[playerid][pTempVehID] = INVALID_VEHICLE_ID;
        }
    }
    return 1;
}

CMD:addbisnis(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    new id = Iter_Free(Bisnis);
    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat menambah business lagi!");

    new type, Float:x, Float:y, Float:z;
    if(sscanf(params, "d", type)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/addbisnis [type] (1. Market | 2. Electronic Store | 3. Ammunation)");
    if(type < 1 || type > 3) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid type business!");
    GetPlayerPos(playerid, x, y, z);

    BisnisData[id][bizPoint][0] = x;
    BisnisData[id][bizPoint][1] = y;
    BisnisData[id][bizPoint][2] = z;
    format(BisnisData[id][bizOwner], MAX_PLAYER_NAME, "-");
    format(BisnisData[id][bizName], 128, "%s", GetLocation(x, y, z));
    BisnisData[id][bizMoney] = 0;
    BisnisData[id][bizStock] = 1000;
    BisnisData[id][bizType] = type;
    BisnisData[id][bizVw] = GetPlayerVirtualWorld(playerid);
    BisnisData[id][bizInt] = GetPlayerInterior(playerid);

    Bisnis_Refresh(id);
    Iter_Add(Bisnis, id);
    SendStaffMessage(X11_TOMATO, "%s telah membuat business ID: %d(%s)", AccountData[playerid][pAdminname], id, GetBisnisType(id));

    new query[800];
    mysql_format(g_SQL, query, sizeof(query),
    "INSERT INTO `business` SET `ID`=%d, `Owner`='%e', `Name`='%s', `Money`=%d, `Type`=%d, `Stock`=%d, `World`=%d, `Interior`=%d, `pointX`=%.2f, `pointY`=%.2f, `pointZ`=%.2f",
    id,
    BisnisData[id][bizOwner], 
    BisnisData[id][bizName], 
    BisnisData[id][bizMoney], 
    BisnisData[id][bizType], 
    BisnisData[id][bizStock], 
    BisnisData[id][bizVw], 
    BisnisData[id][bizInt], 
    BisnisData[id][bizPoint][0], 
    BisnisData[id][bizPoint][1], 
    BisnisData[id][bizPoint][2]
    );
    mysql_tquery(g_SQL, query, "OnBusinessCreted", "d", id);
    return 1;
}

CMD:gotobisnis(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 1) return PermissionError(playerid);

    new id;
    if(sscanf(params, "d", id)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/gotobisnis [id]");
    if(!Iter_Contains(Bisnis, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Bisnis tidak ada!");

    SetPlayerPos(playerid, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2]);
    SetPlayerInteriorEx(playerid, BisnisData[id][bizInt]);
    SetPlayerVirtualWorldEx(playerid, BisnisData[id][bizVw]);

    // Update status pemain
    AccountData[playerid][pInDoor] = -1;
    AccountData[playerid][pInHouse] = -1;
    AccountData[playerid][pInBiz] = -1;
    AccountData[playerid][pInFamily] = -1;
    AccountData[playerid][pInRusun] = -1;

    // Kirim pesan ke staff
    SendStaffMessage(X11_TOMATO, "%s teleportasi ke Business ID: %d - %s.", GetAdminName(playerid), id, BisnisData[id][bizName]);
    return 1;
}

CMD:editbisnis(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    static id, type[24], string[128];
    if(sscanf(params, "ds[24]S()[128]", id, type, string))
    {
        ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editbisnis [id] [entity] (location, type, owner, reset, restock, delete)");
        return 1;
    }
    if(!Iter_Contains(Bisnis, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Business tidak ada!");
    if(!strcmp(type, "location", true))
    {
        GetPlayerPos(playerid, BisnisData[id][bizPoint][0], BisnisData[id][bizPoint][1], BisnisData[id][bizPoint][2]);
        BisnisData[id][bizVw] = GetPlayerVirtualWorld(playerid);
        BisnisData[id][bizInt] = GetPlayerInterior(playerid);

        Bisnis_Refresh(id);
        Bisnis_Save(id);
        SendStaffMessage(X11_TOMATO, "%s telah memindahkan point business ID: %d", AccountData[playerid][pAdminname], id);
    }
    else if(!strcmp(type, "type", true))
    {
        new value;
        if(sscanf(string, "d", value)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editbisnis [id] [type] (1. Market | 2. Electronic Store)"); 
        if(value < 1 || value > 2) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid type!");

        BisnisData[id][bizType] = value;
        Bisnis_Refresh(id);
        Bisnis_Save(id);
        SendStaffMessage(X11_TOMATO, "%s telah mengubah type Business ID: %d menjadi %s.", AccountData[playerid][pAdminname], id, GetBisnisType(id));
    }
    else if(!strcmp(type, "owner", true))
    {
        new otherid;
        if(sscanf(string, "u", otherid)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editbisnis [id] [owner [name/playerid]]");
        if(!IsPlayerConnected(otherid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");

        format(BisnisData[id][bizOwner], MAX_PLAYER_NAME, "%s", AccountData[otherid][pName]);
        Bisnis_Refresh(id);
        Bisnis_Save(id);
        SendStaffMessage(X11_TOMATO, "%s telah menetapkan Business ID: %d menjadi milik %s", AccountData[playerid][pAdminname], id, AccountData[otherid][pName]);
    }
    else if(!strcmp(type, "reset", true))
    {
        Bisnis_Reset(id);
        Bisnis_Refresh(id);
        Bisnis_Save(id);
        SendStaffMessage(X11_TOMATO, "%s telah me-reset Business ID: %d", AccountData[playerid][pAdminname], id);
    }
    else if(!strcmp(type, "restock", true))
    {
        new value;
        if(sscanf(string, "d", value)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editbisnis [id] [restock] [aammount]");
        if(value < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid ammount!");

        BisnisData[id][bizStock] = value;
        Bisnis_Save(id);
        SendStaffMessage(X11_TOMATO, "%s telah me-restock stock Business ID: %dmenjadi %dx.", AccountData[playerid][pAdminname], id, value);
    }
    else if(!strcmp(type, "delete", true))
    {
        if(IsValidDynamic3DTextLabel(BisnisData[id][bizLabel]))
        {
            DestroyDynamic3DTextLabel(BisnisData[id][bizLabel]);
            BisnisData[id][bizLabel] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;
        }

        if(IsValidDynamicPickup(BisnisData[id][bizPickup]))
        {
            DestroyDynamicPickup(BisnisData[id][bizPickup]);
            BisnisData[id][bizPickup] = STREAMER_TAG_PICKUP: INVALID_STREAMER_ID;
        }
        BisnisData[id][bizPoint][0] = BisnisData[id][bizPoint][1] = BisnisData[id][bizPoint][2] = 0.0;        
        Bisnis_Reset(id);
        Iter_Remove(Bisnis, id);
        mysql_tquery(g_SQL, sprintf("DELETE FROM `business` WHERE `ID`='%d'", id));
        SendStaffMessage(X11_TOMATO, "%s telah menghapus Business ID: %d.", AccountData[playerid][pAdminname], id);
    }
    return 1;
}

CMD:bisproduct(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 3) return PermissionError(playerid);

    SendClientMessage(playerid, -1, ""CYAN"===[Bisnis Product Check]===");
    foreach(new id : Bisnis) if(BisnisData[id][bizPoint][0] != 0.0)
    {
        SendClientMessageEx(playerid, -1, ""CYAN"Bisnis ID: %d [%s] // Type [%s] // Product Count: %d", id, BisnisData[id][bizName], GetBisnisType(BisnisData[id][bizType]), BisnisData[id][bizStock]);
    }
    return 1;
}

alias:bisnismenu("bm")
CMD:bisnismenu(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    
    new id = NearestBusiness(playerid);
    if(id != -1)
    {
        if(PlayerOwnsBisnis(playerid, id))
        {
            Dialog_Show(playerid, BISNIS_MENU, DIALOG_STYLE_LIST, sprintf("Bisnis Menu - %s", BisnisData[id][bizOwner]),
            "Business Detail\
            \n"GRAY"Set Product Price\
            \nSet Business Name\
            \n"GRAY"Deposit Vault\
            \nWithdraw Vault", "Pilih", "Batal");
        }
        else ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik bisnis ini!");
    }
    else ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada didekat bisnis!");
    return 1;
}

hook OnPlayerConnect(playerid)
{
    GPSBizPage[playerid] = 0;
    for(new i = 0; i < MAX_DYNAMIC_BISNIS; i ++) {
        ListGPSBiz[playerid][i] = -1;
    }
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    GPSBizPage[playerid] = 0;
    for(new i = 0; i < MAX_DYNAMIC_BISNIS; i ++) {
        ListGPSBiz[playerid][i] = -1;
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        new id = NearestBusiness(playerid);
        if(id != -1)
        {
            ShowBusinessMenu(playerid);
        }
    }
    return 1;
}

BizProductModel(playerid)
{
    new id = AccountData[playerid][pInBiz];
    new slot = AccountData[playerid][pBizListItem];
    new model;
    switch(BisnisData[id][bizType])
    {
        case 1:
        {
            switch(slot)
            {
                case 0: model = 19567;
                case 1: model = 19570;
                case 2: model = 19896;
                case 3: model = 19998;
                case 4: model = 18645;
                case 5: model = 19036;
                case 6: model = 365;
                case 7: model = 18641;
                case 8: model = 19918;
            }
        }
        case 2:
        {
            switch(slot)
            {
                case 0: model = 18870;
                case 1: model = 19942;
                case 2: model = 19422;
                case 3: model = 2103;
                case 4: model = 1512;
            }
        }
    }
    return model;
}

BizProductName(playerid)
{
    new id = AccountData[playerid][pInBiz];
    new slot = AccountData[playerid][pBizListItem];

    new string[128];
    switch(BisnisData[id][bizType])
    {
        case 1:
        {
            switch(slot)
            {
                case 0: string = "Nasi Uduk";
                case 1: string = "Air Mineral";
                case 2: string = "Rokok";
                case 3: string = "Korek Api";
                case 4: string = "Helm";
                case 5: string = "Masker";
                case 6: string = "Pilox";
                case 7: string = "Senter";
                case 8: string = "Tools Kit";
            }
        }
        case 2:
        {
            switch(slot)
            {
                case 0: string = "Smartphone";
                case 1: string = "Radio";
                case 2: string = "Earphone";
                case 3: string = "Boombox";
                case 4: string = "Vape";
            }
        }
    }
    return string;
}

Dialog:BISNIS_MENU(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    switch(listitem)
    {
        case 0: //
        {
            ShowBizStats(playerid);
        }
        case 1:
        {
            SetProductPrice(playerid);
        }
        case 2: 
        {
            Dialog_Show(playerid, BISNIS_NAME, DIALOG_STYLE_INPUT, "Set Business Name", 
            ""WHITE"Current Business Name: "CYAN"%s\n"WHITE"Silahkan masukkan nama Business mu yang baru:\n\nNOTE: Max 64 Huruf!", "Set", "Cancel", BisnisData[AccountData[playerid][pInBiz]][bizName]);
        }
        case 3:
        {
            Dialog_Show(playerid, BISNIS_DP, DIALOG_STYLE_INPUT, "Business Deposit", "Mohon masukkan berapa jumlah uang yang ingin anda masukkan ke business anda:", "Deposit", "Cancel");
        }
        case 4:
        {
            Dialog_Show(playerid, BISNIS_WD, DIALOG_STYLE_INPUT, "Business Deposit", "Mohon masukkan berapa jumlah uang yang ingin anda ambil dari brankas business anda:", "Withdraw", "Cancel");
        }
    }
    return 1;
}

Dialog:BISNIS_NAME(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        new id = AccountData[playerid][pInBiz];

        if(strlen(inputtext) > 64)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Max huruf 64 characters!");
        
        if(InvalidFormatText(inputtext))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat menggunakan karakter unik seperti ' \\ /");
        
        format(BisnisData[id][bizName], 64, inputtext);
        Bisnis_Save(id);
        Bisnis_Refresh(id);
        SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[BUSINESS]"WHITE" Berhasil mengubah nama Business menjadi "LIGHTGOLDENROD"%s.", inputtext);
    }
    else  
        callcmd::bisnismenu(playerid, "");
    return 1;
}

Dialog:BISNIS_PRICE(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        new str[256];
        AccountData[playerid][pBizListItem] = listitem;
        format(str, sizeof(str), ""WHITE"Current product price: %s\n"WHITE"Silahkan masukkan harga baru untuk product "CYAN"%s", FormatMoney(BisnisData[AccountData[playerid][pInBiz]][bizPrice][listitem]), BizProductName(playerid));
        Dialog_Show(playerid, BISNIS_PRICESET, DIALOG_STYLE_INPUT, "Set Product Price", str, "Set", "Cancel");
    }
    else
        callcmd::bisnismenu(playerid, "");
    return 1;
}

Dialog:BISNIS_PRICESET(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        if(strval(inputtext) < 1)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid product price!");
        
        new id = AccountData[playerid][pInBiz], slot = AccountData[playerid][pBizListItem];
        SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[BUSINESS]"WHITE" Anda telah mengubah harga product dari "LIGHTGREEN"%s"WHITE" Menjadi "LIGHTGREEN"%s", FormatMoney(BisnisData[id][bizPrice][slot]), FormatMoney(strval(inputtext)));
        BisnisData[id][bizPrice][slot] = strval(inputtext);
        callcmd::bisnismenu(playerid, "");
        Bisnis_Refresh(id);
        Bisnis_Save(id);
    }
    return 1;
}

Dialog:BISNIS_DP(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        new amount = strval(inputtext), id = AccountData[playerid][pInBiz];
        if(amount < 1) return Dialog_Show(playerid, BISNIS_DP, DIALOG_STYLE_INPUT, "Business Deposit", "Error: Jumlah tidak valid!\nMohon masukkan berapa jumlah uang yang ingin anda masukkan ke business anda:", "Deposit", "Cancel");
        if(AccountData[playerid][pMoney] < amount) return Dialog_Show(playerid, BISNIS_DP, DIALOG_STYLE_INPUT, "Business Deposit", "Error: Uang anda tidak sebanyak itu!\nMohon masukkan berapa jumlah uang yang ingin anda masukkan ke business anda:", "Deposit", "Cancel");

        BisnisData[id][bizMoney] += amount;
        TakePlayerMoneyEx(playerid, amount);
        SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[BUSINESS]"WHITE" Berhasil memasukkan uang ke Business sejumlah "LIGHTGREEN"%s.", FormatMoney(amount));
        Bisnis_Save(id);
    }
    else    
        callcmd::bisnismenu(playerid, "");
    return 1;
}

Dialog:BISNIS_WD(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        new amount = strval(inputtext), id = AccountData[playerid][pInBiz];
        if(amount < 1) return Dialog_Show(playerid, BISNIS_WD, DIALOG_STYLE_INPUT, "Business Deposit", "Error: Jumlah tidak valid!\nMohon masukkan berapa jumlah uang yang ingin anda ambil dari brankas business anda:", "Withdraw", "Cancel");
        if(BisnisData[id][bizMoney] < amount) return Dialog_Show(playerid, BISNIS_WD, DIALOG_STYLE_INPUT, "Business Deposit", "Error: Uang pada brankas business tidak sebanyak itu!\nMohon masukkan berapa jumlah uang yang ingin anda ambil dari brankas business anda:", "Withdraw", "Cancel");

        BisnisData[id][bizMoney] -= amount;
        GivePlayerMoneyEx(playerid, amount);
        SendClientMessageEx(playerid, -1, ""LIGHTGOLDENROD"[BUSINESS]"WHITE" Berhasil mengambil uang dari brankas Business sebanyak "LIGHTGREEN"%s.", FormatMoney(amount));
        Bisnis_Save(id);
    }
    else 
        callcmd::bisnismenu(playerid, "");
    return 1;
}

Dialog:BISNIS_BUY(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        new id = AccountData[playerid][pInBiz], price, prodmodel, prodname[128];
        if(id != -1)
        {
            AccountData[playerid][pBizListItem] = listitem;
            price = BisnisData[id][bizPrice][listitem];
            prodname = BizProductName(playerid);
            prodmodel = BizProductModel(playerid);
            if(AccountData[playerid][pMoney] < price) return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Uang anda tidak mencukupi! (%s)", FormatMoney(price)));
            if(BisnisData[id][bizStock] < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Business ini tidak memiliki stok!");
            if(!BisnisData[id][bizPrice][listitem]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Harga product belum di set oleh owner!");
            switch(BisnisData[id][bizType])
            {
                case 1:
                {
                    if(listitem == 0) // Nasi uduk
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 1) // air mineral
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 2) // air mineral
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel, 12);
                        ShowItemBox(playerid, "Received 12x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 3) // air mineral
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 4) // air mineral
                    {
                        if(AccountData[playerid][pHelmet]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki Helm!");
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        AccountData[playerid][pHelmet] = 1;
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 5) // air mineral
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 6) // air mineral
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 7) // air mineral
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                }
                case 2: 
                {
                    if(listitem == 0)
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 1)
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 2)
                    {
                        if(AccountData[playerid][pEarphone]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki earphone!");	
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        AccountData[playerid][pEarphone] = 1;
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 3)
                    {
                        if(AccountData[playerid][pVip] < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pengguna VIP!");
                        if(PlayerHasItem(playerid, "Boombox")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki boombox!");
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");

                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 4)
                    {
                        if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
                        
                        Inventory_Add(playerid, prodname, prodmodel);
                        ShowItemBox(playerid, "Received 1x", prodname, prodmodel);
                        TakePlayerMoneyEx(playerid, price);
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                }
                case 3: 
                {
                    if(listitem == 0)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 2, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Stick Golf");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 1)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 5, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Baseball");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 2)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 3, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Tongkat Satpam");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 3)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 4, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Pisau");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 4)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 6, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Shovel");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 5)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 7, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Stick Biliard");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 6)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 8, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Katana");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 7)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 15, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Gagang Payung");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 8)
                    {
                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 1, 1);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Brass Knuckles");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                    if(listitem == 9)
                    {
                        if(!AccountData[playerid][pGunLic]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Lisensi Senjata!");

                        TakePlayerMoneyEx(playerid, price);
                        GivePlayerWeaponEx(playerid, 22, 150);
                        ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(price)), "Uang", 1212);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membeli Colt-45");
                        BisnisData[id][bizStock] --;
                        BisnisData[id][bizMoney] += price;
                    }
                }
            }
            Bisnis_Save(id);
        }
    }
    return 1;
}

Dialog:GPS_BUSINESS(playerid, response, listitem, inputtext[])
{
    if(!response) 
    {
        GPSBizPage[playerid] = 0;
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

    new index = ListGPSBiz[playerid][listitem];

    if(strfind(inputtext, "<< Previous Page") != -1)
    {
        GPSBizPage[playerid] --;
        ShowBusinessLocation(playerid);
        return 1;
    }

    if(strfind(inputtext, ">> Next Page") != -1)
    {
        new next_page = GPSBizPage[playerid] + 1;
        new startIndex = next_page * 15;
        if(BisnisData[startIndex][bizPoint][0] != 0.0)
        {
            GPSBizPage[playerid] ++;
            ShowBusinessLocation(playerid);
        }
        else
        {
            GPSBizPage[playerid] = GPSBizPage[playerid];
            ShowBusinessLocation(playerid);
            ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada halaman lagi di berikutnya!");
        }
        return 1;
    }
    new Float:x = BisnisData[index][bizPoint][0],
        Float:y = BisnisData[index][bizPoint][1],
        Float:z = BisnisData[index][bizPoint][2];

    SetPlayerRaceCheckpoint(playerid, 1, x, y, z, 0.0, 0.0, 0.0, 5.0);
    pMapCP[playerid] = true;
    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");

    for(new i = 0; i < MAX_DYNAMIC_BISNIS; i ++) {
        ListGPSBiz[playerid][i] = -1;
        GPSBizPage[playerid] = 0;
    }
    return 1;
}