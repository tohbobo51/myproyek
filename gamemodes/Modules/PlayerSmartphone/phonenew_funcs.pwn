#include <YSI_Coding\y_hooks>

new PlayerText:TextDraw_Phone[MAX_PLAYERS][98];
new PlayerText:TextDraw_PhoneInformation[MAX_PLAYERS][36];
new PlayerText:TextDraw_Contact[MAX_PLAYERS][33];
new PlayerText:TextDraw_PhoneCallNumber[MAX_PLAYERS][46];
new PlayerText:TextDraw_PhoneMessage[MAX_PLAYERS][35];
new PlayerText:TextDraw_PhoneListMessage[MAX_PLAYERS][29];
new PlayerText:TextDraw_PhoneFactionList[MAX_PLAYERS][62];
new PlayerText:TextDraw_PhoneTaxi[MAX_PLAYERS][37];
new PlayerText:TextDraw_PhoneBank[MAX_PLAYERS][35];
new PlayerText:TextDraw_PhoneVehicle[MAX_PLAYERS][30];
new PlayerText:TextDraw_PhoneYellowpage[MAX_PLAYERS][32];
new PlayerText:TextDraw_PhoneTwitter[MAX_PLAYERS][29];
new PlayerText:TextDraw_PhoneCall[MAX_PLAYERS][27];

