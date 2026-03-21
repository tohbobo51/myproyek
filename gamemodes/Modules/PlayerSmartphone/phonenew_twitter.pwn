#include <YSI_Coding\y_hooks>


new pageTwitter[MAX_PLAYERS] = {0, ...};
new timerTwitter[MAX_PLAYERS] = {0, ...};

new PlayerText:TwitterList[MAX_PLAYERS][5][4];
new Text:TextDraw_PhoneShowMsgTwit[15];

stock HideTwitterList(playerid) {
    for(new i = 0; i < 5; i++) {
        for(new j = 0; j < 4; j++) {
            PlayerTextDrawHide(playerid, TwitterList[playerid][i][j]);
        }
    }
}

stock ShowTwitterList(playerid, i) {
    for(new j = 0; j < 4; j++) {
        PlayerTextDrawShow(playerid, TwitterList[playerid][i][j]);
    }
}

hook OnPlayerConnect(playerid) {
    CreateTwitterList(playerid);
    timerTwitter[playerid] = 0;
}

hook OnGameModeInit() {
    TextDraw_PhoneShowMsgTwit[0] = TextDrawCreate(386.000, 373.000, "LD_BEAT:chit");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[0], 24.000, 35.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[0], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[0], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[0], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[0], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[0], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[0], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[0], 1);

    TextDraw_PhoneShowMsgTwit[1] = TextDrawCreate(465.000, 373.000, "LD_BEAT:chit");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[1], 24.000, 35.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[1], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[1], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[1], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[1], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[1], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[1], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[1], 1);

    TextDraw_PhoneShowMsgTwit[2] = TextDrawCreate(390.000, 391.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[2], 95.000, 85.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[2], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[2], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[2], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[2], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[2], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[2], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[2], 1);

    TextDraw_PhoneShowMsgTwit[3] = TextDrawCreate(396.000, 379.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[3], 79.000, 95.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[3], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[3], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[3], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[3], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[3], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[3], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[3], 1);

    TextDraw_PhoneShowMsgTwit[4] = TextDrawCreate(387.000, 375.000, "LD_BEAT:chit");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[4], 24.000, 35.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[4], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[4], 505428735);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[4], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[4], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[4], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[4], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[4], 1);

    TextDraw_PhoneShowMsgTwit[5] = TextDrawCreate(464.000, 375.000, "LD_BEAT:chit");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[5], 24.000, 35.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[5], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[5], 505428735);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[5], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[5], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[5], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[5], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[5], 1);

    TextDraw_PhoneShowMsgTwit[6] = TextDrawCreate(391.000, 396.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[6], 92.500, 78.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[6], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[6], 505428735);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[6], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[6], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[6], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[6], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[6], 1);

    TextDraw_PhoneShowMsgTwit[7] = TextDrawCreate(397.000, 381.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[7], 79.000, 37.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[7], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[7], 505428735);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[7], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[7], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[7], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[7], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[7], 1);

    TextDraw_PhoneShowMsgTwit[8] = TextDrawCreate(486.000, 436.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[8], -1.000, 30.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[8], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[8], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[8], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[8], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[8], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[8], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[8], 1);

    TextDraw_PhoneShowMsgTwit[9] = TextDrawCreate(390.000, 407.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[9], -1.000, 15.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[9], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[9], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[9], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[9], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[9], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[9], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[9], 1);

    TextDraw_PhoneShowMsgTwit[10] = TextDrawCreate(390.000, 428.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[10], -1.000, 21.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[10], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[10], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[10], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[10], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[10], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[10], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[10], 1);

    TextDraw_PhoneShowMsgTwit[11] = TextDrawCreate(390.000, 453.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[11], -1.000, 21.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[11], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[11], 286398463);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[11], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[11], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[11], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[11], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[11], 1);

    TextDraw_PhoneShowMsgTwit[12] = TextDrawCreate(396.000, 390.000, "LD_SPAC:white");
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[12], 83.000, 38.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[12], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[12], 512819144);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[12], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[12], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[12], 255);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[12], 4);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[12], 1);

    TextDraw_PhoneShowMsgTwit[13] = TextDrawCreate(398.000, 391.000, "_");
    TextDrawLetterSize(TextDraw_PhoneShowMsgTwit[13], 0.128, 0.799);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[13], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[13], -56);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[13], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[13], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[13], 150);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[13], 1);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[13], 1);

    TextDraw_PhoneShowMsgTwit[14] = TextDrawCreate(398.000, 400.000, "_");
    TextDrawLetterSize(TextDraw_PhoneShowMsgTwit[14], 0.128, 0.799);
    TextDrawTextSize(TextDraw_PhoneShowMsgTwit[14], 480.000, -544.000);
    TextDrawAlignment(TextDraw_PhoneShowMsgTwit[14], 1);
    TextDrawColor(TextDraw_PhoneShowMsgTwit[14], -56);
    TextDrawSetShadow(TextDraw_PhoneShowMsgTwit[14], 0);
    TextDrawSetOutline(TextDraw_PhoneShowMsgTwit[14], 0);
    TextDrawBackgroundColor(TextDraw_PhoneShowMsgTwit[14], 150);
    TextDrawFont(TextDraw_PhoneShowMsgTwit[14], 1);
    TextDrawSetProportional(TextDraw_PhoneShowMsgTwit[14], 1);
}

