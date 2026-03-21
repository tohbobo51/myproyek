#include <YSI\y_hooks>
#define MAX_WARUNG 50

enum 	e_warung
{
	warungType,
	Float:warungPOS[3],
	warungInterior,
	warungWorld,

	STREAMER_TAG_MAP_ICON:warungMap,
	STREAMER_TAG_PICKUP:warungPickup,
	STREAMER_TAG_3D_TEXT_LABEL:warungLabel,
};

new WarungData[MAX_WARUNG][e_warung],
	Iterator:Warung<MAX_WARUNG>;

new WarungItemName[MAX_PLAYERS][20][32],
    WarungItemPrice[MAX_PLAYERS][20];	

stock ShowWarung(playerid) 
{
	new id = Warung_Nearest(playerid);
	if(id > -1)
    {
		if(IsPlayerInRangeOfPoint(playerid, 3.5, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2]))
		{
			AccountData[playerid][pStorageSelect] = 1;
			Inventory_Show(playerid);
			PlayerTextDrawSetString(playerid, InventoryTD2[playerid][4], "");

			selectItemWarung[playerid] = -1;

			for(new i = 0; i < MAX_INVENTORY2; i++) 
			{
				WarungItemPrice[playerid][i] = 0;
			}

			if(WarungData[id][warungType] == 1) 
			{
				PlayerTextDrawSetString(playerid, InventoryTD2[playerid][0], "Warung Umum");

				// ------------------- ITEM 1 ----------------- //
				format(WarungItemName[playerid][0], 32, "Nasi Uduk");
				WarungItemPrice[playerid][0] = 250;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][0], 19567);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][0]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][0], "Nasi Uduk");
				PlayerTextDrawShow(playerid, NameInv2[playerid][0]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][0], sprintf("Price $%d", WarungItemPrice[playerid][0]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][0]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][0]);
				// ------------------- ITEM 2 ----------------- //
				format(WarungItemName[playerid][1], 32, "Air Mineral");
				WarungItemPrice[playerid][1] = 200;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][1], 19570);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][1]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][1], "Air Mineral");
				PlayerTextDrawShow(playerid, NameInv2[playerid][1]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][1], sprintf("Price $%d", WarungItemPrice[playerid][1]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][1]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][1]);
				// ------------------- ITEM 3 ----------------- //
				format(WarungItemName[playerid][2], 32, "Rokok");
				WarungItemPrice[playerid][2] = 55;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][2], 19896);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][2]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][2], "Rokok");
				PlayerTextDrawShow(playerid, NameInv2[playerid][2]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][2], sprintf("Price $%d", WarungItemPrice[playerid][2]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][2]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][2]);
				// ------------------- ITEM 4 ----------------- //
				format(WarungItemName[playerid][3], 32, "Korek Api");
				WarungItemPrice[playerid][3] = 150;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][3], 19998);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][3]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][3], "Korek Api");
				PlayerTextDrawShow(playerid, NameInv2[playerid][3]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][3], sprintf("Price $%d", WarungItemPrice[playerid][3]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][3]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][3]);
				// ------------------- ITEM 5 ----------------- //
				format(WarungItemName[playerid][4], 32, "Masker");
				WarungItemPrice[playerid][4] = 650;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][4], 19036);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][4]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][4], "Masker");
				PlayerTextDrawShow(playerid, NameInv2[playerid][4]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][4], sprintf("Price $%d", WarungItemPrice[playerid][4]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][4]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][4]);
				// ------------------- ITEM 6 ----------------- //
				format(WarungItemName[playerid][5], 32, "Pilox");
				WarungItemPrice[playerid][5] = 10000;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][5], 365);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][5]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][5], "Pilox");
				PlayerTextDrawShow(playerid, NameInv2[playerid][5]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][5], sprintf("Price $%d", WarungItemPrice[playerid][5]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][5]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][5]);
				// ------------------- ITEM 7 ----------------- //
				format(WarungItemName[playerid][6], 32, "Pancingan");
				WarungItemPrice[playerid][6] = 1000;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][6], 18632);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][6]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][6], "Pancingan");
				PlayerTextDrawShow(playerid, NameInv2[playerid][6]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][6], sprintf("Price $%d", WarungItemPrice[playerid][6]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][6]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][6]);
				// ------------------- ITEM 8 ----------------- //
				format(WarungItemName[playerid][7], 32, "Umpan");
				WarungItemPrice[playerid][7] = 30;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][7], 1603);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][7]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][7], "Umpan");
				PlayerTextDrawShow(playerid, NameInv2[playerid][7]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][7], sprintf("Price $%d", WarungItemPrice[playerid][7]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][7]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][7]);
			}

			else if(WarungData[id][warungType] == 2) 
			{
				PlayerTextDrawSetString(playerid, InventoryTD2[playerid][0], "Warung Elektronik");
				// ------------------- ITEM 1 ----------------- //
				format(WarungItemName[playerid][0], 32, "Smartphone");
				WarungItemPrice[playerid][0] = 1800;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][0], 18870);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][0]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][0], "Smartphone");
				PlayerTextDrawShow(playerid, NameInv2[playerid][0]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][0], sprintf("Price $%d", WarungItemPrice[playerid][0]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][0]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][0]);
				// ------------------- ITEM 2 ----------------- //
				format(WarungItemName[playerid][1], 32, "Radio");
				WarungItemPrice[playerid][1] = 950;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][1], 19942);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][1]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][1], "Radio");
				PlayerTextDrawShow(playerid, NameInv2[playerid][1]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][1], sprintf("Price $%d", WarungItemPrice[playerid][1]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][1]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][1]);
				// ------------------- ITEM 3 ----------------- //
				format(WarungItemName[playerid][2], 32, "Boombox");
				WarungItemPrice[playerid][2] = 500;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][2], 2103);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][2]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][2], "Boombox");
				PlayerTextDrawShow(playerid, NameInv2[playerid][2]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][2], sprintf("Price $%d", WarungItemPrice[playerid][2]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][2]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][2]);
				// ------------------- ITEM 4 ----------------- //
				format(WarungItemName[playerid][3], 32, "Pilox");
				WarungItemPrice[playerid][3] = 10000;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][3], 365);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][3]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][3], "Pilox");
				PlayerTextDrawShow(playerid, NameInv2[playerid][3]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][3], sprintf("Price $%d", WarungItemPrice[playerid][3]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][3]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][3]);
				// ------------------- ITEM 5 ----------------- //
				format(WarungItemName[playerid][4], 32, "Vape");
				WarungItemPrice[playerid][4] = 20000;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][4], 1512);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][4]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][4], "Vape");
				PlayerTextDrawShow(playerid, NameInv2[playerid][4]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][4], sprintf("Price $%d", WarungItemPrice[playerid][4]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][4]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][4]);
				// ------------------- ITEM 6 ----------------- //
				format(WarungItemName[playerid][5], 32, "Senter");
				WarungItemPrice[playerid][5] = 5000;

				PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][5], 18641);
				PlayerTextDrawShow(playerid,PrevMod2[playerid][5]);

				PlayerTextDrawSetString(playerid, NameInv2[playerid][5], "Senter");
				PlayerTextDrawShow(playerid, NameInv2[playerid][5]);

				PlayerTextDrawSetString(playerid, QuantityInv2[playerid][5], sprintf("Price $%d", WarungItemPrice[playerid][5]));
				PlayerTextDrawShow(playerid, QuantityInv2[playerid][5]);
				PlayerTextDrawShow(playerid, BoxInv2[playerid][5]);
			}
		}
	}
    return 1;
}

