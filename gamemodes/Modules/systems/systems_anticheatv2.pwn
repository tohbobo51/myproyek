#define TIME_TO_NEXT_CHECK              (30)
#define MAXIMUM_REPORTED_CHEAT          (5)
#define     BulletCrasher -5.5
#define     InvalidSeat1 -1000000.0
#define     InvalidSeat2 1000000.0

#include <YSI\y_hooks>

/*Varibale*/
new killingVeh[MAX_PLAYERS];
new speed_hack[MAX_PLAYERS]= {0, ...};
new ram_warn[MAX_PLAYERS];
new ac_entercarNotif[MAX_PLAYERS];
new Float:fcrash_x, Float:fcrash_y, Float:fcrash_z;
new fcrash_time_svr;
new fcrash_count;
new fcrash_player[MAX_PLAYERS];
new g_acCarShot[MAX_PLAYERS];
new ac_enter_car[MAX_PLAYERS] = {0, ...};
new Float:g_acOldSpeed[MAX_VEHICLES];
new HitData[MAX_PLAYERS][2]; 
    const MAX_HITS = 5; 
    const TIME_INTERVAL = 10;

new 
    airbreak_anticheat[MAX_PLAYERS],
    vehairbreak_anticheat[MAX_PLAYERS],
    teleport_anticheat[MAX_PLAYERS],
    vehteleport_anticheat[MAX_PLAYERS],
    vehhealthhack_anticheat[MAX_PLAYERS],
    healthhack_anticheat[MAX_PLAYERS],
    flyhack_anticheat[MAX_PLAYERS],
    vehflyhack_anticheat[MAX_PLAYERS],
    armourhack_anticheat[MAX_PLAYERS],
    //
    tele_pickup_ac[MAX_PLAYERS],
    tele_pickup_ac_report_time[MAX_PLAYERS],
    ac_weapon_h[MAX_PLAYERS]= {0, ...}
;

Anticheat_GetReportAmount(playerid, code)
{
    if (code == 6)
    {
        return tele_pickup_ac[playerid];
    }

    return 0;
}

bool:Anticheat_IsReportTimeExpired(playerid, code)
{
    new now = GetTickCount();

    if (code == 6)
    {
        return (tele_pickup_ac_report_time[playerid] <= now);
    }

    return true;
}

Anticheat_SetReport(playerid, code, value)
{
    if (code == 6)
    {
        tele_pickup_ac[playerid] = value;
    }

    return 1;
}

Anticheat_ReduceReport(playerid, code, amount = 1)
{
    if (code == 6)
    {
        new new_value = tele_pickup_ac[playerid] - amount;

        if (new_value < 0)
        {
            tele_pickup_ac[playerid] = 0;
        }
        else
        {
            tele_pickup_ac[playerid] = new_value;
        }
    }

    return 1;
}

Anticheat_SetReportTime(playerid, code, time)
{
    if (code == 6)
    {
        tele_pickup_ac_report_time[playerid] = time;
    }

    return 1;
}

Anticheat_IncreaseReportTime(playerid, code, time = TIME_TO_NEXT_CHECK)
{
    new now = GetTickCount();

    if (code == 6)
    {
        tele_pickup_ac_report_time[playerid] = now + (1000 * time);
    }

    return 1;
}

Anticheat_ResetReport(playerid, code)
{
    if (code == 6)
    {
        Anticheat_SetReport(playerid, code, 0);
        Anticheat_SetReportTime(playerid, code, 0);
    }
}

FUNC:: Anticheat_ResetReportCount()
{
    foreach(new playerid : Player)
    {
        if ((Anticheat_GetReportAmount(playerid, 6) > 0) && Anticheat_IsReportTimeExpired(playerid, 6))
        {
            Anticheat_ReduceReport(playerid, 6);
            Anticheat_IncreaseReportTime(playerid, 6);
        }
    }

    return 1;
}

