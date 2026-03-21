#include <YSI_Coding\y_hooks>
new PoliceFlare = INVALID_STREAMER_ID;
new PoliceFlareIcon = INVALID_STREAMER_ID;
new PoliceFlareCheckpoint = INVALID_STREAMER_ID;
new bool:PoliceFlareActive = false;
new PoliceFlareGlow;
new PoliceFlareSmoke;

#define DIALOG_TRACE_MENU 2000
#define DIALOG_TRACE_INPUT 2001

#define CMD_TACKLE_COOLDOWN 10 // detik cooldown
new bool:isTackleMode[MAX_PLAYERS];

enum TraceTypes
{
    TRACE_NONE,
    TRACE_PHONE,
    TRACE_PLATE
};

new TraceTypes:PlayerTraceType[MAX_PLAYERS];

hook OnGameModeInitEx()
{
	PoliceFlareActive = false;

	if (DestroyDynamicObject(PoliceFlare))
		PoliceFlare = INVALID_STREAMER_ID;

	if (DestroyDynamicObject(PoliceFlareSmoke))
		PoliceFlareSmoke = INVALID_STREAMER_ID;

	if (DestroyDynamicMapIcon(PoliceFlareIcon))
		PoliceFlareIcon = INVALID_STREAMER_ID;

	if (DestroyDynamicCP(PoliceFlareCheckpoint))
		PoliceFlareCheckpoint = INVALID_STREAMER_ID;

	return 1;
}

/* Commands Factions Stuffs */
CMD:fhelp(playerid, params[])
{
	if(AccountData[playerid][pFaction] == FACTION_NONE) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari faction manapun!");
	switch(AccountData[playerid][pFaction])
	{
		case 1: // Polisi
		{
			ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- Polisi Command", 
			"Perintah\tKeterangan\n\
			/taser\tMenggunakan Pistol Taser untuk membuat efek kejut\n\
			"GRAY"/takektp\t"GRAY"Untuk menyita KTP seseorang secara paksa\n\
			/trace\tMelacak keberadaan seseorang melalui Plate, Akun Twitter, Ataupun Nomor Telepon\n\
			"GRAY"/makeskck\t"GRAY"Untuk membuat Surat Keterangan Catatan Kepolisian\n\
			/takeradio\tMengambil radio seseorang secara paksa\n\
			"GRAY"/togsiren\t"GRAY"Menyalakan sirine kendaraan kepolisian\n\
			/110\tChat Dispacth\n\
			"GRAY"/fa\t"GRAY"Faction Annoucement jika ingin memberitahukan sesuatu dipesan langit\n\
			/melt\tMembakar peleburan kepolisian\n\
			"GRAY"/pdm\t"GRAY"Membuka menu kepolisian\n\
			/takegunlic\tMengambil paksa Lisensi Senjata seseorang\n\
			"GRAY"/takesim\t"GRAY"Mengambil paksa Sim seseorang\n\
			/makegunlic\tMembuat Lisensi senjata\n\
			"GRAY"/givesim\t"GRAY"Membuat Sim untuk seseorang\n\
			/giveplate\tMemasang Plat Nomor kendaraan\n\
			"GRAY"/blacklist\t"GRAY"Memblacklist player dari layanan instansi", "Tutup", "");
		}
		case 2: // Pemerintah
		{
			ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- Pemerintah Command",
			"Perintah\tKeterangan\n\
			/ubahnamaktp\tMengubah nama KTP seseorang\n\
			"GRAY"/makehuntlic\t"GRAY"Membuat lisensi berburu kepada seseorang\n\
			/makektp\tMembuatkan KTP untuk seseorang\n\
			"GRAY"/takektp\t"GRAY"Mengambil paksa KTP seseorang\n\
			/blacklist\tMemblacklist player dari layanan instansi", "Tutup", "");
		}
		case 3: //ems
		{
			ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- EMS Command",
			"Perintah\tKeterangan\n\
			/makesks\tMembuat Surat Keterangan Sehat untuk seseorang\n\
			"GRAY"/makebpjs\t"GRAY"Membuat BPJS untuk seseorang\n\
			/togsiren\tUntuk Menyalakan Sirine pada kendaraan EMS\n\
			"GRAY"/blacklist\t"GRAY"Memblacklist player dari layanan instansi", "Tutup", "");
		}
		case 4: // Trans
		{
			ShowTDN(playerid, NOTIFICATION_INFO, "Belum memiliki Command yang tersedia.");
		}
		case 5: // Bengkel
		{
			ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- Bengkel Command",
			"Perintah\tKeterangan\n\
			/modif\tMemodifikasi kendaraan di modification point\n\
			"GRAY"/togsiren\t"GRAY"Menyalakan sirine pada kendaraan bengkel\n\
			/tow\tMenderek kendaraan\n\
			"GRAY"/untow\t"GRAY"Melepas derek pada kendaraan\n\
			/blacklist\tMemblacklist player dari layanan instansi", "Tutup", "");
		}
		case 6: // Pedagang
		{
			ShowTDN(playerid, NOTIFICATION_INFO, "Belum memiliki Command yang tersedia.");
		}
	}
	return 1;
}

CMD:d(playerid, params[])
{
	if(AccountData[playerid][pFaction] != FACTION_POLISI && AccountData[playerid][pFaction] != FACTION_EMS && AccountData[playerid][pFaction] != FACTION_PEMERINTAH)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "You must be a civil service worker!");
	
	if(isnull(params))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/d(ept) [departement radio]");

	if(strlen(params) > 128)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Text to long!");

	params[0] = toupper(params[0]);
	for(new index = FACTION_POLISI; index <= FACTION_EMS; index ++)
	{
		if(AccountData[playerid][pFaction] == FACTION_POLISI) SendFactionMessage(index, -1, ""BLUE_E"Polisi Departement %s %s: %s", GetFactionRank(playerid), ReturnName(playerid), params);
		else if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH) SendFactionMessage(index, -1, ""CYAN"Pemerintah Departement %s %s: %s", GetFactionRank(playerid), ReturnName(playerid), params);
		else if(AccountData[playerid][pFaction] == FACTION_EMS) SendFactionMessage(index, -1, ""PINK"EMS Departement %s %s: %s", GetFactionRank(playerid), ReturnName(playerid), params);
		else return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak tergabung di faction manapun!");
	}
	return 1;
}