stock CreateTwitterList(playerid) {

    for(new idx = 0; idx < 5; idx++) {
        new Float:y = (idx * 35.0);

        TwitterList[playerid][idx][0] = CreatePlayerTextDraw(playerid, 529.000, 202.000 + y, "LD_SPAC:white");
        PlayerTextDrawTextSize(playerid, TwitterList[playerid][idx][0], 89.000, 31.000);
        PlayerTextDrawAlignment(playerid, TwitterList[playerid][idx][0], 1);
        PlayerTextDrawColor(playerid, TwitterList[playerid][idx][0], 358990024);
        PlayerTextDrawSetShadow(playerid, TwitterList[playerid][idx][0], 0);
        PlayerTextDrawSetOutline(playerid, TwitterList[playerid][idx][0], 0);
        PlayerTextDrawBackgroundColor(playerid, TwitterList[playerid][idx][0], 255);
        PlayerTextDrawFont(playerid, TwitterList[playerid][idx][0], 4);
        PlayerTextDrawSetProportional(playerid, TwitterList[playerid][idx][0], 1);

        TwitterList[playerid][idx][1] = CreatePlayerTextDraw(playerid, 531.000, 202.000 + y, "_");
        PlayerTextDrawLetterSize(playerid, TwitterList[playerid][idx][1], 0.118, 0.799);
        PlayerTextDrawAlignment(playerid, TwitterList[playerid][idx][1], 1);
        PlayerTextDrawColor(playerid, TwitterList[playerid][idx][1], -56);
        PlayerTextDrawSetShadow(playerid, TwitterList[playerid][idx][1], 0);
        PlayerTextDrawSetOutline(playerid, TwitterList[playerid][idx][1], 0);
        PlayerTextDrawBackgroundColor(playerid, TwitterList[playerid][idx][1], 150);
        PlayerTextDrawFont(playerid, TwitterList[playerid][idx][1], 1);
        PlayerTextDrawSetProportional(playerid, TwitterList[playerid][idx][1], 1);

        TwitterList[playerid][idx][2] = CreatePlayerTextDraw(playerid, 531.000, 210.000 + y, "_");
        PlayerTextDrawLetterSize(playerid, TwitterList[playerid][idx][2], 0.118, 0.799);
        PlayerTextDrawTextSize(playerid, TwitterList[playerid][idx][2], 616.000, -160.000);
        PlayerTextDrawAlignment(playerid, TwitterList[playerid][idx][2], 1);
        PlayerTextDrawColor(playerid, TwitterList[playerid][idx][2], -56);
        PlayerTextDrawSetShadow(playerid, TwitterList[playerid][idx][2], 0);
        PlayerTextDrawSetOutline(playerid, TwitterList[playerid][idx][2], 0);
        PlayerTextDrawBackgroundColor(playerid, TwitterList[playerid][idx][2], 150);
        PlayerTextDrawFont(playerid, TwitterList[playerid][idx][2], 1);
        PlayerTextDrawSetProportional(playerid, TwitterList[playerid][idx][2], 1);

        TwitterList[playerid][idx][3] = CreatePlayerTextDraw(playerid, 593.000, 226.000 + y, "_");
        PlayerTextDrawLetterSize(playerid, TwitterList[playerid][idx][3], 0.097, 0.699);
        PlayerTextDrawTextSize(playerid, TwitterList[playerid][idx][3], 648.000, -160.000);
        PlayerTextDrawAlignment(playerid, TwitterList[playerid][idx][3], 1);
        PlayerTextDrawColor(playerid, TwitterList[playerid][idx][3], -56);
        PlayerTextDrawSetShadow(playerid, TwitterList[playerid][idx][3], 0);
        PlayerTextDrawSetOutline(playerid, TwitterList[playerid][idx][3], 0);
        PlayerTextDrawBackgroundColor(playerid, TwitterList[playerid][idx][3], 150);
        PlayerTextDrawFont(playerid, TwitterList[playerid][idx][3], 1);
        PlayerTextDrawSetProportional(playerid, TwitterList[playerid][idx][3], 1);
    }
}

