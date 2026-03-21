#include <YSI_Coding\y_hooks>

new SelectCharTD[MAX_PLAYERS],
    STREAMER_TAG_ACTOR: SelectCharActor[MAX_PLAYERS],
    TempName[MAX_PLAYERS][32],
    TempDOB[MAX_PLAYERS][64],
    TempGender[MAX_PLAYERS][64],
    TempHeight[MAX_PLAYERS][64],
    TempWeight[MAX_PLAYERS][64],
    TempOrigin[MAX_PLAYERS][64];

hook OnPlayerConnect(playerid)
{
    CreateUi_CharSelect(playerid);
    SelectCharTD[playerid] = 0;
    TempName[playerid][0] = EOS;
    TempDOB[playerid][0] = EOS;
    TempGender[playerid][0] = EOS;
    TempHeight[playerid][0] = EOS;
    TempWeight[playerid][0] = EOS;
    TempOrigin[playerid][0] = EOS;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DestroyUi_CharSelect(playerid);
    if(SelectCharActor[playerid] != STREAMER_TAG_ACTOR: INVALID_STREAMER_ID)
    {
        DestroyDynamicActor(SelectCharActor[playerid]);
        SelectCharActor[playerid] = STREAMER_TAG_ACTOR: INVALID_STREAMER_ID;
    }
    TempName[playerid][0] = EOS;
    TempDOB[playerid][0] = EOS;
    TempGender[playerid][0] = EOS;
    TempHeight[playerid][0] = EOS;
    TempWeight[playerid][0] = EOS;
    TempOrigin[playerid][0] = EOS;
    return 1;
}

BlacklistChar_Check(playerid, const type[], target[])
{
	new Cache:execute;

	execute = mysql_query(g_SQL, sprintf("SELECT * FROM `player_bans` WHERE `%s` = '%s' LIMIT 1;", type, target));

	new time;
	new reason[128], ip[16], username[MAX_PLAYER_NAME], banby[MAX_PLAYER_NAME];

	if(cache_num_rows())
	{
		time = cache_get_field_int(0, "ban_expire");

		cache_get_field_content(0, "ip", ip);
		cache_get_field_content(0, "name", username);
		cache_get_field_content(0, "admin", banby);
		cache_get_field_content(0, "reason", reason);

		new currentTime = gettime();
		if(time != 0 && time <= currentTime) // melepas status banned akun
		{
			new pbanname[MAX_PLAYER_NAME];
			GetPlayerName(playerid, pbanname, MAX_PLAYER_NAME);
			AccountData[playerid][IsLoggedIn] = false;
			Blacklist_RemoveBan(pbanname);
			Info(playerid, "Server telah melepas status banned akun ini secara otomatis. Jangan mengulangi hal yang sama kembali!");

			mysql_tquery(g_SQL, sprintf("SELECT * FROM `player_characters` WHERE `Char_Name` = '%s' LIMIT 1;", pbanname), "LoadPlayerData", "d", playerid);
		}
		else
		{
			new PlayerIP[16];
			GetPlayerIp(playerid, PlayerIP, sizeof(PlayerIP));
			mysql_tquery(g_SQL, sprintf("UPDATE `player_bans` SET `last_activity_timestamp` = '%d' WHERE `name` = '%s'", gettime(), AccountData[playerid][pUCP]));
				
			AccountData[playerid][IsLoggedIn] = false;
			printf("[BANNED INFO]: Ban Getting Called on %s", AccountData[playerid][pUCP]);
			GetPlayerIp(playerid, PlayerIP, sizeof(PlayerIP));
			SendClientMessage(playerid, X11_DARKRED, "[i] Character Anda diblokir dari server.");
		}
		// KickEx(playerid);
		return 1;
	}

	cache_delete(execute);
	return 0;
}

stock DialogAddChar(playerid)
{
    Dialog_Show(playerid, CreateCharNew, DIALOG_STYLE_TABLIST_HEADERS, ""TTR""SERVER_NAME""WHITE" - Create Characters",
    "Catalogs\tParameters\
    \nName:\t"YELLOW"%s\
    \n"GRAY"Date Of Birthday:\t"YELLOW"%s\
    \nGender:\t"YELLOW"%s\
    \n"GRAY"Height:\t"YELLOW"%s\
    \nWeight:\t"YELLOW"%s\
    \n"GRAY"Origin:\t"YELLOW"%s\
    \n+ Create Characters", "Create", "Cancel", 
        TempName[playerid],
        TempDOB[playerid],
        TempGender[playerid],
        TempHeight[playerid],
        TempWeight[playerid],
        TempOrigin[playerid]
    );
    return 1;
}

