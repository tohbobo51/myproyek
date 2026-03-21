#include <YSI\y_hooks>
new KevlarPassword[32];
#define DIALOG_KEVLAR_PASSWORD  8912

enum e_stuffkevlar
{
    STREAMER_TAG_AREA: CraftingKevlar,
    STREAMER_TAG_3D_TEXT_LABEL:CraftingLabelKevlar
};
new Stuff_Kev[e_stuffkevlar];

hook OnScriptInit()
{
    Stuff_Kev[CraftingKevlar] = CreateDynamicSphere(-959.1008,2832.6299,91.3640, 2.0, 0, 0, -1);
    Stuff_Kev[CraftingLabelKevlar] = CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Crafting Kevlar", -1, -959.1008,2832.6299,91.3640, 20.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0, -1, 20.0, -1, 0);
}

forward LoadKevlarPassword();
public LoadKevlarPassword()
{
    mysql_tquery(g_SQL, "SELECT `password` FROM `kevlar_password` WHERE `id` = 1 LIMIT 1", "OnLoadKevlarPassword");
    return 1;
}


forward OnLoadKevlarPassword();
public OnLoadKevlarPassword()
{
    new rows = cache_num_rows();
    printf("[Kevlar]: Rows found in kevlar_password: %d", rows);

    if (rows > 0)
    {
        cache_get_value_name(0, "password", KevlarPassword, sizeof(KevlarPassword));
        printf("[Kevlar]: Password berhasil dimuat dari database: %s", KevlarPassword);
    }
    else
    {
        format(KevlarPassword, sizeof(KevlarPassword), "kevlar");
        UpdateKevlarPassword();
        print("[Kevlar]: Tidak ditemukan password, disetel default: kevlar");
    }
    return 1;
}

stock UpdateKevlarPassword()
{
    if (g_SQL == MYSQL_INVALID_HANDLE) {
        print("[Kevlar]: ERROR: Koneksi database tidak tersedia!");
        return;
    }

    new query[144];
    mysql_format(g_SQL, query, sizeof(query),
        "REPLACE INTO `kevlar_password` (`id`, `password`) VALUES (1, '%e')", KevlarPassword);
    mysql_tquery(g_SQL, query);

    printf("[Kevlar]: Password diperbarui ke: %s", KevlarPassword);
}

CMD:setkevlarpass(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    new password[32];
    if(sscanf(params, "s[32]", password)) 
        return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/setkevlarpass [password]");

    format(KevlarPassword, sizeof(KevlarPassword), "%s", password);
    UpdateKevlarPassword();

    new msg[96];
    format(msg, sizeof(msg), "[Kevlar]:"LIGHTGREY" Password pengolahan Marijuana berhasil diubah ke "YELLOW"[%s]", password);
    SendClientMessageEx(playerid, X11_RED, msg);
    return 1;
}

// Dialog untuk memulai crafting Kevlar
stock ShowKevlarCraftingDialog(playerid)
{
    new jskc[256];
    format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"Kevlar"WHITE" dengan bahan sebagai berikut\
    \n\nMaterial: "ORANGE"%d/50\
    \n"WHITE"Besi: "ORANGE"%d/100\
    \n"WHITE"Kayu Kemas: "ORANGE"%d/100\
    \n"WHITE"Pakaian: "ORANGE"%d/100\
    \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ? )", Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Besi"), Inventory_Count(playerid, "Kayu Kemas"));
    ShowPlayerDialog(playerid, DIALOG_CRAFT_KEVLAR, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting Kevlar", jskc, "Iya", "Tidak");
}

// Dialog Handler
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_CRAFT_MAIN:
        {
            if(!response) return 1;
            ShowPlayerDialog(playerid, DIALOG_KEVLAR_PASSWORD, DIALOG_STYLE_INPUT,
                "Password Crafting Kevlar", "Masukkan sandi untuk mengolah Kevlar:", "Lanjut", "Batal");
        }
        case DIALOG_KEVLAR_PASSWORD:
        {
            if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan pengolahan Kevlar");
            if(!strcmp(inputtext, KevlarPassword, true))
            {
                ShowKevlarCraftingDialog(playerid);
            }
            else
            {
                ShowTDN(playerid, NOTIFICATION_ERROR, "Password salah! Akses ditolak.");
            }
        }
        case DIALOG_CRAFT_KEVLAR:
        {
            if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan crafting Kevlar");

            if(Inventory_Count(playerid, "Material") < 50)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 50!");
            if(Inventory_Count(playerid, "Besi") < 100)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 100!");
            if(Inventory_Count(playerid, "Kayu Kemas") < 100)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Kayu Kemas tidak cukup, butuh 100!");
            if(Inventory_Count(playerid, "Pakaian") < 100)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Pakaian tidak cukup, butuh 100!");

            AccountData[playerid][ActivityTime] = 1;
            pTimerCrafting[playerid] = SetTimerEx("Kevlar", 1000, true, "d", playerid);
            PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "CRAFTING");
            ShowProgressBar(playerid);
            ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
        }
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if((newkeys & KEY_YES) && !(oldkeys & KEY_YES))
    {
        if(IsPlayerInDynamicArea(playerid, Stuff_Kev[CraftingKevlar]))
        {
            if(AccountData[playerid][pLevel] < 5)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Level Anda tidak cukup! (Min: 5)");

            if(AccountData[playerid][ActivityTime] != 0)
                return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");

            ShowPlayerDialog(playerid, DIALOG_CRAFT_MAIN, DIALOG_STYLE_LIST,
                ""TTR"Aeterna Roleplay "WHITE"- Crafting Kevlar",
                "Kevlar", "Pilih", "Batal");
        }
    }
    return 1;
}

forward Kevlar(playerid);
public Kevlar(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pTimerCrafting[playerid]);
        pTimerCrafting[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(Stuff_Kev[CraftingKevlar]))
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

    if(!IsPlayerInDynamicArea(playerid, Stuff_Kev[CraftingKevlar]))
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

    if(Inventory_Count(playerid, "Material") < 50)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 50!");
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

    if(Inventory_Count(playerid, "Pakaian") < 100)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Pakaian tidak cukup, butuh 100!");
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

        Inventory_Remove(playerid, "Material", 50);
        Inventory_Remove(playerid, "Besi", 100);
        Inventory_Remove(playerid, "Kayu Kemas", 100);
        Inventory_Remove(playerid, "Pakaian", 100);
        Inventory_Add(playerid, "Kevlar", 19515, 1);
        ShowItemBox(playerid, "Received 1x", "Kevlar", 19515);
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