Warung_Refresh(id)
{
	if(id != -1)
	{
		if(DestroyDynamic3DTextLabel(WarungData[id][warungLabel]))
			WarungData[id][warungLabel] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;
		
		if(DestroyDynamicPickup(WarungData[id][warungPickup]))
			WarungData[id][warungPickup] = STREAMER_TAG_PICKUP: INVALID_STREAMER_ID;

		if(DestroyDynamicMapIcon(WarungData[id][warungMap]))
			WarungData[id][warungMap] = STREAMER_TAG_MAP_ICON: INVALID_STREAMER_ID;

		if(WarungData[id][warungType] == 1) // shop
		{
			WarungData[id][warungLabel] = CreateDynamic3DTextLabel("Tekan "GREEN"[Y]"WHITE" untuk membeli", -1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2] + 0.55, 3.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, WarungData[id][warungWorld], WarungData[id][warungInterior]);
			WarungData[id][warungMap] = CreateDynamicMapIcon(WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 17, -1, WarungData[id][warungWorld], WarungData[id][warungInterior], -1, 1500.0, MAPICON_LOCAL, -1, 1);
			WarungData[id][warungPickup] = CreateDynamicPickup(2992, 23, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungWorld], WarungData[id][warungInterior], -1, 2.5, -1, 0);
		}
		else if(WarungData[id][warungType] == 2) // elektronik
		{
			WarungData[id][warungLabel] = CreateDynamic3DTextLabel("Tekan "GREEN"[Y]"WHITE" untuk membeli", -1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2] + 0.55, 3.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, WarungData[id][warungWorld], WarungData[id][warungInterior]);
			WarungData[id][warungMap] = CreateDynamicMapIcon(WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 48, -1, WarungData[id][warungWorld], WarungData[id][warungInterior], -1, 1500.0, MAPICON_LOCAL, -1, 1);
			WarungData[id][warungPickup] = CreateDynamicPickup(1277, 23, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungWorld], WarungData[id][warungInterior], -1, 2.5, -1, 0);
		}
		else if(WarungData[id][warungType] == 3) // baju
		{
			WarungData[id][warungLabel] = CreateDynamic3DTextLabel("Tekan "GREEN"[Y]"WHITE" untuk membeli pakaian", -1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2] + 0.55, 4.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, WarungData[id][warungWorld], WarungData[id][warungInterior]);
			WarungData[id][warungMap] = CreateDynamicMapIcon(WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 45, -1, WarungData[id][warungWorld], WarungData[id][warungInterior], -1, 1500.0, MAPICON_LOCAL, -1, 1);
			WarungData[id][warungPickup] = CreateDynamicPickup(1275, 23, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungWorld], WarungData[id][warungInterior], -1, 3.0, -1, 0);
		}
	}
	return 1;
}