UpdateCharSelectString(playerid)
{
    if(IsValidDynamicActor(SelectCharActor[playerid]))
    {
        DestroyDynamicActor(SelectCharActor[playerid]);
        SelectCharActor[playerid] = STREAMER_TAG_ACTOR: INVALID_STREAMER_ID;
    }

    if(PlayerChar[playerid][SelectCharTD[playerid]][0] != EOS)
    {
        ClearDynamicActorAnimations(SelectCharActor[playerid]);
        SelectCharActor[playerid] = CreateDynamicActor(PlayerCharSkin[playerid][SelectCharTD[playerid]], 658.2648, -1879.6085, 4.7013, 181.7772, 1, 100.0, (playerid+100), -1, playerid, 20.0, -1, 0);
        ApplyDynamicActorAnimation(SelectCharActor[playerid], "BEACH", "ParkSit_M_loop", 4.1, 1, 0, 0, 0, -1);
    }

    if(PlayerChar[playerid][0][0] != EOS)
    {
        if(!BlacklistChar_Check(playerid, "name", PlayerChar[playerid][0])) {
                PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][6], sprintf("%s", PlayerChar[playerid][0]));
        } else {
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][6], sprintf("%s ~r~[ON BANNED]", PlayerChar[playerid][0]));
        }
    }
    else
    {
        PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][6], "Create New Characters");
    }
    PlayerTextDrawShow(playerid, Ui_CharSelect[playerid][6]);

    if(PlayerChar[playerid][1][0] != EOS)
    {
        if(!BlacklistChar_Check(playerid, "name", PlayerChar[playerid][1])) {
                PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][7], sprintf("%s", PlayerChar[playerid][1]));
        } else {
            PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][7], sprintf("%s ~r~[ON BANNED]", PlayerChar[playerid][1]));
        }
    }
    else
    {
        PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][7], "Create New Characters");
    }
    PlayerTextDrawShow(playerid, Ui_CharSelect[playerid][7]);

    if(PlayerChar[playerid][0][0] == EOS && PlayerChar[playerid][1][0] == EOS && PlayerChar[playerid][2][0] == EOS)
    {
        PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][1], "0/2 Characters");
    }
    else
    {
        PlayerTextDrawSetString(playerid, Ui_CharSelect[playerid][1], sprintf("%d/2 Characters", GetPVarInt(playerid, "CCount") + 1));
    }
    PlayerTextDrawShow(playerid, Ui_CharSelect[playerid][1]);
    Streamer_Update(playerid, STREAMER_TYPE_ACTOR);
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:playertextid)
{
    if(playertextid == Ui_CharSelect[playerid][4]) // Kotak Kiri
    {
        SelectCharTD[playerid] = 0;
        if(PlayerChar[playerid][SelectCharTD[playerid]][0] != EOS) 
        {
            UpdateCharSelectString(playerid);
        } else {
            DialogAddChar(playerid);
        }
        
    }
    else if(playertextid == Ui_CharSelect[playerid][5]) // Kotak Tengah
    {
        SelectCharTD[playerid] = 1;
        if(PlayerChar[playerid][SelectCharTD[playerid]][0] != EOS) 
        {
            UpdateCharSelectString(playerid);
        } else {
            DialogAddChar(playerid);
        }
    }
    else if(playertextid == Ui_CharSelect[playerid][8]) // Spawn
    {
        if(PlayerChar[playerid][SelectCharTD[playerid]][0] == EOS) {
            return Error(playerid, "Tidak ada characters di slot tersebut!");
        } 

        for(new i = 0, j = GetPlayerPoolSize(); i <= j; i++) if(AccountData[i][pUCP][0] != EOS)
        {
            if(!strcmp(AccountData[i][pUCP], ReturnName(playerid)) && i != playerid)
            {
                Error(playerid, "Seseorang sedang login menggunakan UCP yang sama.");
                KickEx(playerid);
                return 1;
            }
        }

        for(new i = 0; i < 10; i ++) 
            PlayerTextDrawHide(playerid, Ui_CharSelect[playerid][i]);

        AccountData[playerid][pChar] = SelectCharTD[playerid];
        SetPlayerName(playerid, PlayerChar[playerid][SelectCharTD[playerid]]);
        StopStream(playerid);

        if(IsValidDynamicActor(SelectCharActor[playerid])) {
            DestroyDynamicActor(SelectCharActor[playerid]);
            SelectCharActor[playerid] = STREAMER_TAG_ACTOR: INVALID_STREAMER_ID;
        }
        
        if(!Blacklist_Check(playerid, "name", PlayerChar[playerid][SelectCharTD[playerid]])) {
            mysql_tquery(g_SQL, sprintf("SELECT * FROM `player_characters` WHERE `Char_Name` = '%s' LIMIT 1;", PlayerChar[playerid][AccountData[playerid][pChar]]), "LoadPlayerData", "d", playerid);
        }
        CancelSelectTextDraw(playerid);
    }
    return 1;
}