CMD:od(playerid, params[])
{
	if(AccountData[playerid][pFaction] != FACTION_POLISI && AccountData[playerid][pFaction] != FACTION_EMS && AccountData[playerid][pFaction] != FACTION_PEMERINTAH)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "You must be a civil service worker!");
	
	if(isnull(params))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/od(OOC Departement) [text]");

	if(strlen(params) > 128)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Text to long!");

	params[0] = toupper(params[0]);
	for(new index = FACTION_POLISI; index <= FACTION_EMS; index ++)
	{
		if(AccountData[playerid][pFaction] == FACTION_POLISI) SendFactionMessage(index, 0xFFD7004A, "(( %s: %s ))", ReturnName(playerid), params);
		else if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH) SendFactionMessage(index, 0xFFD7004A, "(( %s: %s ))", ReturnName(playerid), params);
		else if(AccountData[playerid][pFaction] == FACTION_EMS) SendFactionMessage(index, 0xFFD7004A, "(( %s: %s ))", ReturnName(playerid), params);
		else return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak tergabung di faction manapun!");
	}
	return 1;
}

CMD:or(playerid, params[])
{
	if(AccountData[playerid][pFaction] != FACTION_POLISI && AccountData[playerid][pFaction] != FACTION_EMS && AccountData[playerid][pFaction] != FACTION_PEMERINTAH)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "You must be a civil service worker!");
	
	if(isnull(params))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/or(OOC Radio) [text]");

	if(strlen(params) > 128)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Text to long!");

	params[0] = toupper(params[0]);
	for(new index = FACTION_POLISI; index <= FACTION_EMS; index ++)
	{
		if(AccountData[playerid][pFaction] == FACTION_POLISI) SendFactionMessage(index, COLOR_RADIO, "(( %s: %s ))", ReturnName(playerid), params);
		else if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH) SendFactionMessage(index, COLOR_RADIO, "(( %s: %s ))", ReturnName(playerid), params);
		else if(AccountData[playerid][pFaction] == FACTION_EMS) SendFactionMessage(index, COLOR_RADIO, "(( %s: %s ))", ReturnName(playerid), params);
		else return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak tergabung di faction manapun!");
	}
	return 1;
}

CMD:m(playerid, params[])
{
	if(!AccountData[playerid][pFaction])
		return ShowTDN(playerid, NOTIFICATION_ERROR, "You must be a civil service worker!");

	if(isnull(params)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/m(egaphone) [text]");
	
	if(strlen(params) > 64) 
	{
        SendNearbyMessage(playerid, 60.0, COLOR_YELLOW, "[MEGAPHONE] %s : %.64s", ReturnName(playerid), params);
        SendNearbyMessage(playerid, 60.0, COLOR_YELLOW, "...%s", params[64]);
    }
    else 
	{
        SendNearbyMessage(playerid, 60.0, COLOR_YELLOW, "[MEGAPHONE] %s : %s", ReturnName(playerid), params);
    }
	return 1;
}

// stock Vehicle_StartLockTire(vehicleid) {
//     PlayerVehicle[vehicleid][vehLockTire] = 1;
// }

// stock Vehicle_StopLockTire(vehicleid) {
//     PlayerVehicle[vehicleid][vehLockTire] = 0;
// }

// CMD:locktire(playerid, params[])
// {
//     static id = -1, index = -1;

//     if(AccountData[playerid][pFaction] != FACTION_POLISI)
//         return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu bukan seorang polisi!");

//     if (!AccountData[playerid][pDutyPD])
//         return ShowTDN(playerid, NOTIFICATION_ERROR, "You must be on duty to lock this vehicle's tire!");

//     if((id = Vehicle_Nearest(playerid)) != -1)
//     {
//         index = id;

//         if(index == -1)
//             return 0;

//         if(!PlayerVehicle[index][vehLockTire])
//         {
//             // Ambil posisi kendaraan
//             GetVehiclePos(id, PlayerVehicle[index][pVehPos][0], PlayerVehicle[index][pVehPos][1], PlayerVehicle[index][pVehPos][2]);
//             GetVehicleZAngle(id, PlayerVehicle[index][pVehPos][3]);

//             // Buat 3D text jika belum ada
//             if(!IsValidDynamic3DTextLabel(PlayerVehicle[index][vehLockTireText]))
//             {
//                 PlayerVehicle[index][vehLockTireText] = CreateDynamic3DTextLabel("** Ban Kendaraan Terkunci **", X11_PLUM, 
//                     PlayerVehicle[index][pVehPos][0], PlayerVehicle[index][pVehPos][1], PlayerVehicle[index][pVehPos][2], 
//                     15.0, INVALID_PLAYER_ID, id, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
//             }

//             // Set status kendaraan terkunci
//             PlayerVehicle[index][vehLockTire] = 1;

//             // Panggil fungsi kunci roda (pastikan fungsi ini ada)
//             Vehicle_StartLockTire(id);
            
//             ShowTDN(playerid, NOTIFICATION_SUKSES, "Roda kendaraan telah dikunci.");
//             ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, false, false, false, false, 0, true);
//         }
//         else
//         {
//             // Hapus 3D text jika ada
//             if(IsValidDynamic3DTextLabel(PlayerVehicle[index][vehLockTireText]))
//             {
//                 DestroyDynamic3DTextLabel(PlayerVehicle[index][vehLockTireText]);
//                 PlayerVehicle[index][vehLockTireText] = Text3D:INVALID_STREAMER_ID;
//             }

//             // Set status kendaraan tidak terkunci
//             PlayerVehicle[index][vehLockTire] = 0;

//             // Panggil fungsi buka roda (pastikan fungsi ini ada)
//             Vehicle_StopLockTire(id);

//             ShowTDN(playerid, NOTIFICATION_SUKSES, "Roda kendaraan telah dibuka.");
//             ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, false, false, false, false, 0, true);
//         }
//     }
//     else ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan di dekatmu!");
//     return 1;
// }

CMD:flare(playerid, params[])
{
	if (!AccountData[playerid][IsLoggedIn] || !AccountData[playerid][pSpawned])
		return 0;

	if (AccountData[playerid][pFaction] != FACTION_POLISI)	
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota kepolisian!");

	if (!AccountData[playerid][pDutyPD])
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus duty kepolisian!");

	new Float:x, Float:y, Float:z, Float:ang;
	GetPlayerPos(playerid, x, y, z);
	GetPlayerFacingAngle(playerid, ang);

	if (IsValidDynamicObject(PoliceFlare)) DestroyDynamicObject(PoliceFlare), PoliceFlare = INVALID_STREAMER_ID;
	if (IsValidDynamicObject(PoliceFlareGlow)) DestroyDynamicObject(PoliceFlareGlow), PoliceFlareGlow = INVALID_STREAMER_ID;
	if (IsValidDynamicMapIcon(PoliceFlareIcon)) DestroyDynamicMapIcon(PoliceFlareIcon), PoliceFlareIcon = INVALID_STREAMER_ID;
	if (IsValidDynamicCP(PoliceFlareCheckpoint)) DestroyDynamicCP(PoliceFlareCheckpoint), PoliceFlareCheckpoint = INVALID_STREAMER_ID;

	PoliceFlareActive = true;

	PoliceFlareGlow = CreateDynamicObject(18728, x, y, z - 2.0, 0.0, 0.0, 0.0,
		GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 300.0);

	foreach(new i : Player)
	{
		if (AccountData[i][pFaction] == FACTION_POLISI)
		{
			PoliceFlareIcon = CreateDynamicMapIcon(x, y, z, 0, X11_GREEN,
				GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), i, 6000.0, MAPICON_LOCAL);
			
			PoliceFlareCheckpoint = CreateDynamicCP(x, y, z, 2.0, 
				GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), i, 6000.0);
		}
	}

	SendFactionMessage(FACTION_POLISI, -1, ""LIGHTBLUE"</>"WHITE"Player "YELLOW"%s %s(%d)"WHITE" telah meletakan flare di "BLUEJEGE"%s", GetFactionRank(playerid), AccountData[playerid][pName], playerid, GetLocation(x, y, z));
	return 1;
}

