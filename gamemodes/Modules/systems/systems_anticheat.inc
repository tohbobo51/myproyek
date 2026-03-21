#include <YSI_Coding\y_hooks>

forward OnPlayerSpeedCheat(playerid, speedtype);

#define 	MAX_CHEAT_WARNING		2
#define     CRASH_TERSHOLD          5

#define     BulletCrasher -5.5
#define     InvalidSeat1 -1000000.0
#define     InvalidSeat2 1000000.0
#define     MAX_AIRBREAK_DISTANCE 15.0
#define     MAX_AIRBREAK_HEIGHT 5.0
#define     AIRBREAK_CHECK_INTERVAL 500
#define     MAX_SPEED_MULTIPLIER 1.5
#define     FALL_SPEED_THRESHOLD -0.1
#define     MAX_FALL_DISTANCE 100.0

#define MAX_DAMAGE_RECORDS 100
#define DAMAGE_TIME_FRAME 10

new airbreak_status = 0;
new ac_entercarNotif[MAX_PLAYERS];
new Float:airbreak_speed_old[MAX_PLAYERS];
new airbreak_warning[MAX_PLAYERS];

new killingVeh[MAX_PLAYERS];
new damageRecords[MAX_PLAYERS][MAX_DAMAGE_RECORDS][3];
new damageRecordCount[MAX_PLAYERS];

new veh_arbrk_warn[MAX_PLAYERS],
    oft_arbrk_warn[MAX_PLAYERS],
    ram_warn[MAX_PLAYERS],
    g_acCarShot[MAX_PLAYERS];

new Float:g_acOldSpeed[MAX_VEHICLES];

new WarningCode[MAX_PLAYERS][53],
    slapper_warn[MAX_PLAYERS]= {0, ...},
    speed_hack[MAX_PLAYERS]= {0, ...},
    airbreak_hack[MAX_PLAYERS]= {0, ...},
    ac_weapon_h[MAX_PLAYERS]= {0, ...},
    ac_ammo_h[MAX_PLAYERS]= {0, ...},
    ac_ammo_inf_h[MAX_PLAYERS]= {0, ...},
    ac_enter_car[MAX_PLAYERS] = {0, ...},
    ac_awh_warning[MAX_PLAYERS] = {0, ...};

new HitData[MAX_PLAYERS][2]; 
    const MAX_HITS = 5; 
    const TIME_INTERVAL = 10;


new fcrash_time_svr;
new fcrash_count;
new fcrash_player[MAX_PLAYERS];

new Float:fcrash_x, Float:fcrash_y, Float:fcrash_z;

new AOFCT[MAX_PLAYERS];
new AOFCW[MAX_PLAYERS];

static Float:LastPosition[MAX_PLAYERS][3];
static LastUpdateTick[MAX_PLAYERS];
static PlayerVehicleID[MAX_PLAYERS];
static bool:IsPlayerMonitored[MAX_PLAYERS];
static LastInterior[MAX_PLAYERS];
static LastVirtualWorld[MAX_PLAYERS];
static Float:LastVelocity[MAX_PLAYERS][3];
static bool:IsPlayerFalling[MAX_PLAYERS];
static abrk_warn[MAX_PLAYERS];

hook OnGameModeInit()
{
    EnableAntiCheat(3, 0);
    EnableAntiCheat(14, 0);
    EnableAntiCheat(23, 0); // disable Tunning Hack
    EnableAntiCheat(24, 0); // disable Parkour Mod
    EnableAntiCheat(31, 0); // disable Car Shot
    EnableAntiCheat(33, 0); // disable Unfreeze
    EnableAntiCheat(34, 0); // disable AFK Ghost
    EnableAntiCheat(35, 0); // disable Full Aiming
    EnableAntiCheat(36, 0); // disable Fake NPC
    EnableAntiCheat(37, 0); // disable Reconnect
    EnableAntiCheat(38, 0); // disable High Ping
    EnableAntiCheat(39, 0); // disable Dialog Hack
    EnableAntiCheat(40, 0); // disable Protection from sandbox
    EnableAntiCheat(41, 0); // disable Protection from invalid version
    EnableAntiCheat(42, 0); // disable Rcon Hack
    EnableAntiCheat(43, 0); // disable Tuning Crasher
    EnableAntiCheat(45, 0); // disable Dialog Crasher
    EnableAntiCheat(46, 0); // disable Attached Object Crasher
    EnableAntiCheat(47, 0); // disable Weapon Crasher
    EnableAntiCheat(48, 0); // disable Protection from connection flood in one slot
    EnableAntiCheat(49, 0); // disable Callback functions flood
    EnableAntiCheat(50, 0); // disable DoS
    EnableAntiCheat(51, 0); // disable NOPs
    EnableAntiCheat(52, 0); // disable NOPs
}

static bool:IsPlayerInValidState(playerid) {
    new animlib[32], animname[32];
    GetAnimationName(GetPlayerAnimationIndex(playerid), animlib, sizeof(animlib), animname, sizeof(animname));
    
    if(!strcmp(animlib, "PARACHUTE", true)) return false;
    if(!strcmp(animlib, "FALL", true)) return false;
    if(GetPlayerState(playerid) == PLAYER_STATE_SPECTATING) return false;
    if(GetPlayerState(playerid) == PLAYER_STATE_WASTED) return false;
    if(IsPlayerFalling[playerid]) return false;
    return true;
}