hook OnPlayerConnect(playerid)
{
    airbreak_anticheat{playerid} = 0;
    vehairbreak_anticheat{playerid} = 0;
    teleport_anticheat{playerid} = 0;
    vehteleport_anticheat{playerid} = 0;
    vehhealthhack_anticheat{playerid} = 0;
    healthhack_anticheat{playerid} = 0;
    flyhack_anticheat{playerid} = 0;
    vehflyhack_anticheat{playerid} = 0;
    armourhack_anticheat{playerid} = 0;
    Anticheat_ResetReport(playerid, 6);
    ac_weapon_h[playerid] = 0;
    killingVeh[playerid] = 0;
    HitData[playerid][0] = 0; 
    HitData[playerid][1] = 0; 
    speed_hack[playerid] = 0;
    ram_warn[playerid] = 0;
    ac_entercarNotif[playerid] = 0;
    ac_enter_car[playerid] = 0;
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
    speed_hack[playerid] = 0;

}

forward RestoreHealth(playerid, Float:health);
forward RestoreArmour(playerid, Float:armour);
forward OnCheatDetected(playerid, ip_address[], type, code);


public OnCheatDetected(playerid, ip_address[], type, code)
{
    if(!IsPlayerConnected(playerid))
        return 0;

    switch(code)
    {
        case 0: {
            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan foot airbreak hack.", ReturnName(playerid), playerid);
        }
        case 1: {
            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan vehicle airbreak hack.", ReturnName(playerid), playerid);
        }
        case 2: {
            if (!AccountData[playerid][pSpawned])
                return 0;
                
            new Float:x, Float:y, Float:z;
            new vw, int;
            AntiCheatGetPos(playerid, x, y, z);
            int = GetPlayerInterior(playerid); 
            vw = GetPlayerVirtualWorld(playerid);
            SetPlayerPos(playerid, x, y, z);
            SetPlayerVirtualWorld(playerid, vw);
            SetPlayerInterior(playerid, int);

            if(!AccountData[playerid][UsingDoor] && AccountData[playerid][pAdmin] < 1 && AccountData[playerid][pTheStars] < 1)
            {
                if(teleport_anticheat{playerid}++ > 2) 
                {
                    AccountData[playerid][pInt] = int;
                    AccountData[playerid][pWorld] = vw;
                    SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hacks"YELLOW" [D: %.2f m]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z));
                    SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hacks"YELLOW" [D: %.2f m]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z));
                    KickEx(playerid);
                }
                else 
                {
                    SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan teleport hack"YELLOW" [D: %.2f m]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z));
                }
            }
        }
        case 3: {
            new Float:x, Float:y, Float:z;
            new vw, int;
            AntiCheatGetVehiclePos(GetPlayerVehicleID(playerid), x, y, z);
            int = GetPlayerInterior(playerid);
            vw = GetPlayerVirtualWorld(playerid);
            SetVehiclePos(GetPlayerVehicleID(playerid), x, y, z);
            SetVehicleVirtualWorld(GetPlayerVehicleID(playerid), vw);
            LinkVehicleToInterior(GetPlayerVehicleID(playerid), int);

            if(teleport_anticheat{playerid}++ > 2 && AccountData[playerid][pAdmin] < 1 && AccountData[playerid][pTheStars] < 1) 
            {
                AccountData[playerid][pInt] = int;
                AccountData[playerid][pWorld] = vw;
                SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hack "YELLOW"[D: %.2f m] [%s]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z), GetVehicleName(GetPlayerVehicleID(playerid)));
                SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hack "YELLOW"[D: %.2f m] [%s]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z), GetVehicleName(GetPlayerVehicleID(playerid)));
                KickEx(playerid);
            }
            else 
            {
                SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" diduga menggunakan teleport hack "YELLOW"[D: %.2f m] [%s]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z), GetVehicleName(GetPlayerVehicleID(playerid)));
            }
        }
        case 4:
        {
            new vehicleid = GetPlayerVehicleID(playerid),
                vehindex = RETURN_INVALID_VEHICLE_ID;
            
            if((vehindex = Vehicle_ReturnID(vehicleid)) != RETURN_INVALID_VEHICLE_ID)
            {
                if(PlayerVehicle[vehindex][pVehLocked]) return 0;
            }

            if(vehicleid == JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle] || vehicleid == ShowroomVeh[playerid] || VehicleCore[vehicleid][vehAdmin])
                return 0;

            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan diduga menggunakan Troll Car", ReturnName(playerid), playerid);
        }
        case 5: SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan vehicle to player hack (sobeit)", ReturnName(playerid), playerid);
        case 7: {
            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan fly hack.", ReturnName(playerid), playerid);
        }    
        case 8: {
           SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan vehicle fly hack.", ReturnName(playerid), playerid);
        }
        case 9: SendAdminMessage(X11_RED, "[AntiCheat]: "YELLOW"%s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan onfoot airbreak / teleport.", ReturnName(playerid), playerid), SendClientMessageEx(playerid, X11_RED, "[AntiCheat]: "YELLOW"%s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan onfoot airbreak / teleport.", ReturnName(playerid), playerid), KickEx(playerid);
        case 10: SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan vehicle speed hack.", ReturnName(playerid), playerid), SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan vehicle speed hack.", ReturnName(playerid), playerid), KickEx(playerid);
        case 11: 
        {
            new Float:health, Float:health2;
            new vehicleid = AntiCheatGetVehicleID(playerid);
            if(vehicleid != ShowroomVeh[playerid])
            {
                AntiCheatGetVehicleHealth(vehicleid, health);
                SetValidVehicleHealth(vehicleid, health);
                GetVehicleHealth(vehicleid, health2);
                SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"kemungkinan menggunakan Vehicle Repair Hack "GREY"[%.2f] "YELLOW">> "GREY"[%.2f]", ReturnName(playerid), playerid, health, health2); 
            }
        }
        case 12: 
        {
            new Float:health;
            AntiCheatGetHealth(playerid, health);
            SetTimerEx("RestoreHealth", 10, 0, "df", playerid, health);
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible using health hack "GREY"[%.2f]", ReturnName(playerid), playerid, health); 
        }
        case 13: 
        {
            new Float:armor, Float:armour;
            AntiCheatGetArmour(playerid, armor);
            GetPlayerArmour(playerid, armour);
            SetTimerEx("RestoreArmour", 10, 0, "df", playerid, armor);
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"possible using armour hack "GREY"[%.2f] "YELLOW">> "GREY"[%.2f]", ReturnName(playerid), playerid, armor, armour); 
        }//MarkhereAC
        case 14: return 0;
        case 15: 
        {
            if (gettime() > AccountData[playerid][pACTime] && AccountData[playerid][pAdmin] < 1 && AccountData[playerid][pTheStars] < 1 && !AccountData[playerid][pInjured] && !IsPlayerInEvent(playerid) && !DurringHunting[playerid])
            {
                new pname[MAX_PLAYER_NAME];
                GetPlayerName(playerid, pname, sizeof(pname));

                new msg[128];
                format(msg, sizeof(msg), "[AntiCheat]: {FFFF00}%s(%d){C0C0C0} diduga menggunakan weapon hack.", pname, playerid);
                SendClientMessageEx(playerid, X11_RED, msg);
                SendAdminMessage(X11_RED, msg);
                KickEx(playerid);
            }
        }
        case 16: 
        {
            SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan add ammo hack.", ReturnName(playerid), playerid);
            SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan add ammo hack.", ReturnName(playerid), playerid);
            KickEx(playerid);
        }
        case 17: SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan infinite ammo hack.", ReturnName(playerid), playerid), SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan infinite ammo hack.", ReturnName(playerid), playerid), KickEx(playerid);
        case 19:
        {
            SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Beton CS!", ReturnName(playerid), playerid);
            SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Beton CS!", ReturnName(playerid), playerid);
            KickEx(playerid);
        }
        case 21: SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Invisible Hacks!", ReturnName(playerid), playerid), SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Invisible Hacks!", ReturnName(playerid), playerid), KickEx(playerid);
        case 26: return 0;
        case 27:
        {
            if(gettime() > AccountData[playerid][pACTime])
            {
                SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga Fake Spawn!", ReturnName(playerid), playerid);
                SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga Fake Spawn!", ReturnName(playerid), playerid);
                KickEx(playerid);
            }
        }
        case 40: return 0;
        case 43..46: SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan crasher hack.", ReturnName(playerid), playerid), SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan crasher hack.", ReturnName(playerid), playerid), KickEx(playerid);
        case 47: 
        {
            if(gettime() > AccountData[playerid][pACTime] && !IsPlayerInEvent(playerid) && !DurringHunting[playerid])
            {
                SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan fake weapon hack", ReturnName(playerid), playerid);
                SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan fake weapon hack", ReturnName(playerid), playerid);
                KickEx(playerid);
            }
        }
        case 52: return 0;
    }    
    return 1;
}