AllTextDraw_Phone(playerid) 
{   
	TextDraw_Phone[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][0], 1);

	TextDraw_Phone[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][1], 1);

	TextDraw_Phone[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][2], 1);

	TextDraw_Phone[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][3], 1);

	TextDraw_Phone[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 189.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][4], 95.000, 218.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][4], 1);

	TextDraw_Phone[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][5], 79.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][5], 1);

	TextDraw_Phone[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][6], 1);

	TextDraw_Phone[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][7], 1);

	TextDraw_Phone[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][8], 1);

	TextDraw_Phone[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][9], 1);

	TextDraw_Phone[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][10], 1);

	TextDraw_Phone[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][11], 1);

	TextDraw_Phone[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][12], 1);

	TextDraw_Phone[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][13], 1);

	TextDraw_Phone[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][14], 1);

	TextDraw_Phone[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][15], 1);

	TextDraw_Phone[playerid][16] = CreatePlayerTextDraw(playerid, 574.000, 203.000, "12.00");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][16], 0.488, 2.598);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][16], 2);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][16], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][16], 1);

	TextDraw_Phone[playerid][17] = CreatePlayerTextDraw(playerid, 574.000, 227.000, "1 January 2023");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][17], 0.128, 0.699);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][17], 2);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][17], 1);

	TextDraw_Phone[playerid][18] = CreatePlayerTextDraw(playerid, 538.000, 248.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][18], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][18], 421097727);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][18], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][18], 1);

	TextDraw_Phone[playerid][19] = CreatePlayerTextDraw(playerid, 534.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][19], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][19], 421097727);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][19], 1);

	TextDraw_Phone[playerid][20] = CreatePlayerTextDraw(playerid, 546.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][20], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][20], 421097727);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][20], 1);

	TextDraw_Phone[playerid][21] = CreatePlayerTextDraw(playerid, 558.000, 248.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][21], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][21], -1329275137);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][21], 1);

	TextDraw_Phone[playerid][22] = CreatePlayerTextDraw(playerid, 554.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][22], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][22], -1329275137);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][22], 1);

	TextDraw_Phone[playerid][23] = CreatePlayerTextDraw(playerid, 566.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][23], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][23], -1329275137);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][23], 1);

	TextDraw_Phone[playerid][24] = CreatePlayerTextDraw(playerid, 578.000, 248.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][24], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][24], -1821320193);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][24], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][24], 1);

	TextDraw_Phone[playerid][25] = CreatePlayerTextDraw(playerid, 574.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][25], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][25], -1821320193);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][25], 1);

	TextDraw_Phone[playerid][26] = CreatePlayerTextDraw(playerid, 586.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][26], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][26], -1821320193);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][26], 1);

	TextDraw_Phone[playerid][27] = CreatePlayerTextDraw(playerid, 598.000, 248.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][27], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][27], 16777215);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][27], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][27], 1);

	TextDraw_Phone[playerid][28] = CreatePlayerTextDraw(playerid, 594.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][28], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][28], 16777215);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][28], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][28], 1);

	TextDraw_Phone[playerid][29] = CreatePlayerTextDraw(playerid, 606.000, 244.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][29], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][29], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][29], 16777215);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][29], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][29], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][29], 1);

	TextDraw_Phone[playerid][30] = CreatePlayerTextDraw(playerid, 538.000, 271.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][30], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][30], 255);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][30], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][30], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][30], 1);

	TextDraw_Phone[playerid][31] = CreatePlayerTextDraw(playerid, 534.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][31], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][31], 255);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][31], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][31], 1);

	TextDraw_Phone[playerid][32] = CreatePlayerTextDraw(playerid, 546.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][32], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][32], 255);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][32], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][32], 1);

	TextDraw_Phone[playerid][33] = CreatePlayerTextDraw(playerid, 558.000, 271.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][33], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][33], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][33], -65281);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][33], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][33], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][33], 1);

	TextDraw_Phone[playerid][34] = CreatePlayerTextDraw(playerid, 554.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][34], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][34], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][34], -65281);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][34], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][34], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][34], 1);

	TextDraw_Phone[playerid][35] = CreatePlayerTextDraw(playerid, 566.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][35], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][35], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][35], -65281);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][35], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][35], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][35], 1);

	TextDraw_Phone[playerid][36] = CreatePlayerTextDraw(playerid, 578.000, 271.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][36], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][36], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][36], -764862721);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][36], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][36], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][36], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][36], 1);

	TextDraw_Phone[playerid][37] = CreatePlayerTextDraw(playerid, 574.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][37], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][37], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][37], -764862721);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][37], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][37], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][37], 1);

	TextDraw_Phone[playerid][38] = CreatePlayerTextDraw(playerid, 586.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][38], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][38], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][38], -764862721);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][38], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][38], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][38], 1);

	TextDraw_Phone[playerid][39] = CreatePlayerTextDraw(playerid, 598.000, 271.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][39], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][39], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][39], 16744447);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][39], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][39], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][39], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][39], 1);

	TextDraw_Phone[playerid][40] = CreatePlayerTextDraw(playerid, 594.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][40], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][40], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][40], 16744447);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][40], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][40], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][40], 1);

	TextDraw_Phone[playerid][41] = CreatePlayerTextDraw(playerid, 606.000, 267.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][41], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][41], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][41], 16744447);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][41], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][41], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][41], 1);

	TextDraw_Phone[playerid][42] = CreatePlayerTextDraw(playerid, 538.000, 380.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][42], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][42], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][42], 16423679);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][42], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][42], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][42], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][42], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][42], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][42], 1);

	TextDraw_Phone[playerid][43] = CreatePlayerTextDraw(playerid, 534.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][43], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][43], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][43], 16423679);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][43], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][43], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][43], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][43], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][43], 1);

	TextDraw_Phone[playerid][44] = CreatePlayerTextDraw(playerid, 546.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][44], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][44], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][44], 16423679);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][44], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][44], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][44], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][44], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][44], 1);

	TextDraw_Phone[playerid][45] = CreatePlayerTextDraw(playerid, 558.000, 380.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][45], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][45], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][45], 512819199);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][45], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][45], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][45], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][45], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][45], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][45], 1);

	TextDraw_Phone[playerid][46] = CreatePlayerTextDraw(playerid, 554.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][46], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][46], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][46], 512819199);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][46], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][46], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][46], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][46], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][46], 1);

	TextDraw_Phone[playerid][47] = CreatePlayerTextDraw(playerid, 566.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][47], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][47], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][47], 512819199);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][47], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][47], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][47], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][47], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][47], 1);

	TextDraw_Phone[playerid][48] = CreatePlayerTextDraw(playerid, 578.000, 380.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][48], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][48], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][48], -12254977);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][48], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][48], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][48], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][48], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][48], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][48], 1);

	TextDraw_Phone[playerid][49] = CreatePlayerTextDraw(playerid, 574.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][49], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][49], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][49], -12254977);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][49], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][49], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][49], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][49], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][49], 1);

	TextDraw_Phone[playerid][50] = CreatePlayerTextDraw(playerid, 586.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][50], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][50], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][50], -12254977);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][50], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][50], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][50], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][50], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][50], 1);

	TextDraw_Phone[playerid][51] = CreatePlayerTextDraw(playerid, 598.000, 380.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][51], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][51], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][51], -9849601);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][51], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][51], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][51], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][51], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][51], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][51], 1);

	TextDraw_Phone[playerid][52] = CreatePlayerTextDraw(playerid, 594.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][52], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][52], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][52], -9849601);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][52], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][52], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][52], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][52], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][52], 1);

	TextDraw_Phone[playerid][53] = CreatePlayerTextDraw(playerid, 606.000, 376.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][53], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][53], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][53], -9849601);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][53], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][53], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][53], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][53], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][53], 1);

	TextDraw_Phone[playerid][54] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][54], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][54], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][54], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][54], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][54], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][54], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][54], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][54], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][54], 1);

	TextDraw_Phone[playerid][55] = CreatePlayerTextDraw(playerid, 543.000, 254.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][55], 1.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][55], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][55], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][55], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][55], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][55], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][55], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][55], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][55], 1);

	TextDraw_Phone[playerid][56] = CreatePlayerTextDraw(playerid, 541.000, 260.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][56], 5.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][56], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][56], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][56], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][56], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][56], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][56], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][56], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][56], 1);

	TextDraw_Phone[playerid][57] = CreatePlayerTextDraw(playerid, 541.000, 254.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][57], 2.000, 2.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][57], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][57], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][57], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][57], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][57], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][57], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][57], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][57], 1);

	TextDraw_Phone[playerid][58] = CreatePlayerTextDraw(playerid, 542.000, 250.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][58], 3.000, 4.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][58], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][58], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][58], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][58], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][58], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][58], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][58], 1);

	TextDraw_Phone[playerid][59] = CreatePlayerTextDraw(playerid, 558.000, 254.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][59], 7.000, -1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][59], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][59], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][59], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][59], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][59], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][59], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][59], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][59], 1);

	TextDraw_Phone[playerid][60] = CreatePlayerTextDraw(playerid, 564.000, 251.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][60], 6.000, 9.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][60], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][60], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][60], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][60], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][60], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][60], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][60], 1);

	TextDraw_Phone[playerid][61] = CreatePlayerTextDraw(playerid, 558.000, 255.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][61], 5.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][61], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][61], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][61], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][61], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][61], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][61], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][61], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][61], 1);

	TextDraw_Phone[playerid][62] = CreatePlayerTextDraw(playerid, 558.000, 257.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][62], 7.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][62], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][62], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][62], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][62], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][62], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][62], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][62], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][62], 1);

	TextDraw_Phone[playerid][63] = CreatePlayerTextDraw(playerid, 578.000, 256.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][63], 11.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][63], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][63], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][63], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][63], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][63], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][63], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][63], 1);

	TextDraw_Phone[playerid][64] = CreatePlayerTextDraw(playerid, 580.000, 250.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][64], 7.000, 9.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][64], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][64], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][64], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][64], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][64], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][64], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][64], 1);

	TextDraw_Phone[playerid][65] = CreatePlayerTextDraw(playerid, 602.000, 256.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][65], 6.000, 4.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][65], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][65], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][65], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][65], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][65], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][65], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][65], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][65], 1);

	TextDraw_Phone[playerid][66] = CreatePlayerTextDraw(playerid, 599.000, 253.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][66], 6.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][66], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][66], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][66], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][66], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][66], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][66], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][66], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][66], 1);

	TextDraw_Phone[playerid][67] = CreatePlayerTextDraw(playerid, 597.000, 257.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][67], 9.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][67], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][67], 16777215);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][67], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][67], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][67], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][67], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][67], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][67], 1);

	TextDraw_Phone[playerid][68] = CreatePlayerTextDraw(playerid, 605.000, 256.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][68], 1.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][68], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][68], 16777215);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][68], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][68], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][68], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][68], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][68], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][68], 1);

	TextDraw_Phone[playerid][69] = CreatePlayerTextDraw(playerid, 541.000, 274.000, "X");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][69], 0.200, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][69], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][69], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][69], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][69], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][69], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][69], 2);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][69], 1);

	TextDraw_Phone[playerid][70] = CreatePlayerTextDraw(playerid, 559.000, 276.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][70], 9.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][70], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][70], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][70], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][70], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][70], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][70], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][70], 1);

	TextDraw_Phone[playerid][71] = CreatePlayerTextDraw(playerid, 560.000, 277.000, "ad");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][71], 0.109, 0.598);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][71], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][71], -65281);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][71], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][71], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][71], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][71], 2);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][71], 1);

	TextDraw_Phone[playerid][72] = CreatePlayerTextDraw(playerid, 589.000, 276.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][72], -0.200, 0.499);
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][72], -15.000, 0.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][72], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][72], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][72], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][72], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][72], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][72], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][72], 1);

	TextDraw_Phone[playerid][73] = CreatePlayerTextDraw(playerid, 579.000, 276.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][73], 0.211, 0.499);
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][73], 34.000, 0.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][73], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][73], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][73], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][73], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][73], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][73], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][73], 1);

	TextDraw_Phone[playerid][74] = CreatePlayerTextDraw(playerid, 581.000, 276.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][74], 6.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][74], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][74], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][74], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][74], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][74], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][74], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][74], 1);

	TextDraw_Phone[playerid][75] = CreatePlayerTextDraw(playerid, 580.000, 281.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][75], 8.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][75], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][75], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][75], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][75], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][75], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][75], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][75], 1);

	TextDraw_Phone[playerid][76] = CreatePlayerTextDraw(playerid, 581.000, 282.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][76], 2.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][76], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][76], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][76], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][76], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][76], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][76], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][76], 1);

	TextDraw_Phone[playerid][77] = CreatePlayerTextDraw(playerid, 585.000, 282.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][77], 2.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][77], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][77], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][77], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][77], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][77], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][77], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][77], 1);

	TextDraw_Phone[playerid][78] = CreatePlayerTextDraw(playerid, 599.000, 277.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][78], 9.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][78], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][78], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][78], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][78], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][78], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][78], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][78], 1);

	TextDraw_Phone[playerid][79] = CreatePlayerTextDraw(playerid, 604.000, 278.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][79], 3.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][79], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][79], 16744447);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][79], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][79], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][79], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][79], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][79], 1);

	TextDraw_Phone[playerid][80] = CreatePlayerTextDraw(playerid, 545.000, 383.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][80], -0.340, 1.199);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][80], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][80], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][80], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][80], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][80], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][80], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][80], 1);

	TextDraw_Phone[playerid][81] = CreatePlayerTextDraw(playerid, 542.000, 385.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][81], 4.000, 2.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][81], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][81], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][81], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][81], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][81], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][81], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][81], 1);

	TextDraw_Phone[playerid][82] = CreatePlayerTextDraw(playerid, 544.000, 392.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][82], 4.000, 2.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][82], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][82], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][82], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][82], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][82], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][82], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][82], 1);

	TextDraw_Phone[playerid][83] = CreatePlayerTextDraw(playerid, 580.000, 384.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][83], 7.000, 10.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][83], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][83], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][83], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][83], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][83], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][83], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][83], 1);

	TextDraw_Phone[playerid][84] = CreatePlayerTextDraw(playerid, 581.000, 385.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][84], 5.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][84], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][84], -12254977);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][84], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][84], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][84], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][84], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][84], 1);

	TextDraw_Phone[playerid][85] = CreatePlayerTextDraw(playerid, 580.000, 389.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][85], 7.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][85], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][85], -12254977);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][85], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][85], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][85], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][85], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][85], 1);

	TextDraw_Phone[playerid][86] = CreatePlayerTextDraw(playerid, 600.000, 384.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][86], 7.000, 10.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][86], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][86], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][86], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][86], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][86], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][86], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][86], 1);

	TextDraw_Phone[playerid][87] = CreatePlayerTextDraw(playerid, 600.000, 385.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][87], 7.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][87], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][87], -9849601);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][87], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][87], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][87], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][87], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][87], 1);

	TextDraw_Phone[playerid][88] = CreatePlayerTextDraw(playerid, 602.000, 382.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][88], 1.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][88], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][88], -9849601);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][88], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][88], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][88], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][88], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][88], 1);

	TextDraw_Phone[playerid][89] = CreatePlayerTextDraw(playerid, 604.000, 391.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][89], 1.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][89], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][89], -9849601);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][89], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][89], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][89], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][89], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][89], 1);

	TextDraw_Phone[playerid][90] = CreatePlayerTextDraw(playerid, 558.000, 384.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][90], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][90], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][90], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][90], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][90], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][90], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][90], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][90], 1);

	TextDraw_Phone[playerid][91] = CreatePlayerTextDraw(playerid, 556.000, 388.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][91], 8.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][91], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][91], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][91], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][91], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][91], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][91], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][91], 1);

	TextDraw_Phone[playerid][92] = CreatePlayerTextDraw(playerid, 563.000, 388.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][92], 8.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][92], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][92], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][92], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][92], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][92], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][92], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][92], 1);

	TextDraw_Phone[playerid][93] = CreatePlayerTextDraw(playerid, 565.000, 384.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][93], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][93], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][93], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][93], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][93], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][93], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][93], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][93], 1);

	TextDraw_Phone[playerid][94] = CreatePlayerTextDraw(playerid, 538.000, 294.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][94], 12.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][94], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][94], 512819199);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][94], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][94], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][94], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][94], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][94], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Phone[playerid][94], 1);

	TextDraw_Phone[playerid][95] = CreatePlayerTextDraw(playerid, 534.000, 290.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][95], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][95], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][95], 512819199);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][95], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][95], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][95], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][95], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][95], 1);

	TextDraw_Phone[playerid][96] = CreatePlayerTextDraw(playerid, 546.000, 290.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Phone[playerid][96], 7.000, 26.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][96], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][96], 512819199);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][96], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][96], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][96], 255);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][96], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][96], 1);

	TextDraw_Phone[playerid][97] = CreatePlayerTextDraw(playerid, 541.000, 297.000, "H");
	PlayerTextDrawLetterSize(playerid, TextDraw_Phone[playerid][97], 0.200, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_Phone[playerid][97], 1);
	PlayerTextDrawColor(playerid, TextDraw_Phone[playerid][97], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Phone[playerid][97], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Phone[playerid][97], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Phone[playerid][97], 150);
	PlayerTextDrawFont(playerid, TextDraw_Phone[playerid][97], 2);
	PlayerTextDrawSetProportional(playerid, TextDraw_Phone[playerid][97], 1);

	TextDraw_PhoneInformation[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][0], 1);

	TextDraw_PhoneInformation[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][1], 1);

	TextDraw_PhoneInformation[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][2], 1);

	TextDraw_PhoneInformation[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][3], 1);

	TextDraw_PhoneInformation[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 190.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][4], 95.000, 218.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][4], 1);

	TextDraw_PhoneInformation[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][5], 80.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][5], 1);

	TextDraw_PhoneInformation[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][6], 1);

	TextDraw_PhoneInformation[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][7], 1);

	TextDraw_PhoneInformation[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][8], 1);

	TextDraw_PhoneInformation[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][9], 1);

	TextDraw_PhoneInformation[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][10], 1);

	TextDraw_PhoneInformation[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][11], 1);

	TextDraw_PhoneInformation[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][12], 1);

	TextDraw_PhoneInformation[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][13], 1);

	TextDraw_PhoneInformation[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][14], 1);

	TextDraw_PhoneInformation[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][15], 1);

	TextDraw_PhoneInformation[playerid][16] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][16], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][16], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneInformation[playerid][16], 1);

	TextDraw_PhoneInformation[playerid][17] = CreatePlayerTextDraw(playerid, 534.000, 184.000, "Details");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][17], 0.209, 1.398);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][17], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][17], 1);

	TextDraw_PhoneInformation[playerid][18] = CreatePlayerTextDraw(playerid, 534.000, 206.000, "Info");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][18], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][18], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][18], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][18], 1);

	TextDraw_PhoneInformation[playerid][19] = CreatePlayerTextDraw(playerid, 534.000, 216.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][19], 78.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][19], 70);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneInformation[playerid][19], 1);

	TextDraw_PhoneInformation[playerid][20] = CreatePlayerTextDraw(playerid, 534.000, 237.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][20], 78.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][20], 70);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][20], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneInformation[playerid][20], 1);

	TextDraw_PhoneInformation[playerid][21] = CreatePlayerTextDraw(playerid, 534.000, 258.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][21], 78.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][21], 70);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneInformation[playerid][21], 1);

	TextDraw_PhoneInformation[playerid][22] = CreatePlayerTextDraw(playerid, 534.000, 279.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][22], 78.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][22], 70);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneInformation[playerid][22], 1);

	TextDraw_PhoneInformation[playerid][23] = CreatePlayerTextDraw(playerid, 534.000, 304.000, "Jobs");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][23], 0.189, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][23], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][23], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][23], 1);

	TextDraw_PhoneInformation[playerid][24] = CreatePlayerTextDraw(playerid, 534.000, 316.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][24], 78.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][24], 70);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][24], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneInformation[playerid][24], 1);

	TextDraw_PhoneInformation[playerid][25] = CreatePlayerTextDraw(playerid, 534.000, 337.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneInformation[playerid][25], 78.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][25], 70);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneInformation[playerid][25], 1);

	TextDraw_PhoneInformation[playerid][26] = CreatePlayerTextDraw(playerid, 537.000, 219.000, "Wallet:");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][26], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][26], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][26], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][26], 1);

	TextDraw_PhoneInformation[playerid][27] = CreatePlayerTextDraw(playerid, 537.000, 240.000, "Bank_Balance:");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][27], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][27], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][27], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][27], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][27], 1);

	TextDraw_PhoneInformation[playerid][28] = CreatePlayerTextDraw(playerid, 537.000, 261.000, "Bank ID:");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][28], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][28], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][28], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][28], 1);

	TextDraw_PhoneInformation[playerid][29] = CreatePlayerTextDraw(playerid, 537.000, 282.000, "Number:");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][29], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][29], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][29], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][29], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][29], 1);

	TextDraw_PhoneInformation[playerid][30] = CreatePlayerTextDraw(playerid, 557.000, 319.000, "Unemployed");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][30], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][30], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][30], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][30], 1);

	TextDraw_PhoneInformation[playerid][31] = CreatePlayerTextDraw(playerid, 567.000, 340.000, "N/A");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][31], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][31], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][31], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][31], 1);

	TextDraw_PhoneInformation[playerid][32] = CreatePlayerTextDraw(playerid, 584.000, 219.000, "$40000");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][32], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][32], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][32], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][32], 1);

	TextDraw_PhoneInformation[playerid][33] = CreatePlayerTextDraw(playerid, 584.000, 240.000, "$100000");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][33], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][33], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][33], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][33], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][33], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][33], 1);

	TextDraw_PhoneInformation[playerid][34] = CreatePlayerTextDraw(playerid, 584.000, 261.000, "4852952");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][34], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][34], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][34], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][34], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][34], 1);

	TextDraw_PhoneInformation[playerid][35] = CreatePlayerTextDraw(playerid, 571.000, 282.000, "08173616746");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneInformation[playerid][35], 0.199, 0.998);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneInformation[playerid][35], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneInformation[playerid][35], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneInformation[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneInformation[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneInformation[playerid][35], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneInformation[playerid][35], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneInformation[playerid][35], 1);

	TextDraw_Contact[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][0], 1);

	TextDraw_Contact[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][1], 1);

	TextDraw_Contact[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][2], 1);

	TextDraw_Contact[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][3], 1);

	TextDraw_Contact[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 190.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][4], 95.000, 218.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][4], 1);

	TextDraw_Contact[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][5], 81.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][5], 1);

	TextDraw_Contact[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][6], 1);

	TextDraw_Contact[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][7], 1);

	TextDraw_Contact[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][8], 1);

	TextDraw_Contact[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][9], 1);

	TextDraw_Contact[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][10], 1);

	TextDraw_Contact[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][11], 1);

	TextDraw_Contact[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][12], 1);

	TextDraw_Contact[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][13], 1);

	TextDraw_Contact[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][14], 1);

	TextDraw_Contact[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][15], 1);

	TextDraw_Contact[playerid][16] = CreatePlayerTextDraw(playerid, 529.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][16], 89.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][16], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][16], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][16], 1);

	TextDraw_Contact[playerid][17] = CreatePlayerTextDraw(playerid, 539.000, 187.000, "Search");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][17], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][17], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][17], 1);

	TextDraw_Contact[playerid][18] = CreatePlayerTextDraw(playerid, 531.000, 186.000, "O");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][18], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][18], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][18], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][18], 1);

	TextDraw_Contact[playerid][19] = CreatePlayerTextDraw(playerid, 535.000, 190.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][19], -0.140, 0.398);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][19], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][19], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][19], 1);

	TextDraw_Contact[playerid][20] = CreatePlayerTextDraw(playerid, 607.000, 181.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][20], 4.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][20], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][20], 1);

	TextDraw_Contact[playerid][21] = CreatePlayerTextDraw(playerid, 606.000, 187.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][21], 6.000, 6.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][21], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][21], 1);

	TextDraw_Contact[playerid][22] = CreatePlayerTextDraw(playerid, 607.000, 190.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][22], 4.000, 2.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][22], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][22], 1);

	TextDraw_Contact[playerid][23] = CreatePlayerTextDraw(playerid, 611.000, 182.000, "+");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][23], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][23], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][23], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][23], 1);

	TextDraw_Contact[playerid][24] = CreatePlayerTextDraw(playerid, 603.000, 180.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][24], 12.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][24], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][24], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Contact[playerid][24], 1);

	TextDraw_Contact[playerid][25] = CreatePlayerTextDraw(playerid, 537.000, 186.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][25], 58.000, 10.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][25], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Contact[playerid][25], 1);

	TextDraw_Contact[playerid][26] = CreatePlayerTextDraw(playerid, 533.000, 396.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][26], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][26], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Contact[playerid][26], 1);

	TextDraw_Contact[playerid][27] = CreatePlayerTextDraw(playerid, 600.000, 395.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][27], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][27], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][27], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Contact[playerid][27], 1);

	TextDraw_Contact[playerid][28] = CreatePlayerTextDraw(playerid, 541.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][28], -0.200, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][28], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][28], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][28], 1);

	TextDraw_Contact[playerid][29] = CreatePlayerTextDraw(playerid, 540.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][29], 0.218, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][29], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][29], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][29], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][29], 1);

	TextDraw_Contact[playerid][30] = CreatePlayerTextDraw(playerid, 608.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][30], 0.238, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][30], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][30], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][30], 1);

	TextDraw_Contact[playerid][31] = CreatePlayerTextDraw(playerid, 609.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_Contact[playerid][31], -0.180, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][31], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][31], 150);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][31], 1);

	TextDraw_Contact[playerid][32] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_Contact[playerid][32], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_Contact[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_Contact[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_Contact[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_Contact[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_Contact[playerid][32], 255);
	PlayerTextDrawFont(playerid, TextDraw_Contact[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_Contact[playerid][32], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_Contact[playerid][32], 1);

	TextDraw_PhoneCallNumber[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][0], 1);

	TextDraw_PhoneCallNumber[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][1], 1);

	TextDraw_PhoneCallNumber[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][2], 1);

	TextDraw_PhoneCallNumber[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][3], 1);

	TextDraw_PhoneCallNumber[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 190.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][4], 95.000, 219.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][4], 1);

	TextDraw_PhoneCallNumber[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][5], 81.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][5], 1);

	TextDraw_PhoneCallNumber[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][6], 1);

	TextDraw_PhoneCallNumber[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][7], 1);

	TextDraw_PhoneCallNumber[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][8], 1);

	TextDraw_PhoneCallNumber[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][9], 1);

	TextDraw_PhoneCallNumber[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][10], 1);

	TextDraw_PhoneCallNumber[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][11], 1);

	TextDraw_PhoneCallNumber[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][12], 1);

	TextDraw_PhoneCallNumber[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][13], 1);

	TextDraw_PhoneCallNumber[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][14], 1);

	TextDraw_PhoneCallNumber[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][15], 1);

	TextDraw_PhoneCallNumber[playerid][16] = CreatePlayerTextDraw(playerid, 532.000, 257.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][16], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][16], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][16], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][16], 1);

	TextDraw_PhoneCallNumber[playerid][17] = CreatePlayerTextDraw(playerid, 563.000, 257.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][17], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][17], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][17], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][17], 1);

	TextDraw_PhoneCallNumber[playerid][18] = CreatePlayerTextDraw(playerid, 592.000, 257.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][18], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][18], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][18], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][18], 1);

	TextDraw_PhoneCallNumber[playerid][19] = CreatePlayerTextDraw(playerid, 532.000, 282.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][19], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][19], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][19], 1);

	TextDraw_PhoneCallNumber[playerid][20] = CreatePlayerTextDraw(playerid, 563.000, 282.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][20], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][20], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][20], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][20], 1);

	TextDraw_PhoneCallNumber[playerid][21] = CreatePlayerTextDraw(playerid, 592.000, 282.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][21], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][21], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][21], 1);

	TextDraw_PhoneCallNumber[playerid][22] = CreatePlayerTextDraw(playerid, 532.000, 308.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][22], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][22], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][22], 1);

	TextDraw_PhoneCallNumber[playerid][23] = CreatePlayerTextDraw(playerid, 563.000, 308.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][23], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][23], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][23], 1);

	TextDraw_PhoneCallNumber[playerid][24] = CreatePlayerTextDraw(playerid, 592.000, 308.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][24], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][24], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][24], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][24], 1);

	TextDraw_PhoneCallNumber[playerid][25] = CreatePlayerTextDraw(playerid, 532.000, 334.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][25], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][25], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][25], 1);

	TextDraw_PhoneCallNumber[playerid][26] = CreatePlayerTextDraw(playerid, 563.000, 334.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][26], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][26], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][26], 1);

	TextDraw_PhoneCallNumber[playerid][27] = CreatePlayerTextDraw(playerid, 592.000, 334.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][27], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][27], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][27], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][27], 1);

	TextDraw_PhoneCallNumber[playerid][28] = CreatePlayerTextDraw(playerid, 541.000, 265.000, "1");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][28], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][28], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][28], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][28], 1);

	TextDraw_PhoneCallNumber[playerid][29] = CreatePlayerTextDraw(playerid, 572.000, 265.000, "2");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][29], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][29], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][29], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][29], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][29], 1);

	TextDraw_PhoneCallNumber[playerid][30] = CreatePlayerTextDraw(playerid, 602.000, 265.000, "3");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][30], 0.230, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][30], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][30], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][30], 1);

	TextDraw_PhoneCallNumber[playerid][31] = CreatePlayerTextDraw(playerid, 541.000, 290.000, "4");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][31], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][31], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][31], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][31], 1);

	TextDraw_PhoneCallNumber[playerid][32] = CreatePlayerTextDraw(playerid, 572.000, 290.000, "5");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][32], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][32], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][32], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][32], 1);

	TextDraw_PhoneCallNumber[playerid][33] = CreatePlayerTextDraw(playerid, 602.000, 290.000, "6");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][33], 0.230, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][33], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][33], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][33], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][33], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][33], 1);

	TextDraw_PhoneCallNumber[playerid][34] = CreatePlayerTextDraw(playerid, 541.000, 316.000, "7");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][34], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][34], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][34], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][34], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][34], 1);

	TextDraw_PhoneCallNumber[playerid][35] = CreatePlayerTextDraw(playerid, 572.000, 316.000, "8");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][35], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][35], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][35], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][35], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][35], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][35], 1);

	TextDraw_PhoneCallNumber[playerid][36] = CreatePlayerTextDraw(playerid, 602.000, 316.000, "9");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][36], 0.230, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][36], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][36], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][36], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][36], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][36], 1);

	TextDraw_PhoneCallNumber[playerid][37] = CreatePlayerTextDraw(playerid, 541.000, 342.000, "#");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][37], 0.239, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][37], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][37], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][37], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][37], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][37], 1);

	TextDraw_PhoneCallNumber[playerid][38] = CreatePlayerTextDraw(playerid, 572.000, 342.000, "0");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][38], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][38], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][38], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][38], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][38], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][38], 1);

	TextDraw_PhoneCallNumber[playerid][39] = CreatePlayerTextDraw(playerid, 601.000, 342.000, "<");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][39], 0.230, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][39], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][39], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][39], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][39], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][39], 1);

	TextDraw_PhoneCallNumber[playerid][40] = CreatePlayerTextDraw(playerid, 575.000, 232.000, "0");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][40], 0.259, 1.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][40], 2);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][40], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][40], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][40], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][40], 1);

	TextDraw_PhoneCallNumber[playerid][41] = CreatePlayerTextDraw(playerid, 563.000, 362.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][41], 24.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][41], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][41], 16711781);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][41], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][41], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][41], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][41], 1);

	TextDraw_PhoneCallNumber[playerid][42] = CreatePlayerTextDraw(playerid, 572.000, 371.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][42], 6.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][42], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][42], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][42], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][42], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][42], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][42], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][42], 1);

	TextDraw_PhoneCallNumber[playerid][43] = CreatePlayerTextDraw(playerid, 572.000, 380.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][43], 6.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][43], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][43], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][43], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][43], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][43], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][43], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][43], 1);

	TextDraw_PhoneCallNumber[playerid][44] = CreatePlayerTextDraw(playerid, 571.000, 369.000, "(");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCallNumber[playerid][44], 0.279, 1.600);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][44], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][44], -156);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][44], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][44], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][44], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][44], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][44], 1);

	TextDraw_PhoneCallNumber[playerid][45] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCallNumber[playerid][45], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCallNumber[playerid][45], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCallNumber[playerid][45], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCallNumber[playerid][45], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCallNumber[playerid][45], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCallNumber[playerid][45], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCallNumber[playerid][45], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCallNumber[playerid][45], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCallNumber[playerid][45], 1);

	TextDraw_PhoneMessage[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][0], 1);

	TextDraw_PhoneMessage[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][1], 1);

	TextDraw_PhoneMessage[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][2], 1);

	TextDraw_PhoneMessage[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][3], 1);

	TextDraw_PhoneMessage[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 189.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][4], 95.000, 220.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][4], 1);

	TextDraw_PhoneMessage[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][5], 81.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][5], 1);

	TextDraw_PhoneMessage[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][6], 1);

	TextDraw_PhoneMessage[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][7], 1);

	TextDraw_PhoneMessage[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][8], 1);

	TextDraw_PhoneMessage[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][9], 1);

	TextDraw_PhoneMessage[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][10], 1);

	TextDraw_PhoneMessage[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][11], 1);

	TextDraw_PhoneMessage[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][12], 1);

	TextDraw_PhoneMessage[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][13], 1);

	TextDraw_PhoneMessage[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][14], 1);

	TextDraw_PhoneMessage[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][15], 1);

	TextDraw_PhoneMessage[playerid][16] = CreatePlayerTextDraw(playerid, 541.000, 183.000, "_");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneMessage[playerid][16], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][16], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][16], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][16], 1);

	TextDraw_PhoneMessage[playerid][17] = CreatePlayerTextDraw(playerid, 533.000, 185.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][17], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][17], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][17], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][17], 1);

	TextDraw_PhoneMessage[playerid][18] = CreatePlayerTextDraw(playerid, 532.000, 192.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][18], 6.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][18], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][18], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][18], 1);

	TextDraw_PhoneMessage[playerid][19] = CreatePlayerTextDraw(playerid, 529.000, 200.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][19], 89.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][19], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][19], 1);

	TextDraw_PhoneMessage[playerid][20] = CreatePlayerTextDraw(playerid, 612.000, 186.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneMessage[playerid][20], -0.158, 0.796);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][20], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][20], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][20], 1);

	TextDraw_PhoneMessage[playerid][21] = CreatePlayerTextDraw(playerid, 608.000, 184.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][21], 8.000, 11.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][21], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneMessage[playerid][21], 1);

	TextDraw_PhoneMessage[playerid][22] = CreatePlayerTextDraw(playerid, 609.000, 184.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][22], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][22], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][22], 1);

	TextDraw_PhoneMessage[playerid][23] = CreatePlayerTextDraw(playerid, 611.000, 190.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][23], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][23], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][23], 1);

	TextDraw_PhoneMessage[playerid][24] = CreatePlayerTextDraw(playerid, 541.000, 191.000, "1111111");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneMessage[playerid][24], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][24], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][24], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][24], 1);

	TextDraw_PhoneMessage[playerid][25] = CreatePlayerTextDraw(playerid, 529.000, 389.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][25], 75.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][25], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][25], 1);

	TextDraw_PhoneMessage[playerid][26] = CreatePlayerTextDraw(playerid, 530.000, 379.000, "Send Message...");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneMessage[playerid][26], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][26], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][26], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][26], 1);

	TextDraw_PhoneMessage[playerid][27] = CreatePlayerTextDraw(playerid, 529.000, 377.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][27], 75.000, 13.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][27], -256);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][27], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneMessage[playerid][27], 1);

	TextDraw_PhoneMessage[playerid][28] = CreatePlayerTextDraw(playerid, 609.000, 378.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][28], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][28], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][28], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][28], 1);

	TextDraw_PhoneMessage[playerid][29] = CreatePlayerTextDraw(playerid, 610.000, 381.000, "V");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneMessage[playerid][29], 0.178, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][29], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][29], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][29], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][29], 1);

	TextDraw_PhoneMessage[playerid][30] = CreatePlayerTextDraw(playerid, 610.000, 382.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][30], 4.000, 4.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][30], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][30], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][30], 1);

	TextDraw_PhoneMessage[playerid][31] = CreatePlayerTextDraw(playerid, 610.000, 380.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][31], 4.000, 4.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][31], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][31], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][31], 1);

	TextDraw_PhoneMessage[playerid][32] = CreatePlayerTextDraw(playerid, 610.000, 387.000, "0");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneMessage[playerid][32], 0.208, 0.298);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][32], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][32], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][32], 1);

	TextDraw_PhoneMessage[playerid][33] = CreatePlayerTextDraw(playerid, 606.000, 377.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][33], 12.000, 13.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][33], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][33], -256);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][33], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][33], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneMessage[playerid][33], 1);

	TextDraw_PhoneMessage[playerid][34] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneMessage[playerid][34], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneMessage[playerid][34], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneMessage[playerid][34], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneMessage[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneMessage[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneMessage[playerid][34], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneMessage[playerid][34], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneMessage[playerid][34], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneMessage[playerid][34], 1);

	TextDraw_PhoneListMessage[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][0], 1);

	TextDraw_PhoneListMessage[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][1], 1);

	TextDraw_PhoneListMessage[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][2], 1);

	TextDraw_PhoneListMessage[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][3], 1);

	TextDraw_PhoneListMessage[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 189.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][4], 95.000, 220.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][4], 1);

	TextDraw_PhoneListMessage[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][5], 82.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][5], 1);

	TextDraw_PhoneListMessage[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][6], 1);

	TextDraw_PhoneListMessage[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][7], 1);

	TextDraw_PhoneListMessage[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][8], 1);

	TextDraw_PhoneListMessage[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][9], 1);

	TextDraw_PhoneListMessage[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][10], 1);

	TextDraw_PhoneListMessage[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][11], 1);

	TextDraw_PhoneListMessage[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][12], 1);

	TextDraw_PhoneListMessage[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][13], 1);

	TextDraw_PhoneListMessage[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][14], 1);

	TextDraw_PhoneListMessage[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][15], 1);

	TextDraw_PhoneListMessage[playerid][16] = CreatePlayerTextDraw(playerid, 539.000, 187.000, "Search");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][16], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][16], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][16], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][16], 1);

	TextDraw_PhoneListMessage[playerid][17] = CreatePlayerTextDraw(playerid, 531.000, 186.000, "O");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][17], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][17], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][17], 1);

	TextDraw_PhoneListMessage[playerid][18] = CreatePlayerTextDraw(playerid, 535.000, 190.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][18], -0.140, 0.398);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][18], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][18], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][18], 1);

	TextDraw_PhoneListMessage[playerid][19] = CreatePlayerTextDraw(playerid, 529.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][19], 89.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][19], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][19], 1);

	TextDraw_PhoneListMessage[playerid][20] = CreatePlayerTextDraw(playerid, 610.000, 184.000, "+");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][20], 0.180, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][20], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][20], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][20], 1);

	TextDraw_PhoneListMessage[playerid][21] = CreatePlayerTextDraw(playerid, 608.000, 184.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][21], 8.000, 11.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][21], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneListMessage[playerid][21], 1);

	TextDraw_PhoneListMessage[playerid][22] = CreatePlayerTextDraw(playerid, 533.000, 396.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][22], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][22], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneListMessage[playerid][22], 1);

	TextDraw_PhoneListMessage[playerid][23] = CreatePlayerTextDraw(playerid, 600.000, 395.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][23], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][23], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneListMessage[playerid][23], 1);

	TextDraw_PhoneListMessage[playerid][24] = CreatePlayerTextDraw(playerid, 541.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][24], -0.200, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][24], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][24], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][24], 1);

	TextDraw_PhoneListMessage[playerid][25] = CreatePlayerTextDraw(playerid, 540.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][25], 0.218, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][25], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][25], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][25], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][25], 1);

	TextDraw_PhoneListMessage[playerid][26] = CreatePlayerTextDraw(playerid, 608.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][26], 0.238, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][26], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][26], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][26], 1);

	TextDraw_PhoneListMessage[playerid][27] = CreatePlayerTextDraw(playerid, 609.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneListMessage[playerid][27], -0.180, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][27], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][27], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][27], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][27], 1);

	TextDraw_PhoneListMessage[playerid][28] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneListMessage[playerid][28], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneListMessage[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneListMessage[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneListMessage[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneListMessage[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneListMessage[playerid][28], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneListMessage[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneListMessage[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneListMessage[playerid][28], 1);

	TextDraw_PhoneFactionList[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][0], 1);

	TextDraw_PhoneFactionList[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][1], 1);

	TextDraw_PhoneFactionList[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][2], 1);

	TextDraw_PhoneFactionList[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][3], 1);

	TextDraw_PhoneFactionList[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 188.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][4], 95.000, 222.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][4], 1);

	TextDraw_PhoneFactionList[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][5], 81.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][5], 1);

	TextDraw_PhoneFactionList[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][6], 1);

	TextDraw_PhoneFactionList[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][7], 1);

	TextDraw_PhoneFactionList[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][8], 1);

	TextDraw_PhoneFactionList[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][9], 1);

	TextDraw_PhoneFactionList[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][10], 1);

	TextDraw_PhoneFactionList[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][11], 1);

	TextDraw_PhoneFactionList[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][12], 1);

	TextDraw_PhoneFactionList[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][13], 1);

	TextDraw_PhoneFactionList[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][14], 1);

	TextDraw_PhoneFactionList[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][15], 1);

	TextDraw_PhoneFactionList[playerid][16] = CreatePlayerTextDraw(playerid, 534.000, 188.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][16], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][16], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][16], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][16], 1);

	TextDraw_PhoneFactionList[playerid][17] = CreatePlayerTextDraw(playerid, 534.000, 214.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][17], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][17], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][17], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][17], 1);

	TextDraw_PhoneFactionList[playerid][18] = CreatePlayerTextDraw(playerid, 537.000, 189.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][18], 73.000, 32.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][18], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][18], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][18], 1);

	TextDraw_PhoneFactionList[playerid][19] = CreatePlayerTextDraw(playerid, 607.000, 188.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][19], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][19], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][19], 1);

	TextDraw_PhoneFactionList[playerid][20] = CreatePlayerTextDraw(playerid, 607.000, 214.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][20], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][20], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][20], 1);

	TextDraw_PhoneFactionList[playerid][21] = CreatePlayerTextDraw(playerid, 535.000, 191.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][21], 77.000, 28.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][21], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][21], 1);

	TextDraw_PhoneFactionList[playerid][22] = CreatePlayerTextDraw(playerid, 538.000, 224.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][22], 70.000, 13.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][22], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneFactionList[playerid][22], 1);

	TextDraw_PhoneFactionList[playerid][23] = CreatePlayerTextDraw(playerid, 533.000, 221.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][23], 11.000, 19.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][23], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][23], 1);

	TextDraw_PhoneFactionList[playerid][24] = CreatePlayerTextDraw(playerid, 603.000, 221.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][24], 11.000, 19.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][24], 65535);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][24], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][24], 1);

	TextDraw_PhoneFactionList[playerid][25] = CreatePlayerTextDraw(playerid, 540.000, 195.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][25], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][25], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][25], 1);

	TextDraw_PhoneFactionList[playerid][26] = CreatePlayerTextDraw(playerid, 538.000, 203.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][26], 11.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][26], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][26], 1);

	TextDraw_PhoneFactionList[playerid][27] = CreatePlayerTextDraw(playerid, 540.000, 207.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][27], 7.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][27], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][27], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][27], 1);

	TextDraw_PhoneFactionList[playerid][28] = CreatePlayerTextDraw(playerid, 547.000, 194.000, "San Andreas Police Departement");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][28], 0.115, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][28], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][28], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][28], 1);

	TextDraw_PhoneFactionList[playerid][29] = CreatePlayerTextDraw(playerid, 573.000, 205.000, "10");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][29], 0.157, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][29], 2);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][29], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][29], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][29], 1);

	TextDraw_PhoneFactionList[playerid][30] = CreatePlayerTextDraw(playerid, 566.000, 226.000, "Hotline");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][30], 0.136, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][30], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][30], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][30], 1);

	TextDraw_PhoneFactionList[playerid][31] = CreatePlayerTextDraw(playerid, 534.000, 243.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][31], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][31], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][31], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][31], 1);

	TextDraw_PhoneFactionList[playerid][32] = CreatePlayerTextDraw(playerid, 534.000, 269.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][32], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][32], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][32], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][32], 1);

	TextDraw_PhoneFactionList[playerid][33] = CreatePlayerTextDraw(playerid, 537.000, 244.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][33], 73.000, 32.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][33], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][33], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][33], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][33], 1);

	TextDraw_PhoneFactionList[playerid][34] = CreatePlayerTextDraw(playerid, 607.000, 243.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][34], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][34], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][34], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][34], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][34], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][34], 1);

	TextDraw_PhoneFactionList[playerid][35] = CreatePlayerTextDraw(playerid, 607.000, 269.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][35], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][35], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][35], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][35], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][35], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][35], 1);

	TextDraw_PhoneFactionList[playerid][36] = CreatePlayerTextDraw(playerid, 535.000, 246.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][36], 77.000, 28.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][36], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][36], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][36], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][36], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][36], 1);

	TextDraw_PhoneFactionList[playerid][37] = CreatePlayerTextDraw(playerid, 538.000, 279.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][37], 71.000, 13.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][37], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][37], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][37], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][37], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][37], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][37], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneFactionList[playerid][37], 1);

	TextDraw_PhoneFactionList[playerid][38] = CreatePlayerTextDraw(playerid, 533.000, 276.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][38], 11.000, 19.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][38], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][38], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][38], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][38], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][38], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][38], 1);

	TextDraw_PhoneFactionList[playerid][39] = CreatePlayerTextDraw(playerid, 603.000, 276.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][39], 11.000, 19.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][39], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][39], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][39], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][39], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][39], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][39], 1);

	TextDraw_PhoneFactionList[playerid][40] = CreatePlayerTextDraw(playerid, 540.000, 250.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][40], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][40], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][40], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][40], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][40], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][40], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][40], 1);

	TextDraw_PhoneFactionList[playerid][41] = CreatePlayerTextDraw(playerid, 538.000, 258.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][41], 11.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][41], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][41], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][41], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][41], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][41], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][41], 1);

	TextDraw_PhoneFactionList[playerid][42] = CreatePlayerTextDraw(playerid, 540.000, 262.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][42], 7.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][42], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][42], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][42], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][42], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][42], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][42], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][42], 1);

	TextDraw_PhoneFactionList[playerid][43] = CreatePlayerTextDraw(playerid, 547.000, 249.000, "Los Santos Medical Departement");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][43], 0.115, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][43], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][43], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][43], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][43], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][43], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][43], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][43], 1);

	TextDraw_PhoneFactionList[playerid][44] = CreatePlayerTextDraw(playerid, 573.000, 260.000, "10");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][44], 0.157, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][44], 2);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][44], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][44], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][44], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][44], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][44], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][44], 1);

	TextDraw_PhoneFactionList[playerid][45] = CreatePlayerTextDraw(playerid, 566.000, 281.000, "Hotline");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][45], 0.136, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][45], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][45], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][45], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][45], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][45], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][45], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][45], 1);

	TextDraw_PhoneFactionList[playerid][46] = CreatePlayerTextDraw(playerid, 534.000, 297.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][46], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][46], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][46], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][46], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][46], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][46], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][46], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][46], 1);

	TextDraw_PhoneFactionList[playerid][47] = CreatePlayerTextDraw(playerid, 534.000, 323.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][47], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][47], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][47], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][47], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][47], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][47], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][47], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][47], 1);

	TextDraw_PhoneFactionList[playerid][48] = CreatePlayerTextDraw(playerid, 537.000, 298.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][48], 73.000, 32.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][48], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][48], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][48], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][48], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][48], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][48], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][48], 1);

	TextDraw_PhoneFactionList[playerid][49] = CreatePlayerTextDraw(playerid, 607.000, 297.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][49], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][49], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][49], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][49], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][49], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][49], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][49], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][49], 1);

	TextDraw_PhoneFactionList[playerid][50] = CreatePlayerTextDraw(playerid, 607.000, 323.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][50], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][50], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][50], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][50], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][50], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][50], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][50], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][50], 1);

	TextDraw_PhoneFactionList[playerid][51] = CreatePlayerTextDraw(playerid, 535.000, 300.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][51], 77.000, 28.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][51], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][51], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][51], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][51], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][51], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][51], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][51], 1);

	TextDraw_PhoneFactionList[playerid][52] = CreatePlayerTextDraw(playerid, 538.000, 333.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][52], 72.000, 13.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][52], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][52], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][52], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][52], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][52], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][52], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][52], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneFactionList[playerid][52], 1);

	TextDraw_PhoneFactionList[playerid][53] = CreatePlayerTextDraw(playerid, 533.000, 330.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][53], 11.000, 19.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][53], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][53], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][53], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][53], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][53], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][53], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][53], 1);

	TextDraw_PhoneFactionList[playerid][54] = CreatePlayerTextDraw(playerid, 604.000, 330.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][54], 11.000, 19.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][54], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][54], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][54], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][54], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][54], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][54], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][54], 1);

	TextDraw_PhoneFactionList[playerid][55] = CreatePlayerTextDraw(playerid, 540.000, 304.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][55], 6.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][55], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][55], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][55], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][55], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][55], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][55], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][55], 1);

	TextDraw_PhoneFactionList[playerid][56] = CreatePlayerTextDraw(playerid, 538.000, 312.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][56], 11.000, 8.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][56], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][56], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][56], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][56], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][56], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][56], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][56], 1);

	TextDraw_PhoneFactionList[playerid][57] = CreatePlayerTextDraw(playerid, 540.000, 316.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][57], 7.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][57], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][57], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][57], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][57], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][57], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][57], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][57], 1);

	TextDraw_PhoneFactionList[playerid][58] = CreatePlayerTextDraw(playerid, 549.000, 303.000, "Bennys Original Motorworks");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][58], 0.115, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][58], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][58], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][58], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][58], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][58], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][58], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][58], 1);

	TextDraw_PhoneFactionList[playerid][59] = CreatePlayerTextDraw(playerid, 573.000, 314.000, "10");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][59], 0.157, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][59], 2);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][59], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][59], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][59], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][59], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][59], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][59], 1);

	TextDraw_PhoneFactionList[playerid][60] = CreatePlayerTextDraw(playerid, 566.000, 335.000, "Hotline");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneFactionList[playerid][60], 0.136, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][60], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][60], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][60], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][60], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][60], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][60], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][60], 1);

	TextDraw_PhoneFactionList[playerid][61] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneFactionList[playerid][61], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneFactionList[playerid][61], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneFactionList[playerid][61], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneFactionList[playerid][61], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneFactionList[playerid][61], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneFactionList[playerid][61], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneFactionList[playerid][61], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneFactionList[playerid][61], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneFactionList[playerid][61], 1);
    
	TextDraw_PhoneTaxi[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][0], 1);

	TextDraw_PhoneTaxi[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][1], 1);

	TextDraw_PhoneTaxi[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][2], 1);

	TextDraw_PhoneTaxi[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][3], 1);

	TextDraw_PhoneTaxi[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 188.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][4], 95.000, 221.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][4], 1);

	TextDraw_PhoneTaxi[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][5], 82.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][5], 1);

	TextDraw_PhoneTaxi[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][6], 1);

	TextDraw_PhoneTaxi[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][7], 1);

	TextDraw_PhoneTaxi[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][8], 1);

	TextDraw_PhoneTaxi[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][9], 1);

	TextDraw_PhoneTaxi[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][10], 1);

	TextDraw_PhoneTaxi[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][11], 1);

	TextDraw_PhoneTaxi[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][12], 1);

	TextDraw_PhoneTaxi[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][13], 1);

	TextDraw_PhoneTaxi[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][14], 1);

	TextDraw_PhoneTaxi[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][15], 1);

	TextDraw_PhoneTaxi[playerid][16] = CreatePlayerTextDraw(playerid, 545.000, 333.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][16], 59.000, 12.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][16], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][16], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneTaxi[playerid][16], 1);

	TextDraw_PhoneTaxi[playerid][17] = CreatePlayerTextDraw(playerid, 536.000, 330.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][17], 17.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][17], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][17], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][17], 1);

	TextDraw_PhoneTaxi[playerid][18] = CreatePlayerTextDraw(playerid, 596.000, 330.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][18], 17.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][18], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][18], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][18], 1);

	TextDraw_PhoneTaxi[playerid][19] = CreatePlayerTextDraw(playerid, 562.000, 334.000, "Order Taxi");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTaxi[playerid][19], 0.150, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][19], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][19], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][19], 1);

	TextDraw_PhoneTaxi[playerid][20] = CreatePlayerTextDraw(playerid, 540.000, 196.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][20], 67.000, 72.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][20], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][20], 1);

	TextDraw_PhoneTaxi[playerid][21] = CreatePlayerTextDraw(playerid, 533.000, 193.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][21], 17.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][21], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][21], 1);

	TextDraw_PhoneTaxi[playerid][22] = CreatePlayerTextDraw(playerid, 598.000, 193.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][22], 17.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][22], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][22], 1);

	TextDraw_PhoneTaxi[playerid][23] = CreatePlayerTextDraw(playerid, 598.000, 253.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][23], 17.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][23], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][23], 1);

	TextDraw_PhoneTaxi[playerid][24] = CreatePlayerTextDraw(playerid, 533.000, 253.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][24], 17.000, 18.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][24], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][24], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][24], 1);

	TextDraw_PhoneTaxi[playerid][25] = CreatePlayerTextDraw(playerid, 536.000, 199.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][25], 76.000, 65.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][25], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][25], 1);

	TextDraw_PhoneTaxi[playerid][26] = CreatePlayerTextDraw(playerid, 540.000, 198.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][26], 9.000, 12.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][26], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][26], 1);

	TextDraw_PhoneTaxi[playerid][27] = CreatePlayerTextDraw(playerid, 538.000, 208.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][27], 13.000, 12.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][27], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][27], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][27], 1);

	TextDraw_PhoneTaxi[playerid][28] = CreatePlayerTextDraw(playerid, 540.000, 230.000, "Temukan taksi Anda dalam hitungan detik! Pesan sekarang dan nikmati perjalanan yang nyaman dengan layanan kami.");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTaxi[playerid][28], 0.119, 0.999);
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][28], 611.000, -488.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][28], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][28], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][28], 1);

	TextDraw_PhoneTaxi[playerid][29] = CreatePlayerTextDraw(playerid, 552.000, 209.000, "Hai, Guest!");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTaxi[playerid][29], 0.119, 0.999);
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][29], 611.000, -488.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][29], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][29], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][29], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][29], 1);

	TextDraw_PhoneTaxi[playerid][30] = CreatePlayerTextDraw(playerid, 540.000, 213.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][30], 9.000, 5.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][30], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][30], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][30], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][30], 1);

	TextDraw_PhoneTaxi[playerid][31] = CreatePlayerTextDraw(playerid, 545.000, 308.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][31], 59.000, 19.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][31], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][31], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][31], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][31], 1);

	TextDraw_PhoneTaxi[playerid][32] = CreatePlayerTextDraw(playerid, 536.000, 303.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][32], 17.000, 29.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][32], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][32], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][32], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][32], 1);

	TextDraw_PhoneTaxi[playerid][33] = CreatePlayerTextDraw(playerid, 596.000, 303.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][33], 17.000, 29.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][33], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][33], -2686721);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][33], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][33], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][33], 1);

	TextDraw_PhoneTaxi[playerid][34] = CreatePlayerTextDraw(playerid, 554.000, 308.000, "Taxi Driver Online");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTaxi[playerid][34], 0.140, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][34], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][34], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][34], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][34], 1);

	TextDraw_PhoneTaxi[playerid][35] = CreatePlayerTextDraw(playerid, 572.000, 317.000, "10");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTaxi[playerid][35], 0.140, 0.999);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][35], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][35], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][35], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][35], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][35], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][35], 1);

	TextDraw_PhoneTaxi[playerid][36] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTaxi[playerid][36], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTaxi[playerid][36], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTaxi[playerid][36], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTaxi[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTaxi[playerid][36], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTaxi[playerid][36], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTaxi[playerid][36], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTaxi[playerid][36], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneTaxi[playerid][36], 1);

	TextDraw_PhoneBank[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][0], 1);

	TextDraw_PhoneBank[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][1], 1);

	TextDraw_PhoneBank[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][2], 1);

	TextDraw_PhoneBank[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][3], 1);

	TextDraw_PhoneBank[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 186.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][4], 95.000, 223.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][4], 1);

	TextDraw_PhoneBank[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][5], 82.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][5], 1);

	TextDraw_PhoneBank[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][6], 1);

	TextDraw_PhoneBank[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][7], 1);

	TextDraw_PhoneBank[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][8], 1);

	TextDraw_PhoneBank[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][9], 1);

	TextDraw_PhoneBank[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][10], 1);

	TextDraw_PhoneBank[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][11], 1);

	TextDraw_PhoneBank[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][12], 1);

	TextDraw_PhoneBank[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][13], 1);

	TextDraw_PhoneBank[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][14], 1);

	TextDraw_PhoneBank[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][15], 1);

	TextDraw_PhoneBank[playerid][16] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][16], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][16], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneBank[playerid][16], 1);

	TextDraw_PhoneBank[playerid][17] = CreatePlayerTextDraw(playerid, 534.000, 191.000, "~w~Fl~g~ee~w~ca Bank");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][17], 0.180, 1.399);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][17], 1);

	TextDraw_PhoneBank[playerid][18] = CreatePlayerTextDraw(playerid, 534.000, 204.000, "Transfer money with ease.");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][18], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][18], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][18], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][18], 1);

	TextDraw_PhoneBank[playerid][19] = CreatePlayerTextDraw(playerid, 534.000, 221.000, "My Total Balance");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][19], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][19], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][19], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][19], 1);

	TextDraw_PhoneBank[playerid][20] = CreatePlayerTextDraw(playerid, 534.000, 230.000, "$10000");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][20], 0.158, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][20], 6553855);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][20], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][20], 1);

	TextDraw_PhoneBank[playerid][21] = CreatePlayerTextDraw(playerid, 534.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][21], 79.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][21], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][21], 1);

	TextDraw_PhoneBank[playerid][22] = CreatePlayerTextDraw(playerid, 557.000, 252.000, "Sending Money From");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][22], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][22], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][22], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][22], 1);

	TextDraw_PhoneBank[playerid][23] = CreatePlayerTextDraw(playerid, 540.000, 259.000, "Please, re check all info you put-in boxes");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][23], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][23], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][23], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][23], 1);

	TextDraw_PhoneBank[playerid][24] = CreatePlayerTextDraw(playerid, 540.000, 266.000, "Inside");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][24], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][24], 1768516095);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][24], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][24], 1);

	TextDraw_PhoneBank[playerid][25] = CreatePlayerTextDraw(playerid, 534.000, 281.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][25], 79.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][25], 1018393087);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][25], 1);

	TextDraw_PhoneBank[playerid][26] = CreatePlayerTextDraw(playerid, 534.000, 296.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][26], 79.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][26], 1018393087);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneBank[playerid][26], 1);

	TextDraw_PhoneBank[playerid][27] = CreatePlayerTextDraw(playerid, 534.000, 313.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][27], 79.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][27], 1018393087);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][27], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][27], 1);

	TextDraw_PhoneBank[playerid][28] = CreatePlayerTextDraw(playerid, 534.000, 328.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneBank[playerid][28], 79.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][28], 1018393087);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][28], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneBank[playerid][28], 1);

	TextDraw_PhoneBank[playerid][29] = CreatePlayerTextDraw(playerid, 538.000, 284.000, "Bank Rekening:");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][29], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][29], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][29], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][29], 1);

	TextDraw_PhoneBank[playerid][30] = CreatePlayerTextDraw(playerid, 567.000, 298.000, "Transfer");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][30], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][30], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][30], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][30], 1);

	TextDraw_PhoneBank[playerid][31] = CreatePlayerTextDraw(playerid, 540.000, 316.000, "Paycheck:");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][31], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][31], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][31], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][31], 1);

	TextDraw_PhoneBank[playerid][32] = CreatePlayerTextDraw(playerid, 569.000, 330.000, "Invoice");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][32], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][32], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][32], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][32], 1);

	TextDraw_PhoneBank[playerid][33] = CreatePlayerTextDraw(playerid, 599.000, 316.000, "10000");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][33], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][33], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][33], 6553855);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][33], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][33], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][33], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][33], 1);

	TextDraw_PhoneBank[playerid][34] = CreatePlayerTextDraw(playerid, 591.000, 284.000, "374283728");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneBank[playerid][34], 0.119, 0.898);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneBank[playerid][34], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneBank[playerid][34], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneBank[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneBank[playerid][34], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneBank[playerid][34], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneBank[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneBank[playerid][34], 1);

	TextDraw_PhoneVehicle[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][0], 1);

	TextDraw_PhoneVehicle[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][1], 1);

	TextDraw_PhoneVehicle[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][2], 1);

	TextDraw_PhoneVehicle[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][3], 1);

	TextDraw_PhoneVehicle[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 189.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][4], 95.000, 220.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][4], 1);

	TextDraw_PhoneVehicle[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][5], 82.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][5], 1);

	TextDraw_PhoneVehicle[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][6], 1);

	TextDraw_PhoneVehicle[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][7], 1);

	TextDraw_PhoneVehicle[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][8], 1);

	TextDraw_PhoneVehicle[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][9], 1);

	TextDraw_PhoneVehicle[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][10], 1);

	TextDraw_PhoneVehicle[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][11], 1);

	TextDraw_PhoneVehicle[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][12], 1);

	TextDraw_PhoneVehicle[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][13], 1);

	TextDraw_PhoneVehicle[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][14], 1);

	TextDraw_PhoneVehicle[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][15], 1);

	TextDraw_PhoneVehicle[playerid][16] = CreatePlayerTextDraw(playerid, 537.000, 187.000, "Search");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneVehicle[playerid][16], 0.148, 0.699);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][16], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][16], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][16], 1);

	TextDraw_PhoneVehicle[playerid][17] = CreatePlayerTextDraw(playerid, 531.000, 186.000, "O");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneVehicle[playerid][17], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][17], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][17], 1);

	TextDraw_PhoneVehicle[playerid][18] = CreatePlayerTextDraw(playerid, 535.000, 190.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneVehicle[playerid][18], -0.140, 0.398);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][18], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][18], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][18], 1);

	TextDraw_PhoneVehicle[playerid][19] = CreatePlayerTextDraw(playerid, 529.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][19], 89.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][19], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][19], 1);

	TextDraw_PhoneVehicle[playerid][20] = CreatePlayerTextDraw(playerid, 533.000, 396.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][20], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][20], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][20], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneVehicle[playerid][20], 1);

	TextDraw_PhoneVehicle[playerid][21] = CreatePlayerTextDraw(playerid, 600.000, 395.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][21], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][21], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneVehicle[playerid][21], 1);

	TextDraw_PhoneVehicle[playerid][22] = CreatePlayerTextDraw(playerid, 541.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneVehicle[playerid][22], -0.200, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][22], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][22], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][22], 1);

	TextDraw_PhoneVehicle[playerid][23] = CreatePlayerTextDraw(playerid, 540.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneVehicle[playerid][23], 0.220, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][23], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][23], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][23], 1);

	TextDraw_PhoneVehicle[playerid][24] = CreatePlayerTextDraw(playerid, 608.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneVehicle[playerid][24], 0.240, -0.501);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][24], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][24], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][24], 1);

	TextDraw_PhoneVehicle[playerid][25] = CreatePlayerTextDraw(playerid, 609.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneVehicle[playerid][25], -0.180, -0.501);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][25], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][25], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][25], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][25], 1);

	TextDraw_PhoneVehicle[playerid][26] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneVehicle[playerid][26], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneVehicle[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneVehicle[playerid][26], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneVehicle[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneVehicle[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneVehicle[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneVehicle[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneVehicle[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneVehicle[playerid][26], 1);

	TextDraw_PhoneYellowpage[playerid][0] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][0], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][0], 1);

	TextDraw_PhoneYellowpage[playerid][1] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][1], 1);

	TextDraw_PhoneYellowpage[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][2], 1);

	TextDraw_PhoneYellowpage[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][3], 1);

	TextDraw_PhoneYellowpage[playerid][4] = CreatePlayerTextDraw(playerid, 526.000, 189.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][4], 95.000, 220.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][4], 1);

	TextDraw_PhoneYellowpage[playerid][5] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][5], 81.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][5], 1);

	TextDraw_PhoneYellowpage[playerid][6] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][6], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][6], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][6], 1);

	TextDraw_PhoneYellowpage[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][7], 1);

	TextDraw_PhoneYellowpage[playerid][8] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][8], 1);

	TextDraw_PhoneYellowpage[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][9], 1);

	TextDraw_PhoneYellowpage[playerid][10] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][10], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][10], 1);

	TextDraw_PhoneYellowpage[playerid][11] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][11], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][11], 1);

	TextDraw_PhoneYellowpage[playerid][12] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][12], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][12], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][12], 1);

	TextDraw_PhoneYellowpage[playerid][13] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][13], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][13], 1);

	TextDraw_PhoneYellowpage[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][14], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][14], 1);

	TextDraw_PhoneYellowpage[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][15], 1);

	TextDraw_PhoneYellowpage[playerid][16] = CreatePlayerTextDraw(playerid, 539.000, 187.000, "Search");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][16], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][16], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][16], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][16], 1);

	TextDraw_PhoneYellowpage[playerid][17] = CreatePlayerTextDraw(playerid, 531.000, 186.000, "O");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][17], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][17], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][17], 1);

	TextDraw_PhoneYellowpage[playerid][18] = CreatePlayerTextDraw(playerid, 535.000, 190.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][18], -0.140, 0.398);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][18], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][18], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][18], 1);

	TextDraw_PhoneYellowpage[playerid][19] = CreatePlayerTextDraw(playerid, 529.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][19], 89.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][19], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][19], 1);

	TextDraw_PhoneYellowpage[playerid][20] = CreatePlayerTextDraw(playerid, 610.000, 184.000, "+");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][20], 0.180, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][20], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][20], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][20], 1);

	TextDraw_PhoneYellowpage[playerid][21] = CreatePlayerTextDraw(playerid, 608.000, 184.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][21], 8.000, 11.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][21], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneYellowpage[playerid][21], 1);

	TextDraw_PhoneYellowpage[playerid][22] = CreatePlayerTextDraw(playerid, 533.000, 396.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][22], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][22], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneYellowpage[playerid][22], 1);

	TextDraw_PhoneYellowpage[playerid][23] = CreatePlayerTextDraw(playerid, 600.000, 395.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][23], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][23], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneYellowpage[playerid][23], 1);

	TextDraw_PhoneYellowpage[playerid][24] = CreatePlayerTextDraw(playerid, 541.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][24], -0.200, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][24], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][24], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][24], 1);

	TextDraw_PhoneYellowpage[playerid][25] = CreatePlayerTextDraw(playerid, 540.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][25], 0.219, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][25], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][25], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][25], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][25], 1);

	TextDraw_PhoneYellowpage[playerid][26] = CreatePlayerTextDraw(playerid, 608.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][26], 0.239, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][26], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][26], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][26], 1);

	TextDraw_PhoneYellowpage[playerid][27] = CreatePlayerTextDraw(playerid, 609.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneYellowpage[playerid][27], -0.180, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][27], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][27], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][27], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][27], 1);

	TextDraw_PhoneYellowpage[playerid][28] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneYellowpage[playerid][28], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneYellowpage[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneYellowpage[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneYellowpage[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneYellowpage[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneYellowpage[playerid][28], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneYellowpage[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneYellowpage[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneYellowpage[playerid][28], 1);

	TextDraw_PhoneTwitter[playerid][0] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][0], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][0], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][0], 1);

	TextDraw_PhoneTwitter[playerid][1] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][1], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][1], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][1], 1);

	TextDraw_PhoneTwitter[playerid][2] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][2], 1);

	TextDraw_PhoneTwitter[playerid][3] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][3], 1);

	TextDraw_PhoneTwitter[playerid][4] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][4], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][4], 1);

	TextDraw_PhoneTwitter[playerid][5] = CreatePlayerTextDraw(playerid, 526.000, 189.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][5], 95.000, 220.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][5], 1);

	TextDraw_PhoneTwitter[playerid][6] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][6], 81.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][6], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][6], 1);

	TextDraw_PhoneTwitter[playerid][7] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][7], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][7], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][7], 1);

	TextDraw_PhoneTwitter[playerid][8] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][8], 1);

	TextDraw_PhoneTwitter[playerid][9] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][9], 1);

	TextDraw_PhoneTwitter[playerid][10] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][10], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][10], 1);

	TextDraw_PhoneTwitter[playerid][11] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][11], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][11], 1);

	TextDraw_PhoneTwitter[playerid][12] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][12], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][12], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][12], 1);

	TextDraw_PhoneTwitter[playerid][13] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][13], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][13], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][13], 1);

	TextDraw_PhoneTwitter[playerid][14] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][14], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][14], 1);

	TextDraw_PhoneTwitter[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][15], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][15], 1);

	TextDraw_PhoneTwitter[playerid][16] = CreatePlayerTextDraw(playerid, 539.000, 187.000, "Search");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][16], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][16], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][16], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][16], 1);

	TextDraw_PhoneTwitter[playerid][17] = CreatePlayerTextDraw(playerid, 531.000, 186.000, "O");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][17], 0.150, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][17], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][17], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][17], 1);

	TextDraw_PhoneTwitter[playerid][18] = CreatePlayerTextDraw(playerid, 535.000, 190.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][18], -0.140, 0.398);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][18], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][18], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][18], 1);

	TextDraw_PhoneTwitter[playerid][19] = CreatePlayerTextDraw(playerid, 529.000, 197.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][19], 89.000, 1.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][19], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][19], 1);

	TextDraw_PhoneTwitter[playerid][20] = CreatePlayerTextDraw(playerid, 610.000, 184.000, "+");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][20], 0.180, 1.098);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][20], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][20], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][20], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][20], 1);

	TextDraw_PhoneTwitter[playerid][21] = CreatePlayerTextDraw(playerid, 608.000, 184.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][21], 8.000, 11.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][21], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneTwitter[playerid][21], 1);

	TextDraw_PhoneTwitter[playerid][22] = CreatePlayerTextDraw(playerid, 533.000, 396.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][22], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][22], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][22], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][22], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneTwitter[playerid][22], 1);

	TextDraw_PhoneTwitter[playerid][23] = CreatePlayerTextDraw(playerid, 600.000, 395.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][23], 17.000, 17.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][23], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][23], 0);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][23], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneTwitter[playerid][23], 1);

	TextDraw_PhoneTwitter[playerid][24] = CreatePlayerTextDraw(playerid, 541.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][24], -0.200, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][24], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][24], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][24], 1);

	TextDraw_PhoneTwitter[playerid][25] = CreatePlayerTextDraw(playerid, 540.000, 402.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][25], 0.218, 0.497);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][25], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][25], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][25], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][25], 1);

	TextDraw_PhoneTwitter[playerid][26] = CreatePlayerTextDraw(playerid, 608.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][26], 0.238, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][26], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][26], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][26], 1);

	TextDraw_PhoneTwitter[playerid][27] = CreatePlayerTextDraw(playerid, 609.000, 407.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneTwitter[playerid][27], -0.180, -0.500);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][27], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][27], -56);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][27], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][27], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][27], 1);

	TextDraw_PhoneTwitter[playerid][28] = CreatePlayerTextDraw(playerid, 553.000, 410.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneTwitter[playerid][28], 44.000, 3.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneTwitter[playerid][28], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneTwitter[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneTwitter[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneTwitter[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneTwitter[playerid][28], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneTwitter[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneTwitter[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneTwitter[playerid][28], 1);

	TextDraw_PhoneCall[playerid][0] = CreatePlayerTextDraw(playerid, 558.000, 178.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCall[playerid][0], -0.209, 0.499);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][0], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][0], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][0], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][0], 1);

	TextDraw_PhoneCall[playerid][1] = CreatePlayerTextDraw(playerid, 589.000, 178.000, "/");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCall[playerid][1], 0.188, 0.499);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][1], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][1], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][1], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][1], 1);

	TextDraw_PhoneCall[playerid][2] = CreatePlayerTextDraw(playerid, 522.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][2], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][2], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][2], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][2], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][2], 1);

	TextDraw_PhoneCall[playerid][3] = CreatePlayerTextDraw(playerid, 601.000, 171.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][3], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][3], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][3], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][3], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][3], 1);

	TextDraw_PhoneCall[playerid][4] = CreatePlayerTextDraw(playerid, 522.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][4], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][4], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][4], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][4], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][4], 1);

	TextDraw_PhoneCall[playerid][5] = CreatePlayerTextDraw(playerid, 601.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][5], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][5], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][5], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][5], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][5], 1);

	TextDraw_PhoneCall[playerid][6] = CreatePlayerTextDraw(playerid, 526.000, 192.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][6], 95.000, 215.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][6], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][6], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][6], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][6], 1);

	TextDraw_PhoneCall[playerid][7] = CreatePlayerTextDraw(playerid, 532.000, 177.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][7], 79.000, 243.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][7], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][7], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][7], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][7], 1);

	TextDraw_PhoneCall[playerid][8] = CreatePlayerTextDraw(playerid, 523.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][8], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][8], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][8], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][8], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][8], 1);

	TextDraw_PhoneCall[playerid][9] = CreatePlayerTextDraw(playerid, 523.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][9], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][9], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][9], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][9], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][9], 1);

	TextDraw_PhoneCall[playerid][10] = CreatePlayerTextDraw(playerid, 600.000, 390.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][10], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][10], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][10], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][10], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][10], 1);

	TextDraw_PhoneCall[playerid][11] = CreatePlayerTextDraw(playerid, 600.000, 173.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][11], 24.000, 35.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][11], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][11], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][11], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][11], 1);

	TextDraw_PhoneCall[playerid][12] = CreatePlayerTextDraw(playerid, 527.000, 194.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][12], 92.500, 210.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][12], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][12], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][12], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][12], 1);

	TextDraw_PhoneCall[playerid][13] = CreatePlayerTextDraw(playerid, 533.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][13], 79.000, 240.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][13], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][13], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][13], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][13], 1);

	TextDraw_PhoneCall[playerid][14] = CreatePlayerTextDraw(playerid, 622.000, 234.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][14], -1.000, 30.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][14], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][14], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][14], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][14], 1);

	TextDraw_PhoneCall[playerid][15] = CreatePlayerTextDraw(playerid, 526.000, 205.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][15], -1.000, 15.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][15], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][15], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][15], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][15], 1);

	TextDraw_PhoneCall[playerid][16] = CreatePlayerTextDraw(playerid, 526.000, 226.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][16], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][16], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][16], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][16], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][16], 1);

	TextDraw_PhoneCall[playerid][17] = CreatePlayerTextDraw(playerid, 526.000, 251.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][17], -1.000, 21.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][17], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][17], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][17], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][17], 1);

	TextDraw_PhoneCall[playerid][18] = CreatePlayerTextDraw(playerid, 557.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][18], 33.000, 4.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][18], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][18], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][18], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][18], 1);

	TextDraw_PhoneCall[playerid][19] = CreatePlayerTextDraw(playerid, 556.000, 179.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][19], 35.000, 2.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][19], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][19], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][19], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][19], 1);

	TextDraw_PhoneCall[playerid][20] = CreatePlayerTextDraw(playerid, 564.000, 391.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][20], 22.000, 28.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][20], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][20], 286398463);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][20], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][20], 1);

	TextDraw_PhoneCall[playerid][21] = CreatePlayerTextDraw(playerid, 565.000, 393.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][21], 20.000, 24.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][21], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][21], 505428735);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][21], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCall[playerid][21], 1);

	TextDraw_PhoneCall[playerid][22] = CreatePlayerTextDraw(playerid, 574.000, 203.000, "Oliver Reyy");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCall[playerid][22], 0.208, 1.697);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][22], 2);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][22], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][22], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][22], 1);

	TextDraw_PhoneCall[playerid][23] = CreatePlayerTextDraw(playerid, 574.000, 223.000, "00:00:00");
	PlayerTextDrawLetterSize(playerid, TextDraw_PhoneCall[playerid][23], 0.128, 0.799);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][23], 2);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][23], -1);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][23], 150);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][23], 1);

	TextDraw_PhoneCall[playerid][24] = CreatePlayerTextDraw(playerid, 539.000, 336.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][24], 23.000, 31.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][24], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][24], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][24], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCall[playerid][24], 1);

	TextDraw_PhoneCall[playerid][25] = CreatePlayerTextDraw(playerid, 587.000, 336.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][25], 23.000, 31.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][25], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][25], 16711935);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][25], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCall[playerid][25], 1);

	TextDraw_PhoneCall[playerid][26] = CreatePlayerTextDraw(playerid, 563.000, 336.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, TextDraw_PhoneCall[playerid][26], 23.000, 31.000);
	PlayerTextDrawAlignment(playerid, TextDraw_PhoneCall[playerid][26], 1);
	PlayerTextDrawColor(playerid, TextDraw_PhoneCall[playerid][26], -16776961);
	PlayerTextDrawSetShadow(playerid, TextDraw_PhoneCall[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TextDraw_PhoneCall[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, TextDraw_PhoneCall[playerid][26], 255);
	PlayerTextDrawFont(playerid, TextDraw_PhoneCall[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, TextDraw_PhoneCall[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, TextDraw_PhoneCall[playerid][26], 1);
}

stock Phone(playerid, bool:toggle) 
{
    if(toggle) 
    {
		AccountData[playerid][pOpenPhone] = 1;
		for(new txd; txd < 17; txd ++)
		{
			PlayerTextDrawHide(playerid, VehicleTextdraws[playerid][txd]);
		}

        for(new i = 0; i < 98; i++) 
        {
			PlayerTextDrawShow(playerid, TextDraw_Phone[playerid][i]);
		}
    }
    else 
    {
        for(new i = 0; i < 98; i++) 
        {
			PlayerTextDrawHide(playerid, TextDraw_Phone[playerid][i]);
		}

		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && IsEngineVehicle(GetPlayerVehicleID(playerid))) {
			for(new txd; txd < 17; txd ++)
			{
				PlayerTextDrawShow(playerid, VehicleTextdraws[playerid][txd]);
			}
		}
    }
    return 1;
}

PhoneInformation(playerid, bool:toggle)  
{
    if(toggle) 
    {
        for(new i = 0; i < 36; i++) 
        {
            PlayerTextDrawShow(playerid, TextDraw_PhoneInformation[playerid][i]);
        }
        PlayerTextDrawSetString(playerid, TextDraw_PhoneInformation[playerid][35], sprintf("%s", AccountData[playerid][pPhone]));
        PlayerTextDrawSetString(playerid, TextDraw_PhoneInformation[playerid][32], sprintf("%s", FormatMoney(AccountData[playerid][pMoney])));
        PlayerTextDrawSetString(playerid, TextDraw_PhoneInformation[playerid][33], sprintf("%s", FormatMoney(AccountData[playerid][pBankMoney])));
        PlayerTextDrawSetString(playerid, TextDraw_PhoneInformation[playerid][34], sprintf("%d", AccountData[playerid][pBankRek]));
        PlayerTextDrawSetString(playerid, TextDraw_PhoneInformation[playerid][30], sprintf("%s", GetPlayerJobName(playerid)));
    }
    else 
    {
        for(new i = 0; i < 36; i++) {
            PlayerTextDrawHide(playerid, TextDraw_PhoneInformation[playerid][i]);
        }
    }
    return 1;
}

PhoneContacts(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 33; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_Contact[playerid][i]);
		}

        SetPVarInt(playerid, "OpenContact", 1);
    }
    else
    {
        for(new i = 0; i < 33; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_Contact[playerid][i]);
		}
        DeletePVar(playerid, "OpenContact");
    }
    return 1;
}