Warung_Nearest(playerid)
{
	foreach(new i : Warung) if (IsPlayerInRangeOfPoint(playerid, 3.0, WarungData[i][warungPOS][0], WarungData[i][warungPOS][1], WarungData[i][warungPOS][2]))
	{
		return i;
	}
	return -1;
}

WarungNearby(playerid)
{
	foreach(new i : Warung) if (WarungData[i][warungType] == 1)
	{
		static Float:X, Float:Y, Float:Z, Float:dist;
		GetPlayerPos(playerid, X, Y, Z);

		dist = GetDistanceBetweenPoints(WarungData[i][warungPOS][0], WarungData[i][warungPOS][1], WarungData[i][warungPOS][2], X, Y, Z);

		if(dist <= 350.0)
		{
			return i;
		}
	}
	return -1;
}

ClothesStoreNearby(playerid)
{
	foreach(new i : Warung) if (WarungData[i][warungType] == 3)
	{
		static Float:X, Float:Y, Float:Z, Float:dist;
		GetPlayerPos(playerid, X, Y, Z);

		dist = GetDistanceBetweenPoints(WarungData[i][warungPOS][0], WarungData[i][warungPOS][1], WarungData[i][warungPOS][2], X, Y, Z);

		if(dist <= 350.0)
		{
			return i;
		}
	}
	return -1;
}

