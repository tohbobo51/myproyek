#include <YSI\y_hooks>

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_YES && IsPlayerSmoking[playerid])
    {
        if(SmokingDelayTime[playerid] <= gettime())
        {
            ApplyAnimationEx(playerid, "GANGS", "smkcig_prtl", 4.5, 0,1,0,1,1,1);
            SetTimerEx("SmokeCigar", 3500, false, "d", playerid);
            SmokingDelayTime[playerid] = gettime() + 5;
        }
    }

    if(newkeys & KEY_YES && IsPlayerUseVape[playerid])
    {
        if(VapeDelayTime[playerid] <= gettime())
        {
            ApplyAnimationEx(playerid, "SMOKING", "M_smk_drag", 4.1, 0, 0, 0, 0, 0, 1);
            SetTimerEx("SmokeVape", 2000, false, "d", playerid);
            VapeDelayTime[playerid] = gettime() + 5;
        }
    }
    return 1;
}

forward SmokeCigar(playerid);
public SmokeCigar(playerid)
{
    SetPlayerAttachedObject(playerid, 7, 18677, 2, -0.028, 0.160, -1.640, 0.000, 0.000, 0.000, 1.000, 1.000, 1.000);
    CountSmoking[playerid] --;
    if(CountSmoking[playerid] == 0)
    {
        IsPlayerSmoking[playerid] = false;
        CountSmoking[playerid] = 0;
        SmokingDelayTime[playerid] = 0;

        AccountData[playerid][pStress] -= 5;
        SendClientMessage(playerid, -1, "[i] Rokok anda telah habis sebatang. Stress anda menurun "RED"5%%");
    }
    return 1;
}

Function: SmokeVape(playerid)
{
    SetPlayerAttachedObject(playerid, 5, 18716, 2,  0.028000, 0.178999, -0.225999,  0.000000, 0.000000, 0.000000,  0.000000, 0.000000, 0.000000); // 299

    SetPVarInt(playerid, "CountSmokingVape", GetPVarInt(playerid, "CountSmokingVape") + 1);
    AccountData[playerid][pStress] --;

    if(GetPVarInt(playerid, "CountSmokingVape") == 15)
    {
        IsPlayerUseVape[playerid] = false;
        VapeDelayTime[playerid] = 0;
        if(IsPlayerAttachedObjectSlotUsed(playerid, JOB_SLOT)) RemovePlayerAttachedObject(playerid, JOB_SLOT);
        ShowTDN(playerid, NOTIFICATION_WARNING, "Liquid atau rokok anda sudah habis!");
    }
    SetTimerEx("SmokeVapeDelete", 5000, false, "d", playerid);
    return 1;
}

Function: SmokeVapeDelete(playerid)
{
    RemovePlayerAttachedObject(playerid, 5);
    return 1;
}