PhoneCallNumber(playerid, bool:toggle) 
{
    if(toggle)
    {
        format(tempNumber[playerid], 15, "");
        PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], "_");
        for(new i = 0; i < 46; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_PhoneCallNumber[playerid][i]);
		}
    }
    else
    {
        for(new i = 0; i < 46; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneCallNumber[playerid][i]);
		}
    }
    return 1;
}

PhoneCall(playerid, bool:toggle) 
{
    if(toggle)
    {
        if(AccountData[playerid][phoneDurringConversation])
        {
            for(new i = 0; i < 24; i++)
            {
                PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][i]);
            }
            PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][26]);
        }
        else
        {
            for(new i = 0; i < 26; i++)
            {
                PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][i]);
            }
        }
        

        for(new i = 0; i < 24; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][i]);
		}
    }
    else
    {
        for(new i = 0; i < 27; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneCall[playerid][i]);
		}
    }
    return 1;
}

PhoneInCall(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 22; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][i]);
		}
		PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][26]);
    }
    else
    {
        for(new i = 0; i < 25; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneCall[playerid][i]);
		}
    }
    return 1;
}

PhoneMessage(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 35; i++)
        {
            PlayerTextDrawShow(playerid, TextDraw_PhoneMessage[playerid][i]);
        }
    }
    else
    {
        for(new i = 0; i < 35; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneMessage[playerid][i]);
		}
        DeletePVar(playerid, "SelectNumber");
    }
    return 1;
}