stock PhoneSyncTwitter(playerid) {
    mysql_tquery(g_SQL, "SELECT * FROM `twitter` ORDER BY `ID` DESC;", "OnSyncX", "d", playerid);
    return 1;
}

stock ReturnTwitterDuration(time)
{
	new
	    str[32];

	if (time < 0 || time == gettime()) {
	    format(str, sizeof(str), "Never");
	    return str;
	}
	else if (time < 60)
		format(str, sizeof(str), "%ds", time);

	else if (time >= 0 && time < 60)
		format(str, sizeof(str), "%ds", time);

	else if (time >= 60 && time < 3600)
		format(str, sizeof(str), (time >= 120) ? ("%dm") : ("%dm"), time / 60);

	else if (time >= 3600 && time < 86400)
		format(str, sizeof(str), (time >= 7200) ? ("%dh") : ("%dh"), time / 3600);

	else if (time >= 86400 && time < 2592000)
 		format(str, sizeof(str), (time >= 172800) ? ("%dd") : ("%dd"), time / 86400);

	else if (time >= 2592000 && time < 31536000)
 		format(str, sizeof(str), (time >= 5184000) ? ("%dmo") : ("%dmo"), time / 2592000);

	else if (time >= 31536000)
		format(str, sizeof(str), (time >= 63072000) ? ("%dy") : ("%dy"), time / 31536000);

	strcat(str, " ago");

	return str;
}

