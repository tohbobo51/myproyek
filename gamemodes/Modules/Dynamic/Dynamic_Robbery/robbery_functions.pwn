#include <YSI\y_hooks>
#define MAX_DYNAMIC_ROBBERY 50

enum e_robberydata
{
    Float:robberyPos[3],
    Float:robberyRot[3],

    STREAMER_TAG_OBJECT:robberyObjectID,
    STREAMER_TAG_3D_TEXT_LABEL:robberyLabel,
    robberyInt,
    robberyWorld,
}
new RobberyData[MAX_DYNAMIC_ROBBERY][e_robberydata],
    Iterator:Robbery<MAX_DYNAMIC_ROBBERY>;

new bool: DurringRobbery[MAX_PLAYERS] = {false, ...};
new PlayerText: PreparingHocksTD[MAX_PLAYERS][14];
new PlayerText: RobberyBankTD[MAX_PLAYERS][37];
new ClickIndex[MAX_PLAYERS];
new IsRobbery[MAX_PLAYERS];
new ClueBoxes[MAX_PLAYERS][10], CorrectClicks[MAX_PLAYERS], WrongClicks[MAX_PLAYERS], CraftCardTimer[MAX_PLAYERS];
new STREAMER_TAG_ACTOR: makeCardActor;

hook OnGameModeInitEx()
{
    makeCardActor = CreateDynamicActor(47, 2763.2434, 1454.9568, 10.8450, 92.7288, 1, 100.0, 0, 0, -1, 20.0, -1, 0);
    ApplyDynamicActorAnimation(makeCardActor, "DEALER", "DEALER_IDLE", 4.1, 1, 1, 1, 1, 1);
    CreateDynamic3DTextLabel(""LIGHTBLUE"[Y]"WHITE" Interaction", -1, 2763.2434, 1454.9568, 10.8450, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 10.0, -1, 0);
    return 1;
}

//
Robbery_Rebuild(id)
{
    if(id != -1)
    {
        if(DestroyDynamicObject(RobberyData[id][robberyObjectID]))
            RobberyData[id][robberyObjectID] = STREAMER_TAG_OBJECT: INVALID_STREAMER_ID;
            
        if(DestroyDynamic3DTextLabel(RobberyData[id][robberyLabel]))
            RobberyData[id][robberyLabel] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;
        
        if(RobberyData[id][robberyPos][0] != 0.0)
        {
            RobberyData[id][robberyObjectID] = CreateDynamicObject(2332, RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2], RobberyData[id][robberyRot][0], RobberyData[id][robberyRot][1], RobberyData[id][robberyRot][2], RobberyData[id][robberyWorld], RobberyData[id][robberyInt], -1, 50.0, 50.0, -1);
            RobberyData[id][robberyLabel] = CreateDynamic3DTextLabel("Gunakan "LIGHTBLUE"[Y]"WHITE" Untuk memulai perampokan", -1, RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2] + 0.5, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, RobberyData[id][robberyWorld], RobberyData[id][robberyInt]);
        }
    }
    return 1;
}

Robbery_Save(id)
{
    new cQuery[1048];
    mysql_format(g_SQL, cQuery, sizeof(cQuery), "UPDATE `robbery` SET `RobberyX`=%f, `RobberyY`=%f, `RobberyZ`=%f, `RobberyRX`=%f, `RobberyRY`=%f, `RobberyRZ`=%f, `RobberyInterior`=%d, `RobberyWorld`=%d WHERE `RobberyID`=%d",
    RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2], RobberyData[id][robberyRot][0], RobberyData[id][robberyRot][1], RobberyData[id][robberyRot][2], RobberyData[id][robberyInt], RobberyData[id][robberyWorld], id);
    mysql_tquery(g_SQL, cQuery);
    return 1;
}

IsPlayerNearRobberyBox(playerid)
{
    foreach(new id : Robbery) if(IsPlayerInRangeOfPoint(playerid, 3.0, RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2]))
    {
        return id;
    }
    return -1;
}

forward LoadDynamicRobbery();
public LoadDynamicRobbery()
{
    new id, rows = cache_num_rows();
    if(rows)
    {
        for(new i = 0; i < rows; i ++)
        {
            id = cache_get_field_int(i, "RobberyID");
            RobberyData[id][robberyPos][0] = cache_get_field_float(i, "RobberyX");
            RobberyData[id][robberyPos][1] = cache_get_field_float(i, "RobberyY");
            RobberyData[id][robberyPos][2] = cache_get_field_float(i, "RobberyZ");
            RobberyData[id][robberyRot][0] = cache_get_field_float(i, "RobberyRX");
            RobberyData[id][robberyRot][1] = cache_get_field_float(i, "RobberyRY");
            RobberyData[id][robberyRot][2] = cache_get_field_float(i, "RobberyRZ");
            RobberyData[id][robberyInt] = cache_get_field_int(i, "RobberyInterior");
            RobberyData[id][robberyWorld] = cache_get_field_int(i, "RobberyWorld");

            Robbery_Rebuild(id);
            Iter_Add(Robbery, id);
        }
        printf("[Dynamic Robbery]: Jumlah total dynamic robbery yang dimuat %d", rows);
    }
    return 1;
}

