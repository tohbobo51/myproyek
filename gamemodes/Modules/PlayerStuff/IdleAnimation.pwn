new PlayerIdleTime[MAX_PLAYERS];

new Float:PlayerX[MAX_PLAYERS], Float:PlayerY[MAX_PLAYERS], Float:PlayerZ[MAX_PLAYERS];

#include <YSI\y_hooks>

hook OnPlayerConnect(playerid)
{
    PlayerIdleTime[playerid] = 0;
    return 1;
}

IsPlayerIdle(playerid)
{
    new
        index = GetPlayerAnimationIndex(playerid)
    ;

    return ((index == 1275) || (1181 <= index <= 1192) || (index == 1151));
}

FUNC:: OnIdleUpdate(playerid)
{
    new keys, updown, leftright;
    GetPlayerKeys(playerid, keys, updown, leftright);

    if (!AnimationCheck(playerid) || IsPlayerInAnyVehicle(playerid) || GetPlayerSpecialAction(playerid) != PLAYER_ACTION_NONE || !AccountData[playerid][pSpawned] || GetPlayerWeapon(playerid) || IsPlayerInWater(playerid))
        return 0;
    
    if ((keys & KEY_WALK)) PlayerIdleTime[playerid] = 0;
    else if ((keys & KEY_SPRINT)) PlayerIdleTime[playerid] = 0;
    else if ((keys & KEY_JUMP)) PlayerIdleTime[playerid] = 0;
    else
    {
        if (IsPlayerInRangeOfPoint(playerid, 1.0, PlayerX[playerid], PlayerY[playerid], PlayerZ[playerid]))
        {
            if (!IsPlayerIdle(playerid) || GetPlayerSpecialAction(playerid) != PLAYER_ACTION_NONE)
            {
                PlayerIdleTime[playerid] = 0;
            }
            if (PlayerIdleTime[playerid] > 30)
            {
                if (IsPlayerIdle(playerid) || GetPlayerSpecialAction(playerid) == PLAYER_ACTION_NONE)
                {
                    new type = random(3);
                    switch(type)
                    {
                        case 0: ApplyAnimation(playerid, "PLAYIDLES", "SHIFT", 4.1, 0, 0, 0, 0, 0, 1);
                        case 1: ApplyAnimation(playerid, "GANGS", "Invite_No", 4.1, 0, 0, 0, 0, 0, 1);
                        case 2: ApplyAnimation(playerid, "DEALER", "DEALER_IDLE_02", 4.1, 0, 0, 0, 0, 0, 1);
                        case 3: ApplyAnimation(playerid, "DEALER", "DEALER_IDLE_01", 4.1, 0, 0, 0, 0, 0, 1);
                    }
                }
                PlayerIdleTime[playerid] = 0;
            }
            else
            {
                PlayerIdleTime[playerid] ++;
            }
        }
        else
        {
            PlayerIdleTime[playerid] = 0;
        }
        GetPlayerPos(playerid, PlayerX[playerid], PlayerY[playerid], PlayerZ[playerid]);
    }
    return 1;
}