FUNC:: PlayerUpdate(playerid)
{
	if (AccountData[playerid][IsLoggedIn] && AccountData[playerid][pSpawned])
	{

		new e_weaponid = GetWeapon(playerid);
		if(e_weaponid >= 22 && e_weaponid <= 38 && !IsPlayerInEvent(playerid)) {
			if(AccountData[playerid][pGuns][g_aWeaponSlots[e_weaponid]] > 0) {
				PlayerTextDrawSetString(playerid, AMMOTD[playerid], sprintf("%d", AccountData[playerid][pAmmo][g_aWeaponSlots[e_weaponid]]));
			}
		}
		else {
			PlayerTextDrawSetString(playerid,  AMMOTD[playerid], "_");
		}

		if(AccountData[playerid][pSpec] != -1)
		{
			new
				targetid = AccountData[playerid][pSpec];
		
			PlayerTextDrawSetString(playerid, SpectatorInfoTD[playerid][1], sprintf("~g~%s_(%d)", ReturnName(targetid), targetid));
			PlayerTextDrawSetString(playerid, SpectatorInfoTD[playerid][2], sprintf("Cash:~y~_%s", FormatMoney(AccountData[targetid][pMoney])));
			PlayerTextDrawSetString(playerid, SpectatorInfoTD[playerid][3], sprintf("HP:~y~_%d.0", GetHealth(targetid)));
			PlayerTextDrawSetString(playerid, SpectatorInfoTD[playerid][4], sprintf("AM:~y~_%d.0", GetArmor(targetid)));
			PlayerTextDrawSetString(playerid, SpectatorInfoTD[playerid][5], sprintf("Int:~y~_%d_~w~WID:~y~_%d", GetPlayerInterior(targetid), GetPlayerVirtualWorld(targetid)));
			PlayerTextDrawSetString(playerid, SpectatorInfoTD[playerid][6], sprintf("Hungry:~y~_%d%%_~w~Thirst:~y~_%d%%", AccountData[targetid][pHunger] , AccountData[targetid][pThirst]));
			PlayerTextDrawSetString(playerid, SpectatorInfoTD[playerid][7], sprintf("FPS:~y~_%d_~w~Ping:~y~_%dms", GetPlayerFPS(targetid), GetPlayerPing(targetid)));
		}
		
		/* Anti Jetpack Hacks */
		if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_USEJETPACK && !AccountData[playerid][pJetpack])
		{
			SendClientMessageToAllEx(X11_TOMATO, "AdmCmd: %s(%d) telah ditendang dari server karena menggunakan Jetpack Hacks", ReturnName(playerid), playerid);
			KickEx(playerid);
		}
		
		/* FPS Info */
		if(AccountData[playerid][ToggleFPS])
		{
			PlayerTextDrawSetString(playerid, FPStextdraws[playerid][2], sprintf("FPS: %d", GetPlayerFPS(playerid)));
			PlayerTextDrawSetString(playerid, FPStextdraws[playerid][3], sprintf("PING: %dMS", GetPlayerPing(playerid)));
			PlayerTextDrawSetString(playerid, FPStextdraws[playerid][4], sprintf("PL: %.0f%%", GetPlayerPacketLoss(playerid)));
		}

		/* Weapon Attachment */
		if(NetStats_GetConnectedTime(playerid) - WeaponTick[playerid] >= 250)
		{
			static weaponid, ammo, objectslot, count, index;

			for (new i = 2; i <= 7; i++) //Loop only through the slots that may contain the wearable weapons
			{
				GetPlayerWeaponData(playerid, i, weaponid, ammo);
				index = weaponid - 22;

				if (weaponid && ammo && !WeaponSettings[playerid][index][Hidden] && IsWeaponWearable(weaponid) && EditingWeapon[playerid] != weaponid)
				{
					objectslot = GetWeaponObjectSlot(weaponid);

					if (GetPlayerWeapon(playerid) != weaponid)
						SetPlayerAttachedObject(playerid, objectslot, GetWeaponModel(weaponid), WeaponSettings[playerid][index][Bone], WeaponSettings[playerid][index][Position][0], WeaponSettings[playerid][index][Position][1], WeaponSettings[playerid][index][Position][2], WeaponSettings[playerid][index][Position][3], WeaponSettings[playerid][index][Position][4], WeaponSettings[playerid][index][Position][5], 1.0, 1.0, 1.0);

					else if (IsPlayerAttachedObjectSlotUsed(playerid, objectslot)) RemovePlayerAttachedObject(playerid, objectslot);
				}
			}
			for (new i = 6; i <= 8; i++) if (IsPlayerAttachedObjectSlotUsed(playerid, i))
			{
				count = 0;

				for (new j = 22; j <= 38; j++) if (PlayerHasWeapon(playerid, j) && GetWeaponObjectSlot(j) == i)
					count++;

				if(!count) RemovePlayerAttachedObject(playerid, i);
			}
			WeaponTick[playerid] = NetStats_GetConnectedTime(playerid);
		}

		/* Anti Money Hack */
		if(GetPlayerMoney(playerid) != AccountData[playerid][pMoney])
		{
			ResetPlayerMoney(playerid);
			GivePlayerMoney(playerid, AccountData[playerid][pMoney]);
		}

		/* Pengurangan Data */
		if(AccountData[playerid][pJail] <= 0) // jika sedang tidak dipenjara admin
		{
			if(AccountData[playerid][pStress] > 100)
			{
				AccountData[playerid][pStress] = 100;
			}
			if(AccountData[playerid][pStress] < 0)
			{
				AccountData[playerid][pStress] = 0;
			}
			if(AccountData[playerid][pHunger] > 100)
			{
				AccountData[playerid][pHunger] = 100;
			}
			if(AccountData[playerid][pHunger] < 0)
			{
				AccountData[playerid][pHunger] = 0;
			}
			if(AccountData[playerid][pThirst] > 100)
			{
				AccountData[playerid][pThirst] = 100;
			}
			if(AccountData[playerid][pThirst] < 0)
			{
				AccountData[playerid][pThirst] = 0;
			}
		}

		/* Textdraw Death */
		if(AccountData[playerid][pInjured])
		{
			if(AccountData[playerid][pInjuredTime] > 0)
			{
				static hours, minutes, seconds;
				GetElapsedTime(AccountData[playerid][pInjuredTime] --, hours, minutes, seconds);
				PlayerTextDrawSetString(playerid, Titik_Temu_INJURED[playerid][1], sprintf("Anda tidak sadarkan diri dalam ~r~%02d Menit %02d Detik", minutes, seconds));
				PlayerTextDrawShow(playerid, Titik_Temu_INJURED[playerid][0]);
				PlayerTextDrawShow(playerid, Titik_Temu_INJURED[playerid][1]);
				
				ApplyAnimationEx(playerid, "WUZI", "CS_DEAD_GUY", 4.1, 0, 0, 0, 1, 0, 1);
				SetPlayerHealthEx(playerid, 99999);
			
				if(!AccountData[playerid][pInjuredTime]) 
				{
					SetPlayerHealthEx(playerid, 100.0);
					AccountData[playerid][pHunger] = 100;
					AccountData[playerid][pThirst] = 100;
					AccountData[playerid][pStress] = 0;
					AccountData[playerid][pInjured] = 0;
					AccountData[playerid][pInjuredTime] = 0;
					Inventory_Clear(playerid);
					ResetPlayerWeaponsEx(playerid);

					SendClientMessageEx(playerid, -1, "[i] Anda koma dan dilarikan kerumah sakit, semua barang dan uangmu hilang!");

					SetPlayerPositionEx(playerid, 907.8289, 711.1892, 5010.3184, 358.7794, 5000);
					SetPlayerVirtualWorldEx(playerid, 5);
					SetPlayerInteriorEx(playerid, 5);
				}
			}
		}

		/* Pengurangan Data 2 */
		if(AccountData[playerid][pInjured] == 0 && AccountData[playerid][pGender] != 0) 
		{
			PlayerTextDrawHide(playerid, Titik_Temu_INJURED[playerid][0]);
			PlayerTextDrawHide(playerid, Titik_Temu_INJURED[playerid][1]);

			if(AccountData[playerid][pStress] < 99)
			{
				TextDrawHideForPlayer(playerid, StressPurple[0]);
			}
			if(++ AccountData[playerid][pStressTime] >= 105 && GetPlayerVIPLevel(playerid) < 3)
			{
				if(AccountData[playerid][pInjured] != 1 && !IsPlayerInEvent(playerid))
				{
					if(!IsAUnstressArea(playerid))
					{
						AccountData[playerid][pStress]++;

						if(AccountData[playerid][pStress] >= 99)
						{
							TextDrawShowForPlayer(playerid, StressPurple[0]);
							SetPlayerDrunkLevel(playerid, 10000);
						}
					}
					else
					{
						AccountData[playerid][pStress] -= 10;

						if(AccountData[playerid][pStress] < 97)
						{
							SetPlayerDrunkLevel(playerid, 0);
							TextDrawHideForPlayer(playerid, StressPurple[0]);
						}
					}
				}
				AccountData[playerid][pStressTime] = 0;
			}
			if(++ AccountData[playerid][pHungerTime] >= 525)
			{
				if(AccountData[playerid][pHunger] > 0 && AccountData[playerid][pInjured] != 1 && !IsPlayerInEvent(playerid))
				{
					AccountData[playerid][pHunger] -= 5;
				}
				else if(AccountData[playerid][pHunger] <= 0 && AccountData[playerid][pInjured] != 1)
				{
					if(IsPlayerInAnyVehicle(playerid))
						RemovePlayerFromVehicle(playerid);
					SetPlayerHealth(playerid, 0.0);
				}
				AccountData[playerid][pHungerTime] = 0;
			}
			if(++ AccountData[playerid][pThirstTime] >= 500)
			{
				if(AccountData[playerid][pThirst] > 0 && AccountData[playerid][pInjured] != 1 && !IsPlayerInEvent(playerid))
				{
					AccountData[playerid][pThirst] -= 5;
				}
				else if(AccountData[playerid][pThirst] <= 0 && AccountData[playerid][pInjured] != 1)
				{
					if(IsPlayerInAnyVehicle(playerid))
						RemovePlayerFromVehicle(playerid);
					SetPlayerHealth(playerid, 0.0);
				}
				AccountData[playerid][pThirstTime] = 0;
			}
		}

		/* Admin Duty Timer */
		if(AccountData[playerid][pAdminDuty])
		{
			AccountData[playerid][aDutyTimer] ++;
            UpdateAdutyTD(playerid);
		}

		/* Masker Label Update */
		if(AccountData[playerid][pMaskOn])
		{
			new Float:health, Float:armor;
			GetPlayerHealth(playerid, health);
			GetPlayerArmour(playerid, armor);
			if(IsValidDynamic3DTextLabel(AccountData[playerid][pMaskLabel]))
			{
				UpdateDynamic3DTextLabelText(AccountData[playerid][pMaskLabel], -1, sprintf("Mask #%d\nH: ["RED_E"%.2f"WHITE"] A: [%.2f]", AccountData[playerid][pMaskID], health, armor));
			}
		}

		/* Taser Update */
		if(AccountData[playerid][pStunned] > 0)
		{
			AccountData[playerid][pStunned]--;

			if(GetPlayerAnimationIndex(playerid) != 388)
				ApplyAnimation(playerid, "CRACK", "crckdeth4", 4.0, 0, 0, 0, 1, 0, 1);
			
			if(!AccountData[playerid][pStunned])
			{
				TogglePlayerControllable(playerid, 1);
				ShowPlayerFooter(playerid, "~w~Anda tidak lagi ~r~tersengat");
			}
		}

		if(!GetPVarInt(playerid, "HbeHiden"))
		{
			switch(AccountData[playerid][pHUDMode])
			{
				case 1: // Kiri
				{
					new Float:Health, Float:Armour, Float:Hunger, Float:Thirst, Float:Stress;
					Health = GetHealth(playerid) * 33.0/100;
					Armour = GetArmor(playerid) * 33.0/100;
					Hunger = AccountData[playerid][pHunger] * -13.0/100;
					Thirst = AccountData[playerid][pThirst] * -13.0/100;
					Stress = AccountData[playerid][pStress] * -13.0/100;

					PlayerTextDrawTextSize(playerid, PipemTD[playerid][20], Health, 13.0);
					PlayerTextDrawTextSize(playerid, PipemTD[playerid][21], Armour, 13.0);
					PlayerTextDrawTextSize(playerid, PipemTD[playerid][22], 13.0, Hunger);
					PlayerTextDrawTextSize(playerid, PipemTD[playerid][23], 13.0, Thirst);
					PlayerTextDrawTextSize(playerid, PipemTD[playerid][24], 13.0, Stress);
					PlayerTextDrawShow(playerid, PipemTD[playerid][20]);
					PlayerTextDrawShow(playerid, PipemTD[playerid][21]);
					PlayerTextDrawShow(playerid, PipemTD[playerid][22]);
					PlayerTextDrawShow(playerid, PipemTD[playerid][23]);
					PlayerTextDrawShow(playerid, PipemTD[playerid][24]);
				}
				case 2: // Tengah
				{
					new Float:Health, Float:Armour, Float:Hunger, Float:Thirst, Float:Stress;
					new string[32]; 

					Health = AccountData[playerid][pHealth];
					Armour = AccountData[playerid][pArmour];
					Hunger = AccountData[playerid][pHunger];
					Thirst = AccountData[playerid][pThirst];
					Stress = AccountData[playerid][pStress];

					format(string, sizeof(string), "%.0f", Health);
					PlayerTextDrawSetString(playerid, HbeStuffs[playerid][29], string);

					format(string, sizeof(string), "%.0f", Armour);
					PlayerTextDrawSetString(playerid, HbeStuffs[playerid][30], string);

					format(string, sizeof(string), "%.0f", Hunger);
					PlayerTextDrawSetString(playerid, HbeStuffs[playerid][31], string);

					format(string, sizeof(string), "%.0f", Thirst);
					PlayerTextDrawSetString(playerid, HbeStuffs[playerid][32], string);

					format(string, sizeof(string), "%.0f", Stress);
					PlayerTextDrawSetString(playerid, HbeStuffs[playerid][33], string);

					// Tampilkan semua textdraw
					PlayerTextDrawShow(playerid, HbeStuffs[playerid][29]);
					PlayerTextDrawShow(playerid, HbeStuffs[playerid][30]);
					PlayerTextDrawShow(playerid, HbeStuffs[playerid][31]);
					PlayerTextDrawShow(playerid, HbeStuffs[playerid][32]);
					PlayerTextDrawShow(playerid, HbeStuffs[playerid][33]);
				}
			}
		}
		
		/* Good Mood Mode */
		if(AccountData[playerid][pGoodMood])
		{
			AccountData[playerid][pHunger] = 100;
			AccountData[playerid][pThirst] = 100;
			AccountData[playerid][pStress] = 0;
		}

		/* Enum Berat */
		if(AccountData[playerid][pBeratItem] <= 0)
		{
			AccountData[playerid][pBeratItem] = 0;
		}
		else if(AccountData[playerid][pBeratItem] > 50)
		{
			AccountData[playerid][pBeratItem] = 50;
		}

		/* Signal EMS */
		if(SignalExists[playerid] && SignalTimer[playerid] > 0)
		{
			SignalTimer[playerid] --;
			if(!SignalTimer[playerid])
			{
				SignalExists[playerid] = false;
				SignalTimer[playerid] = 0;
				SignalPos[playerid][0] = SignalPos[playerid][1] = SignalPos[playerid][2] = 0.0;
				Info(playerid, "Anda sudah dapat mengirim signal kepada EMS kembali!");
			}
		}

		/* Fixme */
		if(FixmeExists[playerid])
		{
			if(FixmeTime[playerid] != 0 && FixmeTime[playerid] <= gettime())
			{
				FixmeExists[playerid] = false;
				FixmeOption[playerid] = 0;
				FixmeTime[playerid] = 0;
				Info(playerid, "Tidak ada yang merespon fixme anda. Anda dapat mengajukannya kembali!");
			}
		}
	}
	return 1;
}