function OnSyncX(playerid) {
    HideTwitterList(playerid);

    new page = pageTwitter[playerid],
        mul_index = page * 5;

    new x_name[5][24],
        x_message[5][80],
        x_id[5],
        x_time[5];

	for(new i = 0; i < 5; i++) {
		x_id[i] = 0;
	}

    new real_i = 0;

	if(cache_num_rows()) {

		for(new i = mul_index; i < cache_num_rows(); i++) if(i <= cache_num_rows()) {

            if(real_i < sizeof(x_id)) {

                cache_get_value_name_int(i, "ID", x_id[real_i]);
                cache_get_value_name(i, "Message", x_message[real_i]);
                cache_get_value_name(i, "Name", x_name[real_i]);
                cache_get_value_name_int(i, "Time", x_time[real_i]);
                real_i++;
            }
            else {
                break;
            }
		}	
		for(new i = 0; i < 5; i++) {

			if(x_id[i] != 0) {
				ShowTwitterList(playerid, i);
				PlayerTextDrawSetString(playerid, TwitterList[playerid][i][1], x_name[i]);
				PlayerTextDrawSetString(playerid, TwitterList[playerid][i][2], x_message[i]);
                PlayerTextDrawSetString(playerid, TwitterList[playerid][i][3], sprintf("%s", ReturnTwitterDuration(gettime() - x_time[i])));
			}
		}
	}
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:textid) {
    if(textid == TextDraw_Phone[playerid][30])
    {
        pageTwitter[playerid] = 0;
        Phone(playerid, false);
        PhoneTwitter(playerid, true);
        PhoneSyncTwitter(playerid);
    }
    if(textid == TextDraw_PhoneTwitter[playerid][28])
    {
        HideTwitterList(playerid);
        PhoneTwitter(playerid, false);
        Phone(playerid, true);
    }
    if(textid == TextDraw_PhoneTwitter[playerid][21]) {
        Dialog_Show(playerid, TwitterPost, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - X", ""WHITE"Ketik sesuatu untuk tweet anda:", "Post", "Close");
    }
    if(textid == TextDraw_PhoneTwitter[playerid][22]) 
    {
        pageTwitter[playerid]--;
        if(pageTwitter[playerid] <= 0) 
        {
            pageTwitter[playerid] = 0;
        }

        PhoneSyncTwitter(playerid);
    }

    if(textid == TextDraw_PhoneTwitter[playerid][23]) 
    {
        pageTwitter[playerid]++;
        if(pageTwitter[playerid] >= 10) 
        {
            pageTwitter[playerid] = 10;
        }

        PhoneSyncTwitter(playerid);
    }
}

stock GetDurationShort(time)
{
	new
	    str[32];

	if (time < 0 || time == gettime()) {
	    format(str, sizeof(str), "Never");
	    return str;
	}
	else if (time < 60)
		format(str, sizeof(str), "%ds", time);

	else if (time >= 0 && time < 60)
		format(str, sizeof(str), "%ds", time);

	else if (time >= 60 && time < 3600)
		format(str, sizeof(str), (time >= 120) ? ("%dm") : ("%dm"), time / 60);

	else if (time >= 3600 && time < 86400)
		format(str, sizeof(str), (time >= 7200) ? ("%dh") : ("%dh"), time / 3600);

	else if (time >= 86400 && time < 2592000)
 		format(str, sizeof(str), (time >= 172800) ? ("%dd") : ("%dd"), time / 86400);

	else if (time >= 2592000 && time < 31536000)
 		format(str, sizeof(str), (time >= 5184000) ? ("%dmo") : ("%dmo"), time / 2592000);

	else if (time >= 31536000)
		format(str, sizeof(str), (time >= 63072000) ? ("%dy") : ("%dy"), time / 31536000);

	strcat(str, " ago");

	return str;
}

stock GetVehicleID(sqlid) 
{
	new vehicleid = INVALID_VEHICLE_ID;

	foreach(new i : PvtVehicles) if(PlayerVehicle[i][pVehID] != 0 && PlayerVehicle[i][pVehID] == sqlid) 
	{
		vehicleid = i;
		break;
	}
	return vehicleid;
}

stock CreateTwitter(playerid, string:message[]) {
    new query[256];
    mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `twitter` (`Name`, `Message`, `Time`) VALUES('%e', '%e', '%d')", AccountData[playerid][pName], message, gettime());
    mysql_tquery(g_SQL, query);

    TextDrawSetString(TextDraw_PhoneShowMsgTwit[13], GetName(playerid));
    TextDrawSetString(TextDraw_PhoneShowMsgTwit[14], message);

    foreach(new i : Player) if(!AccountData[i][pOpenPhone] && PlayerHasItem(i, "Smartphone")) {

        if(timerTwitter[i] != 0) {
            KillTimer(timerTwitter[i]);
            timerTwitter[i] = 0;
        }
        
        for(new j = 0; j < 15; j++) {
            TextDrawShowForPlayer(i, TextDraw_PhoneShowMsgTwit[j]);
        }

        PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);

        timerTwitter[i] = SetTimerEx("HideTwitterUI", 5000, false, "d", i);
    }

    AccountData[playerid][pDelayTwitter] = 300;
    return 1;
}

function HideTwitterUI(playerid) {
    for(new j = 0; j < 15; j++) {
        TextDrawHideForPlayer(playerid, TextDraw_PhoneShowMsgTwit[j]);
    }
    timerTwitter[playerid] = 0;
}

Dialog:TwitterPost(playerid, response, listitem,inputtext[]) {
    if(response) {
    
        if(AccountData[playerid][pDelayTwitter]) {
            return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Anda harus menunggu %d detik untuk membuat twitter lagi.", AccountData[playerid][pDelayTwitter]));
        }
        if(isnull(inputtext))
            return Dialog_Show(playerid, TwitterPost, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Twitter", ""WHITE"Ketik sesuatu untuk tweet anda:", "Post", "Close");

        if(strlen(inputtext) < 1)
            return Dialog_Show(playerid, TwitterPost, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Twitter", ""WHITE"Ketik sesuatu untuk tweet anda:", "Post", "Close");
            
        if(strlen(inputtext) > 80)
            return Dialog_Show(playerid, TwitterPost, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Twitter", ""WHITE"Ketik sesuatu untuk tweet anda:", "Post", "Close");

        if(strlen(inputtext) >= 12 && !FindSpace(inputtext))
            return Dialog_Show(playerid, TwitterPost, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Twitter", ""WHITE"Ketik sesuatu untuk tweet anda:", "Post", "Close");

        new real_tweet[100];

        format(real_tweet, sizeof(real_tweet), inputtext);

        CreateTwitter(playerid, real_tweet);

        foreach(new i : Player) if(GetPVarInt(i, "OpenX")) {
            PhoneSyncTwitter(i);
        }
    }
    return 1;
}