CMD:destroyflare(playerid, params[])
{
	if (AccountData[playerid][pFaction] != FACTION_POLISI)	
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota Kepolisian!");

	if (!AccountData[playerid][pDutyPD])
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus duty kepolisian!");

	if (!PoliceFlareActive)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memasang Flare sebelumnya!");

	PoliceFlareActive = false;

	if (IsValidDynamicObject(PoliceFlare)) DestroyDynamicObject(PoliceFlare), PoliceFlare = INVALID_STREAMER_ID;
	if (IsValidDynamicObject(PoliceFlareGlow)) DestroyDynamicObject(PoliceFlareGlow), PoliceFlareGlow = INVALID_STREAMER_ID;
	if (IsValidDynamicMapIcon(PoliceFlareIcon)) DestroyDynamicMapIcon(PoliceFlareIcon), PoliceFlareIcon = INVALID_STREAMER_ID;
	if (IsValidDynamicCP(PoliceFlareCheckpoint)) DestroyDynamicCP(PoliceFlareCheckpoint), PoliceFlareCheckpoint = INVALID_STREAMER_ID;

	if (IsValidDynamicObject(PoliceFlareSmoke)) 
	{
		DestroyDynamicObject(PoliceFlareSmoke);
		PoliceFlareSmoke = INVALID_STREAMER_ID;
	}

	SendFactionMessage(FACTION_POLISI, -1, ""LIGHTBLUE"</>"WHITE"Player "YELLOW"%s %s(%d)"WHITE" telah menghancurkan flare",
		GetFactionRank(playerid), AccountData[playerid][pName], playerid);

	return 1;
}