CMD:addrobbery(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 6) return PermissionError(playerid);

    new id = Iter_Free(Robbery);
    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat menambah Dynamic Robbery lagi!");
    
    GetPlayerPos(playerid, RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2]);
    RobberyData[id][robberyPos][0] = RobberyData[id][robberyPos][0];
    RobberyData[id][robberyPos][1] = RobberyData[id][robberyPos][1];
    RobberyData[id][robberyPos][2] = RobberyData[id][robberyPos][2];
    RobberyData[id][robberyRot][0] = RobberyData[id][robberyRot][1] = RobberyData[id][robberyRot][2] = 0.0;
    RobberyData[id][robberyWorld] = GetPlayerVirtualWorld(playerid);
    RobberyData[id][robberyInt] = GetPlayerInterior(playerid);
    
    Robbery_Rebuild(id);
    Iter_Add(Robbery, id);

    new cQuery[1048];
    mysql_format(g_SQL, cQuery, sizeof(cQuery), "INSERT INTO `robbery` SET `RobberyID`=%d, `RobberyX`=%f, `RobberyY`=%f, `RobberyZ`=%f, `RobberyRX`=%f, `RobberyRY`=%f, `RobberyRZ`=%f, `RobberyInterior`=%d, `RobberyWorld`=%d",
    id, RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2], RobberyData[id][robberyRot][0], RobberyData[id][robberyRot][1], RobberyData[id][robberyRot][2], RobberyData[id][robberyInt], RobberyData[id][robberyWorld]);
    mysql_tquery(g_SQL, cQuery, "OnRobberyAdded", "dd", playerid, id);
    return 1;
}

forward OnRobberyAdded(playerid, id);
public OnRobberyAdded(playerid, id)
{
    Robbery_Save(id);
    SendStaffMessage(X11_TOMATO, "%s membuat Dynamic Robbery ID %d", AccountData[playerid][pAdminname], id);
    return 1;
}