forward InsertPlayerName2(playerid, const name[]);
public InsertPlayerName2(playerid, const name[])
{
	new rows = cache_num_rows();
	if(rows > 0)
	{
		Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Pembuatan Karakter",
		""RED"Error:"WHITE" Nama tersebut telah digunakan orang lain!\n"WHITE"Selamat Datang di "TTR"Aeterna Roleplay\n"WHITE"Sebelum bermain anda harus membuat karakter anda terlebih dahulu\nMasukkan nama karakter hanya dengan nama orang Indonesia!\nContoh: Rey_Simanjuntak, Sujiwo_Atmaja, etc", "Input", "Batal");
	}
	else
	{
		SetPVarInt(playerid, "CreateName", 1);
		format(AccountData[playerid][pTempName], MAX_PLAYER_NAME, name);
        format(TempName[playerid], MAX_PLAYER_NAME, name);
		DialogAddChar(playerid);
	}
	return 1;
}

Dialog:CreateCharNew(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    switch(listitem)
    {
        case 0: // Nama
        {
            Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Pembuatan Karakter",
			""WHITE"Selamat Datang di "TTR"Aeterna Roleplay\n"WHITE"Sebelum bermain anda harus membuat karakter terlebih dahulu\
			\nMasukkan nama karakter hanya dengan nama orang Indonesia\nCth: Dudung_Sutarman, Aldy_Firmansyah", "Input", "");
        }
        case 1: // Umur
        {
            Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Tanggal Lahir", 
            "Mohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
        }
        case 2: // Gender
        {
            Dialog_Show(playerid, DialogGender, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Jenis Kelamin", 
            "Laki-Laki\
            \n"GRAY"Perempuan", "Pilih", "");
        }
        case 3: // Tinggi Badan
        {
            Dialog_Show(playerid, DialogHeight, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE" - Tinggi Badan (cm)", 
            "Mohon masukkan tinggi badan (cm) karakter!\
            \nPerhatian: Format hanya berupa angka satuan cm (cth: 170).", "Input", "");
        }
        case 4: // Berat Badan
        {
            Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE" - Berat Badan (kg)", 
            "Mohon masukkan berat badan (kg) karakter!\nPerhatian: Format hanya berupa angka satuan kg (cth: 70).", "Input", "");
        }
        case 5: // Origin
        {
            Dialog_Show(playerid, DialogOrigin, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Negara Kelahiran", 
            "Mohon masukkan kembali negara asal kelahiran karakter.\nPerhatian: Masukkan nama negara yang valid (cth: Indonesia).", "Input", "");
        }
        case 6: // Create
        {
            if(!GetPVarInt(playerid, "CreateName")) {
                Error(playerid, "Anda belum membuat nama!");
                return DialogAddChar(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateOrigin")) {
                Error(playerid, "Anda belum memasukkan origin!");
                return DialogAddChar(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateAge")) {
                Error(playerid, "Anda belum memasukkan tanggal lahir!");
                return DialogAddChar(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateHeight")) {
                Error(playerid, "Anda belum memasukkan tinggi badan!");
                return DialogAddChar(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateWeight")) {
                Error(playerid, "Anda belum memasukkan berat badan!");
                return DialogAddChar(playerid);
            }
            else if(!GetPVarInt(playerid, "CreateGender")) {
                Error(playerid, "Anda belum memilih jenis kelamin!");
                return DialogAddChar(playerid);
            }

            new characterQuery[178];
            if(GetPVarInt(playerid, "CreateName") && GetPVarInt(playerid, "CreateGender") && GetPVarInt(playerid, "CreateOrigin") && GetPVarInt(playerid, "CreateAge") && GetPVarInt(playerid, "CreateHeight") && GetPVarInt(playerid, "CreateWeight"))
            {
                mysql_format(g_SQL, characterQuery, sizeof(characterQuery), "INSERT INTO `player_characters` (`Char_Name`, `Char_UCP`, `Char_RegisterDate`) VALUES ('%e', '%e', CURRENT_TIMESTAMP())", AccountData[playerid][pTempName], AccountData[playerid][pUCP]);
                mysql_tquery(g_SQL, characterQuery, "OnPlayerRegister", "d", playerid);
                SetPlayerName(playerid, AccountData[playerid][pTempName]);
            }
        }
    }
    return 1;
}

Dialog:DialogMakeChar(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return DialogAddChar(playerid);
    }
    
    new shstr[596];
    format(shstr, sizeof(shstr), ""WHITE"Selamat datang di "TTR"Aeterna Roleplay\nSebelum bermain anda harus membuat karakter terlebih dahulu\
    \nMasukkan nama karakter hanya dengan nama orang indonesia\n\nCth: Ucok_Siregar, Dadang_Sucipto");

    if(strlen(inputtext) < 1 || strlen(inputtext) > 24)
    {
        Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Pembuatan Karakter", 
        ""WHITE"Selamat datang di "TTR"Aeterna Roleplay\n"WHITE"Error: Nama tidak dapat kurang dari 1 huruf atau lebih dari 24\nSebelum bermain anda harus membuat karakter terlebih dahulu\
        \nMasukkan nama karakter hanya dengan nama orang indonesia\n\nCth: Ucok_Siregar, Dadang_Sucipto", "Input", "Kembali");
        return 1;
    }

    if(!IsValidRoleplayName(inputtext))
    {
        Dialog_Show(playerid, DialogMakeChar, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Pembuatan Karakter", 
        ""WHITE"Selamat datang di "TTR"Aeterna Roleplay\n"WHITE"Error: Nama tidak valid!\nSebelum bermain anda harus membuat karakter terlebih dahulu\
        \nMasukkan nama karakter hanya dengan nama orang indonesia\n\nCth: Ucok_Siregar, Dadang_Sucipto", "Input", "Kembali");
        return 1;
    }

    new cQuery[225];
    mysql_format(g_SQL, cQuery, sizeof(cQuery), "SELECT * FROM `player_characters` WHERE `Char_Name` = '%e'", inputtext);
    mysql_tquery(g_SQL, cQuery, "InsertPlayerName2", "ds", playerid, inputtext);
    format(AccountData[playerid][pUCP], 22, GetName(playerid));
    return 1;
}