ElectronicStoreNearby(playerid)
{
	foreach(new i : Warung) if (WarungData[i][warungType] == 2)
	{
		static Float:X, Float:Y, Float:Z, Float:dist;
		GetPlayerPos(playerid, X, Y, Z);

		dist = GetDistanceBetweenPoints(WarungData[i][warungPOS][0], WarungData[i][warungPOS][1], WarungData[i][warungPOS][2], X, Y, Z);

		if(dist <= 350.0)
		{
			return i;
		}
	}
	return -1;
}

forward LoadWarung();
public LoadWarung()
{
	new id, rows = cache_num_rows();
	if(rows)
	{
		for(new i = 0; i < rows; i ++)
		{
			id = cache_get_field_int(i, "ShopID");
			WarungData[id][warungPOS][0] = cache_get_field_float(i, "ShopX");
			WarungData[id][warungPOS][1] = cache_get_field_float(i, "ShopY");
			WarungData[id][warungPOS][2] = cache_get_field_float(i, "ShopZ");
			WarungData[id][warungInterior] = cache_get_field_int(i, "ShopInterior");
			WarungData[id][warungWorld] = cache_get_field_int(i, "ShopWorld");
			WarungData[id][warungType] = cache_get_field_int(i, "ShopType");
			
			Warung_Refresh(id);
			Iter_Add(Warung, id);
		}
		printf("[Dynamic Warung]: Jumlah total Warung yang dimuat %d.", rows);
	}
	return 1;
}

Warung_Save(id)
{
	new cQuery[525];
	format(cQuery, sizeof(cQuery), "UPDATE `warung` SET \ 
	`ShopX` = %f, `ShopY` = %f, `ShopZ` = %f, `ShopInterior` = %d, `ShopWorld` = %d \ 
	WHERE `ShopID` = %d", WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 
	WarungData[id][warungWorld], WarungData[id][warungInterior], id);
	return mysql_tquery(g_SQL, cQuery);
}

CMD:addwarung(playerid, params[])
{
	if(CheckAdmin(playerid, 6)) return PermissionError(playerid);

	new 
		id = Iter_Free(Warung),
		type,
		tss[525],
		Float:x,
		Float:y,
		Float:z
	;
	GetPlayerPos(playerid, x, y, z);

	if(sscanf(params, "d", type)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/addshop [type]~n~1. Warung 2. Elektronik 3. Pakaian");
	if(type < 1 || type > 3) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid Type!");
	if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat menambah warung lagi!");

	if(type == 1) 
	{
		WarungData[id][warungPOS][0] = x;
		WarungData[id][warungPOS][1] = y;
		WarungData[id][warungPOS][2] = z;
		WarungData[id][warungType] = 1;
		WarungData[id][warungInterior] = GetPlayerInterior(playerid);
		WarungData[id][warungWorld] = GetPlayerVirtualWorld(playerid);

		Warung_Refresh(id);
		SendStaffMessage(X11_TOMATO, "%s telah Membuat Dynamic Warung ID: %d", GetAdminName(playerid), id);
	}
	else if(type == 2)
	{
		WarungData[id][warungPOS][0] = x;
		WarungData[id][warungPOS][1] = y;
		WarungData[id][warungPOS][2] = z;
		WarungData[id][warungType] = 2;
		WarungData[id][warungInterior] = GetPlayerInterior(playerid);
		WarungData[id][warungWorld] = GetPlayerVirtualWorld(playerid);

		Warung_Refresh(id);
		SendStaffMessage(X11_TOMATO, "%s telah Membuat Dynamic Warung Elektronik ID: %d", GetAdminName(playerid), id);
	}
	else if(type == 3)
	{
		WarungData[id][warungPOS][0] = x;
		WarungData[id][warungPOS][1] = y;
		WarungData[id][warungPOS][2] = z;
		WarungData[id][warungType] = 3;
		WarungData[id][warungInterior] = GetPlayerInterior(playerid);
		WarungData[id][warungWorld] = GetPlayerVirtualWorld(playerid);

		Warung_Refresh(id);
		SendStaffMessage(X11_TOMATO, "%s Membuat Dynamic Toko Baju ID: %d", GetAdminName(playerid), id);
	}
	Iter_Add(Warung, id);

	mysql_format(g_SQL, tss, sizeof(tss), "INSERT INTO `warung` SET `ShopID`=%d, `ShopX`=%f, `ShopY`=%f, `ShopZ`=%f, `ShopInterior`=%d, `ShopWorld`=%d, `ShopType`=%d",
	id, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungInterior], WarungData[id][warungWorld], WarungData[id][warungType]);
	mysql_tquery(g_SQL, tss, "OnWarungCreated", "dd", playerid, id);
	return 1;
}

