#include <YSI_Coding\y_hooks>


new PlayerText:MessageList[MAX_PLAYERS][7][3];
new PlayerText:ContactMessageList[MAX_PLAYERS][10][6];

hook OnPlayerConnect(playerid) 
{
    CreateContactMessageList(playerid);
    CreateMessageList(playerid);
}

ShowMessageList(playerid, i) 
{
    for(new j = 0; j < 3; j++) 
    {
        PlayerTextDrawShow(playerid, MessageList[playerid][i][j]);
    }
}

HideMessageList(playerid) 
{
    for(new i = 0; i < 7; i++) 
    {
        for(new j = 0; j < 3; j++) 
        {
            PlayerTextDrawHide(playerid, MessageList[playerid][i][j]);
        }
    }
}

HideContactMessageList(playerid) 
{
    for(new i = 0; i < 10; i++) 
    {
        for(new j = 0; j < 6; j++) 
        {
            PlayerTextDrawHide(playerid, ContactMessageList[playerid][i][j]);
        }
    }
}

ShowContactMessageList(playerid, i) 
{
    for(new j = 0; j < 6; j++) 
    {
        PlayerTextDrawShow(playerid, ContactMessageList[playerid][i][j]);
    }
}

CreateMessageList(playerid)
{
    for(new i = 0; i < 10; i++) {

        new Float: y = (i * 18.0);

        ContactMessageList[playerid][i][0] = CreatePlayerTextDraw(playerid, 529.000, 202.000 + y, "LD_SPAC:white");
        PlayerTextDrawTextSize(playerid, ContactMessageList[playerid][i][0], 89.000, 15.000);
        PlayerTextDrawAlignment(playerid, ContactMessageList[playerid][i][0], 1);
        PlayerTextDrawColor(playerid, ContactMessageList[playerid][i][0], 658264063);
        PlayerTextDrawSetShadow(playerid, ContactMessageList[playerid][i][0], 0);
        PlayerTextDrawSetOutline(playerid, ContactMessageList[playerid][i][0], 0);
        PlayerTextDrawBackgroundColor(playerid, ContactMessageList[playerid][i][0], 255);
        PlayerTextDrawFont(playerid, ContactMessageList[playerid][i][0], 4);
        PlayerTextDrawSetProportional(playerid, ContactMessageList[playerid][i][0], 1);
        PlayerTextDrawSetSelectable(playerid, ContactMessageList[playerid][i][0], 1);

        ContactMessageList[playerid][i][1] = CreatePlayerTextDraw(playerid, 532.000, 203.000 + y, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, ContactMessageList[playerid][i][1], 10.000, 13.000);
        PlayerTextDrawAlignment(playerid, ContactMessageList[playerid][i][1], 1);
        PlayerTextDrawColor(playerid, ContactMessageList[playerid][i][1], -56);
        PlayerTextDrawSetShadow(playerid, ContactMessageList[playerid][i][1], 0);
        PlayerTextDrawSetOutline(playerid, ContactMessageList[playerid][i][1], 0);
        PlayerTextDrawBackgroundColor(playerid, ContactMessageList[playerid][i][1], 255);
        PlayerTextDrawFont(playerid, ContactMessageList[playerid][i][1], 4);
        PlayerTextDrawSetProportional(playerid, ContactMessageList[playerid][i][1], 1);

        ContactMessageList[playerid][i][2] = CreatePlayerTextDraw(playerid, 543.000, 209.000 + y, "Pesan baru Pesan baru Pesan baru");
        PlayerTextDrawLetterSize(playerid, ContactMessageList[playerid][i][2], 0.128, 0.799);
        PlayerTextDrawAlignment(playerid, ContactMessageList[playerid][i][2], 1);
        PlayerTextDrawColor(playerid, ContactMessageList[playerid][i][2], -56);
        PlayerTextDrawSetShadow(playerid, ContactMessageList[playerid][i][2], 0);
        PlayerTextDrawSetOutline(playerid, ContactMessageList[playerid][i][2], 0);
        PlayerTextDrawBackgroundColor(playerid, ContactMessageList[playerid][i][2], 150);
        PlayerTextDrawFont(playerid, ContactMessageList[playerid][i][2], 1);
        PlayerTextDrawSetProportional(playerid, ContactMessageList[playerid][i][2], 1);

        ContactMessageList[playerid][i][3] = CreatePlayerTextDraw(playerid, 543.000, 202.000 + y, "Oliver Reyy");
        PlayerTextDrawLetterSize(playerid, ContactMessageList[playerid][i][3], 0.128, 0.799);
        PlayerTextDrawAlignment(playerid, ContactMessageList[playerid][i][3], 1);
        PlayerTextDrawColor(playerid, ContactMessageList[playerid][i][3], -56);
        PlayerTextDrawSetShadow(playerid, ContactMessageList[playerid][i][3], 0);
        PlayerTextDrawSetOutline(playerid, ContactMessageList[playerid][i][3], 0);
        PlayerTextDrawBackgroundColor(playerid, ContactMessageList[playerid][i][3], 150);
        PlayerTextDrawFont(playerid, ContactMessageList[playerid][i][3], 1);
        PlayerTextDrawSetProportional(playerid, ContactMessageList[playerid][i][3], 1);

        ContactMessageList[playerid][i][4] = CreatePlayerTextDraw(playerid, 529.000, 217.000 + y, "LD_SPAC:white");
        PlayerTextDrawTextSize(playerid, ContactMessageList[playerid][i][4], 89.000, 1.000);
        PlayerTextDrawAlignment(playerid, ContactMessageList[playerid][i][4], 1);
        PlayerTextDrawColor(playerid, ContactMessageList[playerid][i][4], -56);
        PlayerTextDrawSetShadow(playerid, ContactMessageList[playerid][i][4], 0);
        PlayerTextDrawSetOutline(playerid, ContactMessageList[playerid][i][4], 0);
        PlayerTextDrawBackgroundColor(playerid, ContactMessageList[playerid][i][4], 255);
        PlayerTextDrawFont(playerid, ContactMessageList[playerid][i][4], 4);
        PlayerTextDrawSetProportional(playerid, ContactMessageList[playerid][i][4], 1);
        PlayerTextDrawSetSelectable(playerid, ContactMessageList[playerid][i][4], 1);

        ContactMessageList[playerid][i][5] = CreatePlayerTextDraw(playerid, 533.000, 211.000 + y, "/");
        PlayerTextDrawLetterSize(playerid, ContactMessageList[playerid][i][5], 0.228, 0.398);
        PlayerTextDrawAlignment(playerid, ContactMessageList[playerid][i][5], 1);
        PlayerTextDrawColor(playerid, ContactMessageList[playerid][i][5], -56);
        PlayerTextDrawSetShadow(playerid, ContactMessageList[playerid][i][5], 0);
        PlayerTextDrawSetOutline(playerid, ContactMessageList[playerid][i][5], 0);
        PlayerTextDrawBackgroundColor(playerid, ContactMessageList[playerid][i][5], 150);
        PlayerTextDrawFont(playerid, ContactMessageList[playerid][i][5], 1);
        PlayerTextDrawSetProportional(playerid, ContactMessageList[playerid][i][5], 1);
    }
}