PhoneListMessage(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 29; i++)
        {
            PlayerTextDrawShow(playerid, TextDraw_PhoneListMessage[playerid][i]);
        }
        SetPVarInt(playerid, "OpenSMS", 1);
    }
    else
    {
        for(new i = 0; i < 29; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneListMessage[playerid][i]);
		}
        DeletePVar(playerid, "OpenSMS");
        HideContactMessageList(playerid);
    }
    return 1;
}

PhoneTwitter(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 29; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_PhoneTwitter[playerid][i]);
		}
        SetPVarInt(playerid, "OpenX", 1);
    }
    else
    {
        for(new i = 0; i < 29; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneTwitter[playerid][i]);
		}
        DeletePVar(playerid, "OpenX");
    }
    return 1;
}

PhoneYellowPage(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 29; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_PhoneYellowpage[playerid][i]);
		}
        SetPVarInt(playerid, "OpenYP", 1);
    }
    else
    {
        for(new i = 0; i < 29; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneYellowpage[playerid][i]);
            HideYellopageList(playerid);
		}
        DeletePVar(playerid, "OpenYP");
    }
    return 1;
}

PhoneVehicle(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 30; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_PhoneVehicle[playerid][i]);
		}
    }
    else
    {
        for(new i = 0; i < 30; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneVehicle[playerid][i]);
		}
    }
    return 1;
}

