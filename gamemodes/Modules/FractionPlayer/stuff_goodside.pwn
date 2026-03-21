new
    PoliceMoneyVault,
    PemerintahMoneyVault,
    EMSMoneyVault,
    RestoMoneyVault,
    GojekMoneyVault,
    BengkelMoneyVault,
    TransMoneyVault;

forward LoadBrankasGoodside();
public LoadBrankasGoodside()
{
    cache_get_value_name_int(0, "bengkelmoneyvault", BengkelMoneyVault);
    cache_get_value_name_int(0, "policemoneyvault", PoliceMoneyVault);
    cache_get_value_name_int(0, "pemerintahmoneyvault", PemerintahMoneyVault);
    cache_get_value_name_int(0, "emsmoneyvault", EMSMoneyVault);
    cache_get_value_name_int(0, "restomoneyvault", RestoMoneyVault);
    cache_get_value_name_int(0, "gojekmoneyvault", GojekMoneyVault);
    cache_get_value_name_int(0, "transmoneyvault", TransMoneyVault);
    cache_get_value_name_int(0, "globaltime_rusun", g_RusunTime);
    printf("[Saldo Goodside]: Jumlah total Saldo Faction yang dimuat 5.");
}

stock House_IsOwner(playerid, houseid)
{
    if (AccountData[playerid][pID] == -1)
        return 0;
    
    if (HouseData[houseid][hsOwnerID] != 0 && HouseData[houseid][hsOwnerID] == AccountData[playerid][pID])
        return 1;

    return 0;
}

stock ShowDetailPajak(playerid) {

	new string[512], has = 1;
	new total_pajak, pajak_veh, total_veh = 0;
	new pajak_gudang = 0, total_gudang = 0, total_rusun = 0, pajak_rusun = 0, total_money,
	    total_rumah = 0, pajak_rumah = 0;

	total_money = AccountData[playerid][pMoney] + AccountData[playerid][pBankMoney];

	if(total_money != 0) {
		new incomeTax = total_money / 100 * 3;
		total_pajak += incomeTax;
		strcat(string, sprintf(""WHITE"Pajak Keuangan ("GREEN"$%d"WHITE"): "GREEN"%s\n", total_money, FormatMoney(incomeTax)));
	}
	
	foreach(new i : House) if(House_IsOwner(playerid, i)) 
	{
		total_rumah++;

		if(HouseData[i][hsType] == 1) {
			pajak_rumah += 1200;
		}
		else if(HouseData[i][hsType] == 2) {
			pajak_rumah += 2190;
		}		
		else if(HouseData[i][hsType] == 3) {
			pajak_rumah += 3120;
		}	
		else if(HouseData[i][hsType] == 4) {
			pajak_rumah += 4213;
		}	
		has = 1;
	}

	if(total_rumah != 0) {
		strcat(string, sprintf(""WHITE"Pajak Rumah (%d rumah): "GREEN"%s\n", total_rumah, FormatMoney(pajak_rumah)));
		total_pajak += pajak_rumah;
	}

	foreach(new i : PvtVehicles) if(PlayerVehicle[i][pVehOwnerID] == AccountData[playerid][pID] && PlayerVehicle[i][pVehPrice] != 0) {

		total_veh++;
		new incomeTax = PlayerVehicle[i][pVehPrice] / 100 * 3; 
		pajak_veh += incomeTax;
		has = 1;
	}

	if(total_veh != 0) {
		strcat(string, sprintf(""WHITE"Pajak Kendaraan (%d kendaraan): "GREEN"%s\n", total_veh, FormatMoney(pajak_veh)));
		total_pajak += pajak_veh;
	}

	new gudang_id = AccountData[playerid][pHasGudangID];

	if(gudang_id != -1) {
		total_gudang++;
		new incomeTax = GudangData[gudang_id][gudangPrice] / 100 * 3; 
		pajak_gudang += incomeTax;
		has = 1;	
		strcat(string, sprintf(""WHITE"Pajak Gudang: "GREEN"%s\n", FormatMoney(pajak_gudang)));
		total_pajak += pajak_gudang;
	}

	foreach(new i : Rusun) if(RusunData[i][rusunOwnerID] == AccountData[playerid][pID] && RusunData[i][rusunPrice] != 0) {

		total_rusun++;
		new incomeTax = RusunData[i][rusunPrice] / 100 * 3; 
		pajak_rusun += incomeTax;
		has = 1;
	}
	if(total_rusun != 0) {
		strcat(string, sprintf(""WHITE"Pajak Rusun (%d rusun): "GREEN"%s\n", total_rusun, FormatMoney(pajak_rusun)));
		total_pajak += pajak_rusun;
	}
	
	if(has) 
    {
        new waktu = AccountData[playerid][pPajakTime];
        new hour = waktu / 3600;
        new minute = (waktu % 3600) / 60;
        new second = waktu % 60;

		strcat(string, sprintf(""WHITE"Total Pajak: "GREEN"%s\n"WHITE"Pajak akan terbayar dalam: %02d:%02d:%02d, siapkan saldo Bank anda.\n", FormatMoney(total_pajak), hour, minute, second));
		Dialog_Show(playerid, DIALOG_UNUSED, DIALOG_STYLE_LIST, ""TTR""SERVER_NAME" "WHITE"- Detail Pajak", string, "Tutup", "");
	}
	else {
		Dialog_Show(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, ""TTR""SERVER_NAME" "WHITE"- Detail Pajak", "Tidak ada sesuatu untuk dipajaki.", "Tutup", "");
	}

	MemSet(string, 0);
	return 1;
}