static bool:IsPlayerFallingAnimation(playerid) {
    new animlib[32], animname[32];
    GetAnimationName(GetPlayerAnimationIndex(playerid), animlib, sizeof(animlib), animname, sizeof(animname));
    
    if(!strcmp(animlib, "PED", true) && !strcmp(animname, "FALL_FALL", true)) return true;
    if(!strcmp(animlib, "PARACHUTE", true)) return true;
    if(!strcmp(animlib, "FALL", true)) return true;
    return false;
}

stock AirBreak_Init(playerid) {
    if(!IsPlayerConnected(playerid)) return 0;
    
    LastUpdateTick[playerid] = GetTickCount();
    PlayerVehicleID[playerid] = INVALID_VEHICLE_ID;
    IsPlayerMonitored[playerid] = true;
    IsPlayerFalling[playerid] = false;
    GetPlayerPos(playerid, LastPosition[playerid][0], LastPosition[playerid][1], LastPosition[playerid][2]);
    GetPlayerVelocity(playerid, LastVelocity[playerid][0], LastVelocity[playerid][1], LastVelocity[playerid][2]);
    LastInterior[playerid] = GetPlayerInterior(playerid);
    LastVirtualWorld[playerid] = GetPlayerVirtualWorld(playerid);
    return 1;
}

stock AirBreak_Stop(playerid) {
    IsPlayerMonitored[playerid] = false;
    IsPlayerFalling[playerid] = false;
    return 1;
}

stock AirBreak_Check(playerid) {
    if(!IsPlayerConnected(playerid) || !IsPlayerMonitored[playerid]) return 0;
    
    new tick = GetTickCount();
    if(tick - LastUpdateTick[playerid] < AIRBREAK_CHECK_INTERVAL) return 0;
    
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
    
    new Float:velX, Float:velY, Float:velZ;
    GetPlayerVelocity(playerid, velX, velY, velZ);
    
    new currentInterior = GetPlayerInterior(playerid);
    new currentVW = GetPlayerVirtualWorld(playerid);
    
    
    if(velZ < FALL_SPEED_THRESHOLD || IsPlayerFallingAnimation(playerid)) {
        IsPlayerFalling[playerid] = true;
        
        
        new Float:fallDistance = GetDistanceBetweenPoints3D(x, y, z, LastPosition[playerid][0], LastPosition[playerid][1], LastPosition[playerid][2]);
        if(fallDistance < MAX_FALL_DISTANCE) {
            LastPosition[playerid][0] = x;
            LastPosition[playerid][1] = y;
            LastPosition[playerid][2] = z;
            LastVelocity[playerid][0] = velX;
            LastVelocity[playerid][1] = velY;
            LastVelocity[playerid][2] = velZ;
            LastUpdateTick[playerid] = tick;
            return 0;
        }
    } else if(IsPlayerFalling[playerid] && velZ > -0.1 && velZ < 0.1) {
        IsPlayerFalling[playerid] = false;
        LastPosition[playerid][0] = x;
        LastPosition[playerid][1] = y;
        LastPosition[playerid][2] = z;
        LastVelocity[playerid][0] = velX;
        LastVelocity[playerid][1] = velY;
        LastVelocity[playerid][2] = velZ;
        LastUpdateTick[playerid] = tick;
        return 0;
    }
    
    if(currentInterior != LastInterior[playerid] || currentVW != LastVirtualWorld[playerid]) {
        LastPosition[playerid][0] = x;
        LastPosition[playerid][1] = y;
        LastPosition[playerid][2] = z;
        LastVelocity[playerid][0] = velX;
        LastVelocity[playerid][1] = velY;
        LastVelocity[playerid][2] = velZ;
        LastInterior[playerid] = currentInterior;
        LastVirtualWorld[playerid] = currentVW;
        LastUpdateTick[playerid] = tick;
        return 0;
    }
    
    if(LastPosition[playerid][0] != 0.0 || LastPosition[playerid][1] != 0.0 || LastPosition[playerid][2] != 0.0) {
        if(IsPlayerInValidState(playerid)) {
            new Float:distance = GetDistanceBetweenPoints3D(x, y, z, LastPosition[playerid][0], LastPosition[playerid][1], LastPosition[playerid][2]);
            new Float:maxAllowedDistance = MAX_AIRBREAK_DISTANCE;
            new Float:heightDiff = z - LastPosition[playerid][2];
            
            new vehicleid = GetPlayerVehicleID(playerid);
            if(vehicleid != INVALID_VEHICLE_ID) {
                maxAllowedDistance *= MAX_SPEED_MULTIPLIER;
                
                new Float:vehVelX, Float:vehVelY, Float:vehVelZ;
                GetVehicleVelocity(vehicleid, vehVelX, vehVelY, vehVelZ);
                new Float:speed = floatsqroot(vehVelX * vehVelX + vehVelY * vehVelY + vehVelZ * vehVelZ) * 200.0;
                
                if(speed > 0.0) {
                    maxAllowedDistance += speed * (AIRBREAK_CHECK_INTERVAL / 1000.0);
                }
                
                if(distance > maxAllowedDistance || heightDiff > MAX_AIRBREAK_HEIGHT) {
                    return 2;
                }
            } else if(distance > maxAllowedDistance || heightDiff > MAX_AIRBREAK_HEIGHT) {
                return 1;
            }
        }
    }
    
    LastPosition[playerid][0] = x;
    LastPosition[playerid][1] = y;
    LastPosition[playerid][2] = z;
    LastVelocity[playerid][0] = velX;
    LastVelocity[playerid][1] = velY;
    LastVelocity[playerid][2] = velZ;
    LastInterior[playerid] = currentInterior;
    LastVirtualWorld[playerid] = currentVW;
    LastUpdateTick[playerid] = tick;
    return 0;
}