CMD:editrobbery(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 6) return PermissionError(playerid);

    new id, option[24];
    if(sscanf(params, "ds[24]", id, option)) 
    {
        Syntax(playerid, "/editrobbery [id] (position, delete)");
        return 1;
    }
    if(id < 0 || id >= MAX_DYNAMIC_ROBBERY) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Robbery tidak valid!");
    if(!Iter_Contains(Robbery, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Robbery tidak ada!");
    if(!strcmp(option, "position", true))
    {
        if(AccountData[playerid][EditingROBERID] != -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang dalam mode pengeditan!");
        if(!IsPlayerInRangeOfPoint(playerid, 25.0, RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada didekat dynamic tersebut!");

        AccountData[playerid][EditingROBERID] = id;
        EditDynamicObject(playerid, RobberyData[id][robberyObjectID]);
    }
    else if(!strcmp(option, "delete", true))
    {
        RobberyData[id][robberyPos][0] = 0.0;
        RobberyData[id][robberyPos][1] = 0.0;
        RobberyData[id][robberyPos][2] = 0.0;
        RobberyData[id][robberyRot][0] = RobberyData[id][robberyRot][1] = RobberyData[id][robberyRot][2] = 0.0;
        RobberyData[id][robberyWorld] = 0;
        RobberyData[id][robberyInt] = 0;
        if(DestroyDynamicObject(RobberyData[id][robberyObjectID])) RobberyData[id][robberyObjectID] = STREAMER_TAG_OBJECT: INVALID_STREAMER_ID;
        if(DestroyDynamic3DTextLabel(RobberyData[id][robberyLabel])) RobberyData[id][robberyLabel] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;

        Iter_Remove(Robbery, id);

        new query[200];
        mysql_format(g_SQL, query, sizeof(query), "DELETE FROM `robbery` WHERE `RobberyID` = %d", id);
        mysql_tquery(g_SQL, query);
        SendStaffMessage(X11_TOMATO, "%s menghapus Dynamic Robbery ID: %d", AccountData[playerid][pAdminname], id);
    }
    return 1;
}

CMD:gotorobbery(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 2) return PermissionError(playerid);

    new id;
    if(sscanf(params, "d", id)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/gotorobbery [id]");
    if(id < 0 || id >= MAX_DYNAMIC_ROBBERY) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Robbery tidak valid!");
    if(!Iter_Contains(Robbery, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Robbery tidak ada!");

    SetPlayerPositionEx(playerid, RobberyData[id][robberyPos][0], RobberyData[id][robberyPos][1], RobberyData[id][robberyPos][2], 0.0, 5000);
    SetPlayerInteriorEx(playerid, RobberyData[id][robberyInt]);
    SetPlayerVirtualWorldEx(playerid, RobberyData[id][robberyWorld]);
    AccountData[playerid][pInHouse] = -1;
    AccountData[playerid][pInRusun] = -1;
    AccountData[playerid][pInDoor] = -1;
    AccountData[playerid][pInFamily] = -1;
    AccountData[playerid][pInBiz] = -1;
    Info(playerid, "Anda teleportasi ke Dynamic Robbery ID %d", id);
    return 1;
}

CMD:resetrobbery(playerid, params[])
{
	if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);
	if(!g_RobberyTime) return ShowTDN(playerid, NOTIFICATION_ERROR, "Waktu Robbery Tidak Sedang Delay!");

	g_RobberyTime = 0;
	SendStaffMessage(X11_TOMATO, "%s telah mereset delay robbery", AccountData[playerid][pAdminname]);
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if(IsPlayerInRangeOfPoint(playerid, 2.5, 2763.2434,1454.9568,10.8450)) // Crafting Card
        {
            new countpd = 0;
            foreach(new i : Player) if(IsPlayerConnected(i) && AccountData[i][IsLoggedIn])
            {
                if(AccountData[i][pDutyPD]) countpd ++;
            }
            
            if(countpd >= 3)
            {
                if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang memiliki progress, tunggu hingga selesai!");

                Dialog_Show(playerid, CRAFTING_CARD, DIALOG_STYLE_MSGBOX, ""TTR""SERVER_NAME""WHITE" - Crafting Card", 
                ""WHITE"Anda akan membuat "LIGHTGOLDENROD"Hacking Card"WHITE" dengan bahan sebagai berikut\
                \n\nBesi: "ORANGE"%d/50\
                \n"WHITE"Tembaga: "ORANGE"%d/25\
                \n"WHITE"Plastik: "ORANGE"%d/30\
                \n"WHITE"Karet: "ORANGE"%d/30\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ? )", "Crafting", "Cancel", Inventory_Count(playerid, "Besi"), Inventory_Count(playerid, "Tembaga"), Inventory_Count(playerid, "Plastik"), Inventory_Count(playerid, "Karet"));
            }
            else ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal 3 Polisi Duty");
        }

        new id = IsPlayerNearRobberyBox(playerid);
        if(id != -1)
        {
            if(!PlayerHasItem(playerid, "Hacking Card")) 
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Hacking Card!");
                
            new count;

            foreach(new i : Player) if (AccountData[i][IsLoggedIn])
            {
                if(AccountData[i][pFaction] == FACTION_POLISI && AccountData[i][pDutyPD]) count ++;
            }
            if(count >= 3)
            {
                if(IsRobbery[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang merampok warung!");
                if(g_RobberyTime != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Robbery Sedang Delay, anda harus menunggu %d menit untuk bisa robbery kembali!", g_RobberyTime/60));

                PreparingRobbery(playerid);
                Inventory_Close(playerid);
            }
            else return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal 3");
        }
    }
    return 1;
}

Dialog:CRAFTING_CARD(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Level anda masih terlalu rendah untuk membuat hacking card! (Min: 15)");
    if(Inventory_Count(playerid, "Besi") < 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 50!");
    if(Inventory_Count(playerid, "Tembaga") < 25) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 25!");
    if(Inventory_Count(playerid, "Plastik") < 30) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 30!");
    if(Inventory_Count(playerid, "Karet") < 30) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 30!");

    AccountData[playerid][ActivityTime] = 1;
    CraftCardTimer[playerid] = SetTimerEx("HackingCard", 1000, true, "d", playerid);
    PlayerTextDrawSetString(playerid, ProgressBar[playerid][2], "CRAFTING");
    ShowProgressBar(playerid);
    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
    return 1;
}

Function: HackingCard(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsPlayerInRangeOfPoint(playerid, 3.0, 2763.2434,1454.9568,10.8450))
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Anda terlalu jauh dari tempat crafting card!");
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured] != 0)
    {
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Besi") < 50)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 50!");
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Tembaga") < 25)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 25!");
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Plastik") < 30)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Plastik tidak cukup, butuh 30!");
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Karet") < 30)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Karet tidak cukup, butuh 30!");
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 15)
    {
        KillTimer(CraftCardTimer[playerid]);
        CraftCardTimer[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        Inventory_Remove(playerid, "Besi", 50);
        Inventory_Remove(playerid, "Tembaga", 25);
        Inventory_Remove(playerid, "Plastik", 30);
        Inventory_Remove(playerid, "Karet", 30);

        Inventory_Add(playerid, "Hacking Card", 19792);
		ShowItemBox(playerid, "Received 1x", "Hacking Card", 19792);
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 94/15;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][1], progressvalue, 20.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][1]);
        return 0;
    }
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    if(IsRobbery[playerid])
    {
        new isCorrect = -1, Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);

        for(new i = 0; i < 10; i ++)
        {
            if(playertextid == RobberyBankTD[playerid][ClueBoxes[playerid][i]])
            {
                isCorrect = i;
                break;
            }
        }

        if(ClickIndex[playerid] == _:playertextid)
        {
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah menekan tombol ini sebelumnya!");
        }

        ClickIndex[playerid] = _:playertextid;

        if(isCorrect != -1)
        {
            PlayerTextDrawColor(playerid, RobberyBankTD[playerid][ClueBoxes[playerid][isCorrect]], -1);
            PlayerTextDrawShow(playerid, RobberyBankTD[playerid][ClueBoxes[playerid][isCorrect]]);

            CorrectClicks[playerid] ++;

            if(CorrectClicks[playerid] >= 10)
            {
                IsRobbery[playerid] = false;
                CorrectClicks[playerid] = 0;
                WrongClicks[playerid] = 0;
                CancelSelectTextDraw(playerid);

                DurringRobbery[playerid] = true;
                AccountData[playerid][pRobMin] = 420;
                g_RobberyTime = 2400;

                Inventory_Remove(playerid, "Hacking Card");
                ShowItemBox(playerid, "Removed 1x", "Hacking Card", 19792);
                SendClientMessageToAllEx(-1, "{FF0000}BERITA:{FFFFFF} TELAH TERJADI PERAMPOKAN WARUNG DI %s. WARGA HARAP MENJAUH DARI AREA PERAMPOKAN!", GetLocation(x, y, z));
                
                foreach(new i : Player) if (AccountData[i][IsLoggedIn])
                {
                    if(AccountData[i][pFaction] == FACTION_POLISI && AccountData[i][pDutyPD])
                    {
                        static shstr[255];
                        format(shstr, sizeof(shstr), "{FF0000}[ALARM]"WHITE"Telah terjadi perampokan warung di~n~%s", GetLocation(x, y, z));
                        RobberyShowTD(i, shstr);
                        
                        SetPlayerRaceCheckpoint(i, 1, x, y, z, 0.0, 0.0, 0.0, 5.0);
                        ShowTDN(playerid, NOTIFICATION_WARNING, "Lokasi warung yang sedang dirampok telah ditandai pada blip di map!");
                    }
                }

                for(new i = 1; i < 37; i ++) 
                {
                    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][i], -1061109505);
                    for(new j = 0; j < 37; j ++) 
                    {
                        PlayerTextDrawHide(playerid, RobberyBankTD[playerid][j]);
                    }
                }
            }
        }
        else
        {
            PlayerTextDrawColor(playerid, playertextid, 0xFF0000FF);
            PlayerTextDrawShow(playerid, playertextid);
            
            WrongClicks[playerid] ++;

            if(WrongClicks[playerid] >= 10)
            {
                SendClientMessage(playerid, -1, ""LIGHTGOLDENROD"[ROBBERY] "WHITE"Terlalu banyak kesalahan pada pemilihan box, anda gagal!");
                IsRobbery[playerid] = false;
                CorrectClicks[playerid] = 0;
                WrongClicks[playerid] = 0;
                CancelSelectTextDraw(playerid);

                ClearAnimations(playerid);
                StopLoopingAnim(playerid);
                ApplyAnimationEx(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);

                for(new i = 1; i < 37; i ++)
                {
                    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][i], -1061109505);
                    for(new j = 0; j < 37; j ++) 
                    {
                        PlayerTextDrawHide(playerid, RobberyBankTD[playerid][j]);
                    }
                }
            }
        }
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
    CreateRobberyTextdraw(playerid);
    IsRobbery[playerid] = false;
    CorrectClicks[playerid] = 0;
    WrongClicks[playerid] = 0;
    ClickIndex[playerid] = -1;
    for(new i = 0; i < 10; i ++) ClueBoxes[playerid][i] = 0;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DestroyRobberyTextdraw(playerid);
    IsRobbery[playerid] = false;
    CorrectClicks[playerid] = 0;
    WrongClicks[playerid] = 0;
    ClickIndex[playerid] = -1;
    for(new i = 0; i < 10; i ++) ClueBoxes[playerid][i] = 0;
    return 1;
}