FUNC:: OnAnotherSecUpdate(playerid)
{
	if(!AccountData[playerid][IsLoggedIn])
		return 0;

	// Enforce newbie weapon restriction (<24h playtime)
	new total = AccountData[playerid][PlayTime] + AccountData[playerid][PlayTimer];
	if((total < 86400 || GetPVarInt(playerid, "NewbieLockUntil") > gettime()) && !AccountData[playerid][pAdminDuty] && !GetPVarInt(playerid, "NewbieBypass"))
	{
		if(GetPlayerWeapon(playerid) != 0)
		{
			ResetPlayerWeapons(playerid);
			for (new i = 0; i < 13; i ++) {
				AccountData[playerid][pGuns][i] = 0;
				AccountData[playerid][pAmmo][i] = 0;
			}
		}
	}

	AccountData[playerid][OnlineTimer] ++;
	AccountData[playerid][PlayTimer] ++;
	UpdateNewbieTextdraw(playerid);
	UpdateKeyHolderTextdraw(playerid);
	if (GetPlayerWeapon(playerid) != AccountData[playerid][pWeapon])
    {
        AccountData[playerid][pWeapon] = GetPlayerWeapon(playerid);

        if (AccountData[playerid][pWeapon] >= 1 && AccountData[playerid][pWeapon] <= 45 && AccountData[playerid][pWeapon] != 40 && AccountData[playerid][pGuns][g_aWeaponSlots[AccountData[playerid][pWeapon]]] != GetPlayerWeapon(playerid) && !DurringHunting[playerid] && !IsPlayerInEvent(playerid) && !PlayerTaserOn[playerid] && !AccountData[playerid][menuShowed])
        {
            printf("[debug] OnPlayerWeaponHack (UCP: %s Name: %s WeaponID: %d Ammo: %d)", AccountData[playerid][pUCP], ReturnPlayerName(playerid), GetPlayerWeapon(playerid), GetPlayerAmmo(playerid));

            SendAdminMessage(X11_RED, "[AntiCheat]: "YELLOW"%s(%d)"LIGHTGREY" terdeteksi menggunakan (Weapon Hacks: {FFFF00}%s"LIGHTGREY")", ReturnName(playerid), playerid, ReturnWeaponName(AccountData[playerid][pWeapon]));
            ResetWeapons(playerid);
            KickEx(playerid);
        }
        else if (AccountData[playerid][pWeapon] >= 1 && AccountData[playerid][pWeapon] <= 45 && AccountData[playerid][pWeapon] == 40 && AccountData[playerid][pGuns][g_aWeaponSlots[AccountData[playerid][pWeapon]]] != GetPlayerWeapon(playerid) && !DurringHunting[playerid] && !IsPlayerInEvent(playerid) && !PlayerTaserOn[playerid] && !AccountData[playerid][menuShowed])
        {
            printf("[debug] OnPlayerCrasher (UCP: %s Name: %s)", AccountData[playerid][pUCP], ReturnPlayerName(playerid));

            SendAdminMessage(X11_RED, "[AntiCheat]: "YELLOW"%s(%d)"LIGHTGREY" telah ditendang dari server karena terdeteksi menggunakan Crasher.luac", ReturnName(playerid), playerid);
            ResetWeapons(playerid);
            KickEx(playerid);
        }
    }
	static Float:AM;
	GetPlayerArmour(playerid, AM);
	if(AccountData[playerid][pAdmin] < 1 && AccountData[playerid][pTheStars] < 1 && AccountData[playerid][pFaction] != FACTION_POLISI && !IsPlayerInEvent(playerid))
	{
		if(AM >= 100)
		{
			SetPlayerArmourEx(playerid, 0);
			SendClientMessageToAllEx(X11_RED, "[AntiCheat]: "YELLOW"[%s] %s (%d)"ARWIN1" terdeteksi menggunakan armour hack "YELLOW"New :[100.0]", AccountData[playerid][pUCP], ReturnName(playerid), playerid);
			KickEx(playerid);
		}
	}
	new Float:H;
	GetPlayerHealth(playerid, H);
	if(AccountData[playerid][pAdmin] < 1 && AccountData[playerid][pTheStars] < 1 && !AccountData[playerid][pInjured] && !IsPlayerInEvent(playerid))
	{
		if(H > 105.0)
		{
			SetPlayerHealthEx(playerid, 100.0);
			SendClientMessage(playerid, -1, "[i] Sistem kami berhasil mengembalikan darah anda tidak lebih dari "YELLOW"100%%");
		}
	}

	if(IsDragging[playerid] != INVALID_PLAYER_ID)
	{
		new targetid = IsDragging[playerid];
		AccountData[targetid][pInBiz] = AccountData[playerid][pInBiz];
		AccountData[targetid][pInHouse] = AccountData[playerid][pInHouse];
		AccountData[targetid][pInDoor] = AccountData[playerid][pInDoor];

		new Float:X, Float:Y, Float:Z, Float:Ang;
		GetPlayerPos(playerid, X, Y, Z);
		GetPlayerFacingAngle(playerid, Ang);

		X += (0.75 * -floatsin(-Ang, degrees));
		Y += (0.75 * -floatcos(-Ang, degrees));
		SetPlayerPos(targetid, X, Y, Z);
		if(GetPlayerInterior(targetid) != GetPlayerInterior(playerid))
		{
			SetPlayerInterior(targetid, GetPlayerInterior(playerid));
		}
		if(GetPlayerVirtualWorld(targetid) != GetPlayerVirtualWorld(playerid))
		{
			SetPlayerVirtualWorld(targetid, GetPlayerVirtualWorld(playerid));
		}
	}

	if(IsPlayerConnected(playerid))
	{
		// new Float:X, Float:Y, Float:Z, Float:Ang;
		// GetPlayerPos(playerid, X, Y, Z);

		// if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		// {
		// 	GetVehicleZAngle(GetPlayerVehicleID(playerid), Ang);
		// }
		// else
		// {
		// 	GetPlayerFacingAngle(playerid, Ang);
		// }

		// static frmtcompass[258];
		// if (Ang >= 348.75 || Ang < 11.25) frmtcompass = "Utara";
		// else if (Ang >= 258.75 && Ang < 281.25) frmtcompass = "Timur";
		// else if (Ang >= 303.75 && Ang < 326.25) frmtcompass = "Timur Laut";
		// else if (Ang >= 168.75 && Ang < 191.25) frmtcompass = "Selatan";
		// else if (Ang >= 213.75 && Ang < 236.25) frmtcompass = "Tenggara";
		// else if (Ang >= 78.75 && Ang < 101.25) frmtcompass = "Barat";
		// else if (Ang >= 33.75 && Ang < 56.25) frmtcompass = "Barat Laut";
		// else if (Ang >= 123.25 && Ang < 146.25) frmtcompass = "Barat Daya";
		// PlayerTextDrawSetString(playerid, VehicleTextdraws[playerid][0], sprintf("%s_l_%s", frmtcompass, GetLocation(X, Y, Z)));
	}
	return Y_HOOKS_CONTINUE_RETURN_1;
}