static GetCodeAC(code)
{    
    new string[128];
    switch(code)
    {
		case 0: string = "AirBreak: On Foot";
		case 1: string = "AirBreak: Inside Vehicle";
		case 2: string = "Teleport Hack: On Foot";
		case 3: string = "Teleport Hack: Inside Vehicle";
		case 4: string = "Teleport Hack: Into/Between Vehicle";
		case 5: string = "Teleport Hack: Vehicle to Player";
		case 6: string = "Teleport Hack: Pickups";
		case 7: string = "FlyHack: On Foot";
		case 8: string = "FlyHack: Inside Vehicle";
		case 9: string = "SpeedHack: On Foot";
		case 10: string = "SpeedHack: Inside Vehicle";
		case 11: string = "Health Hack: Inside Vehicle (Car Repair)";
		case 12: string = "Health Hack: On Foot";
		case 13: string = "Armour Hack";
		case 15: string = "Weapon Hack";
		case 16: string = "Ammo Hack: Spawning";
		case 17: string = "Ammo Hack: Infinite";
		case 18: string = "Special Actions Hack";
		case 19: string = "GodMode from a bullets: On Foot";
		case 20: string = "GodMode from a bullets: Inside Vehicle";
		case 21: string = "Invisible Hack";
		case 22: string = "Lagcomp-Spoof";
		case 23: string = "Tuning Hack";
		case 24: string = "Parkour Mod";
		case 25: string = "Quick Turn";
		case 26: string = "Rapid Fire";
		case 27: string = "Fake Spawn";
		case 28: string = "Fake Kill";
		case 29: string = "Aimbot";
		case 30: string = "CJ Run";
		case 31: string = "Car Shot";
		case 32: string = "Car Jacking";
		case 33: string = "UnFreeze";
		case 34: string = "AFK Ghost";
		case 35: string = "Full Aiming";
		case 36: string = "Fake NPC";
		case 37: string = "Reconnect";
		case 38: string = "High Ping";
		case 39: string = "Dialog Hack";
		case 40: string = "Protection from Sandbox";
		case 41: string = "Protection from Invalid Version";
		case 42: string = "Rcon Hack";
		case 43: string = "Tuning Crasher";
		case 44: string = "Invalid Seat Crasher";
		case 45: string = "Dialog Crasher";
		case 46: string = "Attached Object Crasher";
		case 47: string = "Weapon Crasher";
		case 48: string = "Protection from connection flood in one slot";
		case 49: string = "Callback functions flood";
		case 50: string = "Flood by seat changing";
		case 51: string = "DoS";
        case 52: string = "NOPs";
        default: format(string, sizeof(string), "Hack Code %d", code);
    }
    return string;
}

AC_PlayerHasWeapon(playerid, weaponid)
{
	new
	    weapon,
	    ammo;

	for(new i = 0; i < 13; i++) {
	    GetPlayerWeaponData(playerid, i, weapon, ammo);

	    if (weapon == weaponid) return 1;
	}
	return 0;
}

static ResetPlayerWarningCode(playerid) 
{
	for(new i = 0; i < 52; i++) 
    {
		WarningCode[playerid][i] = 0;
	}
	return 1;
}

stock AddDamageRecord(issuerid, playerid, timestamp)
{
    damageRecords[issuerid][damageRecordCount[issuerid]][0] = playerid;
    damageRecords[issuerid][damageRecordCount[issuerid]][1] = timestamp;
    damageRecordCount[issuerid]++;
    if(damageRecordCount[issuerid] >= MAX_DAMAGE_RECORDS)
    {
        damageRecordCount[issuerid] = MAX_DAMAGE_RECORDS - 1;
        for(new i = 0; i < MAX_DAMAGE_RECORDS - 1; i++)
        {
            damageRecords[issuerid][i][0] = damageRecords[issuerid][i + 1][0];
            damageRecords[issuerid][i][1] = damageRecords[issuerid][i + 1][1];
        }
    }
    return 1;
}

stock CheckForCheating(issuerid)
{
    new currentTime = GetTickCount();
    new differentPlayers[MAX_PLAYERS];
    new uniquePlayerCount = 0;
    for(new i = 0; i < damageRecordCount[issuerid]; i++)
    {
        if(currentTime - damageRecords[issuerid][i][1] <= DAMAGE_TIME_FRAME * 1000)
        {
            new damagedPlayer = damageRecords[issuerid][i][0];
            new isUnique = 1;
            for(new j = 0; j < uniquePlayerCount; j++)
            {
                if(differentPlayers[j] == damagedPlayer)
                {
                    isUnique = 0;
                    break;
                }
            }
            
            if(isUnique)
            {
                differentPlayers[uniquePlayerCount] = damagedPlayer;
                uniquePlayerCount++;
            }
        }
    }
    if(uniquePlayerCount > 10)
    {
        SendAdminMessage(X11_RED, "[Anticheat]: "LIGHTGREY"Cheat detected on {FFFF00}%s(%s) "LIGHTGREY"(Damager/Killer)", GetName(issuerid), AccountData[issuerid][pUCP]);
        SendClientMessage(issuerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Damager/Killer)");
        KickEx(issuerid);
    }
    return 1;
}

