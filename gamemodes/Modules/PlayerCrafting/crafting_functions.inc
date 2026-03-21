#include <YSI\y_hooks>

new pTimerCrafting[MAX_PLAYERS] = {-1, ...};

new CraftingPassword[7][32];

#define DIALOG_CRAFT_MAIN      5120
#define DIALOG_CRAFT_KEVLAR    5121

enum e_stuffcrafting
{
    STREAMER_TAG_AREA: CraftingArea,
    STREAMER_TAG_3D_TEXT_LABEL:CraftingLabel
};
new Stuff_Craft[e_stuffcrafting];

hook OnScriptInit()
{
    Stuff_Craft[CraftingArea] = CreateDynamicSphere(-1861.3737,-1551.6580,21.7500, 2.0, 0, 0, -1);
    Stuff_Craft[CraftingLabel] = CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Crafting", -1, -1861.3737,-1551.6580,21.7500, 20.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0, -1, 20.0, -1, 0);

    // Set default password
    format(CraftingPassword[0], 32, "Colt");
    format(CraftingPassword[1], 32, "Desert Eagle");
    format(CraftingPassword[2], 32, "shotpass");
    format(CraftingPassword[3], 32, "mp5pass");
    format(CraftingPassword[4], 32, "ak47pass");
    format(CraftingPassword[5], 32, "tecpass");
}

hook OnPlayerConnect(playerid)
{
    pTimerCrafting[playerid] = -1;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    KillTimer(pTimerCrafting[playerid]);
    pTimerCrafting[playerid] = -1;
    return 1;
}
forward Colt(playerid);
public Colt(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured] != 0)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Material") < 80)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 80!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Tembaga") < 120)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 120!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Baja") < 25)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 25!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kayu Kemas") < 8)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 8!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 20)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        Inventory_Remove(playerid, "Material", 80);
        Inventory_Remove(playerid, "Tembaga", 120);
        Inventory_Remove(playerid, "Baja", 25);
        Inventory_Remove(playerid, "Kayu Kemas", 8);
        AccountData[playerid][pRedMoney] -= 10000;

        GivePlayerWeaponEx(playerid, 22, 150);
		ShowItemBox(playerid, "Received 1x", "Colt-45", 346);
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/20;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}
forward DesertE(playerid);
public DesertE(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured] != 0)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Material") < 250)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 250!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Baja") < 60)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 60!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kaca") < 10)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 10!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kayu Kemas") < 20)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 20!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 20)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        
        Inventory_Remove(playerid, "Material", 250);
        Inventory_Remove(playerid, "Baja", 60);
        Inventory_Remove(playerid, "Kaca", 10);
        Inventory_Remove(playerid, "Kayu Kemas", 20);
        AccountData[playerid][pRedMoney] -= 20000;

        GivePlayerWeaponEx(playerid, 24, 150);
		ShowItemBox(playerid, "Received 1x", "Desert Eagle", 378);
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/20;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}
forward Shotgun(playerid);
public Shotgun(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured] != 0)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Material") < 400)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 400!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Besi") < 350)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 350!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Tembaga") < 250)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 250!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Berlian") < 8)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Berlian tidak cukup, butuh 8!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Baja") < 75)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 75!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Alumunium") < 150)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Alumunium tidak cukup, butuh 150!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kaca") < 30)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kaca tidak cukup, butuh 30!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kayu Kemas") < 100)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 100!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 120)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        Inventory_Remove(playerid, "Material", 400);
        Inventory_Remove(playerid, "Besi", 350);
        Inventory_Remove(playerid, "Tembaga", 250);
        Inventory_Remove(playerid, "Berlian", 8);
        Inventory_Remove(playerid, "Baja", 75);
        Inventory_Remove(playerid, "Alumunium", 150);
        Inventory_Remove(playerid, "Kaca", 30);
        Inventory_Remove(playerid, "Kayu Kemas", 100);
        AccountData[playerid][pRedMoney] -= 30000;

        GivePlayerWeaponEx(playerid, 25, 200);
		ShowItemBox(playerid, "Received 1x", "SHOTGUN", 349);
    }
    else 
    {
        AccountData[playerid][ActivityTime] += 10;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/120;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}
