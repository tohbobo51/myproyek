#include <YSI\y_hooks>

new MarijuanaPassword[32];

new 
    STREAMER_TAG_AREA:kanabisOlah;

stock LabelOlah()
{
    kanabisOlah = CreateDynamicSphere(873.7858, -15.7096, 63.1953, 4.0, 0, 0);
}

hook OnGameModeInit()
{
    LabelOlah();
    return 1;
}

hook OnPlayerEnterDynArea(playerid, STREAMER_TAG_AREA:areaid)
{
    if(areaid == kanabisOlah)
    {
        ShowKey(playerid, "[Y]- Olah Kanabis");
    }
    return 1;
}

hook OnPlayerLeaveDynArea(playerid, STREAMER_TAG_AREA:areaid)
{
    if(areaid == kanabisOlah)
    {
        HideShortKey(playerid);
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        if(IsPlayerInDynamicArea(playerid, kanabisOlah))
        {
            new count = 0;
            if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");
            
            foreach(new i : Player) {
                if(IsPlayerConnected(i))
                {
                    if(AccountData[i][pDutyPD]) count++;
                }
            }
            if(count >= 3)
            {
                if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");

                Dialog_Show(playerid, DIALOG_MARJUN_PAS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay - Marijuana",
                "Masukkan sandi untuk mengolah Marijuana:", "Input", "Batal");

                foreach (new i : Player)
                {
                    if (IsPlayerConnected(i) && SQL_IsCharacterLogged(i))
                    {
                        if (AccountData[i][pFaction] == FACTION_POLISI && AccountData[i][pDutyPD])
                        {
                            SendClientMessageEx(i, X11_ORANGE1, "[NARKOBA ALERT]"WHITE" Seseorang sedang mengelolah marijuana");
                        }
                    }
                }
            }
            else
            {
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal 3 Polisi");
            }
            
            
        }
    }
    return 1;
}

Dialog:DIALOG_MARJUN_PAS(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan pengolahan Marijuana");
    if(AccountData[playerid][pFamily] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Hanya Anggota Family!");
    if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Level kurang!");
    if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Sedang melakukan aktivitas!");
    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

    if(isnull(inputtext)) return Dialog_Show(playerid, DIALOG_MARJUN_PAS, DIALOG_STYLE_INPUT,
    ""TTR"Aeterna Roleplay - Marijuana", "Error: Tidak boleh kosong!\nMasukkan password:", "Input", "Batal");

    if(!strcmp(inputtext, MarijuanaPassword, true))
    {
        AccountData[playerid][ActivityTime] = 1;
        pOlahKanabis[playerid] = SetTimerEx("MengolahKanabis", 1000, true, "i", playerid);
        PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MENGOLAH KANABIS");
        ShowProgressBar(playerid);
        ApplyAnimation(playerid, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0, 1);
    }
    else
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Sandi salah! Akses ditolak.");
    }
    return 1;
}

forward MengolahKanabis(playerid);
public MengolahKanabis(playerid)
{
    if(!IsPlayerConnected(playerid))
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);
        return 0;
    }

    if(!IsValidDynamicArea(kanabisOlah))
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(!IsPlayerInDynamicArea(playerid, kanabisOlah))
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(AccountData[playerid][pBeratItem] >= 50)
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda penuh");
        return 0;
    }

    if(AccountData[playerid][pInjured])
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        return 0;
    }

    if(Inventory_Count(playerid, "Kanabis") < 10)
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Kanabis tidak cukup! (Min: 10)");
        return 0;
    }

    if(Inventory_Count(playerid, "Plastik") < 20)
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        ShowTDN(playerid, NOTIFICATION_ERROR, "Plastik tidak cukup! (Min: 20)");
        return 0;
    }

    if(AccountData[playerid][ActivityTime] >= 15)
    {
        KillTimer(pOlahKanabis[playerid]);
        pOlahKanabis[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        
        Inventory_Remove(playerid, "Kanabis", 10);
        Inventory_Remove(playerid, "Plastik", 20);
        Inventory_Add(playerid, "Marijuana", 1575, 1);
        ShowItemBox(playerid, "Removed 20x", "Plastik", 1264);
        ShowItemBox(playerid, "Removed 10x", "Kanabis", 19473);
        ShowItemBox(playerid, "Received 1x", "Marijuana", 1575);
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime] * 85/15;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 15.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}

// -------- Marijuana Password --------

forward LoadMarijuanaPassword();
public LoadMarijuanaPassword()
{
    mysql_tquery(g_SQL, "SELECT `password` FROM `marijuana_passwords` WHERE `id` = 1 LIMIT 1", "OnLoadMarijuanaPassword");
    return 1;
}


forward OnLoadMarijuanaPassword();
public OnLoadMarijuanaPassword()
{
    new rows = cache_num_rows();
    printf("[Marijuana]: Rows found in marijuana_passwords: %d", rows);

    if (rows > 0)
    {
        cache_get_value_name(0, "password", MarijuanaPassword, sizeof(MarijuanaPassword));
        printf("[Marijuana]: Password berhasil dimuat dari database: %s", MarijuanaPassword);
    }
    else
    {
        format(MarijuanaPassword, sizeof(MarijuanaPassword), "ganja123");
        UpdateMarijuanaPassword();
        print("[Marijuana]: Tidak ditemukan password, disetel default: ganja123");
    }
    return 1;
}

stock UpdateMarijuanaPassword()
{
    if (g_SQL == MYSQL_INVALID_HANDLE) {
        print("[Marijuana]: ERROR: Koneksi database tidak tersedia!");
        return;
    }

    new query[144];
    mysql_format(g_SQL, query, sizeof(query),
        "REPLACE INTO `marijuana_passwords` (`id`, `password`) VALUES (1, '%e')", MarijuanaPassword);
    mysql_tquery(g_SQL, query);

    printf("[Marijuana]: Password diperbarui ke: %s", MarijuanaPassword);
}

CMD:setmarjunpass(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    new password[32];
    if(sscanf(params, "s[32]", password)) 
        return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/setmarjunpass [password]");

    format(MarijuanaPassword, sizeof(MarijuanaPassword), "%s", password);
    UpdateMarijuanaPassword();

    new msg[96];
    format(msg, sizeof(msg), "[Marijuana]:"LIGHTGREY" Password pengolahan Marijuana berhasil diubah ke "YELLOW"[%s]", password);
    SendClientMessageEx(playerid, X11_RED, msg);
    return 1;
}