stock PlayerCompassUpdate(playerid, vehid)
{
	static Float:X, Float:Y, Float:Z, Float:Ang;
	GetPlayerPos(playerid, X, Y, Z);

	if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	{
		GetVehicleZAngle(vehid, Ang);
	}
	else
	{
		GetPlayerFacingAngle(playerid, Ang);
	}

	static frmtcompass[258];
	if (Ang >= 348.75 || Ang < 11.25) frmtcompass = "Utara";
	else if (Ang >= 258.75 && Ang < 281.25) frmtcompass = "Timur";
	else if (Ang >= 303.75 && Ang < 326.25) frmtcompass = "Timur Laut";
	else if (Ang >= 168.75 && Ang < 191.25) frmtcompass = "Selatan";
	else if (Ang >= 213.75 && Ang < 236.25) frmtcompass = "Tenggara";
	else if (Ang >= 78.75 && Ang < 101.25) frmtcompass = "Barat";
	else if (Ang >= 33.75 && Ang < 56.25) frmtcompass = "Barat Laut";
	else if (Ang >= 123.25 && Ang < 146.25) frmtcompass = "Barat Daya";
	PlayerTextDrawSetString(playerid, VehicleTextdraws[playerid][14], sprintf("%s_l_%s", frmtcompass, GetLocation(X, Y, Z)));
	return 1;
}