CreateContactMessageList(playerid) 
{

    for(new idx = 0; idx < 7; idx++) 
    {
        new Float:y = (idx * 25.0);

        MessageList[playerid][idx][0] = CreatePlayerTextDraw(playerid, 529.000, 353.000 - y, "LD_SPAC:white");
        PlayerTextDrawTextSize(playerid, MessageList[playerid][idx][0], 89.000, 24.000);
        PlayerTextDrawAlignment(playerid, MessageList[playerid][idx][0], 1);
        PlayerTextDrawColor(playerid, MessageList[playerid][idx][0], 393603839);
        PlayerTextDrawSetShadow(playerid, MessageList[playerid][idx][0], 0);
        PlayerTextDrawSetOutline(playerid, MessageList[playerid][idx][0], 0);
        PlayerTextDrawBackgroundColor(playerid, MessageList[playerid][idx][0], 255);
        PlayerTextDrawFont(playerid, MessageList[playerid][idx][0], 4);
        PlayerTextDrawSetProportional(playerid, MessageList[playerid][idx][0], 1);
        PlayerTextDrawSetSelectable(playerid, MessageList[playerid][idx][0], 1);

        MessageList[playerid][idx][1] = CreatePlayerTextDraw(playerid, 598.000, 369.000 - y, "_");
        PlayerTextDrawLetterSize(playerid, MessageList[playerid][idx][1], 0.108, 0.799);
        PlayerTextDrawTextSize(playerid, MessageList[playerid][idx][1], 628.000, -685.000);
        PlayerTextDrawAlignment(playerid, MessageList[playerid][idx][1], 1);
        PlayerTextDrawColor(playerid, MessageList[playerid][idx][1], 150);
        PlayerTextDrawSetShadow(playerid, MessageList[playerid][idx][1], 0);
        PlayerTextDrawSetOutline(playerid, MessageList[playerid][idx][1], 0);
        PlayerTextDrawBackgroundColor(playerid, MessageList[playerid][idx][1], 150);
        PlayerTextDrawFont(playerid, MessageList[playerid][idx][1], 1);
        PlayerTextDrawSetProportional(playerid, MessageList[playerid][idx][1], 1);

        MessageList[playerid][idx][2] = CreatePlayerTextDraw(playerid, 530.000, 353.000 - y, "_");
        PlayerTextDrawLetterSize(playerid, MessageList[playerid][idx][2], 0.128, 0.799);
        PlayerTextDrawTextSize(playerid, MessageList[playerid][idx][2], 615.000, -685.000);
        PlayerTextDrawAlignment(playerid, MessageList[playerid][idx][2], 1);
        PlayerTextDrawColor(playerid, MessageList[playerid][idx][2], -56);
        PlayerTextDrawSetShadow(playerid, MessageList[playerid][idx][2], 0);
        PlayerTextDrawSetOutline(playerid, MessageList[playerid][idx][2], 0);
        PlayerTextDrawBackgroundColor(playerid, MessageList[playerid][idx][2], 150);
        PlayerTextDrawFont(playerid, MessageList[playerid][idx][2], 1);
        PlayerTextDrawSetProportional(playerid, MessageList[playerid][idx][2], 1);
    }
}