CMD:taser(playerid, params[])
{
	if(!SQL_IsCharacterLogged(playerid))
		return 0;
	
	if(AccountData[playerid][pFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota Kepolisian!");
	if(!AccountData[playerid][pDutyPD]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang On Duty!");
	if(!PlayerTaserOn[playerid])
	{
		UpdateWeapons(playerid);
		GivePlayerWeapon(playerid, WEAPON_SILENCED, 10);
		GameTextForPlayer(playerid, "~w~TASER~n~~g~ON", 2500, 6);

		PlayerTaserOn[playerid] = true;
	}
	else 
	{
		SetWeapons(playerid);
		GameTextForPlayer(playerid, "~w~TASER~n~~r~OFF", 2500, 6);
		PlayerTaserOn[playerid] = false;
	}
	return 1;
}

CMD:makekta(playerid, params[])
{
	if(AccountData[playerid][pFaction] == FACTION_POLISI)
	{
		if(AccountData[playerid][pFactionRank] < 11) return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal rank KOMBES untuk mengakses ini!");
	}
	else if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH)
	{
		if(AccountData[playerid][pFactionRank] < 7) return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal rank Wakil Gubernur untuk mengakses ini!");
	}
	else if(AccountData[playerid][pFaction] == FACTION_EMS)
	{
		if(AccountData[playerid][pFactionRank] < 7) return ShowTDN(playerid, NOTIFICATION_ERROR, "Minimal rank SEKBEN untuk mengakses ini!");
	}
	else return ShowTDN(playerid, NOTIFICATION_ERROR, "Hanya Khusus Polisi, EMS, Dan Pemerintah!");

	new otherid;
	if(sscanf(params, "u", otherid)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/makekta [name/playerid]");
	if(!IsPlayerConnected(otherid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
	if(!IsPlayerNearPlayer(playerid, otherid, 3.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada didekat pemain tersebut!");
	if(Inventory_Items(otherid) >= 20) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut sudah tidak memiliki slot inventory!");

	Inventory_Add(otherid, "KTA", 1581);
	ShowItemBox(otherid, "Received 1x", "KTA", 1581);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membuat Kartu Tanda Anggota untuk seseorang");
	SendRPMeAboveHead(playerid, "Memberikan Kartu Tanda Anggota kepada seseorang", X11_PLUM1);
	return 1;
}

CMD:takektp(playerid, params[])
{
	if(!IsPlayerConnected(playerid)) return false;
	if(GetPlayerFaction(playerid) != FACTION_POLISI && GetPlayerFaction(playerid) != FACTION_PEMERINTAH) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan kepolisian atau pemerintah!");
	new 
		otherid
	;
	if(sscanf(params, "u", otherid)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/takektp [playerid/Name]");
	if(otherid == INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke dalam server!");
	if(!IsPlayerNearPlayer(playerid, otherid, 3.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada didekat pemain tersebut");
	if(!AccountData[otherid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak memiliki KTP!");
	if(otherid == playerid) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat mengambil KTP diri sendiri!");

	AccountData[otherid][Ktp] = 0;
	SendRPMeAboveHead(playerid, "Mengambil paksa KTP orang didepan", X11_PLUM);
	ShowTDN(otherid, NOTIFICATION_WARNING, "KTP Anda telah diambil!");
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menyita KTP!");
	return 1;
}

CMD:trace(playerid, params[])
{
	if(!AccountData[playerid][pSpawned])
		return 0;
	
	if(AccountData[playerid][pFaction] != FACTION_POLISI)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota Kepolisian!");
	
	//if(AccountData[playerid][pTraceTime] > gettime())
	//	return ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Anda sudah melakukan pelacakan, tunggu %d detik untuk melacak kembali", AccountData[playerid][pTraceTime] - gettime()));
	
	new type, strings[128];
	if(sscanf(params, "ds[128]", type, strings)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/trace [1. NO HP | 2. Plat Kendaraan] [Nomor HP/Plat Kendaraan]");
	if(type < 1 || type > 2) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/trace [1. NO HP | 2. Plat Kendaraan] [Nomor HP/Plat Kendaraan]");
	switch(type)
	{
		case 1: // HP
		{
			static Float:x, Float:y, Float:z, bool: find;
			foreach(new i : Player)
			{
				if(IsPlayerConnected(i) && PlayerHasItem(i, "Smartphone"))
				{
					if(!strcmp(AccountData[i][pPhone], strings, false))
					{
						GetPlayerPos(i, x, y, z);

						SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Nama: "YELLOW"%s", ReturnName(i));
						SendClientMessageEx(playerid, -1, ""WHITE"- Nomor Telepon: "YELLOW"%s", strings);
						SendClientMessageEx(playerid, -1, ""WHITE"- Jenis Kelamin: "YELLOW"%s", (AccountData[i][pGender]) ? ("Laki-Laki") : ("Perempuan"));
						SendClientMessageEx(playerid, -1, ""WHITE"- Tanggal Lahir: "YELLOW"%s", AccountData[i][pAge]);
						SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Ponsel Sekarang: "YELLOW"%s", GetLocation(x, y, z));

						ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi tertandai di map!");
						
						SetPlayerRaceCheckpoint(playerid, 1, x, y, z, x, y, z, 5.0);
						pMapCP[playerid] = true;
						AccountData[playerid][pTraceTime] = gettime() + 180;
						find = true;
					}
				}
			}
			if(!find) return ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor telepon tidak aktif/salah!");
		}
		case 2: // Plat Kendaraan
		{
			static Float:x, Float:y, Float:z, bool: find;
			foreach(new iterid : PvtVehicles)
			{
				if(IsValidVehicle(PlayerVehicle[iterid][pVehPhysic]))
				{
					if(!strcmp(strings, PlayerVehicle[iterid][pVehPlate]))
					{
						GetVehiclePos(PlayerVehicle[iterid][pVehPhysic], x, y, z);
						SendClientMessageEx(playerid, -1, ""YELLOW"INFOMARTION:"WHITE" Jenis Kendaraan: "YELLOW"%s", GetVehicleModelName(PlayerVehicle[iterid][pVehModelID]));
						foreach(new pid : Player) if(PlayerVehicle[iterid][pVehOwnerID] == AccountData[pid][pID]){
							SendClientMessageEx(playerid, -1, ""WHITE"- Pemilik: "YELLOW"%s", ReturnName(pid));
						}
						SendClientMessageEx(playerid, -1, ""WHITE"- Plate Kendaraan: "YELLOW"%s"WHITE" - ("RED_E"Permanent"WHITE")", PlayerVehicle[iterid][pVehPlate]);
						SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Kendaraan Sekarang: "YELLOW"%s", GetLocation(x, y, z));
						ShowTDN(playerid, NOTIFICATION_INFO, "Ikuti tanda di map!");
						SetPlayerRaceCheckpoint(playerid, 1, x, y, z, x, y, z, 5.0);
						pMapCP[playerid] = true;
						AccountData[playerid][pTraceTime] = gettime() + 180;
						find = true;
					}
				}
			}
			if(!find) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada plate tersebut di data kota!");
		}
	}
	return 1;
}

Dialog:DialogTrace(playerid, response, listitem, inputtext[])
{
	if(!response) return 1;
	switch(listitem)
	{
		case 0:// nomor hp
		{
			Dialog_Show(playerid, TrackNoPhone, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Track Telepon", "Mohon masukkan nomor telepon valid\nContoh: 55261, 02521\n"YELLOW"(Mohon masukkan dikolom bawah sini):", "Track", "Batal");
		}
		case 1:// Plate Nomor
		{
			Dialog_Show(playerid, TrackPlateNomor, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Track Plate", "Mohon masukkan nomor plate kendaraan valid\nContoh: VR 5233 BOS, VR 2122 DAN\n"YELLOW"(Mohon masukkan dikolom bawah sini):", "Track", "Batal");
		}
		case 2:// Akun Twitter
		{
			Dialog_Show(playerid, TrackAkunTwitter, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Track Sosial Media", "Mohon memasukkan username akun media Twitter yang ingin dilacak\n"YELLOW"(Masukkan dibawah sini dengan Username yang Valid):", "Track", "Batal");
		}
	}
	return 1;
}
Dialog:TrackAkunTwitter(playerid, response, listitem, inputtext[])
{
	if(!response) return false;
	if(isnull(inputtext))
		return Dialog_Show(playerid, TrackAkunTwitter, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Track Sosial Media", "ERROR: Tidak dapat Kosong!\nMohon memasukkan username akun media Twitter yang ingin dilacak\n"YELLOW"(Masukkan dibawah sini dengan Username yang Valid):", "Track", "Batal");

	static 
		Float:fX,
		Float:fY,
		Float:fZ;
	
	new bool: find;
	foreach(new pid : Player) {
		if(IsPlayerConnected(pid)) {
			if(PlayerHasItem(pid, "Smartphone")){
				if(!strcmp(inputtext, AccountData[pid][TwitterName])){
					GetPlayerPos(pid, fX, fY, fZ);

					SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Akun Twitter: "YELLOW"%s", AccountData[pid][TwitterName]);
					SendClientMessageEx(playerid, -1, ""WHITE"- Nomor Telepon: "YELLOW"%s", AccountData[pid][pPhone]);
					SendClientMessageEx(playerid, -1, ""WHITE"- Jenis Kelamin: "YELLOW"%s", (AccountData[pid][pGender]) ? ("Laki-Laki") : ("Perempuan"));
					SendClientMessageEx(playerid, -1, ""WHITE"- Tanggal Lahir: "YELLOW"%s", AccountData[pid][pAge]);
					SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Ponsel Sekarang: "YELLOW"%s", GetLocation(fX, fY, fZ));

					ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi tertandai di map!");
					SetPlayerRaceCheckpoint(playerid, 1, fX, fY, fZ, fX, fY, fZ, 5.0);
					pMapCP[playerid] = true;
					AccountData[playerid][pTraceTime] = gettime() + 180;
					find = true;
				}
			}
		}
	}
	if(!find) return ShowTDN(playerid, NOTIFICATION_ERROR, "Akun twitter tidak ditemukan!");
	return 1;
}

Dialog:TrackNoPhone(playerid, response, listitem, inputtext[])
{
	if(!response) return 1;
	if(isnull(inputtext))
		return Dialog_Show(playerid, TrackNoPhone, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Track Telepon", "Mohon masukkan nomor telepon valid\nContoh: 55261, 02521\n"YELLOW"(Mohon masukkan dikolom bawah sini):", "Track", "Batal");
	
	static 
		Float:fX,
		Float:fY,
		Float:fZ;
	
	new bool: find;
	foreach(new pid : Player) {
		if(IsPlayerConnected(pid)) {
			if(PlayerHasItem(pid, "Smartphone")){
				if(!strcmp(AccountData[pid][pPhone], inputtext, false)){
					GetPlayerPos(pid, fX, fY, fZ);

					SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Nama: "YELLOW"%s", ReturnName(pid));
					SendClientMessageEx(playerid, -1, ""WHITE"- Nomor Telepon: "YELLOW"%s", inputtext);
					SendClientMessageEx(playerid, -1, ""WHITE"- Jenis Kelamin: "YELLOW"%s", (AccountData[pid][pGender]) ? ("Laki-Laki") : ("Perempuan"));
					SendClientMessageEx(playerid, -1, ""WHITE"- Tanggal Lahir: "YELLOW"%s", AccountData[pid][pAge]);
					SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Ponsel Sekarang: "YELLOW"%s", GetLocation(fX, fY, fZ));

					ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi tertandai di map!");
					SetPlayerRaceCheckpoint(playerid, 1, fX, fY, fZ, fX, fY, fZ, 5.0);
					pMapCP[playerid] = true;
					AccountData[playerid][pTraceTime] = gettime() + 180;
					find = true;
				}
			}
		}
	}
	if(!find) return ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor telepon tidak aktif/salah!");
	return 1;
}

Dialog:TrackPlateNomor(playerid, response, listitem, inputtext[])
{
	if(!response) return 1;
	if(isnull(inputtext) || IsNumeric(inputtext))
		return Dialog_Show(playerid, TrackPlateNomor, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Track Plate", "Mohon masukkan nomor plate kendaraan valid\nContoh: VR 5233 BOS, VR 2122 DAN\n"YELLOW"(Mohon masukkan dikolom bawah sini):", "Track", "Batal");
	
	static 
		Float:fX,
		Float:fY,
		Float:fZ;
	
	new bool: find;
	foreach(new iterid : PvtVehicles)
	{
		if(IsValidVehicle(PlayerVehicle[iterid][pVehPhysic]))
		{
			if(!strcmp(inputtext, PlayerVehicle[iterid][pVehPlate]))
			{
				GetVehiclePos(PlayerVehicle[iterid][pVehPhysic], fX, fY, fZ);

				SendClientMessageEx(playerid, -1, ""YELLOW"INFOMARTION:"WHITE" Jenis Kendaraan: "YELLOW"%s", GetVehicleModelName(PlayerVehicle[iterid][pVehModelID]));
				foreach(new pid : Player) if(PlayerVehicle[iterid][pVehOwnerID] == AccountData[pid][pID]){
					SendClientMessageEx(playerid, -1, ""WHITE"- Pemilik: "YELLOW"%s", ReturnName(pid));
				}
				SendClientMessageEx(playerid, -1, ""WHITE"- Plate Kendaraan: "YELLOW"%s"WHITE" - ("RED_E"Permanent"WHITE")", PlayerVehicle[iterid][pVehPlate]);
				SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Kendaraan Sekarang: "YELLOW"%s", GetLocation(fX, fY, fZ));
				ShowTDN(playerid, NOTIFICATION_INFO, "Ikuti tanda di map!");
				SetPlayerRaceCheckpoint(playerid, 1, fX, fY, fZ, fX, fY, fZ, 5.0);
				pMapCP[playerid] = true;
				AccountData[playerid][pTraceTime] = gettime() + 180;
				find = true;
			}
		}
	}
	if(!find) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada plate tersebut di data kota!");
	return 1;
}
CMD:makesks(playerid, params[])
{
	if(AccountData[playerid][pFaction] != FACTION_EMS)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari Mitra EMS Aeterna!");
	
	new otherid, reason[128];
	if(sscanf(params, "us[128]", otherid, reason)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/makesks [playerid/Name] [Keterangan]");
	if(!IsPlayerConnected(otherid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
	if(!IsPlayerNearPlayer(playerid, otherid, 3.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak didekat pemain tersebut!");
	
	format(AccountData[otherid][pSKSNameDoc], 32, GetRPName(playerid));
	format(AccountData[otherid][pSKSReason], 128, reason);
	format(AccountData[otherid][pSKSRankDoc], 128, GetFactionRank(playerid));
	AccountData[otherid][pSKS] = 1;
	AccountData[otherid][pSKSTime] = gettime() + (3600 * 24 * 7); // 1 Minggu

	ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil Membuatkan %s Surat Keterangan Sehat", GetRPName(otherid)));
	ShowTDN(otherid, NOTIFICATION_INFO, sprintf("%s Membuatkan Anda Surat Keterangan Sehat", GetRPName(playerid)));
	return 1;
}

CMD:makebpjs(playerid, params[])
{
	if(AccountData[playerid][pFaction] != FACTION_EMS)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari Mitra EMS Aeterna!");

	new otherid, level[128];
	if(sscanf(params, "us[128]", otherid, level)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/makesks [name/playerid] [faskes]");
	if(!IsPlayerConnected(otherid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
	if(!IsPlayerNearPlayer(playerid, otherid, 3.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak didekat pemain tersebut!");

	format(AccountData[otherid][pBPJSLevel], 128, level);
	AccountData[otherid][pBPJS] = 1;
	AccountData[otherid][pBPJSTime] = gettime() + (14 * 86400); // 2 Minggu

	ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil Membuatkan %s Kartu BPJS", GetRPName(otherid)));
	ShowTDN(otherid, NOTIFICATION_INFO, sprintf("%s Membuatkan Anda Kartu BPJS", GetRPName(playerid)));
	return 1;
}

CMD:makeskck(playerid, params[])
{
	if(AccountData[playerid][pFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari Kepolisian Aeterna!");

	new otherid, reason[128];
	if(sscanf(params, "us[128]", otherid, reason)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/makeskck [playerid/Name] [Keterangan]");
	if(!IsPlayerConnected(otherid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
	if(!IsPlayerNearPlayer(playerid, otherid, 3.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak didekat pemain tersebut!");

	format(AccountData[otherid][pSKCKNamePol], 32, GetRPName(playerid));
	format(AccountData[otherid][pSKCKReason], 128, reason);
	format(AccountData[otherid][pSKCKRankPol], 128, GetFactionRank(playerid));
	AccountData[otherid][pSKCK] = 1;
	AccountData[otherid][pSKCKTime] = gettime() + (3600 * 24 * 5); // 5 Hari

	ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil Membuatkan %s SKCK", GetRPName(otherid)));
	ShowTDN(otherid, NOTIFICATION_INFO, sprintf("%s Membuatkan Anda SKCK", GetRPName(playerid)));
	return 1;
}

/*CMD:takeradio(playerid, params[])
{
	if(!IsPlayerConnected(playerid) || !AccountData[playerid][IsLoggedIn]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus terkoneksi kedalam server!");
	if(AccountData[playerid][pFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari Kepolisian Kota Aeterna!");
	if(IsPlayerInjured(playerid) == 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

	new otherid;
	if(sscanf(params, "u", otherid))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/takeradio [playerid/Name]");
	
	if(AccountData[otherid][pRadio] != 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak memiliki Radio!");
	if(otherid == INVALID_PLAYER_ID || !IsPlayerConnected(otherid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi kedalam server!");
	if(!IsPlayerNearPlayer(playerid, otherid, 5.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak dekat dengan anda!");

	AccountData[otherid][pRadio] = 0;
	ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Berhasil mengambil radio milik %s", ReturnName(otherid)));
	ShowTDN(otherid, NOTIFICATION_WARNING, sprintf("Petugas %s menyita radio anda", ReturnName(playerid)));
	
	new query[255];
	mysql_format(g_SQL, query, sizeof(query), "UPDATE `player_characters` SET `Char_Radio`=0 WHERE `pID`=%d", AccountData[otherid][pID]);
	mysql_tquery(g_SQL, query);
	return 1;
}*/

CMD:togsiren(playerid, params[]) 
{
	new 
		vehicle_index,
		vehicleid = GetPlayerVehicleID(playerid),
		action,
		nextParams[128];
	
	if(AccountData[playerid][pFaction] != FACTION_POLISI && AccountData[playerid][pFaction] != FACTION_EMS && AccountData[playerid][pFaction] != FACTION_BENGKEL)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Hanya Polda, Bengkel Dan Mitra EMS Yang bisa menggunakan Sirine!");
	
	if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Harus diposisi kemudi untuk menggunakan siren!");
	
	if((vehicle_index = Vehicle_ReturnID(vehicleid)) != RETURN_INVALID_VEHICLE_ID)
	{
		if(PlayerVehicle[vehicle_index][pVehFaction] != FACTION_POLISI && PlayerVehicle[vehicle_index][pVehFaction] != FACTION_EMS && PlayerVehicle[vehicle_index][pVehFaction] != FACTION_BENGKEL)
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Ini bukan kendaraan yang dapat menggunakan siren!");
		
		if(PlayerVehicle[vehicle_index][pVehOwnerID] != AccountData[playerid][pID]) 
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
	}

	if(sscanf(params, "k<VehicleSiren>S()[128]", action, nextParams))
	{
		ShowTDN(playerid, NOTIFICATION_SYNTAX, "/togsiren [entity]~n~roof, dashboard, mid, off");
		return 1;
	}
	switch(action)
	{
		case 1: //roof
		{
			if(!PlayerVehicle[vehicle_index][vehSirenOn])
			{
				static
					Float:fSize[3],
					Float:fSeat[3];

				GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, fSize[0], fSize[1], fSize[2]);
				GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_FRONTSEAT, fSeat[0], fSeat[1], fSeat[2]);

				PlayerVehicle[vehicle_index][vehSirenObject] = CreateDynamicObject(18646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
				AttachDynamicObjectToVehicle(PlayerVehicle[vehicle_index][vehSirenObject], vehicleid, -fSeat[0], fSeat[1], fSize[2] / 2.0, 0.0, 0.0, 0.0);
				PlayerVehicle[vehicle_index][vehSirenOn] = true;
				SendClientMessageEx(playerid, X11_GREEN, "[SIREN]"WHITE" Portable Siren "GREEN"Enabled");
			}
			else ShowTDN(playerid, NOTIFICATION_ERROR, "Matikan siren terlebih dahulu!");
		}
		case 2: //dashboard
		{
			if(!PlayerVehicle[vehicle_index][vehSirenOn])
			{
				static
					Float:fSize[3],
					Float:fSeat[3];

				GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, fSize[0], fSize[1], fSize[2]);
				GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_FRONTSEAT, fSeat[0], fSeat[1], fSeat[2]);

				PlayerVehicle[vehicle_index][vehSirenObject] = CreateDynamicObject(18646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
				AttachDynamicObjectToVehicle(PlayerVehicle[vehicle_index][vehSirenObject], vehicleid, -fSeat[0] / 10.0, fSeat[1] + 0.7, fSize[2] / 4.0, 0.0, 0.0, 0.0);
				PlayerVehicle[vehicle_index][vehSirenOn] = true;
				SendClientMessageEx(playerid, X11_GREEN, "[SIREN]"WHITE" Portable Siren "GREEN"Enabled");
			}
			else ShowTDN(playerid, NOTIFICATION_ERROR, "Matikan siren terlebih dahulu!");
		}
		case 3: //mid
		{
			if(!PlayerVehicle[vehicle_index][vehSirenOn])
			{
				static
					Float:fSize[3],
					Float:fSeat[3];

				GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_SIZE, fSize[0], fSize[1], fSize[2]);
				GetVehicleModelInfo(GetVehicleModel(vehicleid), VEHICLE_MODEL_INFO_FRONTSEAT, fSeat[0], fSeat[1], fSeat[2]);

				PlayerVehicle[vehicle_index][vehSirenObject] = CreateDynamicObject(18646, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
				AttachDynamicObjectToVehicle(PlayerVehicle[vehicle_index][vehSirenObject], vehicleid, -fSeat[0] / 10.0, fSeat[1] / 7.0, fSize[2] / 2.0, 0.0, 0.0, 0.0);
				PlayerVehicle[vehicle_index][vehSirenOn] = true;
				SendClientMessageEx(playerid, X11_GREEN, "[Siren]"WHITE" Portable Siren "GREEN"Enabled");
			}
			else ShowTDN(playerid, NOTIFICATION_ERROR, "Matikan siren terlebih dahulu!");
		}
		case 4:
		{
			if(IsValidDynamicObject(PlayerVehicle[vehicle_index][vehSirenObject]))
				DestroyDynamicObject(PlayerVehicle[vehicle_index][vehSirenObject]);
			
			PlayerVehicle[vehicle_index][vehSirenObject] = INVALID_STREAMER_ID;
			PlayerVehicle[vehicle_index][vehSirenOn] = 0;
			SendClientMessageEx(playerid, X11_GREEN, "[SIREN]:"WHITE" Portable Siren "RED"Disabled");
		}
	}
	return 1;
}

CMD:111(playerid, params[])
{
	new minsty[512];
	if(AccountData[playerid][pFaction] != FACTION_EMS) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari EMS Kota Aeterna!");
	new string[128];
	if(sscanf(params, "s[128]", string)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/111 [pesan]");
	
	format(minsty, sizeof(minsty), "{AED9DA}EMS | %s %s"WHITE": %s", GetFactionRank(playerid), ReturnName(playerid), params);
	SendFactionMessage(FACTION_EMS, -1, minsty);
	return 1;
}

CMD:110(playerid, params[])
{
	new minsty[512];
	if(!AccountData[playerid][IsLoggedIn]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus terkoneksi kedalam server!");
	if(AccountData[playerid][pFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari Kepolisian Kota Aeterna!");
	if(!AccountData[playerid][pDutyPD]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum On Duty kepolisian!");
	new string[128];
	if(sscanf(params, "s[128]", string)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/110 [pesan]");
	
	format(minsty, sizeof(minsty), "{201ee5}%s %s"WHITE": %s", GetFactionRank(playerid), ReturnName(playerid), params);
	SendFactionMessage(FACTION_POLISI, -1, minsty);
	return 1;
}

CMD:clear(playerid, params[])
{
	if(!AccountData[playerid][IsLoggedIn])
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus terkoneksi kedalam server!");

	if(AccountData[playerid][pFaction] == FACTION_NONE)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions!");

	if(AccountData[playerid][pFaction] == FACTION_EMS)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");

	if(AccountData[playerid][pFaction] == FACTION_BENGKEL)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");

	if(AccountData[playerid][pFaction] == FACTION_PEDAGANG)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");

	if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");
		
	if(AccountData[playerid][pFaction] == FACTION_POLISI)
	{
		static lstr[1024], Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);
		format(lstr, sizeof(lstr), "{201ee5}POLDA | %s: "WHITE"Penembakan Di %s Kami Nyatakan Clear Dan Warga Bisa Beraktivitas Kembali", ReturnName(playerid), GetLocation(x, y, z));
		SendClientMessageToAllEx(-1, lstr);
		foreach(new ii : Player)
		{
			if(IsPlayerInRangeOfPoint(ii, 100.0, x, y, z))
			{
				PlayAudioStreamForPlayer(ii, "http://f.top4top.io/m_3334yfigf0.mp3");
			}
		}
	}
	return 1;
}

CMD:tepi(playerid, params[])
{
	if(!AccountData[playerid][IsLoggedIn])
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus terkoneksi kedalam server!");

	if(AccountData[playerid][pFaction] == FACTION_NONE)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions!");

	if(AccountData[playerid][pFaction] == FACTION_EMS)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");

	if(AccountData[playerid][pFaction] == FACTION_BENGKEL)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");

	if(AccountData[playerid][pFaction] == FACTION_PEDAGANG)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");

	if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions Police!");

	if(!IsPlayerInAnyVehicle(playerid) || GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada didalam kendaraan!!");
		
	if(AccountData[playerid][pFaction] == FACTION_POLISI)
	{
		static Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);
		SendNearbyMessage(playerid, 55.0, -1, "{FFBF00}%s %s : This is police, pull over your vehicle is side of the road!!!", GetFactionRank(playerid), ReturnName(playerid));
		foreach(new ii : PvtVehicles)
		{
			if(IsPlayerInRangeOfPoint(ii, 55.0, x, y, z))
			{
				PlayAudioStreamForPlayer(ii, "https://j.top4top.io/m_333471mzp1.mp3");
			}
		}
	}
	return 1;
}

/*https://j.top4top.io/m_333471mzp1.mp3*/

CMD:fa(playerid, params[])
{
	if(!AccountData[playerid][IsLoggedIn])
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus terkoneksi kedalam server!");

	if(AccountData[playerid][pFaction] == FACTION_NONE)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak termasuk Factions!");
	
	if(isnull(params))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/fa [pesan]");

	if(AccountData[playerid][pFaction] == FACTION_POLISI)
	{
		static lstr[1024];
		format(lstr, sizeof(lstr), "{201ee5}POLDA | %s: "WHITE"%s", ReturnName(playerid), params);
		SendClientMessageToAllEx(-1, lstr);
	}
	if(AccountData[playerid][pFaction] == FACTION_PEMERINTAH)
	{
		static lstr[1024];
		format(lstr, sizeof(lstr), "{1cecca}PEMERINTAH | %s: "WHITE"%s", ReturnName(playerid), params);
		SendClientMessageToAllEx(-1, lstr);
	}
	if(AccountData[playerid][pFaction] == FACTION_EMS)
	{
		static lstr[1024];
		format(lstr, sizeof(lstr), "{ff0000}EMS | %s: "WHITE"%s", ReturnName(playerid), params);
		SendClientMessageToAllEx(-1, lstr);
	}
	if(AccountData[playerid][pFaction] == FACTION_TRANS)
	{
		static lstr[1024];
		format(lstr, sizeof(lstr), ""YELLOW"TRANS | %s: "WHITE"%s", ReturnName(playerid), params);
		SendClientMessageToAllEx(-1, lstr);
	}
	if(AccountData[playerid][pFaction] == FACTION_BENGKEL)
	{
		static lstr[1024];
		format(lstr, sizeof(lstr), "{f20f7e}BENGKEL | %s: "WHITE"%s", ReturnName(playerid), params);
		SendClientMessageToAllEx(-1, lstr);
	}
	if(AccountData[playerid][pFaction] == FACTION_PEDAGANG)
	{
		static lstr[1024];
		format(lstr, sizeof(lstr), "{f38b03}RESTO | %s: "WHITE"%s", ReturnName(playerid), params);
		SendClientMessageToAllEx(-1, lstr);
	}
	if(AccountData[playerid][pFaction] == FACTION_GOJEK)
	{
		static lstr[1024];
		format(lstr, sizeof(lstr), "TENTARA | %s: "WHITE"%s", ReturnName(playerid), params);
		SendClientMessageToAllEx(X11_DARKGREEN, lstr);
	}
	return 1;
}

stock ShowTraceMainDialog(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_TRACE_MENU, DIALOG_STYLE_LIST, "Trace Data",
        "1) Trace Nomor\
		\n"GRAY"2) Trace Plat Kendaraan", "Pilih", "Tutup");
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(!response) return 1;

    switch(dialogid)
    {
        case DIALOG_TRACE_MENU:
        {
            switch(listitem)
            {
                case 0:
                {
                    PlayerTraceType[playerid] = TRACE_PHONE;
                    ShowPlayerDialog(playerid, DIALOG_TRACE_INPUT, DIALOG_STYLE_INPUT, "Trace Nomor HP", "Masukkan nomor telepon:", "Trace", "Batal");
                }
                case 1:
                {
                    PlayerTraceType[playerid] = TRACE_PLATE;
                    ShowPlayerDialog(playerid, DIALOG_TRACE_INPUT, DIALOG_STYLE_INPUT, "Trace Plat Kendaraan", "Masukkan plat kendaraan:", "Trace", "Batal");
                }
            }
        }
        case DIALOG_TRACE_INPUT:
        {
            if(strlen(inputtext) < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Input tidak boleh kosong.");

            switch(PlayerTraceType[playerid])
            {
                case TRACE_PHONE:
                {
                    static Float:x, Float:y, Float:z;
                    new bool:find = false;

                    foreach(new i : Player)
                    {
                        if(IsPlayerConnected(i) && PlayerHasItem(i, "Smartphone"))
                        {
                            if(!strcmp(AccountData[i][pPhone], inputtext, false))
                            {
                                GetPlayerPos(i, x, y, z);
                                SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Nama: "YELLOW"%s", ReturnName(i));
                                SendClientMessageEx(playerid, -1, ""WHITE"- Nomor Telepon: "YELLOW"%s", inputtext);
                                SendClientMessageEx(playerid, -1, ""WHITE"- Jenis Kelamin: "YELLOW"%s", (AccountData[i][pGender]) ? ("Laki-Laki") : ("Perempuan"));
                                SendClientMessageEx(playerid, -1, ""WHITE"- Tanggal Lahir: "YELLOW"%s", AccountData[i][pAge]);
                                SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Ponsel Sekarang: "YELLOW"%s", GetLocation(x, y, z));

                                ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi tertandai di map!");
                                SetPlayerRaceCheckpoint(playerid, 1, x, y, z, x, y, z, 5.0);
                                pMapCP[playerid] = true;
                                AccountData[playerid][pTraceTime] = gettime() + 180;
                                find = true;
                                break;
                            }
                        }
                    }
                    if(!find) ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor telepon tidak aktif/salah!");
                }

                case TRACE_PLATE:
                {
                    static Float:x, Float:y, Float:z;
                    new bool:find = false;

                    foreach(new iterid : PvtVehicles)
                    {
                        if(IsValidVehicle(PlayerVehicle[iterid][pVehPhysic]))
                        {
                            if(!strcmp(inputtext, PlayerVehicle[iterid][pVehPlate]))
                            {
                                GetVehiclePos(PlayerVehicle[iterid][pVehPhysic], x, y, z);
                                SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Jenis Kendaraan: "YELLOW"%s", GetVehicleModelName(PlayerVehicle[iterid][pVehModelID]));
                                foreach(new pid : Player)
                                {
                                    if(PlayerVehicle[iterid][pVehOwnerID] == AccountData[pid][pID])
                                    {
                                        SendClientMessageEx(playerid, -1, ""WHITE"- Pemilik: "YELLOW"%s", ReturnName(pid));
                                    }
                                }
                                SendClientMessageEx(playerid, -1, ""WHITE"- Plate Kendaraan: "YELLOW"%s"WHITE" - ("RED_E"Permanent"WHITE")", PlayerVehicle[iterid][pVehPlate]);
                                SendClientMessageEx(playerid, -1, ""WHITE"- Lokasi Kendaraan Sekarang: "YELLOW"%s", GetLocation(x, y, z));
                                ShowTDN(playerid, NOTIFICATION_INFO, "Ikuti tanda di map!");
                                SetPlayerRaceCheckpoint(playerid, 1, x, y, z, x, y, z, 5.0);
                                pMapCP[playerid] = true;
                                AccountData[playerid][pTraceTime] = gettime() + 180;
                                find = true;
                                break;
                            }
                        }
                    }
                    if(!find) ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada plate tersebut di data kota!");
                }
            }
        }
    }
    return 1;
}

stock Float:GetDistanceBetweenCoords(Float:x1, Float:y1, Float:z1, Float:x2, Float:y2, Float:z2)
{
    return floatsqroot(floatpower(x1 - x2, 2.0) + floatpower(y1 - y2, 2.0) + floatpower(z1 - z2, 2.0));
}

forward ResetDrunkLevel(playerid);
public ResetDrunkLevel(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;

    SetPlayerDrunkLevel(playerid, 0); // Reset level mabuk
	ClearAnimations(playerid);
    return 1;
}

forward UnfreezeTackledPlayer(playerid);
public UnfreezeTackledPlayer(playerid)
{
    TogglePlayerControllable(playerid, 1);
    ClearAnimations(playerid);
    return 1;
}

CMD:tackle(playerid, params[])
{
    if(AccountData[playerid][pFaction] != FACTION_POLISI)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Hanya anggota kepolisian yang bisa menggunakan perintah ini.");

    if(isTackleMode[playerid])
    {
        isTackleMode[playerid] = false;
		ShowTDN(playerid, NOTIFICATION_INFO, "Mode tackle dinonaktifkan.");
	}
    else
    {
        isTackleMode[playerid] = true;
		ShowTDN(playerid, NOTIFICATION_INFO, "Mode tackle diaktifkan. Klik kiri saat dekat target untuk tackle.");
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if((newkeys & KEY_FIRE) && isTackleMode[playerid])
    {
        new targetid = GetNearestPlayer(playerid);
        if(targetid == INVALID_PLAYER_ID) return 1;

        if(IsPlayerInAnyVehicle(playerid) || IsPlayerInAnyVehicle(targetid)) return 1;

        new Float:px, Float:py, Float:pz;
        new Float:tx, Float:ty, Float:tz;
        GetPlayerPos(playerid, px, py, pz);
        GetPlayerPos(targetid, tx, ty, tz);

        if(GetDistanceBetweenCoords(px, py, pz, tx, ty, tz) <= 2.5)
        {
			SetPlayerSpecialAction(targetid, SPECIAL_ACTION_NONE);
			ApplyAnimationEx(targetid, "CRIB", "CRIB_Use_Rocket", 4.1, 1, 0, 0, 1, 0);
            TogglePlayerControllable(targetid, 0);
            PlayerPlaySound(targetid, 1131, 0.0, 0.0, 0.0);
            SetPlayerDrunkLevel(targetid, 3000);
            SetTimerEx("ResetDrunkLevel", 5000, false, "d", targetid);
            SetTimerEx("UnfreezeTackledPlayer", 5000, false, "d", targetid);

			ShowTDN(playerid, NOTIFICATION_INFO, "Tackle berhasil!");
			ShowTDN(targetid, NOTIFICATION_INFO, "Kamu ditackle oleh petugas!");

			SendRPMeAboveHead(targetid, "Terjatuh dan tertackle oleh seseorang", X11_PLUM1);
        }
        else
        {
			ShowTDN(targetid, NOTIFICATION_INFO, "Terlalu jauh untuk tackle.");
        }
    }
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    isTackleMode[playerid] = false;
    return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    isTackleMode[playerid] = false;
    return 1;
}

stock GetNearestPlayer(playerid, Float:max_distance = 2.0)
{
    new targetid = INVALID_PLAYER_ID;
    new Float:nearest_dist = max_distance;

    new Float:px, Float:py, Float:pz;
    GetPlayerPos(playerid, px, py, pz);

    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(i == playerid) continue;
        if(!IsPlayerConnected(i)) continue;
        if(IsPlayerInAnyVehicle(i)) continue;

        new Float:tx, Float:ty, Float:tz;
        GetPlayerPos(i, tx, ty, tz);

        new Float:dist = GetDistanceBetweenCoords(px, py, pz, tx, ty, tz);
        if(dist < nearest_dist)
        {
            nearest_dist = dist;
            targetid = i;
        }
    }

    return targetid;
}