FUNC:: VehicleTDUpdate(playerid)
{
	if(IsValidVehicle(GetPlayerVehicleID(playerid)))
	{
		if(!GetEngineStatus(GetPlayerVehicleID(playerid)) && IsEngineVehicle(GetPlayerVehicleID(playerid)) && !IsABike(GetPlayerVehicleID(playerid)))
		{
			SwitchVehicleEngine(GetPlayerVehicleID(playerid), false);
		}
		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			new Float:vHealth;
			GetVehicleHealth(GetPlayerVehicleID(playerid), vHealth);
			if(IsValidVehicle(GetPlayerVehicleID(playerid)) && vHealth <= 350.0)
			{
				SwitchVehicleEngine(GetPlayerVehicleID(playerid), false);
				ShowPlayerFooter(playerid, "~w~Engine~r~ Totalled", 2000);
			}
		}
		if(!GetPVarInt(playerid, "HbeHiden"))
		{
			if(IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
			{
			new vehid = GetPlayerVehicleID(playerid);
			new vFuel = GetFuel(vehid);

			if(vFuel < 0) vFuel = 0;
			else if(vFuel >= 100) vFuel = 100;

			//PlayerTextDrawSetString(playerid, VehicleTextdraws[playerid][2], sprintf("%.0f", GetVehicleSpeed(vehid)));
			PlayerTextDrawSetString(playerid, VehicleTextdraws[playerid][16], sprintf("%.0f", GetVehicleSpeed(vehid)));
			PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][15], 4.000000, VehicleCore[vehid][vCoreFuel] * (-18.000000/100));
			PlayerTextDrawShow(playerid, VehicleTextdraws[playerid][15]);
			PlayerTextDrawSetString(playerid, VehicleTextdraws[playerid][14], "");
			
			PlayerTextDrawShow(playerid, VehicleTextdraws[playerid][16]);
			PlayerTextDrawShow(playerid, VehicleTextdraws[playerid][14]);
			PlayerCompassUpdate(playerid, vehid);
			}
		}
	}
	return 1;
}

FUNC:: AlertNeeds_Player(playerid)
{
	if(!AccountData[playerid][pSpawned])
		return 0;

	if(AccountData[playerid][pHunger] <= 20) {
		SendClientMessageEx(playerid, -1, ""VERONADOT"Karakter anda merasakan lapar // %d Persen", AccountData[playerid][pHunger]);
	}
	if(AccountData[playerid][pThirst] <= 20) {
		SendClientMessageEx(playerid, -1, ""VERONADOT"Karakter anda merasakan haus // %d Persen", AccountData[playerid][pThirst]);
	}
	if(AccountData[playerid][pStress] >= 90) {
		SendClientMessageEx(playerid, -1, ""VERONADOT"Karakter anda ingin mengalami stress // %d Persen", AccountData[playerid][pStress]);
	}
	return 1;
}