/*hook OnPlayerShootDynObj(playerid, weaponid, STREAMER_TAG_OBJECT:objectid, Float:x, Float:y, Float:z)
{
	for (new id = 0; id < MAX_DYNAMIC_ROBBERY; id ++)
	{
		if (GetPlayerWeapon(playerid) >= 22 && GetPlayerWeapon(playerid) <= 45 && RobberyData[id][robberyObjectID] == objectid)
        {
            new count, count2, Float:px, Float:py, Float:pz;
            GetPlayerPos(playerid, px, py, pz);

            foreach(new i : Player) if (AccountData[i][pSpawned])
            {
                if(AccountData[i][pFaction] == FACTION_POLISI && AccountData[i][pDutyPD]) count ++;
                if(AccountData[i][pFaction] == FACTION_EMS && AccountData[i][pDutyEms]) count2 ++;
            }
            if(count >= 4 && count2 >= 2) 
            {
                if(DurringRobbery[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang merampok warung!");
                if(g_RobberyTime != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Robbery Sedang Delay, anda harus menunggu %d menit untuk bisa robbery kembali!", g_RobberyTime/60));

                DurringRobbery[playerid] = true;
                AccountData[playerid][pRobMin] = 420;
                g_RobberyTime = 2400;
                SendClientMessageToAllEx(-1, "{201EE5}POLDA:{FFFFFF} Telah terjadi perampokan di %s. Warga harap menjauh dari area perampokan!", GetLocation(px, py, pz));
                
                foreach(new i : Player) if (AccountData[i][pSpawned])
                {
                    if(AccountData[i][pFaction] == FACTION_POLISI && AccountData[i][pDutyPD])
                    {
                        static shstr[255];
                        format(shstr, sizeof(shstr), "Telah terjadi perampokan warung di~n~%s", GetLocation(px, py, pz));
                        RobberyShowTD(i, shstr);
                        
                        SetPlayerRaceCheckpoint(i, 1, px, py, pz, 0.0, 0.0, 0.0, 5.0);
                        Warning(i, "Lokasi warung yang sedang dirampok telah ditandai pada blip di map!");
                    }
                }
            }
            else return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal 4 Polisi Duty & 2 EMS Duty");
        }
    }
    return 1;
}*/