PhoneTaxi(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 37; i++)
        {
            PlayerTextDrawShow(playerid, TextDraw_PhoneTaxi[playerid][i]);
        }
        new 
            counttaxi;

        foreach(new i : Player) if (IsPlayerConnected(i))
        {
            if(AccountData[i][pDutyTrans]) counttaxi++;
        }

        PlayerTextDrawSetString(playerid, TextDraw_PhoneTaxi[playerid][29], sprintf("Hai, %s!", AccountData[playerid][pName]));
        PlayerTextDrawSetString(playerid, TextDraw_PhoneTaxi[playerid][35], sprintf("%d", counttaxi));
    }
    else
    {
        for(new i = 0; i < 37; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneTaxi[playerid][i]);
		}
    }
    return 1;
}

PhoneFactionList(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 62; i++)
        {
            PlayerTextDrawShow(playerid, TextDraw_PhoneFactionList[playerid][i]);
        }
        new 
            countpd,
            countems,
            countbengkel;

        foreach(new i : Player) if (IsPlayerConnected(i))
        {
            if(AccountData[i][pDutyPD]) countpd++;
            if(AccountData[i][pDutyEms]) countems++;
            if(AccountData[i][pDutyBengkel]) countbengkel++;
        }
        PlayerTextDrawSetString(playerid, TextDraw_PhoneFactionList[playerid][29], sprintf("%d", countpd));
        PlayerTextDrawSetString(playerid, TextDraw_PhoneFactionList[playerid][44], sprintf("%d", countems));
        PlayerTextDrawSetString(playerid, TextDraw_PhoneFactionList[playerid][59], sprintf("%d", countbengkel));
    }
    else
    {
        for(new i = 0; i < 62; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneFactionList[playerid][i]);
		}
    }
    return 1;
}

PhoneBank(playerid, bool:toggle) 
{
    if(toggle)
    {
        for(new i = 0; i < 35; i++)
		{
			PlayerTextDrawShow(playerid, TextDraw_PhoneBank[playerid][i]);
		}
        PlayerTextDrawSetString(playerid, TextDraw_PhoneBank[playerid][20], sprintf("%s", FormatMoney(AccountData[playerid][pBankMoney])));
		PlayerTextDrawSetString(playerid, TextDraw_PhoneBank[playerid][33], sprintf("%s", FormatMoney(AccountData[playerid][pPaycheck])));
		PlayerTextDrawSetString(playerid, TextDraw_PhoneBank[playerid][34], sprintf("%s", FormatMoney(AccountData[playerid][pBankRek])));
        SetPVarInt(playerid, "OpenBank", 1);
    }
    else
    {
        for(new i = 0; i < 35; i++)
		{
			PlayerTextDrawHide(playerid, TextDraw_PhoneBank[playerid][i]);
		}
        DeletePVar(playerid, "OpenBank");
    }
    return 1;
}

stock PhoneHideAll(playerid) 
{
    HideContactList(playerid);
    HideMessageList(playerid);
    HideContactMessageList(playerid);
    HideTwitterList(playerid);
    HideVehicleList(playerid);
    HideYellopageList(playerid);

	Phone(playerid, false);
	PhoneInformation(playerid, false);
    PhoneBank(playerid, false);
    PhoneCall(playerid, false);
    PhoneCallNumber(playerid, false);
    PhoneContacts(playerid, false);
    PhoneFactionList(playerid, false);
    PhoneInCall(playerid, false);
    PhoneListMessage(playerid, false);
    PhoneTaxi(playerid, false);
    PhoneTwitter(playerid, false);
    CancelSelectTextDraw(playerid);
	AccountData[playerid][pOpenPhone] = 0;

	if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && IsEngineVehicle(GetPlayerVehicleID(playerid))) {
		for(new txd; txd < 17; txd ++)
		{
			PlayerTextDrawShow(playerid, VehicleTextdraws[playerid][txd]);
		}
	}

	RemovePlayerAttachedObject(playerid, 9);
	
	if(!IsPlayerInAnyVehicle(playerid)) {
		ClearAnimations(playerid, 1);
	}

	Toggle_AllTextdraws(playerid, true);

}

