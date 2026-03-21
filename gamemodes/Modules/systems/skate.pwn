#define TYPE_SKATE (0) // 0 = tangan | 1 = punggung
#include <YSI\y_hooks>

#if !defined KEY
	#define KEY: _:
#endif
hook OnPlayerKeyStateChange(playerid, KEY:newkeys, KEY:oldkeys) {
    if (GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return true;
    
    if (newkeys & KEY_JUMP) { // Toggle skateboard dengan Spacebar
        if (!AccountData[playerid][pSkateActive]) {
            AktifkanSkateboard(playerid);
        } else {
            LepaskanSkateboard(playerid);
        }
    }
    
    if (newkeys & KEY_SPRINT && AccountData[playerid][pSkateActive]) { // Skateboard ngebut pakai Shift
        ApplyAnimation(playerid, "SKATE", "skate_sprint", 4.5, 1, 1, 1, 1, 1, true);
    }
    return true;
}

function AktifkanSkateboard(playerid) {
    AccountData[playerid][pSkateActive] = true;
    ApplyAnimation(playerid, "SKATE", "skate_run", 4.1, 1, 1, 1, 1, 1, true);
    RemovePlayerAttachedObject(playerid, 9);
    
    if (IsValidObject(AccountData[playerid][pSkate])) DestroyObject(AccountData[playerid][pSkate]);
    AccountData[playerid][pSkate] = CreateObject(19878, 0, 0, 0, 0, 0, 0);
    AttachObjectToPlayer(AccountData[playerid][pSkate], playerid, -0.2, 0, -0.9, 0, 0, 90);
    
    PlayerPlaySound(playerid, 21000, 0, 0, 0);
    SendCustomMessage(playerid, "Info", "Skateboard telah " GREEN "digunakan.");
}

function LepaskanSkateboard(playerid) {
    AccountData[playerid][pSkateActive] = false;
    ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0);
    
    if (IsValidObject(AccountData[playerid][pSkate])) DestroyObject(AccountData[playerid][pSkate]);
    RemovePlayerAttachedObject(playerid, 9);
    
    #if TYPE_SKATE == 0
        SetPlayerAttachedObject(playerid, 9, 19878, 6, -0.055999, 0.013000, 0.000000, -84.099983, 0.000000, -106.099998, 1.000000, 1.000000, 1.000000);
    #else
        SetPlayerAttachedObject(playerid, 9, 19878, 1, 0.055999, -0.173999, -0.007000, -95.999893, -1.600010, 24.099992, 1.000000, 1.000000, 1.000000);
    #endif
    
    PlayerPlaySound(playerid, 21000, 0, 0, 0);
    SendCustomMessage(playerid, "Info", "Skateboard telah {FF0000}disimpan.");
}

hook OnPlayerStateChange(playerid, newstate, oldstate) {
    if (AccountData[playerid][pSkateActive] && newstate == PLAYER_STATE_DRIVER) {
        LepaskanSkateboard(playerid);
    }
    return true;
}

forward UseSkateboard(playerid);
public UseSkateboard(playerid)
{
    AccountData[playerid][ActivityTime] = 0;
    AccountData[playerid][pSkateActive] = true;
    
    RemovePlayerAttachedObject(playerid, 9);
    SetTimerEx("AttachSkate", 100, false, "d", playerid);
    
    PlayerPlaySound(playerid, 21000, 0, 0, 0);
    ShowTDN(playerid, NOTIFICATION_INFO, "Skateboard telah digunakan.");
}