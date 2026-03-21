#include <YSI\y_hooks>
new ClipPassword[32];
#define DIALOG_CLIP_PASSWORD  8934
#define DIALOG_CRAFT_v1      5123

enum e_stuffClip
{
    STREAMER_TAG_AREA: CraftingClip,
    STREAMER_TAG_3D_TEXT_LABEL:CraftingLabelClip
};
new Stuff_Clips[e_stuffClip];

hook OnScriptInit()
{
    Stuff_Clips[CraftingClip] = CreateDynamicSphere(-795.8944,2259.5750,59.4689, 2.0, 0, 0, -1);
    Stuff_Clips[CraftingLabelClip] = CreateDynamic3DTextLabel(""GREEN"[Y]"WHITE" Crafting Clip", -1, -795.8944,2259.5750,59.4689, 20.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, 0, -1, 20.0, -1, 0);
}

forward LoadClipPassword();
public LoadClipPassword()
{
    mysql_tquery(g_SQL, "SELECT `password` FROM `Clip_password` WHERE `id` = 1 LIMIT 1", "OnLoadClipPassword");
    return 1;
}


forward OnLoadClipPassword();
public OnLoadClipPassword()
{
    new rows = cache_num_rows();
    printf("[Clip]: Rows found in Clip_password: %d", rows);

    if (rows > 0)
    {
        cache_get_value_name(0, "password", ClipPassword, sizeof(ClipPassword)); // FIXED
        printf("[Clip]: Password berhasil dimuat dari database: %s", ClipPassword); // FIXED
    }
    else
    {
        format(ClipPassword, sizeof(ClipPassword), "ganja123"); // FIXED
        UpdateClipPassword();
        print("[Clip]: Tidak ditemukan password, disetel default: ganja123");
    }
    return 1;
}

stock UpdateClipPassword()
{
    if (g_SQL == MYSQL_INVALID_HANDLE) {
        print("[Clip]: ERROR: Koneksi database tidak tersedia!");
        return;
    }

    new query[144];
    mysql_format(g_SQL, query, sizeof(query),
        "REPLACE INTO `Clip_password` (`id`, `password`) VALUES (1, '%e')", ClipPassword); // FIXED
    mysql_tquery(g_SQL, query);

    printf("[Clip]: Password diperbarui ke: %s", ClipPassword); // FIXED
}

CMD:setclippass(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    new password[32];
    if(sscanf(params, "s[32]", password)) 
        return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/setclippass [password]");

    format(ClipPassword, sizeof(ClipPassword), "%s", password); // FIXED
    UpdateClipPassword();

    new msg[96];
    format(msg, sizeof(msg), "[Clip]:"LIGHTGREY" Password pengolahan Clip berhasil diubah ke "YELLOW"[%s]", password);
    SendClientMessageEx(playerid, X11_RED, msg);
    return 1;
}

// Dialog untuk memulai crafting Clip
stock ShowClipCraftingDialog(playerid)
{
    new jskc[256];
    format(jskc, sizeof(jskc), ""WHITE"Anda akan membuat "RED"Clip"WHITE" dengan bahan sebagai berikut\
    \n\nMaterial: "ORANGE"%d/50\
    \n"WHITE"Besi: "ORANGE"%d/100\
    \n"WHITE"Tembaga: "ORANGE"%d/100\
    \n\n"YELLOW"( Apakah anda yakin ingin membuat barang tersebut ? )", Inventory_Count(playerid, "Material"), Inventory_Count(playerid, "Besi"), Inventory_Count(playerid, "Tembaga"));
    ShowPlayerDialog(playerid, DIALOG_CRAFT_CLIP, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Crafting Clip", jskc, "Iya", "Tidak");
}

// Dialog Handler
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_CRAFT_v1:
        {
            if(!response) return 1;
            ShowPlayerDialog(playerid, DIALOG_CLIP_PASSWORD, DIALOG_STYLE_INPUT,
                "Password Crafting Clip", "Masukkan sandi untuk mengolah Clip:", "Lanjut", "Batal");
        }
        case DIALOG_CLIP_PASSWORD:
        {
            if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan pengolahan Clip");
            
            if(!strcmp(inputtext, ClipPassword, true))
            {
                ShowClipCraftingDialog(playerid);
            }
            else
            {
                ShowTDN(playerid, NOTIFICATION_ERROR, "Sandi salah! Akses ditolak.");
            }
        }
        case DIALOG_CRAFT_CLIP:
        {
            if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan crafting Clip");

            if(Inventory_Count(playerid, "Material") < 50)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Material tidak cukup, butuh 50!");
            if(Inventory_Count(playerid, "Besi") < 100)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Besi tidak cukup, butuh 100!");
            if(Inventory_Count(playerid, "Tembaga") < 100)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Pakaian tidak cukup, butuh 100!");

            AccountData[playerid][ActivityTime] = 1;
            pTimerCrafting[playerid] = SetTimerEx("GunClip", 1000, true, "d", playerid);
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
        if(IsPlayerInDynamicArea(playerid, Stuff_Clips[CraftingClip]))
        {
            if(AccountData[playerid][pLevel] < 5)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Level Anda tidak cukup! (Min: 5)");

            if(AccountData[playerid][ActivityTime] != 0)
                return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");

            ShowPlayerDialog(playerid, DIALOG_CRAFT_v1, DIALOG_STYLE_LIST,
                ""TTR"Aeterna Roleplay "WHITE"- Crafting Clip",
                "Clip", "Pilih", "Batal");
        }
    }
    return 1;
}

forward GunClip(playerid);
public GunClip(playerid)
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

    if(Inventory_Count(playerid, "Tembaga") < 100)
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tembaga tidak cukup, butuh 100!");
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

        Inventory_Remove(playerid, "Besi", 100);
        Inventory_Remove(playerid, "Tembaga", 100);

        Inventory_Add(playerid, "Clip", 19995, 4);
		ShowItemBox(playerid, "Received 1x", "Clip", 19995);
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