hook OnPlayerEditDynObject(playerid, STREAMER_TAG_OBJECT:objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
    if(AccountData[playerid][EditingROBERID] != -1 && Iter_Contains(Robbery, AccountData[playerid][EditingROBERID]))
	{
		if(response == EDIT_RESPONSE_FINAL)
	    {
	        new etid = AccountData[playerid][EditingROBERID];
	        RobberyData[etid][robberyPos][0] = x;
	        RobberyData[etid][robberyPos][1] = y;
	        RobberyData[etid][robberyPos][2] = z;
	        RobberyData[etid][robberyRot][0] = rx;
	        RobberyData[etid][robberyRot][1] = ry;
	        RobberyData[etid][robberyRot][2] = rz;

	        SetDynamicObjectPos(objectid, RobberyData[etid][robberyPos][0], RobberyData[etid][robberyPos][1], RobberyData[etid][robberyPos][2]);
	        SetDynamicObjectRot(objectid, RobberyData[etid][robberyRot][0], RobberyData[etid][robberyRot][1], RobberyData[etid][robberyRot][2]);

            Robbery_Rebuild(etid);
		    Robbery_Save(etid);
	        AccountData[playerid][EditingROBERID] = -1;
	    }
	    if(response == EDIT_RESPONSE_CANCEL)
	    {
	        new etid = AccountData[playerid][EditingROBERID];
	        SetDynamicObjectPos(objectid, RobberyData[etid][robberyPos][0], RobberyData[etid][robberyPos][1], RobberyData[etid][robberyPos][2]);
	        SetDynamicObjectRot(objectid, RobberyData[etid][robberyRot][0], RobberyData[etid][robberyRot][1], RobberyData[etid][robberyRot][2]);
	        AccountData[playerid][EditingROBERID] = -1;
	    }
	}
    return 1;
}

FUNC::RobberyShowTD(playerid, text[])
{
	if (GetPVarInt(playerid, "ShowRobbery") != -1)
	{
		TextDrawHideForPlayer(playerid, RobberyGlobalTD[0]);
		TextDrawHideForPlayer(playerid, RobberyGlobalTD[1]);
		TextDrawHideForPlayer(playerid, RobberyGlobalTD[2]);
		TextDrawHideForPlayer(playerid, RobberyGlobalTD[3]);
		TextDrawHideForPlayer(playerid, RobberyGlobalTD[4]);
		KillTimer(GetPVarInt(playerid, "ShowRobbery"));
	}
	TextDrawSetString(RobberyGlobalTD[4], text);
	TextDrawShowForPlayer(playerid, RobberyGlobalTD[0]);
	TextDrawShowForPlayer(playerid, RobberyGlobalTD[1]);
	TextDrawShowForPlayer(playerid, RobberyGlobalTD[2]);
	TextDrawShowForPlayer(playerid, RobberyGlobalTD[3]);
	TextDrawShowForPlayer(playerid, RobberyGlobalTD[4]);
	SetPVarInt(playerid, "ShowRobbery", SetTimerEx("HideRobbery", 10000, false, "d", playerid));
	return 1;
}