function PhoneSyncSms(playerid) {
    new query[512];
    mysql_format(g_SQL, query, sizeof(query),  \
        "SELECT * FROM `messages` AS m " \
        "JOIN (SELECT MAX(`ID`) AS MaxID FROM `messages` WHERE (`TextTo` = '%e' OR `TextFrom` = '%e') GROUP BY `TextTo`) AS grp " \
        "ON m.`ID` = grp.`MaxID` " \
        "ORDER BY m.`ID` DESC", 
        AccountData[playerid][pPhone], AccountData[playerid][pPhone]);
    mysql_tquery(g_SQL, query, "OnSyncSMS", "d", playerid);
    return 1;
}


function OnSyncSMS(playerid) {
    HideContactMessageList(playerid);

    for(new i = 0; i < 10; i++) {
        ListedChat[playerid][i] = "0";
    }

    new page = pageMessage[playerid];
    new index = page * 10;

    new ii = 0;

    if(cache_num_rows()) {
        for(new i = index; i < cache_num_rows() && ii < 10; i++) {
            new bool:skip = false;

            new number[64], message[100];
            cache_get_value_name(i, "TextTo", number);
            cache_get_value_name(i, "Message", message);

            if (strcmp(number, AccountData[playerid][pPhone], false) == 0) 
            {
                cache_get_value_name(i, "TextFrom", number, sizeof(number));
            }

            for (new j = 0; j < 10; j++) 
            {
                if (strcmp(ListedChat[playerid][j], number, false) == 0) 
                {
                    skip = true;
                    break;
                }
            }

            if(skip)
            {
                continue;
            }

            ShowContactMessageList(playerid, ii);

            PlayerTextDrawSetString(playerid, ContactMessageList[playerid][ii][3], IsNumberKnow(playerid, number));
            PlayerTextDrawSetString(playerid, ContactMessageList[playerid][ii][2], sprintf("%.30s", message));
            strmid(ListedChat[playerid][ii], number, 0, 64);

            ii++;
        }
    }
    return 1;
}



new delayShareloc[MAX_PLAYERS],
    Float:shareLoc[MAX_PLAYERS][7][3];

hook OnPlayerEnterRaceCP(playerid) {
    if(GetPVarInt(playerid, "ShareLoc")) {
        DisablePlayerRaceCheckpoint(playerid);
        DeletePVar(playerid, "ShareLoc");
    }
}