Dialog:DialogAge(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return DialogAddChar(playerid);
    }

    new
        iDay,
        iMonth,
        iYear,
        day,
        month,
        year;
        
    getdate(year, month, day);

    static const
            arrMonthDays[] = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

    if(sscanf(inputtext, "p</>ddd", iDay, iMonth, iYear)) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Tanggal Lahir", "Mohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else if(iYear < 1900 || iYear > year) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Tahun Lahir", "ERROR: Invalid Tahun Lahir\nMohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else if(iMonth < 1 || iMonth > 12) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Bulan Lahir", "ERROR: Invalid Bulan Lahir\nMohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else if(iDay < 1 || iDay > arrMonthDays[iMonth - 1]) {
        Dialog_Show(playerid, DialogAge, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Tanggal Lahir", "ERROR: Invalid Tanggal Lahir\nMohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
    }
    else 
    {
        SetPVarInt(playerid, "CreateAge", 1);
        format(AccountData[playerid][pAge], 50, inputtext);
        format(TempDOB[playerid], 50, inputtext);
        DialogAddChar(playerid);
    }
    return 1;
}

Dialog:DialogGender(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return DialogAddChar(playerid);
    }

    AccountData[playerid][pGender] = listitem + 1;
    AccountData[playerid][pSkin] = (listitem) ? (193) : (59);

    SetPVarInt(playerid, "CreateGender", 1);
    format(TempGender[playerid], 128, "%s", listitem ? "Perempuan" : "Laki-Laki");
    Info(playerid, "Anda berhasil memilih gender %s", listitem ? "Perempuan" : "Laki-Laki");
    DialogAddChar(playerid);
    return 1;
}