public RestoreHealth(playerid, Float:health)
{
    if(IsPlayerConnected(playerid))
        SetPlayerHealth(playerid, health);
}

public RestoreArmour(playerid, Float:armour)
{
    if(IsPlayerConnected(playerid))
        SetPlayerArmour(playerid, armour);
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

hook OnPlayerDeath(playerid, killerid, reason) {

    if(killerid != INVALID_PLAYER_ID) {

        if(!AccountData[killerid][pSpawned]) {

            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"is possible using fakespawn (has been kicked)", ReturnName(playerid), playerid); 
            KickEx(killerid);
        }
    }
    return 1;
}

ptask OnReduceWarning[5000](playerid) 
{
    if(ram_warn[playerid] > 0) 
    {
        ram_warn[playerid]--;
    }
    if(killingVeh[playerid] > 0) 
    {
        killingVeh[playerid]--;
    }
    if(ac_enter_car[playerid] > 0)
	{
		ac_enter_car[playerid]--;
	}
    return 1;
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

ptask anti_cheat_2_update[1000](playerid) {

    new
        ac_weapon[13],
        ac_ammo[13]
    ;

    if(AccountData[playerid][pJustSpawn])
        return 1;

    if(IsPlayerInEvent(playerid))
        return 1;

    if(!AccountData[playerid][pAdmin]) 
    {

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
        if (AC_GetPlayerSpeed(playerid) > 300.0 && AccountData[playerid][pAdmin] < 1)
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
        if(!AccountData[playerid][IsLoggedIn] && AC_GetPlayerSpeed(playerid) > 2.5 && !GetPVarInt(playerid, "CharSelection")) 
        {
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
    return 1;
}

function OnPlayerCrasher(playerid) 
{
    SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on {FFFF00}%s "LIGHTGREY"(Crasher)", GetName(playerid));
    SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Crasher)");
    KickEx(playerid);
    return 1;
}

timer AC_SetHealthBack[1000](playerid, Float:health) 
{
    SetPlayerHealthEx(playerid, health);
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

    if(++ram_warn[driverid] >= 4) {
        SendClientMessageEx(driverid, X11_YELLOW, "(AntiCheat) "GREY"You have been detected for using: Massive Ramming");
        SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"has been detected for using: Vehicle Hack (massive ramming)", GetName(driverid));
        KickEx(driverid);    
    }
    return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate) {

    if(IsPlayerNPC(playerid))
        return Y_HOOKS_BREAK_RETURN_1;

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

        if(killingVeh[killerid] >= 3) {
            SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s(%d) "LIGHTGREY"dikeluarkan dari server karena menghancurkan lebih dari 3 kendaraan.", GetName(killerid), killerid);
            SendClientMessageEx(killerid, X11_YELLOW, "(AntiCheat) "GREY"Kamu telah dikeluarkan dari server karena menghancurkan banyak kendaraan.");
            killingVeh[killerid] = 0;
            KickEx(killerid);
        }
    }

    return Y_HOOKS_CONTINUE_RETURN_1;
}