hook OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart) {
    if(issuerid != INVALID_PLAYER_ID) {

        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        new Float:range = GetPlayerDistanceFromPoint(issuerid, x, y, z);

        if(weaponid == 0 && range >= 15.0) {
            SendClientMessageEx(issuerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: damager (hits %s with fist in %.2fmeter range)", GetName(playerid), range);
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using damager/killer", GetName(issuerid));
            KickEx(issuerid);
        } 
    }
    if(issuerid != INVALID_PLAYER_ID && weaponid <= 15 && !IsPlayerInEvent(issuerid))
    {
        new currentTime = GetTickCount();
        AddDamageRecord(issuerid, playerid, currentTime);
        CheckForCheating(issuerid);
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

stock Float:AC_GetPlayerSpeed(playerid, bool:kmh = false)
{
    new 
        Float:Vx,
        Float:Vy,
        Float:Vz,
        Float:rtn;

    if(IsPlayerInAnyVehicle(playerid)) {
        GetVehicleVelocity(GetPlayerVehicleID(playerid), Vx, Vy, Vz);
    } else {
        GetPlayerVelocity(playerid, Vx, Vy, Vz);        
    }

    rtn = floatsqroot(floatabs(floatpower(Vx + Vy + Vz, 2)));
    return kmh ? (rtn * 100 * 1.61) : (rtn * 100);
}


timer AC_SetWeaponBack[1000](playerid) 
{
    if(!IsPlayerInEvent(playerid)) {

        new
            ac_weapon[13],
            ac_ammo[13];

        for (new i = 0; i < 12; i++) 
        {
            AntiCheatGetWeaponData(playerid, i, ac_weapon[i], ac_ammo[i]);

            if (AccountData[playerid][pGuns][i] != ac_weapon[i]) 
            {
                ResetWeapon(playerid, ac_weapon[i]);
            }
        }
    }
    return 1;
}

timer AC_SetHealthBack[1000](playerid, Float:health) 
{
    SetPlayerHealthEx(playerid, health);
}

forward OnCheatDetected(playerid, ip_address[], type, code);
public OnCheatDetected(playerid, ip_address[], type, code)
{
    if (!IsPlayerConnected(playerid))
        return 0;

    if(IsPlayerNPC(playerid))
        return 0;

    if(AccountData[playerid][pAdmin])
        return 0;

    if(AccountData[playerid][pTheStars])
        return 0;

    if(AccountData[playerid][pJustSpawn])
        return 0;
    
    switch(code)
    {
        case 0: 
        {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible %s", GetName(playerid), playerid, GetCodeAC(code));
            if(++WarningCode[playerid][code] >= 3) {
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                WarningCode[playerid][code] = 0;
                KickEx(playerid);
            }

        }
        case 1: 
        {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible %s", GetName(playerid), playerid, GetCodeAC(code));
            if(++WarningCode[playerid][code] >= 3) {
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                WarningCode[playerid][code] = 0;
                KickEx(playerid);
            }
        }
        //Teleport hack
        case 2:
        {

            if(!IsPlayerPaused(playerid))
            {
                new Float:x, Float:y, Float:z;
                new vw, int;
                int = GetPlayerInterior(playerid);
                vw = GetPlayerVirtualWorld(playerid);
                AntiCheatGetPos(playerid, x, y, z);
                SetPlayerInterior(playerid, int);
                SetPlayerVirtualWorld(playerid, vw);
                SetPlayerPos(playerid, x, y, z);
                if(++WarningCode[playerid][code] >= 4)
                {
                    SendClientMessageEx(playerid, X11_RED, "[Anticheat] "WHITE"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));

                    WarningCode[playerid][code] = 0;

                    KickEx(playerid);
                    return 1;
                }
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible teleport hack.", GetName(playerid), playerid);
            }
        }
        case 3: 
        {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible teleport vehicle teleport hack.", GetName(playerid), playerid);
            
            if(++WarningCode[playerid][code] >= 5) {
                //SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible teleport vehicle teleport hack (spectate now!)", GetName(playerid), playerid);
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                WarningCode[playerid][code] = 0;
                KickEx(playerid);
            }
        }
        case 4: 
        {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible wrap vehicle hack.", GetName(playerid), playerid);
            if(++WarningCode[playerid][code] >= 5) {
                //SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible wrap vehicle hack (spectate now!)", GetName(playerid), playerid);
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                WarningCode[playerid][code] = 0;
                KickEx(playerid);
            }
        }
        case 5: 
        {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible teleport vehicle to player hack.", GetName(playerid), playerid);

            if(++WarningCode[playerid][code] >= 5) {
                //SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible teleport vehicle to player hack (spectate now!)", GetName(playerid), playerid);
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                WarningCode[playerid][code] = 0;
                KickEx(playerid);
            }
        }
        
        //Flyhack on foot
        case 7: 
        {

            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible flyhack onfoot", GetName(playerid), playerid);
            if(++WarningCode[playerid][code] >= 5) {
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                WarningCode[playerid][code] = 0;
                KickEx(playerid);
            }
        }    
        //Flyhack in vehicle
        case 8: 
        {

            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible flyhack in vehicle", GetName(playerid), playerid);

            if(++WarningCode[playerid][code] >= 5) {
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                KickEx(playerid);
            }
        }
        case 9:
        {
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
        }
        //Speedhack in vehicle
        case 10: 
        {
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
            if(++WarningCode[playerid][code] >= 3) 
            {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible vehicle speed hack "GREY"[%.2f]", GetName(playerid), playerid, AC_GetPlayerSpeed(playerid)); 
                WarningCode[playerid][code] = 0;  
            }
        }
        case 11: 
        {
            new vehicleid = GetPlayerVehicleID(playerid);

            if (vehicleid == INVALID_VEHICLE_ID) 
            {
                return 0;
            }

            new Float:v_health, Float:ac_vhp;
            AntiCheatGetVehicleHealth(vehicleid, ac_vhp);
            GetVehicleHealth(vehicleid, v_health);
            WarningCode[playerid][code]++;
            if(WarningCode[playerid][code] % 2 == 0) {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible vehicle health hack "GREY"[%.2f] "YELLOW">> "GREY"[%.2f]", GetName(playerid), playerid, ac_vhp, v_health); 
            }
            
            if(WarningCode[playerid][code] >= 10) {
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
                KickEx(playerid);
            }
        }
        //Health hack
        case 12: 
        {
            new Float:ac_hp, Float:health;
            AntiCheatGetHealth(playerid, ac_hp);
            GetPlayerHealth(playerid, health);
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));

            if(++WarningCode[playerid][code] >= 3) {
                WarningCode[playerid][code] = 0;
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible using health hack "GREY"[%.2f] "YELLOW">> "GREY"[%.2f]", GetName(playerid), playerid, ac_hp, health); 
                KickEx(playerid);
            }
            SetPlayerHealthEx(playerid, ac_hp);
        }
        //Armour Hack
        case 13: 
        {
            new Float:ac_ap, Float:armour;
            AntiCheatGetArmour(playerid, ac_ap);
            GetPlayerArmour(playerid, armour);
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible using armour hack "GREY"[%.2f] "YELLOW">> "GREY"[%.2f]", GetName(playerid), playerid, ac_ap, armour); 
            SetPlayerArmourEx(playerid, ac_ap);
            
        }
        //Weapon hack
        case 15: 
        {
            
            new weapon_player = GetPlayerWeapon(playerid);
            if(!PlayerHasTazer(playerid) && !IsPlayerHunting(playerid) && !IsPlayerInEvent(playerid)) {
                if(weapon_player != 0)
                    SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible weapon hack (%s)", GetName(playerid), playerid, ReturnWeaponName(weapon_player));
                else 
                    SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible weapon hack", GetName(playerid), playerid); 

                defer AC_SetWeaponBack[1000](playerid);

                if (++WarningCode[playerid][code] >= 3) {

                    SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));

                    WarningCode[playerid][code] = 0;
                    KickEx(playerid);
                }
            }
        }
        case 16, 17: {


            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
            if(++WarningCode[playerid][code] >= 5) {

                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
                WarningCode[playerid][code] = 0;
            }
        }
        case 18: 
        {
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is using special animations hack.", GetName(playerid), playerid); 
        }
        case 21: {
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using invisible hack", GetName(playerid), playerid); 
        }
        case 26: 
        {
            // nothing
        }
        case 27: {
            KickEx(playerid);
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
        }
        case 32: {
            if(IsPlayerInAnyVehicle(playerid)) {
                GameTextForPlayer(playerid, "~r~CARJACKING NOT ALLOWED", 3000, 3);
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"attempts to Car Jacking", GetName(playerid), playerid);  
                new Float:x, Float:y, Float:z;
                GetPlayerPos(playerid, x, y, z);
                SetPlayerPos(playerid, x, y, z + 1.5);
                SetCameraBehindPlayer(playerid);
            }
        }
        case 40: 
        {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is using sandboxie.", GetName(playerid), playerid); 
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (%s)", GetCodeAC(code));
        }
        default: {

            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: %s", GetCodeAC(code));
            if(++WarningCode[playerid][code] >= 5) {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%s) "LIGHTGREY"possible %s", GetName(playerid), ReturnIP(playerid), GetCodeAC(code));
                KickEx(playerid);
                WarningCode[playerid][code] = 0;
            }
        }
    }
    return 1;
}
hook OnPlayerConnect(playerid) 
{
    AirBreak_Init(playerid);
    abrk_warn[playerid] = 0;
    ac_entercarNotif[playerid] = 0;
    killingVeh[playerid] = 0;
	ResetPlayerWarningCode(playerid);
    vehLastEntered[playerid] = 0;
    HitData[playerid][0] = 0; 
    HitData[playerid][1] = 0; 
    lastVehicleID[playerid] = INVALID_VEHICLE_ID;
    fcrash_count = 0;
    fcrash_player[playerid] = 0;
    ac_enter_car[playerid] = 0;
    ac_awh_warning[playerid ]= 0;
    slapper_warn[playerid] = 0;
    speed_hack[playerid] = 0;
    airbreak_hack[playerid] = 0;
    ac_weapon_h[playerid] = 0;
    ac_ammo_h[playerid] = 0;
    ac_ammo_inf_h[playerid] = 0;
    veh_arbrk_warn[playerid] = 0;
    oft_arbrk_warn[playerid] = 0;
    ram_warn[playerid] = 0;
}