Dialog:DialogHeight(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return DialogAddChar(playerid);
    }

    new tinggi = floatround(strval(inputtext));
    if(isnull(inputtext) || !IsNumeric(inputtext))
    {
        return Dialog_Show(playerid, DialogHeight, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE" - Tinggi Badan (cm)", 
        "Error: Format hanya berupa angka satuan cm!\nMohon masukkan tinggi badan (cm) karakter!\nPerhatian: Format hanya berupa angka satuan cm (cth: 163).", "Input", "");
    }
    
    if(tinggi <= 150 || tinggi >= 200)
    {
        return Dialog_Show(playerid, DialogHeight, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE" - Tinggi Badan (cm)", 
        "Error: Tinggi minimal 150 cm dan maksimal 200cm!\nMohon masukkan tinggi badan (cm) karakter!\nPerhatian: Format hanya berupa angka satuan cm (cth: 163).", "Input", "");
    }

    AccountData[playerid][pTinggiBadan] = tinggi;
    format(TempHeight[playerid], 64, "%s cm", inputtext);
    SetPVarInt(playerid, "CreateHeight", 1);
    DialogAddChar(playerid);
    return 1;
}

Dialog:DialogWeight(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return DialogAddChar(playerid);
    }

    new berat = floatround(strval(inputtext));
    if(isnull(inputtext) || !IsNumeric(inputtext))
        return Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE" - Berat Badan (kg)", "Mohon masukkan berat badan (kg) karakter!\nPerhatian: Format hanya berupa angka satuan kg (cth: 75).", "Input", "");
    
    if(berat <= 40)
        return Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE" - Berat Badan (kg)", "Tidak dapat dibawah 40kg!", "Input", "");

    if(berat >= 95)
        return Dialog_Show(playerid, DialogWeight, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE" - Berat Badan (kg)", "Tidak dapat diatas 95kg!", "Input", "");

    AccountData[playerid][pBeratBadan] = berat;
    SetPVarInt(playerid, "CreateWeight", 1);
    format(TempWeight[playerid], 64, "%s kg", inputtext);
    DialogAddChar(playerid);
    return 1;
}

Dialog:DialogOrigin(playerid, response, listitem, inputtext[])
{
    if(!response) {
        return DialogAddChar(playerid);
    }

    if(isnull(inputtext) || IsNumeric(inputtext))
    {
        return Dialog_Show(playerid, DialogOrigin, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Negara Kelahiran", 
        "Error: Tidak dapat mengandung angka/nomor!\nMohon masukkan kembali negara asal kelahiran karakter.\nPerhatian: Masukkan nama negara yang valid (cth: Indonesia).", "Input", "");
    }
    
    if (isnull(inputtext) || strlen(inputtext) > 50) 
    {
        return Dialog_Show(playerid, DialogOrigin, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Negara Kelahiran", 
        "Error: Negara kelahiran terlalu panjang!\nMohon masukkan kembali negara asal kelahiran karakter.\nPerhatian: Masukkan nama negara yang valid (cth: Indonesia).", "Input", "");
    }
    else for (new i = 0, len = strlen(inputtext); i != len; i ++) {
        if ((inputtext[i] >= 'A' && inputtext[i] <= 'Z') || (inputtext[i] >= 'a' && inputtext[i] <= 'z') || (inputtext[i] >= '0' && inputtext[i] <= '9') || (inputtext[i] == ' ') || (inputtext[i] == ',') || (inputtext[i] == '.'))
            continue;

        else return Dialog_Show(playerid, DialogOrigin, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Negara Kelahiran", "Mohon masukkan kembali negara asal kelahiran karakter.\nPerhatian: Masukkan nama negara yang valid (cth: Indonesia).", "Input", "");
    }
    format(AccountData[playerid][pOrigin], 32, inputtext);
    SetPVarInt(playerid, "CreateOrigin", 1);
    format(TempOrigin[playerid], 128, "%s", inputtext);
    DialogAddChar(playerid);
    return 1;
}