hook OnPlayerConnect(playerid) 
{
    AllTextDraw_Phone(playerid);
    return 1;
}
Dialog:GpsMenu(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        switch(listitem)
        {
            case 0: //Lokasi GPS
            {
                return ShowLokasiGps(playerid);
            }
            case 1: // Emergency Signal
            {
                if(AccountData[playerid][pFaction] != FACTION_EMS) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota Mitra EMS Aeterna!");
                if(!AccountData[playerid][pDutyEms]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang duty EMS!");

                new list[525], count = 0;
                format(list, sizeof(list), "#No\tKorban\tLokasi\n");
                foreach(new i : Player) if (AccountData[i][pSpawned] && SignalExists[i] && AccountData[i][pInjured])
                {
                    format(list, sizeof(list), "%s%d\t%s(%d)\t%s\n", list, count, ReturnName(i), i, GetLocation(SignalPos[i][0], SignalPos[i][1], SignalPos[i][2]));
                    ListSignal[playerid][count ++] = i;
                }

                if(count == 0)
                {
                    return Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Emergency Signal",
                    "Tidak ada seseorang manapun yang mengirim Emergency Signal!", "Tutup", "");
                }

                Dialog_Show(playerid, EmergencySignal, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- Emergency Signal", list, "Pilih", "Batal");
            }
        }
    }
    return 1;
}