hook OnVehicleDeath(vehicleid, killerid) {
    if(killerid != INVALID_PLAYER_ID) {
        VehicleCore[vehicleid][vehKillerID] = killerid;
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnVehicleSpawn(vehicleid) {
    new killerid = VehicleCore[vehicleid][vehKillerID];

    if(killerid != INVALID_PLAYER_ID && IsPlayerConnected(killerid)) {
        killingVeh[killerid]++;
        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"telah menghancurkan kendaraan "ORANGE"%s", GetName(killerid), killerid, GetVehicleName(vehicleid));

        if(killingVeh[killerid] >= 6) {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"dikeluarkan dari server karena menghancurkan lebih dari 6 kendaraan.", GetName(killerid), killerid);
            SendClientMessageEx(killerid, X11_YELLOW, "(AntiCheat) "GREY"Kamu telah dikeluarkan dari server karena menghancurkan banyak kendaraan.");
            killingVeh[killerid] = 0;
            KickEx(killerid);
        }
    }

    return Y_HOOKS_CONTINUE_RETURN_1;
}
hook OnPlayerDisconnect(playerid, reason) 
{
    if(AccountData[playerid][pSpawned] && reason == 0) {

        if(GetTickCount() - fcrash_time_svr < 10000) {
            foreach(new i : Player) if(GetPlayerDistanceFromPoint(i, fcrash_x, fcrash_y, fcrash_z) <= 25.0 && !IsPlayerPaused(i) && !AccountData[i][pAdmin]) {
                if(i == playerid) {
                    continue;
                }

                fcrash_player[i]++;
                fcrash_count++;

                if(fcrash_player[i] >= 5) {
                    SendStaffMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"kemungkinan menggunakan crasher", GetName(i));
                    fcrash_player[i] = 0;
                }
                break;
            }
        }


        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        fcrash_x = x;
        fcrash_y = y;
        fcrash_z = z;
        fcrash_time_svr = GetTickCount();
    }

	ResetPlayerWarningCode(playerid);
    AirBreak_Stop(playerid);
    slapper_warn[playerid] = 0;
    speed_hack[playerid] = 0;
    airbreak_hack[playerid] = 0;
    ac_weapon_h[playerid] = 0;
    ac_ammo_h[playerid] = 0;
    ac_ammo_inf_h[playerid] = 0;

}