forward Mp5(playerid);
public Mp5(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured] != 0)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Material") < 250)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 250!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kayu Kemas") < 160)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 160!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Baja") < 70)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 70!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Alumunium") < 75)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Alumunium tidak cukup, butuh 75!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 120)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        Inventory_Remove(playerid, "Material", 250);
        Inventory_Remove(playerid, "Kayu Kemas", 160);
        Inventory_Remove(playerid, "Baja", 70);
        Inventory_Remove(playerid, "Alumunium", 75);
        AccountData[playerid][pRedMoney] -= 50000;

        GivePlayerWeaponEx(playerid, 29, 250);
		ShowItemBox(playerid, "Received 1x", "MP5", 353);
    }
    else 
    {
        AccountData[playerid][ActivityTime] += 10;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/120;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}
forward Ak47(playerid);
public Ak47(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured] != 0)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Material") < 350)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 350!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kayu Kemas") < 200)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 200!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Baja") < 150)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 150!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 20)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        Inventory_Remove(playerid, "Material", 350);
        Inventory_Remove(playerid, "Kayu Kemas", 200);
        Inventory_Remove(playerid, "Baja", 150);
        AccountData[playerid][pRedMoney] -= 65000;

        GivePlayerWeaponEx(playerid, 30, 250);
		ShowItemBox(playerid, "Received 1x", "AK-47", 355);
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/20;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}

forward Tec9(playerid);
public Tec9(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, Stuff_Craft[CraftingArea]))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pInjured] != 0)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Material") < 450)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 450!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Besi") < 100)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 100!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Baja") < 75)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 75!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Alumunium") < 60)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Alumunium tidak cukup, butuh 60!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Tembaga") < 500)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 500!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }


    if(Inventory_Count(playerid, "Emas") < 30)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Emas tidak cukup, butuh 30!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Berlian") < 10)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Berlian tidak cukup, butuh 10!");
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 20)
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        
        StopLoopingAnim(playerid);
        ClearAnimations(playerid, 1);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

        Inventory_Remove(playerid, "Material", 450);
        Inventory_Remove(playerid, "Besi", 100);
        Inventory_Remove(playerid, "Baja", 75);
        Inventory_Remove(playerid, "Alumunium", 60);
        Inventory_Remove(playerid, "Tembaga", 500);
        Inventory_Remove(playerid, "Emas", 30);
        Inventory_Remove(playerid, "Berlian", 10);
        AccountData[playerid][pRedMoney] -= 15000;

        GivePlayerWeaponEx(playerid, 32, 200);
		ShowItemBox(playerid, "Received 1x", "TEC-9", 372);
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/20;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        // Hitung jumlah polisi duty
        new countpd = 0;
        foreach(new pid : Player)
        {
            if(IsPlayerConnected(pid) && AccountData[pid][pDutyPD])
            {
                countpd++;
            }
        }
        if(IsPlayerInDynamicArea(playerid, Stuff_Craft[CraftingArea]))
        {
            if(countpd >= 0)
            {
                if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Level Anda tidak cukup! (Min: 15)");
                if(AccountData[playerid][pFamily] < 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak tergabung dalam Family!");
                if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");

                ShowPlayerDialog(playerid, DIALOG_CRAFTING, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Crafting", 
                    "Colt 45\nDesert Eagle\nShotgun\nMP5\nAK-47\nTEC-9\nGun Clip", "Pilih", "Batal");
            }
            else return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal 3 Polisi Duty");
        }
    }
    return 1;
}