CMD:removewarung(playerid, params[])
{
	if(CheckAdmin(playerid, 6)) return PermissionError(playerid);

	new id, icsr[255];
	if(sscanf(params, "d", id)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/removewarung [id]");
	if(!Iter_Contains(Warung, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Warung tidak ada!");
	if(id < 0 || id > MAX_WARUNG) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Warung tidak valid!");

	WarungData[id][warungPOS][0] = WarungData[id][warungPOS][1] = WarungData[id][warungPOS][2] = 0.0;
	WarungData[id][warungInterior] = WarungData[id][warungWorld] = WarungData[id][warungType] = 0;

	Warung_Refresh(id);
	SendStaffMessage(X11_TOMATO, "%s telah Menghapus Dynamic Warung ID: %d", GetAdminName(playerid), id);

	Iter_Remove(Warung, id);
	mysql_format(g_SQL, icsr, sizeof(icsr), "DELETE FROM `warung` WHERE `ShopID` = %d", id);
	mysql_tquery(g_SQL, icsr);
	return 1;
}

CMD:gotowarung(playerid, params[])
{
	if(CheckAdmin(playerid, 6)) return PermissionError(playerid);

	new id;
	if(sscanf(params, "d", id)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/gotowarung [id]");
	if(!Iter_Contains(Warung, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Warung tidak ada!");
	if(id < 0 || id > MAX_WARUNG) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Warung tidak valid!");

	SetPlayerPos(playerid, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2]);
	SetPlayerInterior(playerid, WarungData[id][warungInterior]);
	SetPlayerVirtualWorld(playerid, WarungData[id][warungWorld]);
	AccountData[playerid][pInDoor] = -1;
    AccountData[playerid][pInHouse] = -1;
    AccountData[playerid][pInBiz] = -1;
    AccountData[playerid][pInFamily] = -1;
    AccountData[playerid][pInRusun] = -1;
	SendStaffMessage(X11_TOMATO, "%s Teleportasi ke Warung ID:%d", GetAdminName(playerid), id);
	return 1;
}

forward OnWarungCreated(playerid, id);
public OnWarungCreated(playerid, id)
{
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membuat warung!");
	Warung_Save(id);
	return 1;
}

/* Hook */
hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
	{
		new id = Warung_Nearest(playerid);
		if(id > -1)
		{
			if(IsPlayerInRangeOfPoint(playerid, 1.5, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2]))
			{
				if(WarungData[id][warungType] == 3)
				{
					SetPlayerCameraFacingStore(playerid);
				}
				else {
					ShowWarung(playerid);
				}
			}
		}
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case DIALOG_WARUNG_ELEKTRONIK:
		{
			if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
			switch(listitem)
			{
				case 0: //smartphone
				{
					if(AccountData[playerid][pMoney] < 1800) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 1800);

					Inventory_Add(playerid, "Smartphone", 18870);
					ShowItemBox(playerid, "Received 1x", "Smartphone", 18870);
					AccountData[playerid][pPhoneOff] = 1;
				}
				case 1: // Radio
				{
					// if(AccountData[playerid][pRadio]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki radio!");
					if(AccountData[playerid][pMoney] < 950) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 950);

					// AccountData[playerid][pRadio] = 1;
					Inventory_Add(playerid, "Radio", 19942);
					ShowItemBox(playerid, "Received 1x", "Radio", 19942);
					ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil");

					/*new icsr[125];
					mysql_format(g_SQL, icsr, sizeof(icsr), "UPDATE `player_characters` SET `Char_Radio`=1 WHERE `pID`=%d", AccountData[playerid][pID]);
					mysql_tquery(g_SQL, icsr);*/
					
				}
				case 2: //Earphone
				{
					if(AccountData[playerid][pEarphone]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki earphone!");	
					if(AccountData[playerid][pMoney] < 300) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 300);

					AccountData[playerid][pEarphone] = 1;
					ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil");

					new icsr[125];
					mysql_format(g_SQL, icsr, sizeof(icsr), "UPDATE `player_characters` SET `Char_Earphone`=1 WHERE `pID`=%d", AccountData[playerid][pID]);
					mysql_tquery(g_SQL, icsr);
				}
				case 3: //bomboox
				{
					if(AccountData[playerid][pVip] < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pengguna VIP!");
					if(AccountData[playerid][pMoney] < 500) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					if(PlayerHasItem(playerid, "Boombox")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki boombox!");

					TakePlayerMoneyEx(playerid, 500);
					Inventory_Add(playerid, "Boombox", 2103);
					ShowItemBox(playerid, "Received 1x", "Boombox", 2103);
				}
				case 4: //bomboox
				{
					if(AccountData[playerid][pMoney] < 20000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					
					TakePlayerMoneyEx(playerid, 20000);
					Inventory_Add(playerid, "Vape", 1512);
					ShowItemBox(playerid, "Received 1x", "Vape", 1512);
				}
			}
		}
		case DIALOG_WARUNG:
		{
			if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
			switch(listitem)
			{
				case 0: // nasi uduk
				{
					ShowPlayerDialog(playerid, DIALOG_BUY_NASIUDUK, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung", 
					"Anda akan membeli nasi uduk seharga "GREEN"$250/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
				}
				case 1: //airmineral
				{
					ShowPlayerDialog(playerid, DIALOG_BUY_AIRMINERAL, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung", 
					"Anda akan membeli air mineral seharga "GREEN"$200/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
				}
				case 2: //Rokok
				{
					if(AccountData[playerid][pMoney] < 55) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 55);

					Inventory_Add(playerid, "Rokok", 19896, 12);
					ShowItemBox(playerid, "Received 12x", "Rokok", 19896);
				}
				case 3: //Korek api
				{
					if(AccountData[playerid][pMoney] < 150) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 150);

					Inventory_Add(playerid, "Korek Api", 19998);
					ShowItemBox(playerid, "Received 1x", "Korek Api", 19998);
				}
				case 4: // Pancingan
				{
					if(AccountData[playerid][pMoney] < 80) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 80);

					Inventory_Add(playerid, "Pancingan", 18632);
					ShowItemBox(playerid, "Received 1x", "Pancingan", 18632);
				}
				case 5: // Umpan
				{
					ShowPlayerDialog(playerid, DIALOG_BUY_UMPAN, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung", 
					"Anda akan membeli umpan seharga "GREEN"$18/umpan\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli)", "Beli", "Batal");
				}
				case 6: //Helm
				{
					if(AccountData[playerid][pHelmet]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki helm!");
					if(AccountData[playerid][pMoney] < 150) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 150);
					AccountData[playerid][pHelmet] = 1;
					ShowTDN(playerid, NOTIFICATION_SUKSES, "Pembelian berhasil");	
				}
				case 7: // masker
				{
					if(AccountData[playerid][pMoney] < 650) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 650);

					Inventory_Add(playerid, "Masker", 19036);
					ShowItemBox(playerid, "Received 1x", "Masker", 19036);
				}
				case 8:
				{
					if(AccountData[playerid][pMoney] < 10000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 10000);

					Inventory_Add(playerid, "Pilox", 365);
					ShowItemBox(playerid, "Received 1x", "Pilox", 365);
				}
				case 9:
				{
					if(AccountData[playerid][pMoney] < 1000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 1000);

					Inventory_Add(playerid, "Senter", 18641);
					ShowItemBox(playerid, "Received 1x", "Senter", 18641);
				}
				case 10:
				{
					if(Inventory_Count(playerid, "Tools Kit") >= 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki 1 Tools Kit di inventory");
					if(AccountData[playerid][pMoney] < 2000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
					TakePlayerMoneyEx(playerid, 2000);

					Inventory_Add(playerid, "Tools Kit", 19918);
					ShowItemBox(playerid, "Received 1x", "Tools Kit", 19918);
				}
			}
		}
		case DIALOG_BUY_NASIUDUK:
		{
			if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
		
			if(isnull(inputtext))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_NASIUDUK, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Tidak dapat diisi kosong!\nAnda akan membeli nasi uduk seharga "GREEN"$250/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}

			if(!IsNumeric(inputtext))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_NASIUDUK, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Hanya dapat diisi angka!\nAnda akan membeli nasi uduk seharga "GREEN"$250/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}

			if(strval(inputtext) < 1 || strval(inputtext) > (strval(inputtext) * 250))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_NASIUDUK, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Jumlah tidak valid!\nAnda akan membeli nasi uduk seharga "GREEN"$250/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}
			new quantity = strval(inputtext);
			new value = quantity * 250;

			if(value > AccountData[playerid][pMoney]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
			if(GetTotalWeightFloat(playerid) >= 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
			TakePlayerMoneyEx(playerid, value);

			Inventory_Add(playerid, "Nasi Uduk", 19567, quantity);
			ShowItemBox(playerid, sprintf("Received %dx", quantity), "Nasi Uduk", 19567);
		}
		case DIALOG_BUY_AIRMINERAL:
		{
			if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
		
			if(isnull(inputtext))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_AIRMINERAL, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Tidak dapat diisi kosong!\nAnda akan membeli air mineral seharga "GREEN"$200/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}

			if(!IsNumeric(inputtext))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_AIRMINERAL, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Hanya dapat diisi angka!\nAnda akan membeli air mineral seharga "GREEN"$200/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}

			if(strval(inputtext) < 1 || strval(inputtext) > (strval(inputtext) * 200))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_AIRMINERAL, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Jumlah tidak valid!\nAnda akan membeli air mineral seharga "GREEN"$200/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}
			new quantity = strval(inputtext);
			new value = quantity * 200;

			if(value > AccountData[playerid][pMoney]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
			if(GetTotalWeightFloat(playerid) >= 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
			TakePlayerMoneyEx(playerid, value);

			Inventory_Add(playerid, "Air Mineral", 19570, quantity);
			ShowItemBox(playerid, sprintf("Received %dx", quantity), "Air Mineral", 19570);
		}
		case DIALOG_BUY_UMPAN:
		{
			if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
		
			if(isnull(inputtext))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_UMPAN, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Tidak dapat diisi kosong!\nAnda akan membeli umpan seharga "GREEN"$18/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}

			if(!IsNumeric(inputtext))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_UMPAN, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Hanya dapat diisi angka!\nAnda akan membeli umpan seharga "GREEN"$18/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}

			if(strval(inputtext) < 1 || strval(inputtext) > (strval(inputtext) * 18))
			{
				return ShowPlayerDialog(playerid, DIALOG_BUY_UMPAN, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Warung",
				"Error: Jumlah tidak valid!\nAnda akan membeli umpan seharga "GREEN"$18/pcs\n"YELLOW"(Masukkan berapa banyak yang ingin anda beli):", "Beli", "Batal");
			}
			new quantity = strval(inputtext);
			new value = quantity * 18;

			if(AccountData[playerid][pMoney] < value) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak mencukupi!");
			if(GetTotalWeightFloat(playerid) >= 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
			TakePlayerMoneyEx(playerid, value);

			Inventory_Add(playerid, "Umpan", 1603, quantity);
			ShowItemBox(playerid, sprintf("Received %dx", quantity), "Umpan", 1603);
		}
	}
	return 1;
}