/* Funcs */
timer OnUpsideDownCheck[500](playerid, vehicleid) {

    new Float:health;
    GetVehicleHealth(vehicleid, health);
    if(IsVehicleUpsideDown(vehicleid) && health < 300.0) {
        SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Vehicle Troller");
        FlipVehicle(vehicleid);
        SetVehicleHealth(vehicleid, 1000.0);
    }
    return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate) {

    if(IsPlayerNPC(playerid))
        return Y_HOOKS_BREAK_RETURN_1;

	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER) {

		AccountData[playerid][pEnterCarTick] = GetTickCount();

		if(!AccountData[playerid][pCarImmun]) {
			if(!AccountData[playerid][pEnterCar]) {
				if(++ac_entercarNotif[playerid] >= 5) {
                    SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using vehicle troller #1", GetName(playerid), playerid);
                    SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Vehicle Troller");
                    ac_entercarNotif[playerid] = 0;
                    KickEx(playerid);
                }
           	}
		}
	}
	if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER) {

        if(!AccountData[playerid][pCarImmun]) {
            new tick_now = GetTickCount();

            if(AccountData[playerid][pEnterCarTick] != 0) {
                if(tick_now - AccountData[playerid][pEnterCarTick] < 1000) {
                    AccountData[playerid][pEnterCarTick] = 0;
                    if(++ac_entercarNotif[playerid] >= 5) {
                        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using vehicle troller #2", GetName(playerid), playerid);
                        SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Vehicle Troller");
                        ac_entercarNotif[playerid] = 0;
                    }
                }
            }
        }
	}
    
    if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER) {
        ac_enter_car[playerid]++;

        if(ac_enter_car[playerid] > 5) {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using vehicle troller #3", GetName(playerid), playerid);
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Vehicle Troller");
            KickEx(playerid);
        }
        new vehicleid = GetPlayerVehicleID(playerid), Float:health, current_time = GetTickCount();

        if(lastVehicleID[playerid] != vehicleid && vehLastEntered[playerid] != 0) {
            if(current_time - vehLastEntered[playerid] < 2000) {
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Vehicle Troller");
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using vehicle troller #4", GetName(playerid), playerid); 
            }
        }
        GetVehicleHealth(vehicleid, health);

        vehLastPlayerID[vehicleid] = playerid;
        vehLastEntered[vehicleid] = GetTickCount();
        lastVehicleID[playerid] = vehicleid;
        vehLastHealth[vehicleid] = health;

        // upside down
        defer OnUpsideDownCheck[500](playerid, vehicleid);
    }
    if(oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER) {        
        new vehicleid = lastVehicleID[playerid];

        vehLastExited[vehicleid] = GetTickCount();

        new Float:health;
        GetVehicleHealth(vehicleid, health);

        if(vehLastExited[vehicleid] - vehLastEntered[vehicleid] < 2000 && health < 350.0 && IsValidVehicle(vehicleid)) {
            SetVehicleHealth(vehicleid, 1000.0);
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Vehicle Destroyer");
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using vehicle destroyer", GetName(playerid), playerid); 
        }
    }
    if(newstate == PLAYER_STATE_SPECTATING && (oldstate == PLAYER_STATE_ONFOOT || oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER)) {
        if(!g_PlayerSpectating[playerid] && !AccountData[playerid][pAdmin]) {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using invisible hack (has been kicked)", GetName(playerid), playerid); 
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Invisible");
            KickEx(playerid); 
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

hook OnPlayerDeath(playerid, killerid, reason) {

    if(killerid != INVALID_PLAYER_ID) {

        if(!AccountData[killerid][pSpawned]) {

            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using fakespawn (has been kicked)", GetName(playerid), playerid); 
            KickEx(killerid);
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

ptask OnReduceWarning[5000](playerid) {
	if(ac_enter_car[playerid] > 0)
	{
		ac_enter_car[playerid]--;
	}
    if(veh_arbrk_warn[playerid] > 0) {
        veh_arbrk_warn[playerid]--;
    }
    if(oft_arbrk_warn[playerid] > 0) {
        oft_arbrk_warn[playerid]--;
    }
    if(ram_warn[playerid] > 0) {
        ram_warn[playerid]--;
    }
    if(g_acCarShot[playerid] > 0) {
        g_acCarShot[playerid]--;
    }
    if(killingVeh[playerid] > 0) {
        killingVeh[playerid]--;
    }
	for(new i = 0; i < 52; i++) if(WarningCode[playerid][i] > 0)
    {
		WarningCode[playerid][i]--;
	}
    if(airbreak_warning[playerid]) {
        airbreak_warning[playerid]--;
    }
    return 1;
}

stock IsVehicleAir(playerid, vehicleid)
{
	vehicleid = GetPlayerVehicleID(playerid);
	switch(GetVehicleModel(vehicleid))
	{
		case 592, 577, 511, 512, 593, 520, 553, 476, 519, 460, 513, 548, 425, 417, 487, 488, 498, 563, 447, 469: return 1;
	}
	return 0;
}

stock AC_GetNearbyPlayers(playerid)
{
	new count, intid, worldid, Float: posX, Float: posY, Float: posZ;
	intid = GetPlayerInterior(playerid);
	worldid = GetPlayerVirtualWorld(playerid);
	GetPlayerPos(playerid, posX, posY, posZ);

 	foreach(new i : StreamedPlayer[playerid]) {

	    if(playerid == i) 
            continue;

		if(intid == GetPlayerInterior(i) && worldid == GetPlayerVirtualWorld(i) && IsPlayerInRangeOfPoint(i, posX, posY, posZ, 50.0)) count++;
	}
	return count;
}


ptask anti_cheat_2_update[1000](playerid) {

    new
        ac_weapon[13],
        ac_ammo[13]
    ;

    if(AccountData[playerid][pJustSpawn])
        return 1;

    if(IsPlayerInEvent(playerid))
        return 1;

    if(!AccountData[playerid][pAdmin]) {

        if(airbreak_status) {
            new detection = AirBreak_Check(playerid);
            if(detection > 0)
            {
                if(detection == 1) {

                    if(++abrk_warn[playerid] >= 5) {
                        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%s) "LIGHTGREY"is possible using onfoot airbreak (has been kicked)", GetName(playerid), AccountData[playerid][pUCP]);
                        abrk_warn[playerid] = 0;
                        SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Airbreak)");
                        KickEx(playerid);
                    }
                }
                else if(detection == 2) {

                    if(++abrk_warn[playerid] >= 5) {
                        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%s) "LIGHTGREY"is possible using inside vehicle airbreak (has been kicked)", GetName(playerid), AccountData[playerid][pUCP]);
                        abrk_warn[playerid] = 0;
                        SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Airbreak)");
                        KickEx(playerid);
                    }
                }
            }
        }
        new Float:health;
        GetPlayerHealth(playerid, health);
        if(health > 100.0) {
            SetPlayerHealth(playerid, 100.0);
        }

        if(!PlayerTaserOn[playerid] && !IsPlayerInEvent(playerid) && !IsPlayerHunting(playerid) && !AccountData[playerid][pWHProtect]) {

            for(new i = 0; i < 13; i++) 
            {
                GetPlayerWeaponData(playerid, i, ac_weapon[i], ac_ammo[i]);

                if(ac_weapon[i] && AccountData[playerid][pGuns][g_aWeaponSlots[ac_weapon[i]]] != ac_weapon[i] && ac_weapon[i] != WEAPON_PARACHUTE) 
                {
                    SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using weapon hack (%s)", GetName(playerid), ReturnWeaponName(ac_weapon[i]));
                    defer AC_SetWeaponBack[1000](playerid);
                    ac_weapon_h[playerid]++;
                    if(ac_weapon_h[playerid] >= 3) 
                    {
                        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using weapon hack %s (has been kicked)", GetName(playerid), ReturnWeaponName(ac_weapon[i]));
                        ac_weapon_h[playerid] = 0;
                        SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Weapon Hack)");
                        KickEx(playerid);
                    }
                }
            }        
        }
        if (AC_GetPlayerSpeed(playerid) > 350.0 && AccountData[playerid][pAdmin] < 1)
        {
            SendAdminMessage(X11_RED, "[Anticheat]: "LIGHTGREY"Cheat detected on {FFFF00}%s (%s) [%s] "LIGHTGREY"(%s)", GetName(playerid), AccountData[playerid][pUCP], ReturnIP(playerid), (IsPlayerInAnyVehicle(playerid)) ? ("Vehicle Speedhack") : ("Onfoot Speedhack"));
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected because of using some suspicious programs (SpeedHack)");
        }

        new vehicleid = GetPlayerVehicleID(playerid);

        if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && !IsAPlane(vehicleid) && GetVehicleSpeed(vehicleid) > 250) 
        {
            if(++speed_hack[playerid] > 3) 
            {
                SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on {FFFF00}%s "LIGHTGREY"(Vehicle Speedhack)", GetName(playerid));
                speed_hack[playerid] = 0;   
                KickEx(playerid);  
            }
        }
        new Float:X,Float:Y,Float:Z;
        GetPlayerPos(playerid,X,Y,Z);
        if(Z == BulletCrasher || !(InvalidSeat1 <= Z <= InvalidSeat2)) 
        {
            new tipcrasher[56];
            tipcrasher= "Bad Vehicle Crasher";
            if(Z == BulletCrasher)
                tipcrasher= "Bullet Crasher";

            SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on {FFFF00}%s "LIGHTGREY"(%s)", GetName(playerid), tipcrasher);
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Crasher)");
            KickEx(playerid);
        }
        if(AC_PlayerHasWeapon(playerid, WEAPON_BOMB) && !AccountData[playerid][pAdmin]) 
        {
            CallLocalFunction("OnPlayerCrasher", "d", playerid);
        }
        if(!AccountData[playerid][IsLoggedIn] && AC_GetPlayerSpeed(playerid) > 2.5 && !GetPVarInt(playerid, "CharSelection")) {
            SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Fake Spawn)");
            SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on "YELLOW"%s(%s) "LIGHTGREY"(Fake Spawn)", GetName(playerid), AccountData[playerid][pUCP]);
            KickEx(playerid);        
        }
    }
    return 1;
}