Dialog:DIALOG_CRAFTPASS(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
    if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Level Anda tidak cukup! (Min: 15)");
    if(AccountData[playerid][pFamily] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak tergabung dalam Family!");
    if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");
    if(IsPlayerInjured(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!, tidak dapat crafting!");

    if(isnull(inputtext)) return Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
    "Error: Tidak dapat diisi kosong!\nMohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");

    if(IsNumeric(inputtext)) if(isnull(inputtext)) return Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
    "Error: Tidak dapat diisi angka!\nMohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");
    
    new jskc[600];
    if(!strcmp(inputtext, CraftingPassword[AccountData[playerid][pTempValue]], true))
    {
        switch(AccountData[playerid][pTempValue])
        {
            case 0:
            {
                format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"Colt 45"WHITE" dengan bahan sebagai berikut:\
                \n\nMaterial: "ORANGE"%d/80\
                \n"WHITE"Tembaga: "ORANGE"%d/120\
                \n"WHITE"Baja: "ORANGE"%d/25\
                \n"WHITE"Kayu Kemas: "ORANGE"%d/8\
                \n"WHITE"Uang Merah: "RED"10000\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ?)", Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Tembaga"),
                Inventory_Count(playerid, "Baja"), Inventory_Count(playerid, "Kayu Kemas"));
                ShowPlayerDialog(playerid, DIALOG_CRAFTINGCONF, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting", jskc, "Iya", "Tidak");
            }
            case 1:
            {
                format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"Desert Eagle"WHITE" dengan bahan sebagai berikut\
                \n\nMaterial: "ORANGE"%d/250\
                \n"WHITE"Baja: "ORANGE"%d/60\
                \n"WHITE"Kaca: "ORANGE"%d/10\
                \n"WHITE"Kayu Kemas: "ORANGE"%d/20\
                \n"WHITE"Uang Merah: "RED"20000\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ? )", Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Baja"),
                Inventory_Count(playerid, "Kaca"), Inventory_Count(playerid, "Kayu Kemas"));
                ShowPlayerDialog(playerid, DIALOG_CRAFTINGCONF, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting", jskc, "Iya", "Tidak");
            }
            case 2: // Shotgun
            {
                format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"Shotgun"WHITE" dengan bahan sebagai berikut\
                \n\nMaterial: "ORANGE"%d/400\
                \n"WHITE"Besi: "ORANGE"%d/350\
                \n"WHITE"Tembaga: "ORANGE"%d/250\
                \n"WHITE"Berlian: "ORANGE"%d/8\
                \n"WHITE"Baja: "ORANGE"%d/75\
                \n"WHITE"Alumunium: "ORANGE"%d/150\
                \n"WHITE"Kaca: "ORANGE"%d/30\
                \n"WHITE"Kayu Kemas: "ORANGE"%d/100\
                \n"WHITE"Uang Merah: "RED"30000\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ? )", Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Besi"),
                Inventory_Count(playerid, "Tembaga"), Inventory_Count(playerid, "Berlian"), Inventory_Count(playerid, "Baja"), Inventory_Count(playerid, "Alumunium"), Inventory_Count(playerid, "Kaca"), 
                Inventory_Count(playerid, "Kayu Kemas"));
                ShowPlayerDialog(playerid, DIALOG_CRAFTINGCONF, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting", jskc, "Iya", "Tidak");
            }
            case 3: // MP5
            {
                format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"MP5"WHITE" dengan bahan sebagai berikut\
                \n\nMaterial: "ORANGE"%d/250\
                \n"WHITE"Kayu Kemas: "ORANGE"%d/160\
                \n"WHITE"Baja: "ORANGE"%d/70\
                \n"WHITE"Alumunium: "ORANGE"%d/75\
                \n"WHITE"Uang Merah: "RED"50000\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ?)", Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Kayu Kemas"), 
                Inventory_Count(playerid, "Baja"), Inventory_Count(playerid, "Alumunium"));
                ShowPlayerDialog(playerid, DIALOG_CRAFTINGCONF, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting", jskc, "Iya", "Tidak");
            }
            case 4: // AK
            {
                format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"AK47"WHITE" dengan bahan sebagai berikut\
                \n\nMaterial: "ORANGE"%d/350\
                \n"WHITE"Kayu Kemas: "ORANGE"%d/200\
                \n"WHITE"Baja: "ORANGE"%d/150\
                \n"WHITE"Uang Merah: "RED"65000\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ?)", Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Kayu Kemas"), 
                Inventory_Count(playerid, "Baja"));
                ShowPlayerDialog(playerid, DIALOG_CRAFTINGCONF, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting", jskc, "Iya", "Tidak");
            }
            case 5: // TEC
            {
                format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"Tec-9"WHITE" dengan bahan sebagai berikut\
                \n\nMaterial: "ORANGE"%d/450\
                \n"WHITE"Besi: "ORANGE"%d/100\
                \n"WHITE"Baja: "ORANGE"%d/75\
                \n"WHITE"Alumunium: "ORANGE"%d/60\
                \n"WHITE"Tembaga: "ORANGE"%d/500\
                \n"WHITE"Emas: "ORANGE"%d/30\n\
                \n"WHITE"Berlian: "ORANGE"%d/10\
                \n"WHITE"Uang Merah: "RED"15000\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ?)",
                Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Besi"), Inventory_Count(playerid, "Baja"), Inventory_Count(playerid, "Alumunium"), Inventory_Count(playerid, "Tembaga"),
                Inventory_Count(playerid, "Emas"), Inventory_Count(playerid, "Berlian"));
                ShowPlayerDialog(playerid, DIALOG_CRAFTINGCONF, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting", jskc, "Iya", "Tidak");
            }
            case 6: { // Clip
                format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"Clip"WHITE" dengan bahan sebagai berikut\
                \n\nBesi: "ORANGE"%d/100\
                \n"WHITE"Tembaga: "ORANGE"%d/100\
                \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ? )", Inventory_Count(playerid, "Besi"), Inventory_Count(playerid, "Tembaga"));
                ShowPlayerDialog(playerid, DIALOG_CRAFTINGCONF, DIALOG_STYLE_MSGBOX, ""TTR""SERVER_NAME" "WHITE"- Crafting", jskc, "Iya", "Tidak");
            }
        }
    }
    else 
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kata sandi yang anda masukkan salah!");
        AccountData[playerid][pTempValue] = -1;
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_CRAFTING:
        {
            if(!response) return 1;
            if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Level Anda tidak cukup! (Min: 15)");
            if(AccountData[playerid][pFamily] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak tergabung dalam Family!");
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");
            if(IsPlayerInjured(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!, tidak dapat crafting!");
            switch(listitem)
            {
                case 0:// Colt
                {
                    Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
                    "Mohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");
                }
                case 1:// Desert Eagle
                {
                    Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
                    "Mohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");
                }
                case 2:// Shotgun
                {
                    Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
                    "Mohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");
                }
                case 3:// MP5
                {
                    Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
                    "Mohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");
                }
                case 4:// AK47
                {
                    Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
                    "Mohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");
                }
                case 5:// TEC-9
                {
                    Dialog_Show(playerid, DIALOG_CRAFTPASS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Crafting Password",
                    "Mohon masukkan kata kunci / sandi jika ingin Crafting senjata tersebut dengan benar:", "Input", "Batal");
                }
            }
            AccountData[playerid][pTempValue] = listitem;
        }
        case DIALOG_CRAFTINGCONF:
        {
            if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan pilihan");
            switch(AccountData[playerid][pTempValue])
            {
				case 0: // Colt-45
				{
                    if(Inventory_Count(playerid, "Material") < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 80!");
                    if(Inventory_Count(playerid, "Tembaga") < 120) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 120!");
                    if(Inventory_Count(playerid, "Baja") < 25) return ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 25!");
                    if(Inventory_Count(playerid, "Kayu Kemas") < 8) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 8!");
                    if(AccountData[playerid][pRedMoney] < 10000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang merah tidak mencukupi!");

                    AccountData[playerid][ActivityTime] = 1;
					pTimerCrafting[playerid] = SetTimerEx("Colt", 1000, true, "d", playerid);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
				}
				case 1: // Desert Eagle
				{
                    if(Inventory_Count(playerid, "Material") < 250) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 250!");
                    if(Inventory_Count(playerid, "Baja") < 60) return ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 60!");
                    if(Inventory_Count(playerid, "Kaca") < 10) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kaca tidak cukup, butuh 10!");
                    if(Inventory_Count(playerid, "Kayu Kemas") < 20) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 20!");
                    if(AccountData[playerid][pRedMoney] < 20000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang merah tidak mencukupi!");

                    AccountData[playerid][ActivityTime] = 1;
					pTimerCrafting[playerid] = SetTimerEx("DesertE", 1000, true, "d", playerid);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
				}
				case 2: // Shotgun
				{
                    if(Inventory_Count(playerid, "Material") < 400) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 400!");
                    if(Inventory_Count(playerid, "Besi") < 350) return ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 350!");
                    if(Inventory_Count(playerid, "Tembaga") < 250) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 250!");
                    if(Inventory_Count(playerid, "Berlian") < 8) return ShowTDN(playerid, NOTIFICATION_ERROR, "Berlian tidak cukup, butuh 8!");
                    if(Inventory_Count(playerid, "Baja") < 75) return ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 75!");
                    if(Inventory_Count(playerid, "Alumunium") < 150) return ShowTDN(playerid, NOTIFICATION_ERROR, "Alumunium tidak cukup, butuh 150!");
                    if(Inventory_Count(playerid, "Kaca") < 30) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kaca tidak cukup, butuh 30!");
                    if(Inventory_Count(playerid, "Kayu Kemas") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 100!");
                    if(AccountData[playerid][pRedMoney] < 30000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang merah tidak mencukupi!");

                    AccountData[playerid][ActivityTime] = 1;
					pTimerCrafting[playerid] = SetTimerEx("Shotgun", 1000, true, "d", playerid);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
				}
				case 3: // Mp 5
				{
                    if(Inventory_Count(playerid, "Material") < 250) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 250!");
                    if(Inventory_Count(playerid, "Kayu Kemas") < 160) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 160!");
                    if(Inventory_Count(playerid, "Baja") < 70) return ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 70!");
                    if(Inventory_Count(playerid, "Alumunium") < 75) return ShowTDN(playerid, NOTIFICATION_ERROR, "Alumunium tidak cukup, butuh 75!");
                    if(AccountData[playerid][pRedMoney] < 50000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang merah tidak mencukupi!");

                    AccountData[playerid][ActivityTime] = 1;
					pTimerCrafting[playerid] = SetTimerEx("Mp5", 1000, true, "d", playerid);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
				}
				case 4: // Ak-47
				{
                    if(Inventory_Count(playerid, "Material") < 350) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 350!");
                    if(Inventory_Count(playerid, "Kayu Kemas") < 200) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 200!");
                    if(Inventory_Count(playerid, "Baja") < 150) return ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 150!");
                    if(AccountData[playerid][pRedMoney] < 65000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang merah tidak mencukupi!");

                    AccountData[playerid][ActivityTime] = 1;
					pTimerCrafting[playerid] = SetTimerEx("Ak47", 1000, true, "d", playerid);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
				}
				case 5: // TEC-9
				{
                    if(Inventory_Count(playerid, "Material") < 450) return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 450!");
                    if(Inventory_Count(playerid, "Besi") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 100!");
                    if(Inventory_Count(playerid, "Baja") < 75) return ShowTDN(playerid, NOTIFICATION_ERROR, "Baja tidak cukup, butuh 75!");
                    if(Inventory_Count(playerid, "Alumunium") < 60) return ShowTDN(playerid, NOTIFICATION_ERROR, "Alumunium tidak cukup, butuh 60!");
                    if(Inventory_Count(playerid, "Tembaga") < 500) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 500!");
                    if(Inventory_Count(playerid, "Emas") < 30) return ShowTDN(playerid, NOTIFICATION_ERROR, "Emas tidak cukup, butuh 30!");
                    if(Inventory_Count(playerid, "Berlian") < 10) return ShowTDN(playerid, NOTIFICATION_ERROR, "Berlian tidak cukup, butuh 10!");
                    if(AccountData[playerid][pRedMoney] < 15000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang merah tidak mencukupi!");

                    AccountData[playerid][ActivityTime] = 1;
					pTimerCrafting[playerid] = SetTimerEx("Tec9", 1000, true, "d", playerid);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
				}
                case 6: { // Gun Clip
                    if(Inventory_Count(playerid, "Besi") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 100!");
                    if(Inventory_Count(playerid, "Tembaga") < 100) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 100!");

                    AccountData[playerid][ActivityTime] = 1;
					pTimerCrafting[playerid] = SetTimerEx("GunClip", 1000, true, "d", playerid);
                    PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
                    ShowProgressBar(playerid);
                    ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);    
                }
            }
        }
    }
    return 0;
}


forward LoadCraftingPasswords();
public LoadCraftingPasswords()
{
    new query[128];
    format(query, sizeof(query), "SELECT * FROM crafting_passwords");
    mysql_tquery(g_SQL, query, "OnLoadCraftingPasswords");
    return 1;
}

forward OnLoadCraftingPasswords();
public OnLoadCraftingPasswords()
{
    new rows = cache_num_rows();
    printf("[Crafting Senjaat]: Loaded %d crafting password(s) from DB", rows);

    if(rows > 0)
    {
        for(new i = 0; i < rows; i++)
        {
            new slot;
            cache_get_value_name_int(i, "weapon_slot", slot);
            cache_get_value_name(i, "password", CraftingPassword[slot], 32);

            printf("[Crafting Senjaat]: Password slot %d = %s", slot, CraftingPassword[slot]);
        }
    }
    else
    {
        format(CraftingPassword[0], 32, "Colt");
        format(CraftingPassword[1], 32, "Desert Eagle");
        format(CraftingPassword[2], 32, "shotgun");
        format(CraftingPassword[3], 32, "mp5");
        format(CraftingPassword[4], 32, "ak47");
        format(CraftingPassword[5], 32, "tec");

        for(new i = 1; i <= 6; i++) UpdateCraftingPasswordToDB(i);
        print("[Crafting Senjaat]: Default password crafting dimasukkan ke database");
    }
    return 1;
}

stock UpdateCraftingPasswordToDB(slot)
{
    new query[144];
    mysql_format(g_SQL, query, sizeof(query), "REPLACE INTO `crafting_passwords` (`weapon_slot`, `password`) VALUES (%d, '%s')", slot, CraftingPassword[slot]);
    mysql_query(g_SQL, query, false);
}

CMD:setcraftpass(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    new slot, password[32];
    if(sscanf(params, "ds[32]", slot, password)) 
        return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/setcraftpass [slot 0-5] [password]");

    if(slot < 0 || slot > 5)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Slot yang valid: 0 (Colt), 1 (Desert Eagle), 2 (Shotgun), 3 (MP5), 4 (AK47), 5 (TEC9)");

    format(CraftingPassword[slot], 32, "%s", password);
    UpdateCraftingPasswordToDB(slot);

    new weaponName[24];
    switch(slot)
    {
        case 0: weaponName = "Colt";
        case 1: weaponName = "Desert Eagle";
        case 2: weaponName = "Shotgun";
        case 3: weaponName = "MP5";
        case 4: weaponName = "AK-47";
        case 5: weaponName = "TEC-9";
    }

    new msg[96];
    format(msg, sizeof(msg), "[Crafting]:"LIGHTGREY" Password untuk %s telah diubah ke "YELLOW"[%s]", weaponName, password);
    SendClientMessageEx(playerid, X11_RED, msg);
    return 1;
}