Dialog:EmergencySignal(playerid, response, listitem, inputtext[])
{
    if(response)
    {   
        if(AccountData[playerid][pFaction] != FACTION_EMS) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota Mitra EMS Aeterna!");
        if(!AccountData[playerid][pDutyEms]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang duty EMS!");

        new id = ListSignal[playerid][listitem];
        if(!IsPlayerConnected(id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
        if(!SignalExists[id]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Emergency signal sudah tidak ada/dihandle anggota lain!"); 
        if(!AccountData[id][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Orang yang mengirim signal sudah terbangun dari pingsannya!");
        
        SetPlayerRaceCheckpoint(playerid, 1, SignalPos[id][0], SignalPos[id][1], SignalPos[id][2], 0.0, 0.0, 0.0, 4.0);
        Info(playerid, "Anda telah menerima signal emergency di daerah "YELLOW"%s", GetLocation(SignalPos[id][0], SignalPos[id][1], SignalPos[id][2]));
        Info(id, "Anggota Mitra EMS telah merespon signal emergency yang anda kirim. Harap tunggu di lokasi hingga petugas datang!");

        SignalExists[id] = false;
        SignalPos[id][0] = SignalPos[id][1] = SignalPos[id][2] = 0.0;
        pMapCP[playerid] = true;

		new Float:x, Float:y, Float:z;
		GetPlayerPos(id, x, y, z);
		SendClientMessageToAllEx(-1, ""RED"[Emergency Signal]"WHITE" %s menerima sinyal injured dilokasi: "YELLOW"%s", ReturnName(playerid), GetLocation(x, y, z));
    }
    else ShowTDN(playerid, NOTIFICATION_ERROR, "Anda telah membatalkan pilihan!");
    return 1;
}

Dialog:CALLCENTER_POLISI(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);

    if(isnull(inputtext)) return Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Polisi",
    "Error: Tidak dapat diisi kosong!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Polisi",
    "Error: Tidak dapat diisi angka!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Polisi",
    "Error: Tidak dapat lebih dari 128 characters!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");
    
    if(AccountData[playerid][pCallCop]){
		ShowTDN(playerid, NOTIFICATION_WARNING, "Kamu sudah memiliki laporan yang pending!");
		return 1;
	}
	foreach(new i : Player) {
		if(AccountData[i][pFaction] == 1 && AccountData[i][pDutyPD]) {
			SendClientMessageEx(i, -1, ""GRAY"[Pesan Darurat] "WHITE"Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
			SendClientMessageEx(i, -1, ""WHITE"-> %s", inputtext);
		}
	}

	AccountData[playerid][pCallCop] = 1;
	format(AccountData[playerid][pCallCopReason], 128, inputtext);
	format(AccountData[playerid][pCallCopTime], 32, ReturnTime());
	format(AccountData[playerid][pCallCopLocation], 64, GetLocation(X, Y, Z));

	SendClientMessageEx(playerid, -1, ""GRAY"[Pesan Darurat] "WHITE"Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
	SendClientMessageEx(playerid, -1, ""WHITE"-> %s", inputtext);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim pesan darurat kepolisian!");
    return 1;
}

Dialog:CALLCENTER_EMS(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);

    if(isnull(inputtext)) return Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
    "Error: Tidak dapat diisi kosong!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
    "Error: Tidak dapat diisi angka!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
    "Error: Tidak dapat lebih dari 128 characters!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");
    
    if(AccountData[playerid][pHotlineTime] >= gettime())
	{
		ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Mohon menunggu %d detik untuk mengirim hotline factions kembali!", AccountData[playerid][pHotlineTime] - gettime()));
		return 1;
	}

	foreach(new i : Player) {
		if(AccountData[i][pFaction] == 3 && AccountData[i][pDutyEms]) {
			SendClientMessageEx(i, -1, ""C_DOKTER"[EMS CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
			SendClientMessageEx(i, -1, ""WHITE"-> %s", inputtext);
		}
	}
	AccountData[playerid][pHotlineTime] = gettime() + 180;
	SendClientMessageEx(playerid, -1, ""C_DOKTER"[EMS CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
	SendClientMessageEx(playerid, -1, ""WHITE"-> %s", inputtext);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim pesan darurat Rumah Sakit!");
    return 1;
}

Dialog:CALLCENTER_PEMDA(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);

    if(isnull(inputtext)) return Dialog_Show(playerid, CALLCENTER_PEMDA, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Call Center Pemerintah",
    "Error: Tidak dapat diisi kosong!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Pemerintah dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Pemerintah:", "Kirim", "Batal");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CALLCENTER_PEMDA, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Call Center Pemerintah",
    "Error: Tidak dapat diisi angka!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Pemerintah dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Pemerintah:", "Kirim", "Batal");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CALLCENTER_PEMDA, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Call Center Pemerintah",
    "Error: Tidak dapat lebih dari 128 characters!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Pemerintah dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Pemerintah:", "Kirim", "Batal");
    
    if(AccountData[playerid][pHotlineTime] >= gettime())
	{
		ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Mohon menunggu %d detik untuk mengirim hotline factions kembali!", AccountData[playerid][pHotlineTime] - gettime()));
		return 1;
	}

	foreach(new i : Player) {
		if(AccountData[i][pFaction] == FACTION_PEMERINTAH && AccountData[i][pDutyPemerintah]) {
			SendClientMessageEx(i, -1, ""SKYBLUE"[PEMDA CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
			SendClientMessageEx(i, -1, ""WHITE"-> %s", inputtext);
		}
	}
	AccountData[playerid][pHotlineTime] = gettime() + 180;
	SendClientMessageEx(playerid, -1, ""SKYBLUE"[PEMDA CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
	SendClientMessageEx(playerid, -1, ""WHITE"-> %s", inputtext);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim pesan ke Call Center Pemerintah!");
    return 1;
}

Dialog:CALLCENTER_MECHANIC(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);

    if(isnull(inputtext)) return Dialog_Show(playerid, CALLCENTER_MECHANIC, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Call Center Mechanic",
    "Error: Tidak dapat diisi kosong!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Mechanic dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Mechanic:", "Kirim", "Batal");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CALLCENTER_MECHANIC, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Call Center Mechanic",
    "Error: Tidak dapat diisi angka!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Mechanic dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Mechanic:", "Kirim", "Batal");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CALLCENTER_MECHANIC, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Call Center Mechanic",
    "Error: Tidak dapat lebih dari 128 characters!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Mechanic dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Mechanic:", "Kirim", "Batal");
    
    if(AccountData[playerid][pHotlineTime] >= gettime())
	{
		ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Mohon menunggu %d detik untuk mengirim hotline factions kembali!", AccountData[playerid][pHotlineTime] - gettime()));
		return 1;
	}

	foreach(new i : Player) {
		if(AccountData[i][pFaction] == FACTION_BENGKEL && AccountData[i][pDutyBengkel]) {
			SendClientMessageEx(i, -1, ""SKYBLUE"[PEMDA CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
			SendClientMessageEx(i, -1, ""WHITE"-> %s", inputtext);
		}
	}
	AccountData[playerid][pHotlineTime] = gettime() + 180;
	SendClientMessageEx(playerid, -1, ""SKYBLUE"[PEMDA CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
	SendClientMessageEx(playerid, -1, ""WHITE"-> %s", inputtext);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim pesan ke Call Center Mechanic!");
    return 1;
}


stock ShowShareContact(playerid) 
{
    Dialog_Show(playerid, ShareContact, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay{FFFFFF} - Share Contact", sprintf("Status: %s\n"WHITE"Share my Contact", (AccountData[playerid][pShareContact]) ? (""GREEN"Share Contact allowed") : (""RED"Share Contact not allowed")), "Select", "Close");
    return 1;
}

Dialog:ShareContact(playerid, response, listitem, inputtext[]) {
    if(response) {
        if(listitem == 0) {
            AccountData[playerid][pShareContact] = !(AccountData[playerid][pShareContact]);
            ShowShareContact(playerid);
        }
        if(listitem == 1) {
            new count = 0, string[256];

            if(!AccountData[playerid][pShareContact])
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Nyalakan status share contact dahulu.");

            foreach(new i : Player) if(PlayerHasItem(i, "Smartphone") && IsPlayerNearPlayer(i, playerid, 5.0)) {

                if(i == playerid)
                    continue;

                strcat(string, sprintf("Citizen ID: %d\n", i));
                ListedItems[playerid][count++] = i;
            }
            Dialog_Show(playerid, ShareMyContact, DIALOG_STYLE_LIST,  ""TTR"Aeterna Roleplay{FFFFFF} - Share Contact", string, "Share", "Close");
        }
    }
    return 1;
}

Dialog:ShareMyContact(playerid, response, listitem, inputtext[]) {
    if(response) {
        new targetid = ListedItems[playerid][listitem];

        if(!IsPlayerNearPlayer(playerid, targetid, 5.0))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak lagi didekatmu.");

        if(!AccountData[targetid][pShareContact])
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut mematikan status share contact.");

        ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Kamu membagikan kontak kepada Citizen ID:%d", targetid));
        SetPVarInt(targetid, "ShareFromID", playerid);
		new shstr[522];
		format(shstr, sizeof(shstr), "Anda menerima permintaan penyimpanan kotak dari:\nNama: %s\nNomor HP: %s\nApakah anda yakin ingin menyimpan kontak tersebut?", AccountData[playerid][pName], AccountData[playerid][pPhone]);
		Dialog_Show(targetid, AcceptContact, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Airdrop", shstr, "Iya", "Tidak");
    }
    return 1;
}

Dialog:AcceptContact(playerid, response, listitem, inputtext[]) {
    if(response) {
        new targetid = GetPVarInt(playerid, "ShareFromID");

        if(!IsPlayerNearPlayer(playerid, targetid, 10.0))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu terlalu jauh dari pembagi kontak.");

        if(IsContactHas(playerid, AccountData[targetid][pPhone]))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor ini sudah terdaftar pada kontak!");
            
		new id = CreateContact(playerid, AccountData[targetid][pPhone], 
			sprintf("%s #%d", AccountData[targetid][pName], targetid));

        if(id == -1) {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Kontak kamu sudah terlalu penuh.");
        }
        else {
            ShowTDN(playerid, NOTIFICATION_INFO, "Sukses menambahkan kontak baru!");

            if(GetPVarInt(playerid, "OpenContact")) {
                PhoneContactSync(playerid);
            }
        }
    }
    return 1;
}

Dialog:AppOther(playerid, response, listitem, inputtext[]) 
{
    if(response) 
    {
        if(listitem == 0)
        {

			if(!AccountData[playerid][pVip])
				return Error(playerid, "Harus menjadi VIP untuk mengambil pekerjaan di HP.");
				
            new string[666], countpenambang, countpenebang, countbus, countayam, countpenjahit, countminyak, countpemerah, countpetani, countkargo, countrecycler;
            foreach(new i : Player) 
            {
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_MINER) {
                    countpenambang++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_LUMBERJACK) {
                    countpenebang++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_BUS) {
                    countbus++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_BUTCHER) {
                    countayam++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_TAILOR) {
                    countpenjahit++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_OILMAN) {
                    countminyak++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_MILKER) {
                    countpemerah++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_FARMER) {
                    countpetani++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_KARGO) {
                    countkargo++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_RECYCLER) {
                    countrecycler++;
                }
            }
            format(string, sizeof(string), "Job\tPekerja\
            \nPenambang\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Kayu\t"YELLOW"%d Orang\
            \nSupir Bus\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Ayam\t"YELLOW"%d Orang\
            \nTukang Jahit\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Minyak\t"YELLOW"%d Orang\
            \n"GRAY"Pemerah Susu\t"YELLOW"%d Orang\
            \nPetani\t"YELLOW"%d Orang\
            \n"GRAY"Kargo\t"YELLOW"%d Orang\
            \nRecycler/Pendaur Ulang\t"YELLOW"%d Orang", 
            countpenambang, 
            countpenebang, 
            countbus, 
            countayam, 
            countpenjahit, 
            countminyak,  
            countpemerah, 
            countpetani, 
            countkargo, 
            countrecycler);
            ShowPlayerDialog(playerid, DIALOG_DISNAKER, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- Disnaker", string, "Pilih", "Batal");
        }
        if(listitem == 1) 
        {
            ShowShareContact(playerid);
        }
		if(listitem == 2) {
			ShowDetailPajak(playerid);
		}
		if(listitem == 3) {
			ShowPlayerDialog(playerid, DialogSpotify, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Spotify", "Matikan Musik\nPutar Musik", "Select", "Cancel");
		}
		if(listitem == 4) {
			if(!AccountData[playerid][pVip]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pengguna VIP!");

			if(GetPVarType(playerid, "PlacedBB"))
			{
				if(IsPlayerInRangeOfPoint(playerid, 3.0, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ")))
				{
					ShowPlayerDialog(playerid, DANN_BOOMBOX, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Boombox", "Matikan Boombox\nPutar Musik", "Select", "Cancel");
				}
				else
				{
					return ShowTDN(playerid, NOTIFICATION_ERROR, "~g~[!]~w~: Kamu tidak berada didekat boombox mu!");
				}
			}
			else
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu tidak menaruh boombox sebelumnya!");
			}  
		}
    }
    return 1;
}

stock ShowTransferAmount(playerid) 
{
    return Dialog_Show(playerid, TransferAmount, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Transfer",""WHITE"Transfer Saldo\n\nMasukkan "GREEN"Jumlah Uang "WHITE"yang akan kamu transfer.", "Transfer", "Batal");
}

stock ShowTransferTarget(playerid) 
{
    return Dialog_Show(playerid, TransferTarget, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Transfer", ""WHITE"Transfer Saldo\n\nMasukkan "GREEN"Nomor Rekening (Bank ID) "WHITE"milik orang yang..\ningin kamu transfer.", "Submit", "Tutup");
}

Dialog:TransferTarget(playerid, response, listitem, inputtext[]) {
    if(response) {

        if(isnull(inputtext))
            return ShowTransferTarget(playerid);

        if(!strval(inputtext))
            return ShowTransferTarget(playerid);

        new targetid = GetRekeningOwner(strval(inputtext));

        if(targetid == INVALID_PLAYER_ID)
            return ShowTransferTarget(playerid);

        SetPVarInt(playerid, "TargetID", targetid);
        if(GetPVarInt(playerid, "OpenBank"))
        {
            PlayerTextDrawSetString(playerid, TextDraw_PhoneBank[playerid][31], sprintf("%d", inputtext));
            SetPVarInt(playerid, "Transfer", 1);
        }
        else
        {
            ShowTransferAmount(playerid);
        }
    }
    return 1;
}

Dialog:TransferAmount(playerid, response, listitem, inputtext[]) {
    if(response) {

        new amount = strval(inputtext);

        new targetid = GetPVarInt(playerid, "TargetID");

        if(!IsPlayerConnected(targetid))
            return ShowTransferTarget(playerid);

        if(amount < 1 || amount > 100000)
            return ShowTransferAmount(playerid);

        if(AccountData[playerid][pBankMoney] < amount) {
            return ShowTransferAmount(playerid);
        }

        AccountData[playerid][pBankMoney] -= amount;
        AccountData[targetid][pBankMoney] += amount;

        ShowTDN(targetid, NOTIFICATION_INFO, sprintf("Kamu mendapatkan transferan sejumlah %s", FormatMoney(amount)));
        ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Kamu berhasil transfer sejumlah %s", FormatMoney(amount)));
		UpdatePlayerData(targetid);

    }
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:textid) 
{
    if(textid == TextDraw_Phone[playerid][54])
	{
        PhoneHideAll(playerid);
		RemovePlayerAttachedObject(playerid, 9);
		if(!IsPlayerInAnyVehicle(playerid)) {
			ClearAnimations(playerid, 1);
		}
    }

    // -------- APLIKASI INFORMASI -------- //
    if(textid == TextDraw_Phone[playerid][18]) 
    {
		Phone(playerid, false);
		PhoneInformation(playerid, true);
    }
    if(textid == TextDraw_PhoneInformation[playerid][16]) 
    {
		PhoneInformation(playerid, false);
		Phone(playerid, true);
    }

    // -------- APLIKASI CALL NUMBER -------- //
    if(textid == TextDraw_PhoneCallNumber[playerid][27]) {

        if(strlen(tempNumber[playerid])) {

            new len = strlen(tempNumber[playerid]);
            tempNumber[playerid][len - 1] = EOS;
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][26]) {

        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "0");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][16]) {

        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "1");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][17]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "2");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][18]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "3");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][19]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "4");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][20]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "5");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][21]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "6");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][22]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "7");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][23]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "8");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][24]) {
        if(strlen(tempNumber[playerid]) < 15) {
            format(tempNumber[playerid], 15, "%s%s", tempNumber[playerid], "9");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCallNumber[playerid][40], tempNumber[playerid]);
        }
    }
    if(textid == TextDraw_Phone[playerid][42]) 
    {
        Phone(playerid, false);
        PhoneCallNumber(playerid, true);
    }
    if(textid == TextDraw_PhoneCallNumber[playerid][45])
    {
        PhoneCallNumber(playerid, false);
        Phone(playerid, true);
    }

    // -------- APLIKASI CALL NUMBER -------- //
    if(textid == TextDraw_Phone[playerid][27])
    {
        Phone(playerid, false);
        PhoneListMessage(playerid, true);
        pageMessage[playerid] = 0;
        PhoneSyncSms(playerid);
    }
    if(textid == TextDraw_PhoneListMessage[playerid][28])
    {
        PhoneListMessage(playerid, false);
        Phone(playerid, true);
    }

	// -------- APLIKASI VEHICLE -------- //
	if(textid == TextDraw_Phone[playerid][36])
	{
		foreach(new i : PvtVehicles) if(Vehicle_IsOwner(playerid, i))
		{
			SavePlayerVehicle(i);
		}
		pageVehicle[playerid] = 0;
		Phone(playerid, false);
		PhoneVehicle(playerid, true);
		SyncVehiclePage(playerid);

	}
	if(textid == TextDraw_PhoneVehicle[playerid][26])
	{
		PhoneVehicle(playerid, false);
		HideVehicleList(playerid);
		Phone(playerid, true);
	}
    if(textid == TextDraw_PhoneVehicle[playerid][20]) 
    {
        pageVehicle[playerid]--;
        if(pageVehicle[playerid] <= 0) 
        {
            pageVehicle[playerid] = 0;
        }

        SyncVehiclePage(playerid);
    }

    if(textid == TextDraw_PhoneVehicle[playerid][21]) 
    {
        pageVehicle[playerid]++;
        if(pageVehicle[playerid] >= 5) 
        {
            pageVehicle[playerid] = 5;
        }

        SyncVehiclePage(playerid);
    }

    // -------- APLIKASI TAXI -------- //
    if(textid == TextDraw_PhoneTaxi[playerid][16]) 
    {

		if(!AccountData[playerid][pTaxiOrder]) {
			if(AccountData[playerid][pTaxiPlayer] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang menjadi penumpang di Trans!");

			new Float:x, Float:y, Float:z;
			GetPlayerPos(playerid, x, y, z);

			foreach(new i : Player) if (AccountData[i][pFaction] == FACTION_TRANS && AccountData[i][pDutyTrans])
			{
				SendCustomMessage(i, "[Trans Request]", "Client: "YELLOW"(id: %d) %s"WHITE" Telp: "LIGHTGREEN"%s"WHITE" Lok: "SKYBLUE"%s", playerid, ReturnName(playerid), AccountData[playerid][pPhone], GetLocation(x, y, z));
				SendCustomMessage(i, "NOTE", "Gunakan Command "YELLOW"'/orderlist'"WHITE" untuk merespon panggilan");
			}
			AccountData[playerid][pTaxiOrder] = 1;
			SetPVarFloat(playerid, "pX", x);
			SetPVarFloat(playerid, "pY", y);
			SetPVarFloat(playerid, "pZ", z);
			ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil memesan Transportasi");
		}
    }

    if(textid == TextDraw_Phone[playerid][21])
    {
        Phone(playerid, false);
        PhoneTaxi(playerid, true);
    }
    if(textid == TextDraw_PhoneTaxi[playerid][36])
    {
        PhoneTaxi(playerid, false);
        Phone(playerid, true);
    }

    // -------- APLIKASI BANK -------- //
    if(textid == TextDraw_Phone[playerid][39])
	{
       Phone(playerid, false);
       PhoneBank(playerid, true);
    }
    if(textid == TextDraw_PhoneBank[playerid][16])
	{
       PhoneBank(playerid, false);
       Phone(playerid, true);
    }
    // if(textid == TextDraw_PhoneBank[playerid][44]) {
    //     // salary
    // }
    if(textid == TextDraw_PhoneBank[playerid][27])
	{
        ShowTransferTarget(playerid);
    }
    if(textid == TextDraw_PhoneBank[playerid][29])
	{
		ShowPlayerInvoice(playerid);
    }

    // -------- APLIKASI HOTLINE -------- //
    if(textid == TextDraw_Phone[playerid][94])
    {
        Phone(playerid, false);
        PhoneFactionList(playerid, true);
    }
    if(textid == TextDraw_PhoneFactionList[playerid][61])
    {
        PhoneFactionList(playerid, false);
        Phone(playerid, true);
    }
    if(textid == TextDraw_PhoneFactionList[playerid][22])
    {
        Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Polisi",
        "Masukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
        \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");
    }
    if(textid == TextDraw_PhoneFactionList[playerid][37])
    {
        Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
        "Masukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
        \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");
    }
    if(textid == TextDraw_PhoneFactionList[playerid][52])
    {
        Dialog_Show(playerid, CALLCENTER_MECHANIC, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Panggilan Darurat Mechanic",
        "Masukkan kendala anda yang ingin dilaporkan kepada pihak Mechanic dibawah ini\
        \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Mechanic:", "Kirim", "Batal");
    }

    // -------- APLIKASI GPS -------- //
    if(textid == TextDraw_Phone[playerid][51]) 
    {
        if(BusIndex[playerid] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang bekerja sebagai supir bus!");
        if(DurringSweeping[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang bekerja sebagai pembersih jalan!");
        if(PlayerKargoVars[playerid][KargoStarted]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang bekerja sebagai Supir Kargo!");

        if(AccountData[playerid][pFaction] == FACTION_EMS && AccountData[playerid][pDutyEms]) {
            Dialog_Show(playerid, GpsMenu, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay{FFFFFF} - Menu Gps",
            "Lokasi GPS\n"GRAY"Signal Emergency (EMS)", "Pilih", "Batal");
        } else {
			return ShowLokasiGps(playerid);
        }
    }
    // -------- APLIKASI OTHER -------- //
    if(textid == TextDraw_Phone[playerid][45]) 
    {
        Dialog_Show(playerid, AppOther, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay{FFFFFF} - Other", "Pilihan\t\tKeterangan\nPekerjaan\tUntuk mengambil pekerjaan\nShare Contact\tBagikan kontakmu ke orang sekitar\nDetail Pajak\tMelihat detail informasi tentang pajak\nSpotify\tMemutar musik dengan earphone\nBoombox\tMemutar musik dengan Boombox", "Select", "Close");
    }

	// -------- SHARE CONTACT -------- //
	if(textid == TextDraw_Phone[playerid][24]) 
    {
        ShowShareContact(playerid);
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DialogSpotify:
        {
            if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan musik");
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SendRPMeAboveHead(playerid, "Mematikan musik di Spotifynya", X11_PLUM1);
                        StopStream(playerid);
                    }
                    case 1:
                    {
                        static jskc[512];
                        format(jskc, sizeof(jskc), ""VERONA_ARWIN"Spotify Music - Cerahi Hidupmu Secerah Matahari Di Pagi Hari\n\n"VERONA_ARWIN"Kami sarankan anda untuk upload file mp3 ke discord terlebih dahulu.\n"RED_E"Note: Fitur ini tidak support link Youtube secara langsung!\n\n"YELLOW"(Apabila file mp3 telah di upload ke discord, silahkan copy linknya dan paste dibawah ini):");
                        ShowPlayerDialog(playerid, DialogSpotify1, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Spotify", jskc, "Input", "Cancel");
                    }
                }
            }
        }
        case DialogSpotify1:
        {
            if(response == 1)
            {
                if(isnull(inputtext))
                {
                    ShowTDN(playerid, NOTIFICATION_WARNING, "Anda belum memasukan URL musik!");
                    return 1;
                }
                if(strlen(inputtext))
                {
                    PlayStream(playerid, inputtext, 0.0, 0.0, 0.0, 1, 0);
                }
            }
        }
		case DANN_BOOMBOX:
        {
            if(!response)
            {
                SendClientMessageEx(playerid, COLOR_WHITE, ""VERONADOT"Kamu Membatalkan Music");
                return 1;
            }
            switch(listitem)
            {
                case 0:
                {
                    if(GetPVarType(playerid, "BBArea"))
                    {
                        SendRPMeAboveHead(playerid, "Mematikan musik", X11_PLUM1);
                        foreach(new i : Player)
                        {
                            if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
                            {
                                StopStream(i);
                            }
                        }
                        DeletePVar(playerid, "BBStation");
                    }
                    SendClientMessageEx(playerid, COLOR_WHITE, "{00ff00}[!]{ffffff}: Kamu Telah Mematikan Boomboxnya");
                }
                case 1:
                {
                    static jskc[512];
                    format(jskc, sizeof(jskc), ""VERONA_ARWIN"Boombox Music - Cerahi Hidupmu Secerah Matahari Di Pagi Hari\n\n"VERONA_ARWIN"Kami sarankan anda untuk upload file mp3 ke discord terlebih dahulu.\n"RED_E"Note: Fitur ini tidak support link Youtube secara langsung!\n\n"YELLOW"(Apabila file mp3 telah di upload ke discord, silahkan copy linknya dan paste dibawah ini):");
                    ShowPlayerDialog(playerid,DANN_BOOMBOX1,DIALOG_STYLE_INPUT, "Boombox Play Music", jskc, "Play", "Cancel");
                }
            }
        }
        case DANN_BOOMBOX1:
        {
            if(response == 1)
            {
                if(isnull(inputtext))
                {
                    ShowTDN(playerid, NOTIFICATION_WARNING, "Kamu belum memasukan URL!");
                    // SendClientMessageEx(playerid, COLOR_WHITE, "{00ff00}[!]{ffffff}: Kamu Tidak Menulis Apapun");
                    return 1;
                }
                if(strlen(inputtext))
                {
                    if(GetPVarType(playerid, "PlacedBB"))
                    {
                        foreach(new i : Player)
                        {
                            if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
                            {
                                PlayStream(i, inputtext, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
                            }
                        }
                        SetPVarString(playerid, "BBStation", inputtext);
                    }
                }
            }
        }
        case LokasiGps:
        {
            if(!response) return 1;
            if(!PlayerHasItem(playerid, "Smartphone")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki smartphone!");

			new minsty[4012];

            switch(listitem)
            {
                case 0: // Workshop
                {	
					ShowWorkshopLocation(playerid);
                }
                case 1:
                {
                    format(minsty, sizeof(minsty), "Nama\tLokasi\tJarak\
                    \nBalai Kota\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Kantor Kepolisian Aeterna\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nRumah Sakit Pillbox\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Bengkel Kota Aeterna\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nAsuransi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Asuransi LV\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nRestaurant Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Pelabuhan\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nBahamas\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Rusun Abah Iwan\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nTerminal Desa\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Pasar Modern Kota Aeterna\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nShowroom Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Gudang Warbun\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nGudang Fort Carson\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"OYO Hotels #1\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nRusun Suroh\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Rusun Jamal\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nToko Olahraga\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Motel Romo\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nVenue Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Bahamas LV\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nBahamas SF\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Rusun BlueDoorz\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nUniversitas Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Panggung San Fiero\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nDrag Race Las Venturas\t%s\t"YELLOW"%.2f m\
                    ",
                    GetLocation(1133.9788,-2036.3195,69.0078), GetPlayerDistanceFromPoint(playerid, 1133.9788,-2036.3195,69.0078),
                    GetLocation(642.4453, -1501.9276, 14.8911), GetPlayerDistanceFromPoint(playerid, 642.4453, -1501.9276, 14.8911),
                    GetLocation(1194.3477, -1326.8278, 13.3984), GetPlayerDistanceFromPoint(playerid, 1194.3477, -1326.8278, 13.3984),
                    GetLocation(-75.1937, 1035.4578, 19.7411), GetPlayerDistanceFromPoint(playerid, -75.1937, 1035.4578, 19.7411),
                    GetLocation(424.6763,-1322.2543,15.0031), GetPlayerDistanceFromPoint(playerid, 424.6763,-1322.2543,15.0031),//asuransi ls
                    GetLocation(51.3536, 1222.1011, 18.9170), GetPlayerDistanceFromPoint(playerid, 51.3536, 1222.1011, 18.9170),
                    GetLocation(2858.4968, -1986.9226, 10.9361), GetPlayerDistanceFromPoint(playerid, 2858.4968, -1986.9226, 10.9361),
                    GetLocation(2767.8762, -2435.3850, 13.6850), GetPlayerDistanceFromPoint(playerid, 2767.8762, -2435.3850, 13.6850),
                    GetLocation(384.0832,-2080.7480,7.8359), GetPlayerDistanceFromPoint(playerid, 384.0832,-2080.7480,7.8359),
                    GetLocation(2224.1106,-1152.6976,25.7977), GetPlayerDistanceFromPoint(playerid, 2224.1106,-1152.6976,25.7977),
                    GetLocation(88.39, -280.85, 1.57), GetPlayerDistanceFromPoint(playerid, 88.39, -280.85, 1.57),
                    GetLocation(2793.5034, -1087.5909, 30.7188), GetPlayerDistanceFromPoint(playerid, 2793.5034, -1087.5909, 30.7188),
                    GetLocation(555.3796, -1292.9777, 17.2482), GetPlayerDistanceFromPoint(playerid, 555.3796, -1292.9777, 17.2482),
                    GetLocation(2076.8, -2033.33, 13.5469), GetPlayerDistanceFromPoint(playerid, 2076.8, -2033.33, 13.5469),
                    GetLocation(-136.0707, 1116.6332, 20.1966), GetPlayerDistanceFromPoint(playerid, -136.0707, 1116.6332, 20.1966),
                    GetLocation(2223.5115, -1143.1807, 25.7969), GetPlayerDistanceFromPoint(playerid, 2223.5115, -1143.1807, 25.7969),
                    GetLocation(221.2156, -117.9283, 1.5781), GetPlayerDistanceFromPoint(playerid, 221.2156, -117.9283, 1.5781),
                    GetLocation(2183.3953, -1794.7335, 13.3606), GetPlayerDistanceFromPoint(playerid, 2183.3953, -1794.7335, 13.3606),
                    GetLocation(1386.4347, 293.3129, 19.5469), GetPlayerDistanceFromPoint(playerid, 1386.4347, 293.3129, 19.5469),
                    GetLocation(-3.3894, 1212.4326, 19.3527), GetPlayerDistanceFromPoint(playerid, -3.3894, 1212.4326, 19.3527),
                    GetLocation(836.0340, -2008.6443, 12.8672), GetPlayerDistanceFromPoint(playerid, 836.0340, -2008.6443, 12.8672),
                    GetLocation(2222.4739, 1837.4940, 10.8203), GetPlayerDistanceFromPoint(playerid, 2222.4739, 1837.4940, 10.8203),
                    GetLocation(-2442.7500, 755.2680, 35.2719), GetPlayerDistanceFromPoint(playerid, -2442.7500, 755.2680, 35.2719),
                    GetLocation(2613.9070, 732.6111, 10.8203), GetPlayerDistanceFromPoint(playerid, 2613.9070, 732.6111, 10.8203),
                    GetLocation(2819.3628, -1086.1926, 30.7333), GetPlayerDistanceFromPoint(playerid, 2819.3628, -1086.1926, 30.7333),
                    GetLocation(-2882.8586, 464.0963, 4.9141), GetPlayerDistanceFromPoint(playerid, -2882.8586, 464.0963, 4.9141),
                    GetLocation(2832.8967, 1903.7570, 10.8203), GetPlayerDistanceFromPoint(playerid, 2832.8967, 1903.7570, 10.8203));
                    ShowPlayerDialog(playerid, LokasiUmum, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- GPS", minsty, "Pilih", "Batal");
                }
                case 2:
                {
                    format(minsty, sizeof(minsty), "Pekerjaan\tNama\tLokasi\tJarak\
                    \n"GRAY"Electrican Job\t"GRAY"( Multiplayer Job )\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nSupir Bus\tTerminal Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Tukang Ayam #1\t"GRAY"Kandang Ayam Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \nTukang Ayam #2\tKantor Ayam Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Petani #1\t"GRAY"Pembelian Bibit\t%s\t"YELLOW"%.2f m\
                    \nPetani #2\tLadang Tanaman\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Petani #3\t"GRAY"Olah Tanaman\t%s\t"YELLOW"%.2f m\
                    \nTukang Kayu\tHutan Kayu\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Kargo\t"GRAY"Pengambilan Truck Kargo\t%s\t"YELLOW"%.2f m\
                    \nPemerah Sapi\tLokasi Pemerahan\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Penambang #1\t"GRAY"Pertambangan Kota Aeterna\t%s\t"YELLOW"%.2f m\
                    \nPenambang #2\tPencucian Batu\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Penambang #3\t"GRAY"Peleburan Batu\t%s\t"YELLOW"%.2f m\
                    \nPenjahit #1\tKantor Penjahit\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Penjahit #2\t"GRAY"Penjualan Pakaian\t%s\t"YELLOW"%.2f m\
                    \nRecycler #1\tTempat Penyortiran\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Recycler #2\t"GRAY"Tempat Daur Ulang\t%s\t"YELLOW"%.2f m\
                    \nTukang Minyak #1\tAmbil Minyak\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Tukang Minyak #2\t"GRAY"Refined Minyak\t%s\t"YELLOW"%.2f m\
                    \nTukang Minyak #3\tMixxing Minyak\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Tukang Minyak #4\t"GRAY"Penjualan Gas\t%s\t"YELLOW"%.2f m\
                    \nNelayan #1\tRental Perahu\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Nelayan #2\t"GRAY"Penangkapan Ikan\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nTrashmaster\tSidejob\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Mower\t"GRAY"Sidejob\t%s\t"YELLOW"%.2f m\
                    \nSweeper\tSidejob\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Delivery\t"GRAY"Sidejob\t%s\t"YELLOW"%.2f m\
                    \nForklift\tSidejob\t%s\t"YELLOW"%.2f m\
                    ",
                    GetLocation(-2521.1821, -621.8853, 132.7418), GetPlayerDistanceFromPoint(playerid, -2521.1821, -621.8853, 132.7418),
                    GetLocation(96.0680,-272.6256,1.5781), GetPlayerDistanceFromPoint(playerid, 96.0680,-272.6256,1.5781),
                    GetLocation(1546.5872,28.7098,24.1406), GetPlayerDistanceFromPoint(playerid, 1546.5872,28.7098,24.1406),
                    GetLocation(1911.8618,164.4111,37.1539), GetPlayerDistanceFromPoint(playerid, 1911.8618,164.4111,37.1539),
                    GetLocation(-547.7806, -185.1288, 78.4063), GetPlayerDistanceFromPoint(playerid, -547.7806, -185.1288, 78.4063),
                    GetLocation(-376.1269, -1439.9231, 25.7266), GetPlayerDistanceFromPoint(playerid, -376.1269, -1439.9231, 25.7266),
                    GetLocation(3.9224, 66.8390, 3.1172), GetPlayerDistanceFromPoint(playerid, 3.9224, 66.8390, 3.1172),
                    GetLocation(-439.7503, -62.3335, 58.9720), GetPlayerDistanceFromPoint(playerid, -439.7503, -62.3335, 58.9720),
                    GetLocation(-1704.2260, 49.6503, 3.5495), GetPlayerDistanceFromPoint(playerid, -1704.2260, 49.6503, 3.5495),
                    GetLocation(306.8608,1141.2626,8.5859), GetPlayerDistanceFromPoint(playerid, 306.8608,1141.2626,8.5859),
                    GetLocation(686.9853,895.7302,-39.5328), GetPlayerDistanceFromPoint(playerid, 686.9853,895.7302,-39.5328),
                    GetLocation(-412.7031, 1197.8976, 2.2932), GetPlayerDistanceFromPoint(playerid, -412.7031, 1197.8976, 2.2932),
                    GetLocation(2182.6780,-2259.5010,13.3878), GetPlayerDistanceFromPoint(playerid, 2182.6780,-2259.5010,13.3878),
                    GetLocation(2348.7112, -82.1600, 26.3359), GetPlayerDistanceFromPoint(playerid, 2348.7112, -82.1600, 26.3359),
                    GetLocation(676.1796,-619.9467,16.3359), GetPlayerDistanceFromPoint(playerid, 676.1796,-619.9467,16.3359),
                    GetLocation(2297.9268, 2764.1992, 10.8203), GetPlayerDistanceFromPoint(playerid, 2297.9268, 2764.1992, 10.8203),
                    GetLocation(-31.6359, 1386.9554, 9.1719), GetPlayerDistanceFromPoint(playerid, -31.6359, 1386.9554, 9.1719),
                    GetLocation(471.9127, 1299.1512, 9.7176), GetPlayerDistanceFromPoint(playerid, 471.9127, 1299.1512, 9.7176),
                    GetLocation(497.5595, 1518.7350, 1.0000), GetPlayerDistanceFromPoint(playerid, 497.5595, 1518.7350, 1.0000),
                    GetLocation(279.6849, 1348.9515, 10.5859), GetPlayerDistanceFromPoint(playerid, 279.6849, 1348.9515, 10.5859),
                    GetLocation(2508.3833, -2205.6531, 13.5469), GetPlayerDistanceFromPoint(playerid, 2508.3833, -2205.6531, 13.5469),
                    GetLocation(111.3999, -1895.6553, 2.9408), GetPlayerDistanceFromPoint(playerid, 111.3999, -1895.6553, 2.9408),
                    GetLocation(352.4596, -2669.7722, -0.0401), GetPlayerDistanceFromPoint(playerid, 352.4596, -2669.7722, -0.0401),
                    GetLocation(1037.3827, -305.1682, 74.0922), GetPlayerDistanceFromPoint(playerid, 1037.3827, -305.1682, 74.0922),
                    GetLocation(2118.1814, -1188.9286, 23.9358), GetPlayerDistanceFromPoint(playerid, 2118.1814, -1188.9286, 23.9358),
                    GetLocation(604.9979, -1508.6365, 14.9549), GetPlayerDistanceFromPoint(playerid, 604.9979, -1508.6365, 14.9549),
                    GetLocation(1001.3441, -1445.8391, 13.5469), GetPlayerDistanceFromPoint(playerid, 1001.3441, -1445.8391, 13.5469),
                    GetLocation(-1723.7289, -63.5671, 3.5547), GetPlayerDistanceFromPoint(playerid, -1723.7289, -63.5671, 3.5547));
                    ShowPlayerDialog(playerid, LokasiPekerjaan, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- GPS", minsty, "Pilih", "Batal");
                }
                case 3:
                {
                    format(minsty, sizeof(minsty), "Hobi\tNama\tLokasi\tJarak\
                    \nMemancing #1\tSpot Pemancingan\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Memancing #2\t"GRAY"Penjualan Ikan\t%s\t"YELLOW"%.2f m\
                    \nBerburu #1\tSpot Perburuan\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Berburu #2\t"GRAY"Penjualan Hasil Buruan\t%s\t"YELLOW"%.2f m\
                    ",
                    GetLocation(383.1566,-2075.2007,7.8359), GetPlayerDistanceFromPoint(playerid, 383.1566,-2075.2007,7.8359),
                    GetLocation(1052.0156,-345.4073,73.9922), GetPlayerDistanceFromPoint(playerid, 1052.0156,-345.4073,73.9922),
                    GetLocation(-387.3126,-2259.8279,45.5646), GetPlayerDistanceFromPoint(playerid, -387.3126,-2259.8279,45.5646),
                    GetLocation(-1693.3431,-88.9088,3.5654), GetPlayerDistanceFromPoint(playerid, -1693.3431,-88.9088,3.5654));
                    ShowPlayerDialog(playerid, LokasiHobi, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- GPS", minsty, "Pilih", "Batal");
                }
                case 4:
                {
                    ShowPlayerDialog(playerid, LokasiPertokoan, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- GPS", 
                    "Toko Pakaian Terdekat\
                    \n"GRAY"Toko Elektronik Terdekat", "Pilih", "Batal");
                }
                case 5:
                {
                    new id = NearestAtm(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada ATM terdekat dari posisi anda!");
                    
                    SetPlayerRaceCheckpoint(playerid, 1, AtmData[id][atmX], AtmData[id][atmY], AtmData[id][atmZ], AtmData[id][atmX], AtmData[id][atmY], AtmData[id][atmZ], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 6:
                {
                    new id = GarkotNearby(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Garasi Umum terdekat dari posisi anda!");

                    SetPlayerRaceCheckpoint(playerid, 1, PublicGarage[id][pgPOS][0], PublicGarage[id][pgPOS][1], PublicGarage[id][pgPOS][2], PublicGarage[id][pgPOS][0], PublicGarage[id][pgPOS][1], PublicGarage[id][pgPOS][2], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 7:
                {
                    new id = NearbyTrash(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Tong Sampah terdekat dari posisi anda!");
                    
                    SetPlayerRaceCheckpoint(playerid, 1, TrashData[id][trashPos][0], TrashData[id][trashPos][1], TrashData[id][trashPos][2], 0.0, 0.0, 0.0 ,5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 8:
                {
                    new id = WarungNearby(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Warung terdekat dari posisi anda!");

                    SetPlayerRaceCheckpoint(playerid, 1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 9: // Pom bensin
                {
                    new id = GasFuelNearby(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Pom Bensin terdekat dari posisi anda!");
                    
                    SetPlayerRaceCheckpoint(playerid, 1, PomNearest[id][0], PomNearest[id][1], PomNearest[id][2], PomNearest[id][0], PomNearest[id][1], PomNearest[id][2], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 10: // Bengkel Modshop
                {
                    SetPlayerRaceCheckpoint(playerid, 1, 1101.4049, -1233.4498, 15.8203, 1101.4049, -1233.4498, 15.8203, 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 11:// Rumah saya
                {
                    new bool: found = false;
                    foreach(new id : House)
                    {
                        if(House_HaveAccess(playerid, id))
                        {
                            AccountData[playerid][pTrackHoused] = true;
                            SetPlayerRaceCheckpoint(playerid, 1, HouseData[id][hsExtPos][0], HouseData[id][hsExtPos][1], HouseData[id][hsExtPos][2], HouseData[id][hsExtPos][0], HouseData[id][hsExtPos][1], HouseData[id][hsExtPos][2], 4.0);
                            ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi telah ditandai di map!");
                            found = true;
                        }
                    }
                    if(!found) ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki/memegang kunci Rumah!");
                }
				case 12: {
					ShowBusinessLocation(playerid);
				}
				case 13: {
                    DisablePlayerRaceCheckpoint(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menghapus Checkpoint");
                    pMapCP[playerid] = false;
				}
                case 14:
                {
                    if(!GetPVarInt(playerid,  "ShareLoc"))
                    {
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada yang mengirimkan anda share lokasi!");
                    }
                    else
                    {
                        DisablePlayerRaceCheckpoint(playerid);
                        DisablePlayerCheckpoint(playerid);
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menghapus Shareloc!");
                    }
                }
            }
        }
        case LokasiPertokoan:
        {
            if(!response)
            {
                return ShowLokasiGps(playerid);
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0: // pakaian
                    {
                        new id = ClothesStoreNearby(playerid);
                        if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Toko Pakaian terdekat dari posisi anda!");

                        SetPlayerRaceCheckpoint(playerid, 1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 5.0);
                        pMapCP[playerid] = true;
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                    }
                    case 1: // elektronik
                    {
                        new id = ElectronicStoreNearby(playerid);
                        if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Toko Elektronik terdekat dari posisi anda!");

                        SetPlayerRaceCheckpoint(playerid, 1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 5.0);
                        pMapCP[playerid] = true;
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                    }
                }
            }
        }
        case LokasiPekerjaan:
        {
            if(!response) 
            {
                return ShowLokasiGps(playerid);
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2521.1821, -621.8853, 132.7418, -2521.1821, -621.8853, 132.7418, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 1:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 96.0680,-272.6256,1.5781, 96.0680,-272.6256,1.5781, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 2:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1546.5872,28.7098,24.1406, 1546.5872,28.7098,24.1406, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 3:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1911.8618,164.4111,37.1539, 1911.8618,164.4111,37.1539, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 4:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -547.7806, -185.1288, 78.4063, -547.7806, -185.1288, 78.4063, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 5:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -376.1269, -1439.9231, 25.7266, -376.1269, -1439.9231, 25.7266, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 6:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 3.9224, 66.8390, 3.1172, 3.9224, 66.8390, 3.1172, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 7:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -439.7503, -62.3335, 58.9720, -439.7503, -62.3335, 58.9720, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 8:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -1704.2260, 49.6503, 3.5495, -1704.2260, 49.6503, 3.5495, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 9:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 306.8608,1141.2626,8.5859, 306.8608,1141.2626,8.5859, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 10:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 686.9853,895.7302,-39.5328, 686.9853,895.7302,-39.5328, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 11:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -412.7031, 1197.8976, 2.2932, -412.7031, 1197.8976, 2.2932, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 12:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2182.6780,-2259.5010,13.3878, 2182.6780,-2259.5010,13.3878, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 13:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2348.7112, -82.1600, 26.3359, 2348.7112, -82.1600, 26.3359, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 14:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 676.1796,-619.9467,16.3359, 676.1796,-619.9467,16.3359, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 15:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2297.9268, 2764.1992, 10.8203, 2297.9268, 2764.1992, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 16:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -31.6359, 1386.9554, 9.1719, -31.6359, 1386.9554, 9.1719, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 17:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 471.9127, 1299.1512, 9.7176, 471.9127, 1299.1512, 9.7176, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 18:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 497.5595, 1518.7350, 1.0000, 497.5595, 1518.7350, 1.0000, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 19:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 279.6849, 1348.9515, 10.5859, 279.6849, 1348.9515, 10.5859, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 20:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2508.3833, -2205.6531, 13.5469, 2508.3833, -2205.6531, 13.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 21:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 111.3999, -1895.6553, 2.9408, 111.3999, -1895.6553, 2.9408, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 22:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 352.4596, -2669.7722, -0.0401, 352.4596, -2669.7722, -0.0401, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 23:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1037.3827, -305.1682, 74.0922, 1037.3827, -305.1682, 74.0922, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 24:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2118.1814, -1188.9286, 23.9358, 2118.1814, -1188.9286, 23.9358, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 25:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 604.9979, -1508.6365, 14.9549, 604.9979, -1508.6365, 14.9549, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 26:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1001.3441, -1445.8391, 13.5469, 1001.3441, -1445.8391,13.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 27:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -1723.7289, -63.5671, 3.5547, -1723.7289, -63.5671,3.5547, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                }
            }
        }
        case LokasiUmum:
        {
            if(!response)
            {
                return ShowLokasiGps(playerid);
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1133.9788, -2036.3195, 69.0078, 1133.9788, -2036.3195, 69.0078, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 1:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 642.4453, -1501.9276, 14.8911, 642.4453, -1501.9276, 14.8911, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 2:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1194.3477, -1326.8278, 13.3984, 1194.3477, -1326.8278, 13.3984, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 3:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -75.1937, 1035.4578, 19.7411, -75.1937, 1035.4578, 19.7411, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 4:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 424.6763,-1322.2543,15.0031, 424.6763,-1322.2543,15.0031, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 5:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 51.3536, 1222.1011, 18.9170, 51.3536, 1222.1011, 18.9170, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 6:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2858.4968, -1986.9226, 10.9361, 2858.4968, -1986.9226, 10.9361, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 7:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2767.8762, -2435.3850, 13.6850, 2767.8762, -2435.3850, 13.6850, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 8:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 384.0832,-2080.7480,7.8359, 384.0832,-2080.7480,7.8359, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 9:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2224.1106,-1152.6976,25.7977, 2224.1106,-1152.6976,25.7977, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 10:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 88.39, -280.85, 1.57, 88.39, -280.85, 1.57, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 11:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 877.7961, -1193.6427, 16.9766, 877.7961, -1193.6427, 16.9766, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 12:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 555.3796, -1292.9777, 17.2482, 555.3796, -1292.9777, 17.2482, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 13:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2076.8, -2033.33, 13.5469, 2076.8, -2033.33, 13.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 14:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -136.0707, 1116.6332, 20.1966, -136.0707, 1116.6332, 20.1966, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 15:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2223.5115, -1143.1807, 25.7969, 2223.5115, -1143.1807, 25.7969, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 16:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 221.2156, -117.9283, 1.5781, 221.2156, -117.9283, 1.5781, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 17:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2183.3953, -1794.7335, 13.3606, 2183.3953, -1794.7335, 13.3606, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 18:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1386.4347, 293.3129, 19.5469, 1386.4347, 293.3129, 19.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 19:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -3.3894, 1212.4326, 19.3527, -3.3894, 1212.4326, 19.3527, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 20:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 836.0340, -2008.6443, 12.8672, 836.0340, -2008.6443, 12.8672, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 21:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2222.4739, 1837.4940, 10.8203, 2222.4739, 1837.4940, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 22:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2442.7500, 755.2680, 35.2719, -2442.7500, 755.2680, 35.2719, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 23:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2613.9070, 732.6111, 10.8203, 2613.9070, 732.6111, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 24:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2819.3628, -1086.1926, 30.7333, 2819.3628, -1086.1926, 30.7333, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 25:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2882.8586, 464.0963, 4.9141, -2882.8586, 464.0963, 4.9141, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 26:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2832.8967, 1903.7570, 10.8203, 2832.8967, 1903.7570, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                }
            }
        }
        case LokasiHobi:
        {
            if(!response) 
            {
                return ShowLokasiGps(playerid);
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 383.1566,-2075.2007,7.8359, 383.1566,-2075.2007,7.8359, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 1:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2057.3674, -2464.5283, 31.1797, -2057.3674, -2464.5283, 31.1797, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 2:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -387.3126,-2259.8279,45.5646, -387.3126,-2259.8279,45.5646, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 3:
                    {   
                        SetPlayerRaceCheckpoint(playerid, 1, -1693.3431,-88.9088,3.5654, -1693.3431,-88.9088,3.5654, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                }
            }
        }
    }
    return 1;
}

stock ShowLokasiGps(playerid)
{
    return ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Lokasi",
				""GRAY"Workshop Kota\
                \nLokasi Umum\
                \n"GRAY"Lokasi Pekerjaan\
                \nLokasi Hobi\
                \n"GRAY"Lokasi Pertokoan\
                \nATM Terdekat\
                \n"GRAY"Garasi Umum Terdekat\
                \nTong Sampah Terdekat\
                \n"GRAY"Warung Terdekat\
                \nPom Bensin Terdekat\
                \n"GRAY"Bengkel Modshop\
                \nRumah Saya\
				\n"GRAY"Business Location\
                \n"RED"(Disable Checkpoint)\
                \n"RED"(Disable Shareloc)", "Pilih", "Batal");
}

ptask OnPhoneUpdate[1000](playerid) 
{
    if(!SQL_IsCharacterLogged(playerid))
        return 0;

    if(AccountData[playerid][phoneDurringConversation] && AccountData[playerid][phoneCallingWithPlayerID] != INVALID_PLAYER_ID)
    {
        new times[3];
        GetElapsedTime(AccountData[playerid][phoneCallingTime]++, times[0], times[1], times[2]);
        PlayerTextDrawSetString(playerid,TextDraw_PhoneCall[playerid][23], sprintf("%02d:%02d:%02d", times[0], times[1], times[2]));
        PlayerTextDrawShow(playerid,TextDraw_PhoneCall[playerid][23]);
        if(!AccountData[playerid][pOpenPhone]){
            PlayerTextDrawHide(playerid,TextDraw_PhoneCall[playerid][23]);
        }
    }
	return 1;
}