stock CalculatePayPajak(playerid) {
	new has = 1;
	new total_pajak,  pajak_veh, total_veh = 0;
	new pajak_gudang = 0, total_gudang = 0, total_rusun = 0, pajak_rusun = 0, total_money,
	    total_rumah = 0, pajak_rumah = 0;

	total_money = AccountData[playerid][pMoney] + AccountData[playerid][pBankMoney];

	if(total_money != 0) {
		new incomeTax = total_money / 100 * 3; // 3% dari total uang
		total_pajak += incomeTax;
	}
	
	foreach(new i : House) if(House_IsOwner(playerid, i)) {
		total_rumah++;

		if(HouseData[i][hsType] == 1) {
			pajak_rumah += 1200;
		}
		else if(HouseData[i][hsType] == 2) {
			pajak_rumah += 2190;
		}		
		else if(HouseData[i][hsType] == 3) {
			pajak_rumah += 3120;
		}	
		else if(HouseData[i][hsType] == 4) {
			pajak_rumah += 4213;
		}	
		has = 1;
	}

	if(total_rumah != 0) {
		total_pajak += pajak_rumah;
	}

	foreach(new i : PvtVehicles) if(PlayerVehicle[i][pVehOwnerID] == AccountData[playerid][pID] && PlayerVehicle[i][pVehPrice] != 0) {

		total_veh++;
		new incomeTax = PlayerVehicle[i][pVehPrice] / 100 * 3;
		pajak_veh += incomeTax;
		has = 1;
	}
	if(total_veh != 0) {
		total_pajak += pajak_veh;
	}

	new gudang_id = AccountData[playerid][pHasGudangID];

	if(gudang_id != -1) {
		total_gudang++;
		new incomeTax = GudangData[gudang_id][gudangPrice] / 100 * 3; 
		pajak_gudang += incomeTax;
		has = 1;	
		total_pajak += pajak_gudang;
	}

	foreach(new i : Rusun) if(RusunData[i][rusunOwnerID] == AccountData[playerid][pID] && RusunData[i][rusunPrice] != 0) {

		total_rusun++;
		new incomeTax = RusunData[i][rusunPrice] / 100 * 3; 
		pajak_rusun += incomeTax;
		has = 1;
	}
	if(total_rusun != 0) {
		total_pajak += pajak_rusun;
	}

	if(has) {
		AccountData[playerid][pBankMoney] -= total_pajak;
		Info(playerid, "Anda telah membayar Pajak sebesar "GREEN"%s "WHITE"kepada pemerintah.", FormatMoney(total_pajak));
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membayar Pajak!");
		UpdatePlayerData(playerid);
		PemerintahMoneyVault += total_pajak;
	}
	return 1;
}