ptask anti_cheat_update[1000](playerid)
{
    if(AccountData[playerid][pJustSpawn])
        return 1;

    if(IsPlayerInEvent(playerid))
        return 1;

    if(HitData[playerid][0] > 0) {
        HitData[playerid][0]--;
    }

    if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
        new vehicleid = GetPlayerVehicleID(playerid),
            Float:speed;

        speed = GetVehicleSpeed(vehicleid);

        new keys, ud, lr;

        GetPlayerKeys(playerid, keys, ud, lr);
        if(IsVehicleDrivingBackwards(vehicleid) && speed >= 80.0) {

            if(keys == 36) {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using speedhack (maju mundur)", GetName(playerid));
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: maju mundur");
                KickEx(playerid);     
            }
        }

        if(!keys && (speed >= 144 && speed <= 146)) {
            if(++g_acCarShot[playerid] > 3) 
            {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using speedhack (carshot)", GetName(playerid));
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: carshot 1");
                KickEx(playerid);    
                g_acCarShot[playerid] = 0;    
            }
        }

        if(!keys && (speed >= 230 && speed <= 235)) {
            if(++g_acCarShot[playerid] > 3) 
            {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using speedhack (carshot)", GetName(playerid));
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: carshot 2");
                KickEx(playerid);    
                g_acCarShot[playerid] = 0;   
            }
        }

        if((speed >= 144 && speed <= 146) && speed >= g_acOldSpeed[vehicleid] && speed <= g_acOldSpeed[vehicleid] + 1.0) {
            if(++g_acCarShot[playerid] > 3) 
            {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using speedhack (carshot)", GetName(playerid));
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: carshot 3");
                KickEx(playerid);    
                g_acCarShot[playerid] = 0;   
            }   
        }
        if((speed >= 232 && speed <= 235) && speed >= g_acOldSpeed[vehicleid] && speed <= g_acOldSpeed[vehicleid] + 1.0) {
            if(++g_acCarShot[playerid] > 3) 
            {
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using speedhack (carshot)", GetName(playerid));
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: carshot 4");
                KickEx(playerid);    
                g_acCarShot[playerid] = 0;   
            }   
        }

        g_acOldSpeed[vehicleid] = speed;
    }
    if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK && !AccountData[playerid][pAdmin] && !AccountData[playerid][pTheStars]) {
        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using jetpack spawn (has been kicked)", GetName(playerid));
        SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Jetpack");
        KickEx(playerid);
    }

    if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) {
        new Float:speed = AC_GetPlayerSpeed(playerid);

        if((speed >= 0.60 && speed <= 0.80) && speed >= airbreak_speed_old[playerid] && speed <= airbreak_speed_old[playerid] + 0.30) {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using airbreak (onfoot)", GetName(playerid));
            if(++airbreak_warning[playerid] > 3)
            {
                SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: airbreak");
                KickEx(playerid);
                airbreak_warning[playerid] = 0;   
            }   
        }

        airbreak_speed_old[playerid] = speed;
    }
    return 1;
}