FUNC::HideRobbery(playerid)
{
	SetPVarInt(playerid, "ShowRobbery", -1);
	TextDrawHideForPlayer(playerid, RobberyGlobalTD[0]);
	TextDrawHideForPlayer(playerid, RobberyGlobalTD[1]);
	TextDrawHideForPlayer(playerid, RobberyGlobalTD[2]);
	TextDrawHideForPlayer(playerid, RobberyGlobalTD[3]);
	TextDrawHideForPlayer(playerid, RobberyGlobalTD[4]);
}

FUNC:: OnRobberyUpdate(playerid)
{
    if(DurringRobbery[playerid])
    {
        if(AccountData[playerid][pRobMin] != 0)
        {
            static string[512];
            new hours, minutes, seconds;
            GetElapsedTime(AccountData[playerid][pRobMin]--, hours, minutes, seconds);
            format(string, sizeof string, "Mohon tetap diwarung~n~selama %02d menit %02d detik", minutes, seconds);
            PlayerTextDrawSetString(playerid, RobberyTextTD[playerid][0], string);
            PlayerTextDrawShow(playerid, RobberyTextTD[playerid][0]);
    
            if(!AccountData[playerid][pRobMin])
            {
                new rands = RandomEx(6000, 15000);
                AccountData[playerid][pRedMoney] += rands;
                AccountData[playerid][pRobMin] = 0;
                DurringRobbery[playerid] = false;
                PlayerTextDrawHide(playerid, RobberyTextTD[playerid][0]);

                SendClientMessageEx(playerid, -1, "[i] Anda berhasil merampok warung, dan anda mendapatkan "RED"%s"WHITE" uang merah hasil merampok", FormatMoney(rands));
            }
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

CreateRobberyTextdraw(playerid)
{
    PreparingHocksTD[playerid][0] = CreatePlayerTextDraw(playerid, 238.000, 117.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][0], 160.000, 55.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][0], 505428735);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][0], 1);

    PreparingHocksTD[playerid][1] = CreatePlayerTextDraw(playerid, 306.000, 125.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][1], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][1], 1);

    PreparingHocksTD[playerid][2] = CreatePlayerTextDraw(playerid, 306.000, 130.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][2], 10.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][2], 1);

    PreparingHocksTD[playerid][3] = CreatePlayerTextDraw(playerid, 311.000, 125.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][3], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][3], 1);

    PreparingHocksTD[playerid][4] = CreatePlayerTextDraw(playerid, 324.000, 125.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][4], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][4], 1);

    PreparingHocksTD[playerid][5] = CreatePlayerTextDraw(playerid, 318.000, 130.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][5], 10.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][5], 1);

    PreparingHocksTD[playerid][6] = CreatePlayerTextDraw(playerid, 318.000, 125.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][6], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][6], 1);

    PreparingHocksTD[playerid][7] = CreatePlayerTextDraw(playerid, 324.000, 144.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][7], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][7], 1);

    PreparingHocksTD[playerid][8] = CreatePlayerTextDraw(playerid, 318.000, 138.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][8], 10.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][8], 1);

    PreparingHocksTD[playerid][9] = CreatePlayerTextDraw(playerid, 318.000, 143.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][9], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][9], 1);

    PreparingHocksTD[playerid][10] = CreatePlayerTextDraw(playerid, 306.000, 144.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][10], 4.000, 4.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][10], 1);

    PreparingHocksTD[playerid][11] = CreatePlayerTextDraw(playerid, 306.000, 138.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][11], 10.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][11], 1);

    PreparingHocksTD[playerid][12] = CreatePlayerTextDraw(playerid, 311.000, 143.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PreparingHocksTD[playerid][12], 5.000, 5.000);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][12], 1);

    PreparingHocksTD[playerid][13] = CreatePlayerTextDraw(playerid, 297.000, 152.000, "Preparing hacks...");
    PlayerTextDrawLetterSize(playerid, PreparingHocksTD[playerid][13], 0.140, 1.199);
    PlayerTextDrawAlignment(playerid, PreparingHocksTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, PreparingHocksTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, PreparingHocksTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, PreparingHocksTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, PreparingHocksTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, PreparingHocksTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, PreparingHocksTD[playerid][13], 1);

    RobberyBankTD[playerid][0] = CreatePlayerTextDraw(playerid, 211.000, 111.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][0], 227.000, 265.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][0], 505428735);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][0], 1);

    RobberyBankTD[playerid][1] = CreatePlayerTextDraw(playerid, 217.000, 121.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][1], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][1], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][1], 1);

    RobberyBankTD[playerid][2] = CreatePlayerTextDraw(playerid, 253.000, 121.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][2], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][2], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][2], 1);

    RobberyBankTD[playerid][3] = CreatePlayerTextDraw(playerid, 289.000, 121.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][3], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][3], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][3], 1);

    RobberyBankTD[playerid][4] = CreatePlayerTextDraw(playerid, 325.000, 121.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][4], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][4], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][4], 1);

    RobberyBankTD[playerid][5] = CreatePlayerTextDraw(playerid, 361.000, 121.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][5], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][5], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][5], 1);

    RobberyBankTD[playerid][6] = CreatePlayerTextDraw(playerid, 397.000, 121.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][6], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][6], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][6], 1);

    RobberyBankTD[playerid][7] = CreatePlayerTextDraw(playerid, 217.000, 163.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][7], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][7], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][7], 1);

    RobberyBankTD[playerid][8] = CreatePlayerTextDraw(playerid, 253.000, 163.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][8], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][8], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][8], 1);

    RobberyBankTD[playerid][9] = CreatePlayerTextDraw(playerid, 289.000, 163.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][9], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][9], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][9], 1);

    RobberyBankTD[playerid][10] = CreatePlayerTextDraw(playerid, 325.000, 163.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][10], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][10], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][10], 1);

    RobberyBankTD[playerid][11] = CreatePlayerTextDraw(playerid, 361.000, 163.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][11], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][11], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][11], 1);

    RobberyBankTD[playerid][12] = CreatePlayerTextDraw(playerid, 397.000, 163.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][12], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][12], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][12], 1);

    RobberyBankTD[playerid][13] = CreatePlayerTextDraw(playerid, 217.000, 205.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][13], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][13], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][13], 1);

    RobberyBankTD[playerid][14] = CreatePlayerTextDraw(playerid, 253.000, 205.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][14], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][14], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][14], 1);

    RobberyBankTD[playerid][15] = CreatePlayerTextDraw(playerid, 289.000, 205.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][15], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][15], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][15], 1);

    RobberyBankTD[playerid][16] = CreatePlayerTextDraw(playerid, 325.000, 205.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][16], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][16], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][16], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][16], 1);

    RobberyBankTD[playerid][17] = CreatePlayerTextDraw(playerid, 361.000, 205.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][17], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][17], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][17], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][17], 1);

    RobberyBankTD[playerid][18] = CreatePlayerTextDraw(playerid, 397.000, 205.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][18], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][18], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][18], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][18], 1);

    RobberyBankTD[playerid][19] = CreatePlayerTextDraw(playerid, 217.000, 247.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][19], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][19], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][19], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][19], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][19], 1);

    RobberyBankTD[playerid][20] = CreatePlayerTextDraw(playerid, 253.000, 247.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][20], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][20], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][20], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][20], 1);

    RobberyBankTD[playerid][21] = CreatePlayerTextDraw(playerid, 289.000, 247.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][21], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][21], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][21], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][21], 1);

    RobberyBankTD[playerid][22] = CreatePlayerTextDraw(playerid, 325.000, 247.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][22], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][22], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][22], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][22], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][22], 1);

    RobberyBankTD[playerid][23] = CreatePlayerTextDraw(playerid, 361.000, 247.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][23], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][23], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][23], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][23], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][23], 1);

    RobberyBankTD[playerid][24] = CreatePlayerTextDraw(playerid, 397.000, 247.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][24], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][24], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][24], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][24], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][24], 1);

    RobberyBankTD[playerid][25] = CreatePlayerTextDraw(playerid, 217.000, 289.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][25], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][25], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][25], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][25], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][25], 1);

    RobberyBankTD[playerid][26] = CreatePlayerTextDraw(playerid, 253.000, 289.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][26], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][26], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][26], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][26], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][26], 1);

    RobberyBankTD[playerid][27] = CreatePlayerTextDraw(playerid, 289.000, 289.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][27], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][27], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][27], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][27], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][27], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][27], 1);

    RobberyBankTD[playerid][28] = CreatePlayerTextDraw(playerid, 325.000, 289.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][28], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][28], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][28], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][28], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][28], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][28], 1);

    RobberyBankTD[playerid][29] = CreatePlayerTextDraw(playerid, 361.000, 289.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][29], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][29], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][29], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][29], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][29], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][29], 1);

    RobberyBankTD[playerid][30] = CreatePlayerTextDraw(playerid, 397.000, 289.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][30], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][30], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][30], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][30], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][30], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][30], 1);

    RobberyBankTD[playerid][31] = CreatePlayerTextDraw(playerid, 217.000, 331.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][31], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][31], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][31], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][31], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][31], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][31], 1);

    RobberyBankTD[playerid][32] = CreatePlayerTextDraw(playerid, 253.000, 331.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][32], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][32], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][32], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][32], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][32], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][32], 1);

    RobberyBankTD[playerid][33] = CreatePlayerTextDraw(playerid, 289.000, 331.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][33], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][33], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][33], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][33], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][33], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][33], 1);

    RobberyBankTD[playerid][34] = CreatePlayerTextDraw(playerid, 325.000, 331.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][34], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][34], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][34], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][34], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][34], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][34], 1);

    RobberyBankTD[playerid][35] = CreatePlayerTextDraw(playerid, 361.000, 331.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][35], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][35], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][35], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][35], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][35], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][35], 1);

    RobberyBankTD[playerid][36] = CreatePlayerTextDraw(playerid, 397.000, 331.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, RobberyBankTD[playerid][36], 34.000, 37.000);
    PlayerTextDrawAlignment(playerid, RobberyBankTD[playerid][36], 1);
    PlayerTextDrawColor(playerid, RobberyBankTD[playerid][36], -1061109505);
    PlayerTextDrawSetShadow(playerid, RobberyBankTD[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, RobberyBankTD[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyBankTD[playerid][36], 255);
    PlayerTextDrawFont(playerid, RobberyBankTD[playerid][36], 4);
    PlayerTextDrawSetProportional(playerid, RobberyBankTD[playerid][36], 1);
    PlayerTextDrawSetSelectable(playerid, RobberyBankTD[playerid][36], 1);
    return 1;
}

DestroyRobberyTextdraw(playerid)
{
    forex(i, 14) {
        PlayerTextDrawDestroy(playerid, PreparingHocksTD[playerid][i]);
    }
    forex(i, 37) {
        PlayerTextDrawDestroy(playerid, RobberyBankTD[playerid][i]);
    }
    return 1;
}

stock PreparingRobbery(playerid)
{
    if(IsRobbery[playerid]) {
        ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan robbery!");
    }

    IsRobbery[playerid] = true;

    for(new i = 0; i < 14; i ++) {
        PlayerTextDrawShow(playerid, PreparingHocksTD[playerid][i]);
    }

    SetTimerEx("StartRobbery", 5000, false, "d", playerid);
    return 1;
}

Function: StartRobbery(playerid)
{
    // Sembunyikan semua PreparingHocksTD
    for(new i = 0; i < 14; i++) 
    {
        PlayerTextDrawHide(playerid, PreparingHocksTD[playerid][i]);
    }

    new clueCount = 0;
    new bool: alreadySelected = false;

    // Loop untuk memilih 10 kotak clue secara acak
    while(clueCount < 10) 
    {
        new randomIndex = random(36) + 1; // Menghasilkan angka random dari 1 sampai 36 (kotak 0 tidak dihitung)
        alreadySelected = false;

        // Periksa apakah randomIndex sudah ada di ClueBoxes
        for(new j = 0; j < clueCount; j++) 
        {
            if(ClueBoxes[playerid][j] == randomIndex) 
            {
                alreadySelected = true;
                break;
            }
        }

        // Jika belum terpilih, masukkan ke ClueBoxes dan tampilkan kotaknya
        if(!alreadySelected) 
        {
            ClueBoxes[playerid][clueCount] = randomIndex;
            clueCount++;
            PlayerTextDrawColor(playerid, RobberyBankTD[playerid][randomIndex], -1);
        }
    }

    // Tampilkan semua TextDraw
    for(new i = 0; i < 37; i++) 
    {
        PlayerTextDrawShow(playerid, RobberyBankTD[playerid][i]);
    }

    // Timer untuk reset clue box setelah 5 detik
    SetTimerEx("ResetClueBox", 5500, false, "d", playerid);
    return 1;
}


Function: ResetClueBox(playerid)
{
    if(!IsRobbery[playerid]) return 0;

    for(new i = 1; i < 37; i ++) 
    {
        PlayerTextDrawHide(playerid, RobberyBankTD[playerid][i]);
    }
    
    SetTimerEx("ShowingClueBox", 2000, false, "d", playerid);
    return 1;
}

Function: ShowingClueBox(playerid)
{
    if(!IsRobbery[playerid]) return 0;

    for(new i = 1; i < 37; i ++) 
    {
        PlayerTextDrawColor(playerid, RobberyBankTD[playerid][i], -1061109505);
        PlayerTextDrawShow(playerid, RobberyBankTD[playerid][i]);
    }

    SelectTextDraw(playerid, X11_BROWN);
    return 1;
}

FUNC:: RobberyDelay_Update()
{
	if(g_RobberyTime > 0)
	{
		g_RobberyTime --;
		if(!g_RobberyTime)
		{
			g_RobberyTime = 0;
		}
	}
	return 1;
}