Dialog:SendMessage(playerid, response, listitem, inputtext[]) {
    if(response) {

        if(isnull(inputtext))
            return Dialog_Show(playerid, SendMessage, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Send Message", ""WHITE"Silahkan ketik sesuatu untuk dikirim:", "Send", "Close");

        if(strlen(inputtext) < 1 || strlen(inputtext) > 100)
            return Dialog_Show(playerid, SendMessage, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Send Message", ""WHITE"Silahkan ketik sesuatu untuk dikirim:", "Send", "Close");

        new query[356], number[64];
        GetPVarString(playerid, "SelectNumber", number, 64);
        mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `messages` (`TextTo`, `TextFrom`, `Message`, `Time`) VALUES('%e', '%e', '%e', '%d')", number, AccountData[playerid][pPhone], SQL_ReturnEscape(inputtext), gettime());
        mysql_tquery(g_SQL, query, "OnInsertMessage", "d", playerid);
    }
    return 1;
}

function OnInsertMessage(playerid) {
    UpdatePhoneMessage(playerid);
    
    foreach(new i : Player) {
        if (!IsPlayerConnected(i)) continue;

        new number[64];
        GetPVarString(playerid, "SelectNumber", number, 64);

        if (strcmp(number, AccountData[playerid][pPhone], false) == 0) {
            UpdatePhoneMessage(i);
            break;
        }
        
        if (strcmp(AccountData[i][pPhone], number, false) == 0) {
            ShowTDN(i, NOTIFICATION_INFO, sprintf("Pesan baru dari %s.", IsNumberKnow(i, AccountData[playerid][pPhone])));

            if (GetPVarInt(i, "OpenSMS")) {
                PhoneSyncSms(i);
            }
            break;
        }
    }
    return 1;
}

stock UpdatePhoneMessage(playerid) {

    new 
        number[64],
        query[512];

    GetPVarString(playerid, "SelectNumber", number, 64);    

    mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `messages` WHERE `TextTo` = '%e' AND `TextFrom` = '%e' OR `TextTo` = '%e' AND `TextFrom` = '%e' ORDER BY `ID` DESC LIMIT 7;", number, AccountData[playerid][pPhone], AccountData[playerid][pPhone], number);
    mysql_tquery(g_SQL, query, "OnUpdatePhoneMessage", "d", playerid);
    return 1;
}

function OnUpdatePhoneMessage(playerid) {
    HideMessageList(playerid);

    for (new i = 0; i < cache_num_rows(); i++) {
        new number[64], message[100], time;
        new Float:x, Float:y, Float:z;

        cache_get_value_name(i, "TextFrom", number, sizeof(number));
        cache_get_value_name_int(i, "Time", time);
        cache_get_value_name(i, "Message", message, sizeof(message));
        cache_get_value_name_float(i, "X", x);
        cache_get_value_name_float(i, "Y", y);
        cache_get_value_name_float(i, "Z", z);

        ShowMessageList(playerid, i);

        if (x != 0.0 && y != 0.0 && z != 0.0) {
            PlayerTextDrawSetString(playerid, MessageList[playerid][i][2], sprintf("Telah mengirim lokasi~n~%s", GetLocation(x, y, z)));
            shareLoc[playerid][i][0] = x;
            shareLoc[playerid][i][1] = y;
            shareLoc[playerid][i][2] = z;
        } else {
            PlayerTextDrawSetString(playerid, MessageList[playerid][i][2], message);
        }

        if (strcmp(number, AccountData[playerid][pPhone], false) == 0) {
            PlayerTextDrawColor(playerid, MessageList[playerid][i][0], 393603839);
            PlayerTextDrawShow(playerid, MessageList[playerid][i][0]);
        } else {
            PlayerTextDrawColor(playerid, MessageList[playerid][i][0], 1768516095);
            PlayerTextDrawShow(playerid, MessageList[playerid][i][0]);
        }
        PlayerTextDrawSetString(playerid, MessageList[playerid][i][1], sprintf("%s", GetDurationShort(gettime() - time)));
    }

    return 1;
}


function OnOpenPhoneMessage(playerid) {

    new 
        number[64];

    GetPVarString(playerid, "SelectNumber", number, 64);

    PhoneMessage(playerid, true);
    PlayerTextDrawSetString(playerid, TextDraw_PhoneMessage[playerid][16], sprintf("%s", IsNumberKnow(playerid, number)));
    PlayerTextDrawSetString(playerid, TextDraw_PhoneMessage[playerid][24], sprintf("%s", number));
    UpdatePhoneMessage(playerid);
}

Dialog:MessageNumber(playerid, response, listitem, inputtext[]) {
    if(response) {
        if(!IsNumeric(inputtext))
            return Dialog_Show(playerid, MessageNumber, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Send Message", ""WHITE"Masukkan nomor yang akan kamu kirim pesan:", "Oke", "Close");

        SetPVarString(playerid, "SelectNumber", inputtext);
        Phone(playerid, false);
        PhoneMessage(playerid, false);
        OnOpenPhoneMessage(playerid); 
    }
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:textid) {
    if(GetPVarInt(playerid, "OpenSMS")) {
        for(new i = 0; i < 10; i++) if(textid == ContactMessageList[playerid][i][0]) {
            PhoneListMessage(playerid, false);
            SetPVarString(playerid, "SelectNumber", ListedChat[playerid][i]);
            OnOpenPhoneMessage(playerid);
        }
    }

    if(textid == TextDraw_PhoneListMessage[playerid][22]) 
    {
        pageMessage[playerid]++;
        PhoneSyncSms(playerid);
    }

    if(textid == TextDraw_PhoneListMessage[playerid][23]) 
    {
        pageMessage[playerid]--;
        if(pageMessage[playerid] <= 0) 
        {
            pageMessage[playerid] = 0;
        }

        PhoneSyncSms(playerid);
    }
    if(textid == TextDraw_PhoneMessage[playerid][27]) {
        Dialog_Show(playerid, SendMessage, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Send Message", ""WHITE"Silahkan ketik sesuatu untuk dikirim:", "Send", "Close");
    }
    if(textid == TextDraw_PhoneMessage[playerid][34])
    {
        HideMessageList(playerid);
        PhoneMessage(playerid, false);
        PhoneListMessage(playerid, true);
        pageMessage[playerid] = 0;
        PhoneSyncSms(playerid);
    }
    if(textid == TextDraw_PhoneListMessage[playerid][21]) {
        Dialog_Show(playerid, MessageNumber, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Send Message", ""WHITE"Masukkan nomor yang akan kamu kirim pesan:", "Oke", "Close");
    }
    new GetSelectNumber[64];
    if(textid == TextDraw_PhoneMessage[playerid][33]) {
        if(gettime() < delayShareloc[playerid]) {

        }
        else {
            new query[432];
            new number[64];
            GetPVarString(playerid, "SelectNumber", number, 64);

            new Float:x, Float:y, Float:z;
            GetPlayerPos(playerid, x, y, z);
            mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `messages` (`TextTo`, `TextFrom`, `Time`, `X`, `Y`, `Z`, `Message`) VALUES('%e', '%e', '%d', '%f', '%f', '%f', '%e')", number, AccountData[playerid][pPhone], gettime(), x, y, z, "Mengirimkan Lokasi");
            mysql_tquery(g_SQL, query, "OnInsertMessage", "d", playerid);
            delayShareloc[playerid] = gettime() + 5;
            ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil mengirimkan lokasi kepada %s.", IsNumberKnow(playerid, number)));
        }
    }
    if (GetPVarString(playerid, "SelectNumber", GetSelectNumber, 64)) {
        for(new i = 0; i < 7; i++) if(textid == MessageList[playerid][i][0]) {

            if(shareLoc[playerid][i][0] != 0 && shareLoc[playerid][i][1] != 0 && shareLoc[playerid][i][2] != 0) {
                SetPlayerRaceCheckpoint(playerid, 2, shareLoc[playerid][i][0], shareLoc[playerid][i][1], shareLoc[playerid][i][2], 0, 0, 0, 5.0);
                SetPVarInt(playerid, "ShareLoc", 1);

                if(IsPlayerInAnyVehicle(playerid)) {
                    foreach(new j : Player) if(IsPlayerInVehicle(j, GetPlayerVehicleID(playerid))) {
                        if(j == playerid) 
                            continue;

                        SetPlayerRaceCheckpoint(j, 2, shareLoc[playerid][i][0], shareLoc[playerid][i][1], shareLoc[playerid][i][2], 0, 0, 0, 5.0);
                        SetPVarInt(j, "ShareLoc", 1);
                    }
                }
            }
            break;
        }
    }
}