function OnPlayerCrasher(playerid) 
{
    SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on {FFFF00}%s "LIGHTGREY"(Crasher)", GetName(playerid));
    SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Crasher)");
    KickEx(playerid);
    return 1;
}


public OnPlayerUseVending(playerid, type) 
{
    new Float:health;
    AntiCheatGetHealth(playerid, health);
    defer AC_SetHealthBack[1000](playerid, health);

    SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"terdeteksi menggunakan vending machines.", GetName(playerid));
    SendClientMessage(playerid, X11_RED, "Kamu terdeteksi melakukan abuse dengan vending machines! (notif ini akan muncul ke administrator & log server)");
    return 1;
}

public OnPlayerRamPlayer(playerid, driverid, vehicleid, Float:damage) {

    if(++ram_warn[driverid] >= 5) {
        SendClientMessageEx(driverid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Massive Ramming");
        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"has been detected for using: Vehicle Hack (massive ramming)", GetName(driverid));
        KickEx(driverid);    
    }
    return 1;
}

CMD:abstatus(playerid, params[]) {
	if(AccountData[playerid][pAdmin] < 6)
		return Error(playerid, "You don't have permission to use this command."); 

	airbreak_status = !(airbreak_status);
	Success(playerid, "You have %s server custom anti vehicle airbreak.", airbreak_status ? ("enabled") : ("disabled"));
	return 1;
}


forward internal_resetImmun(playerid);
public internal_resetImmun(playerid) {

	if(AccountData[playerid][pCarImmun])
		AccountData[playerid][pCarImmun] = 0;
}

hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) {

	AccountData[playerid][pEnterCar] = 1;
	SetTimerEx("internal_TolerateEnter", 10000, false, "d", playerid);
	return 1;
}

forward internal_TolerateEnter(playerid);
public internal_TolerateEnter(playerid) {

	if(AccountData[playerid][pEnterCar])
		AccountData[playerid][pEnterCar] = 0;
}