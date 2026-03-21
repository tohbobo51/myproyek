#include <YSI\y_hooks>

new PlayerText: InventoryTD[MAX_PLAYERS][33];
new PlayerText: BoxInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: NameInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: PrevMod[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: QuantityInv[MAX_PLAYERS][MAX_INVENTORY];

new PlayerText:InventoryTD2[MAX_PLAYERS][5];
new PlayerText:BoxInv2[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:NameInv2[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:PrevMod2[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText:QuantityInv2[MAX_PLAYERS][MAX_INVENTORY];

CreateInventoryTextdraw(playerid)
{
	InventoryTD[playerid][0] = CreatePlayerTextDraw(playerid, 270.000, -47.000, "New textdraw");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][0], 0.300, 1.500);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][0], 1);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][0], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][0], 1);

	InventoryTD[playerid][1] = CreatePlayerTextDraw(playerid, 252.000, 111.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][1], 41.000, 13.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][1], 35);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][1], 1);

	InventoryTD[playerid][2] = CreatePlayerTextDraw(playerid, 113.000, 104.000, "_");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][2], 18.000, 21.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][2], -260014050);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][2], 0);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, InventoryTD[playerid][2], 2751);
	PlayerTextDrawSetPreviewRot(playerid, InventoryTD[playerid][2], -90.000, 0.000, -30.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, InventoryTD[playerid][2], 0, 0);

	InventoryTD[playerid][3] = CreatePlayerTextDraw(playerid, 115.000, 107.000, "_");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][3], 14.000, 15.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][3], -260013825);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][3], 0);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, InventoryTD[playerid][3], 2751);
	PlayerTextDrawSetPreviewRot(playerid, InventoryTD[playerid][3], -90.000, 0.000, -30.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, InventoryTD[playerid][3], 0, 0);

	InventoryTD[playerid][4] = CreatePlayerTextDraw(playerid, 130.000, 115.000, "10/19kg");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][4], 0.137, 0.797);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][4], 1);

	InventoryTD[playerid][5] = CreatePlayerTextDraw(playerid, 130.000, 107.000, "Player");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][5], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][5], 1);

	InventoryTD[playerid][6] = CreatePlayerTextDraw(playerid, 339.000, 168.000, "_");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][6], 0.726, 15.097);
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][6], 126.000, 64.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][6], 505428735);
	PlayerTextDrawUseBox(playerid, InventoryTD[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, InventoryTD[playerid][6], 50);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][6], 1);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][6], 505428735);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][6], 1);

	InventoryTD[playerid][7] = CreatePlayerTextDraw(playerid, 273.000, 113.000, "Search");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][7], 0.159, 0.797);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][7], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][7], 1);

	InventoryTD[playerid][8] = CreatePlayerTextDraw(playerid, 315.000, 282.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][8], 47.000, 18.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][8], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][8], 1);

	InventoryTD[playerid][9] = CreatePlayerTextDraw(playerid, 315.000, 171.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][9], 47.000, 18.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][9], 1);

	InventoryTD[playerid][10] = CreatePlayerTextDraw(playerid, 315.000, 257.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][10], 47.000, 18.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][10], 1);

	InventoryTD[playerid][11] = CreatePlayerTextDraw(playerid, 338.000, 174.000, "Amount");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][11], 0.148, 1.197);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][11], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][11], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][11], 1);

	InventoryTD[playerid][12] = CreatePlayerTextDraw(playerid, 338.000, 261.000, "Give");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][12], 0.158, 1.098);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][12], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][12], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][12], 1);

	InventoryTD[playerid][13] = CreatePlayerTextDraw(playerid, 338.000, 285.000, "Close");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][13], 0.158, 1.098);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][13], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][13], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][13], 1);

	InventoryTD[playerid][14] = CreatePlayerTextDraw(playerid, 338.000, 207.000, "Use");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][14], 0.158, 1.098);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][14], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][14], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][14], 1);

	InventoryTD[playerid][15] = CreatePlayerTextDraw(playerid, 327.000, 225.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][15], 13.000, 7.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][15], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][15], 1);

	InventoryTD[playerid][16] = CreatePlayerTextDraw(playerid, 333.000, 222.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][16], 9.000, 3.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][16], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][16], 1);

	InventoryTD[playerid][17] = CreatePlayerTextDraw(playerid, 336.000, 227.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][17], 11.000, 5.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][17], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][17], 1);

	InventoryTD[playerid][18] = CreatePlayerTextDraw(playerid, 349.000, 221.000, "/");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][18], 0.777, 1.199);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][18], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][18], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][18], 1);

	InventoryTD[playerid][19] = CreatePlayerTextDraw(playerid, 332.000, 220.000, "/");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][19], 0.560, 0.898);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][19], 2);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][19], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][19], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][19], 1);

	InventoryTD[playerid][20] = CreatePlayerTextDraw(playerid, 339.000, 221.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][20], 7.000, 5.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][20], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][20], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][20], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][20], 1);

	InventoryTD[playerid][21] = CreatePlayerTextDraw(playerid, 349.000, 221.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][21], 6.000, 4.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][21], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][21], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][21], 1);

	InventoryTD[playerid][22] = CreatePlayerTextDraw(playerid, 315.000, 201.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][22], 47.000, 43.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][22], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][22], -256);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][22], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][22], 1);

	InventoryTD[playerid][23] = CreatePlayerTextDraw(playerid, 256.000, 112.000, "O");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][23], 0.158, 0.697);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][23], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][23], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][23], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][23], 1);

	InventoryTD[playerid][24] = CreatePlayerTextDraw(playerid, 260.000, 116.000, "/");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][24], -0.182, 0.497);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][24], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][24], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][24], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][24], 1);

	InventoryTD[playerid][25] = CreatePlayerTextDraw(playerid, 116.000, 129.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][25], 6.000, 9.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][25], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][25], -260013825);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][25], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][25], 1);

	InventoryTD[playerid][26] = CreatePlayerTextDraw(playerid, 161.000, 129.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][26], 6.000, 9.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][26], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][26], -260013825);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][26], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][26], 1);

	InventoryTD[playerid][27] = CreatePlayerTextDraw(playerid, 206.000, 129.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][27], 6.000, 9.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][27], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][27], -260013825);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][27], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][27], 1);

	InventoryTD[playerid][28] = CreatePlayerTextDraw(playerid, 251.000, 129.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, InventoryTD[playerid][28], 6.000, 9.000);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][28], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][28], -260013825);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][28], 255);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][28], 1);

	InventoryTD[playerid][29] = CreatePlayerTextDraw(playerid, 118.000, 129.000, "1");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][29], 0.220, 0.799);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][29], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][29], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][29], 1);

	InventoryTD[playerid][30] = CreatePlayerTextDraw(playerid, 162.000, 130.000, "2");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][30], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][30], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][30], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][30], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][30], 1);

	InventoryTD[playerid][31] = CreatePlayerTextDraw(playerid, 207.000, 130.000, "3");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][31], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][31], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][31], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][31], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][31], 1);

	InventoryTD[playerid][32] = CreatePlayerTextDraw(playerid, 252.000, 130.000, "4");
	PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][32], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, InventoryTD[playerid][32], 1);
	PlayerTextDrawColor(playerid, InventoryTD[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][32], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][32], 150);
	PlayerTextDrawFont(playerid, InventoryTD[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][32], 1);

    BoxInv[playerid][0] = CreatePlayerTextDraw(playerid, 116.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][0], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][0], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][0], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][0], 1);

    BoxInv[playerid][1] = CreatePlayerTextDraw(playerid, 161.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][1], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][1], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][1], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][1], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][1], 1);

    BoxInv[playerid][2] = CreatePlayerTextDraw(playerid, 206.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][2], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][2], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][2], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][2], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][2], 1);

    BoxInv[playerid][3] = CreatePlayerTextDraw(playerid, 251.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][3], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][3], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][3], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][3], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][3], 1);

    BoxInv[playerid][4] = CreatePlayerTextDraw(playerid, 116.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][4], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][4], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][4], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][4], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][4], 1);

    BoxInv[playerid][5] = CreatePlayerTextDraw(playerid, 161.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][5], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][5], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][5], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][5], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][5], 1);

    BoxInv[playerid][6] = CreatePlayerTextDraw(playerid, 206.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][6], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][6], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][6], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][6], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][6], 1);

    BoxInv[playerid][7] = CreatePlayerTextDraw(playerid, 251.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][7], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][7], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][7], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][7], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][7], 1);

    BoxInv[playerid][8] = CreatePlayerTextDraw(playerid, 116.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][8], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][8], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][8], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][8], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][8], 1);

    BoxInv[playerid][9] = CreatePlayerTextDraw(playerid, 161.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][9], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][9], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][9], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][9], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][9], 1);

    BoxInv[playerid][10] = CreatePlayerTextDraw(playerid, 206.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][10], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][10], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][10], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][10], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][10], 1);

    BoxInv[playerid][11] = CreatePlayerTextDraw(playerid, 251.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][11], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][11], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][11], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][11], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][11], 1);

    BoxInv[playerid][12] = CreatePlayerTextDraw(playerid, 116.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][12], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][12], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][12], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][12], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][12], 1);

    BoxInv[playerid][13] = CreatePlayerTextDraw(playerid, 161.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][13], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][13], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][13], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][13], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][13], 1);

    BoxInv[playerid][14] = CreatePlayerTextDraw(playerid, 206.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][14], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][14], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][14], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][14], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][14], 1);

    BoxInv[playerid][15] = CreatePlayerTextDraw(playerid, 251.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][15], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][15], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][15], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][15], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv[playerid][15], 1);

    PrevMod[playerid][0] = CreatePlayerTextDraw(playerid, 93.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][0], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][0], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][0], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][0], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][0], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][0], 0, 0);


	PrevMod[playerid][1] = CreatePlayerTextDraw(playerid, 137.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][1], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][1], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][1], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][1], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][1], 0, 0);

	PrevMod[playerid][2] = CreatePlayerTextDraw(playerid, 182.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][2], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][2], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][2], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][2], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][2], 0, 0);

	PrevMod[playerid][3] = CreatePlayerTextDraw(playerid, 228.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][3], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][3], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][3], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][3], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][3], 0, 0);

	PrevMod[playerid][4] = CreatePlayerTextDraw(playerid, 93.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][4], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][4], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][4], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][4], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][4], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][4], 0, 0);

	PrevMod[playerid][5] = CreatePlayerTextDraw(playerid, 137.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][5], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][5], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][5], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][5], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][5], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][5], 0, 0);

	PrevMod[playerid][6] = CreatePlayerTextDraw(playerid, 182.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][6], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][6], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][6], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][6], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][6], 0, 0);

	PrevMod[playerid][7] = CreatePlayerTextDraw(playerid, 228.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][7], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][7], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][7], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][7], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][7], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][7], 0, 0);

	PrevMod[playerid][8] = CreatePlayerTextDraw(playerid, 93.000, 213.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][8], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][8], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][8], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][8], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][8], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][8], 0, 0);

	PrevMod[playerid][9] = CreatePlayerTextDraw(playerid, 137.000, 213.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][9], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][9], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][9], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][9], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][9], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][9], 0, 0);

	PrevMod[playerid][10] = CreatePlayerTextDraw(playerid, 182.000, 213.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][10], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][10], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][10], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][10], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][10], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][10], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][10], 0, 0);

	PrevMod[playerid][11] = CreatePlayerTextDraw(playerid, 228.000, 213.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][11], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][11], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][11],-1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][11], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][11], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][11], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][11], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][11], 0, 0);

	PrevMod[playerid][12] = CreatePlayerTextDraw(playerid, 93.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][12], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][12], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][12], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][12], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][12], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][12], 0, 0);

	PrevMod[playerid][13] = CreatePlayerTextDraw(playerid, 137.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][13], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][13], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][13], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][13], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][13], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][13], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][13], 0, 0);

	PrevMod[playerid][14] = CreatePlayerTextDraw(playerid, 182.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][14], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][14], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][14], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][14], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][14], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][14], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][14], 0, 0);

	PrevMod[playerid][15] = CreatePlayerTextDraw(playerid, 228.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod[playerid][15], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod[playerid][15], 1);
	PlayerTextDrawColor(playerid, PrevMod[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawFont(playerid, PrevMod[playerid][15], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod[playerid][15], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][15], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][15], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][15], 0, 0);

    NameInv[playerid][0] = CreatePlayerTextDraw(playerid, 138.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][0], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][0], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][0], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][0], 1);

	NameInv[playerid][1] = CreatePlayerTextDraw(playerid, 182.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][1], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][1], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][1], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][1], 1);

	NameInv[playerid][2] = CreatePlayerTextDraw(playerid, 227.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][2], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][2], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][2], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][2], 1);

	NameInv[playerid][3] = CreatePlayerTextDraw(playerid, 272.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][3], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][3], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][3], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][3], 1);

	NameInv[playerid][4] = CreatePlayerTextDraw(playerid, 138.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][4], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][4], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][4], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][4], 1);

	NameInv[playerid][5] = CreatePlayerTextDraw(playerid, 182.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][5], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][5], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][5], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][5], 1);

	NameInv[playerid][6] = CreatePlayerTextDraw(playerid, 227.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][6], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][6], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][6], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][6], 1);

	NameInv[playerid][7] = CreatePlayerTextDraw(playerid, 272.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][7], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][7], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][7], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][7], 1);

	NameInv[playerid][8] = CreatePlayerTextDraw(playerid, 138.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][8], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][8], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][8], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][8], 1);

	NameInv[playerid][9] = CreatePlayerTextDraw(playerid, 182.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][9], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][9], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][9], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][9], 1);

	NameInv[playerid][10] = CreatePlayerTextDraw(playerid, 227.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][10], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][10], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][10], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][10], 1);

	NameInv[playerid][11] = CreatePlayerTextDraw(playerid, 272.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][11], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][11], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][11], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][11], 1);

	NameInv[playerid][12] = CreatePlayerTextDraw(playerid, 138.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][12], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][12], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][12], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][12], 1);

	NameInv[playerid][13] = CreatePlayerTextDraw(playerid, 182.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][13], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][13], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][13], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][13], 1);

	NameInv[playerid][14] = CreatePlayerTextDraw(playerid, 227.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][14], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][14], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][14], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][14], 1);

	NameInv[playerid][15] = CreatePlayerTextDraw(playerid, 272.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv[playerid][15], 0.125, 0.797);
	PlayerTextDrawAlignment(playerid, NameInv[playerid][15], 2);
	PlayerTextDrawColor(playerid, NameInv[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, NameInv[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, NameInv[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][15], 150);
	PlayerTextDrawFont(playerid, NameInv[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, NameInv[playerid][15], 1);

    QuantityInv[playerid][0] = CreatePlayerTextDraw(playerid, 148.000, 130.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][0], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][0], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][0], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][0], 1);

	QuantityInv[playerid][1] = CreatePlayerTextDraw(playerid, 193.000, 130.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][1], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][1], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][1], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][1], 1);

	QuantityInv[playerid][2] = CreatePlayerTextDraw(playerid, 238.000, 130.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][2], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][2], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][2], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][2], 1);

	QuantityInv[playerid][3] = CreatePlayerTextDraw(playerid, 283.000, 130.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][3], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][3], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][3], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][3], 1);

	QuantityInv[playerid][4] = CreatePlayerTextDraw(playerid, 148.000, 183.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][4], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][4], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][4], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][4], 1);

	QuantityInv[playerid][5] = CreatePlayerTextDraw(playerid, 193.000, 183.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][5], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][5], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][5], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][5], 1);

	QuantityInv[playerid][6] = CreatePlayerTextDraw(playerid, 238.000, 183.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][6], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][6], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][6], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][6], 1);

	QuantityInv[playerid][7] = CreatePlayerTextDraw(playerid, 283.000, 183.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][7], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][7], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][7], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][7], 1);

	QuantityInv[playerid][8] = CreatePlayerTextDraw(playerid, 148.000, 238.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][8], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][8], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][8], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][8], 1);

	QuantityInv[playerid][9] = CreatePlayerTextDraw(playerid, 193.000, 238.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][9], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][9], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][9], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][9], 1);

	QuantityInv[playerid][10] = CreatePlayerTextDraw(playerid, 238.000, 238.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][10], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][10], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][10], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][10], 1);

	QuantityInv[playerid][11] = CreatePlayerTextDraw(playerid, 283.000, 238.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][11], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][11], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][11], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][11], 1);

	QuantityInv[playerid][12] = CreatePlayerTextDraw(playerid, 148.000, 292.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][12], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][12], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][12], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][12], 1);

	QuantityInv[playerid][13] = CreatePlayerTextDraw(playerid, 193.000, 292.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][13], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][13], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][13], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][13], 1);

	QuantityInv[playerid][14] = CreatePlayerTextDraw(playerid, 238.000, 292.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][14], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][14], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][14], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][14], 1);

	QuantityInv[playerid][15] = CreatePlayerTextDraw(playerid, 283.000, 292.000, "1 (000.0)");
	PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][15], 0.116, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv[playerid][15], 2);
	PlayerTextDrawColor(playerid, QuantityInv[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][15], 150);
	PlayerTextDrawFont(playerid, QuantityInv[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][15], 1);

	InventoryTD2[playerid][0] = CreatePlayerTextDraw(playerid, 398.000, 108.000, "Grounds");
	PlayerTextDrawLetterSize(playerid, InventoryTD2[playerid][0], 0.158, 0.898);
	PlayerTextDrawAlignment(playerid, InventoryTD2[playerid][0], 1);
	PlayerTextDrawColor(playerid, InventoryTD2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD2[playerid][0], 150);
	PlayerTextDrawFont(playerid, InventoryTD2[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD2[playerid][0], 1);

	InventoryTD2[playerid][1] = CreatePlayerTextDraw(playerid, 405.000, 115.000, "0/10kg");
	PlayerTextDrawLetterSize(playerid, InventoryTD2[playerid][1], 0.119, 0.697);
	PlayerTextDrawAlignment(playerid, InventoryTD2[playerid][1], 2);
	PlayerTextDrawColor(playerid, InventoryTD2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, InventoryTD2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD2[playerid][1], 150);
	PlayerTextDrawFont(playerid, InventoryTD2[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD2[playerid][1], 1);

	InventoryTD2[playerid][2] = CreatePlayerTextDraw(playerid, 381.000, 104.000, "_");
	PlayerTextDrawTextSize(playerid, InventoryTD2[playerid][2], 18.000, 21.000);
	PlayerTextDrawAlignment(playerid, InventoryTD2[playerid][2], 1);
	PlayerTextDrawColor(playerid, InventoryTD2[playerid][2], -260014050);
	PlayerTextDrawSetShadow(playerid, InventoryTD2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD2[playerid][2], 0);
	PlayerTextDrawFont(playerid, InventoryTD2[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, InventoryTD2[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, InventoryTD2[playerid][2], 2751);
	PlayerTextDrawSetPreviewRot(playerid, InventoryTD2[playerid][2], -90.000, 0.000, -30.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, InventoryTD2[playerid][2], 0, 0);

	InventoryTD2[playerid][3] = CreatePlayerTextDraw(playerid, 383.000, 107.000, "_");
	PlayerTextDrawTextSize(playerid, InventoryTD2[playerid][3], 14.000, 16.000);
	PlayerTextDrawAlignment(playerid, InventoryTD2[playerid][3], 1);
	PlayerTextDrawColor(playerid, InventoryTD2[playerid][3], -260013825);
	PlayerTextDrawSetShadow(playerid, InventoryTD2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, InventoryTD2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD2[playerid][3], 0);
	PlayerTextDrawFont(playerid, InventoryTD2[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, InventoryTD2[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, InventoryTD2[playerid][3], 2751);
	PlayerTextDrawSetPreviewRot(playerid, InventoryTD2[playerid][3], -90.000, 0.000, -30.000, 0.799);
	PlayerTextDrawSetPreviewVehCol(playerid, InventoryTD2[playerid][3], 0, 0);

	InventoryTD2[playerid][4] = CreatePlayerTextDraw(playerid, 450.000, 229.000, "");
	PlayerTextDrawLetterSize(playerid, InventoryTD2[playerid][4], 0.587, 0.398);
	PlayerTextDrawTextSize(playerid, InventoryTD2[playerid][4], 156.000, 40.000);
	PlayerTextDrawAlignment(playerid, InventoryTD2[playerid][4], 2);
	PlayerTextDrawColor(playerid, InventoryTD2[playerid][4], 505428735);
	PlayerTextDrawUseBox(playerid, InventoryTD2[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, InventoryTD2[playerid][4], 505428735);
	PlayerTextDrawSetShadow(playerid, InventoryTD2[playerid][4], 1);
	PlayerTextDrawSetOutline(playerid, InventoryTD2[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, InventoryTD2[playerid][4], 505428735);
	PlayerTextDrawFont(playerid, InventoryTD2[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, InventoryTD2[playerid][4], 1);

    BoxInv2[playerid][0] = CreatePlayerTextDraw(playerid, 383.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][0], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][0], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][0], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][0], 1);

    BoxInv2[playerid][1] = CreatePlayerTextDraw(playerid, 428.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][1], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][1], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][1], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][1], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][1], 1);

    BoxInv2[playerid][2] = CreatePlayerTextDraw(playerid, 473.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][2], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][2], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][2], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][2], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][2], 1);

    BoxInv2[playerid][3] = CreatePlayerTextDraw(playerid, 518.000, 129.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][3], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][3], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][3], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][3], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][3], 1);

    BoxInv2[playerid][4] = CreatePlayerTextDraw(playerid, 383.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][4], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][4], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][4], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][4], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][4], 1);

    BoxInv2[playerid][5] = CreatePlayerTextDraw(playerid, 428.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][5], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][5], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][5], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][5], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][5], 1);

    BoxInv2[playerid][6] = CreatePlayerTextDraw(playerid, 473.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][6], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][6], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][6], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][6], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][6], 1);

    BoxInv2[playerid][7] = CreatePlayerTextDraw(playerid, 518.000, 183.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][7], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][7], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][7], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][7], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][7], 1);

    BoxInv2[playerid][8] = CreatePlayerTextDraw(playerid, 383.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][8], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][8], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][8], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][8], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][8], 1);

    BoxInv2[playerid][9] = CreatePlayerTextDraw(playerid, 428.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][9], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][9], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][9], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][9], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][9], 1);

    BoxInv2[playerid][10] = CreatePlayerTextDraw(playerid, 473.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][10], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][10], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][10], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][10], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][10], 1);

    BoxInv2[playerid][11] = CreatePlayerTextDraw(playerid, 518.000, 237.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][11], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][11], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][11], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][11], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][11], 1);

    BoxInv2[playerid][12] = CreatePlayerTextDraw(playerid, 383.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][12], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][12], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][12], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][12], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][12], 1);

    BoxInv2[playerid][13] = CreatePlayerTextDraw(playerid, 428.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][13], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][13], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][13], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][13], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][13], 1);

    BoxInv2[playerid][14] = CreatePlayerTextDraw(playerid, 473.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][14], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][14], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][14], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][14], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][14], 1);

    BoxInv2[playerid][15] = CreatePlayerTextDraw(playerid, 518.000, 291.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv2[playerid][15], 43.000, 52.000);
    PlayerTextDrawAlignment(playerid, BoxInv2[playerid][15], 1);
    PlayerTextDrawColor(playerid, BoxInv2[playerid][15], 50);
    PlayerTextDrawSetShadow(playerid, BoxInv2[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv2[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv2[playerid][15], 255);
    PlayerTextDrawFont(playerid, BoxInv2[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv2[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, BoxInv2[playerid][15], 1);

    PrevMod2[playerid][0] = CreatePlayerTextDraw(playerid, 359.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][0], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][0], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][0], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][0], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][0], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][0], 0, 0);

	PrevMod2[playerid][1] = CreatePlayerTextDraw(playerid, 404.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][1], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][1], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][1], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][1], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][1], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][1], 0, 0);

	PrevMod2[playerid][2] = CreatePlayerTextDraw(playerid, 449.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][2], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][2], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][2], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][2], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][2], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][2], 0, 0);

	PrevMod2[playerid][3] = CreatePlayerTextDraw(playerid, 494.000, 106.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][3], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][3], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][3], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][3], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][3], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][3], 0, 0);

	PrevMod2[playerid][4] = CreatePlayerTextDraw(playerid, 359.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][4], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][4], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][4], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][4], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][4], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][4], 0, 0);

	PrevMod2[playerid][5] = CreatePlayerTextDraw(playerid, 404.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][5], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][5], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][5], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][5], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][5], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][5], 0, 0);

	PrevMod2[playerid][6] = CreatePlayerTextDraw(playerid, 449.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][6], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][6], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][6], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][6], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][6], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][6], 0, 0);

	PrevMod2[playerid][7] = CreatePlayerTextDraw(playerid, 494.000, 160.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][7], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][7], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][7], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][7], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][7], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][7], 0, 0);

	PrevMod2[playerid][8] = CreatePlayerTextDraw(playerid, 359.000, 214.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][8], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][8], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][8], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][8], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][8], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][8], 0, 0);

	PrevMod2[playerid][9] = CreatePlayerTextDraw(playerid, 404.000, 214.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][9], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][9], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][9], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][9], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][9], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][9], 0, 0);

	PrevMod2[playerid][10] = CreatePlayerTextDraw(playerid, 449.000, 214.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][10], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][10], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][10], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][10], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][10], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][10], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][10], 0, 0);

	PrevMod2[playerid][11] = CreatePlayerTextDraw(playerid, 494.000, 214.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][11], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][11], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][11], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][11], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][11], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][11], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][11], 0, 0);

	PrevMod2[playerid][12] = CreatePlayerTextDraw(playerid, 359.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][12], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][12], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][12], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][12], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][12], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][12], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][12], 0, 0);

	PrevMod2[playerid][13] = CreatePlayerTextDraw(playerid, 404.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][13], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][13], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][13], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][13], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][13], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][13], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][13], 0, 0);

	PrevMod2[playerid][14] = CreatePlayerTextDraw(playerid, 449.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][14], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][14], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][14], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][14], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][14], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][14], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][14], 0, 0);

	PrevMod2[playerid][15] = CreatePlayerTextDraw(playerid, 494.000, 268.000, "_");
	PlayerTextDrawTextSize(playerid, PrevMod2[playerid][15], 90.000, 90.000);
	PlayerTextDrawAlignment(playerid, PrevMod2[playerid][15], 1);
	PlayerTextDrawColor(playerid, PrevMod2[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawFont(playerid, PrevMod2[playerid][15], 5);
	PlayerTextDrawSetProportional(playerid, PrevMod2[playerid][15], 0);
	PlayerTextDrawSetPreviewModel(playerid, PrevMod2[playerid][15], 18873);
	PlayerTextDrawSetPreviewRot(playerid, PrevMod2[playerid][15], 0.000, 0.000, 0.000, 2.000);
	PlayerTextDrawSetPreviewVehCol(playerid, PrevMod2[playerid][15], 0, 0);

    NameInv2[playerid][0] = CreatePlayerTextDraw(playerid, 405.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][0], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][0], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][0], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][0], 1);

	NameInv2[playerid][1] = CreatePlayerTextDraw(playerid, 449.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][1], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][1], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][1], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][1], 1);

	NameInv2[playerid][2] = CreatePlayerTextDraw(playerid, 494.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][2], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][2], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][2], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][2], 1);

	NameInv2[playerid][3] = CreatePlayerTextDraw(playerid, 539.000, 173.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][3], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][3], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][3], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][3], 1);

	NameInv2[playerid][4] = CreatePlayerTextDraw(playerid, 405.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][4], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][4], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][4], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][4], 1);

	NameInv2[playerid][5] = CreatePlayerTextDraw(playerid, 449.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][5], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][5], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][5], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][5], 1);

	NameInv2[playerid][6] = CreatePlayerTextDraw(playerid, 494.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][6], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][6], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][6], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][6], 1);

	NameInv2[playerid][7] = CreatePlayerTextDraw(playerid, 539.000, 227.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][7], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][7], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][7], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][7], 1);

	NameInv2[playerid][8] = CreatePlayerTextDraw(playerid, 405.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][8], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][8], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][8], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][8], 1);

	NameInv2[playerid][9] = CreatePlayerTextDraw(playerid, 449.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][9], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][9], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][9], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][9], 1);

	NameInv2[playerid][10] = CreatePlayerTextDraw(playerid, 494.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][10], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][10], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][10], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][10], 1);

	NameInv2[playerid][11] = CreatePlayerTextDraw(playerid, 539.000, 281.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][11], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][11], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][11], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][11], 1);

	NameInv2[playerid][12] = CreatePlayerTextDraw(playerid, 405.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][12], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][12], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][12], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][12], 1);

	NameInv2[playerid][13] = CreatePlayerTextDraw(playerid, 449.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][13], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][13], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][13], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][13], 1);

	NameInv2[playerid][14] = CreatePlayerTextDraw(playerid, 494.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][14], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][14], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][14], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][14], 1);

	NameInv2[playerid][15] = CreatePlayerTextDraw(playerid, 539.000, 335.000, "Snack");
	PlayerTextDrawLetterSize(playerid, NameInv2[playerid][15], 0.126, 0.697);
	PlayerTextDrawAlignment(playerid, NameInv2[playerid][15], 2);
	PlayerTextDrawColor(playerid, NameInv2[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, NameInv2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, NameInv2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, NameInv2[playerid][15], 150);
	PlayerTextDrawFont(playerid, NameInv2[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, NameInv2[playerid][15], 1);

    QuantityInv2[playerid][0] = CreatePlayerTextDraw(playerid, 418.000, 129.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][0], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][0], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][0], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][0], 1);

	QuantityInv2[playerid][1] = CreatePlayerTextDraw(playerid, 462.000, 129.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][1], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][1], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][1], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][1], 1);

	QuantityInv2[playerid][2] = CreatePlayerTextDraw(playerid, 507.000, 129.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][2], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][2], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][2], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][2], 1);

	QuantityInv2[playerid][3] = CreatePlayerTextDraw(playerid, 552.000, 129.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][3], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][3], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][3], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][3], 1);

	QuantityInv2[playerid][4] = CreatePlayerTextDraw(playerid, 418.000, 183.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][4], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][4], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][4], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][4], 1);

	QuantityInv2[playerid][5] = CreatePlayerTextDraw(playerid, 462.000, 183.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][5], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][5], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][5], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][5], 1);

	QuantityInv2[playerid][6] = CreatePlayerTextDraw(playerid, 507.000, 183.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][6], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][6], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][6], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][6], 1);

	QuantityInv2[playerid][7] = CreatePlayerTextDraw(playerid, 552.000, 183.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][7], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][7], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][7], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][7], 1);

	QuantityInv2[playerid][8] = CreatePlayerTextDraw(playerid, 418.000, 237.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][8], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][8], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][8], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][8], 1);

	QuantityInv2[playerid][9] = CreatePlayerTextDraw(playerid, 462.000, 237.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][9], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][9], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][9], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][9], 1);

	QuantityInv2[playerid][10] = CreatePlayerTextDraw(playerid, 507.000, 237.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][10], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][10], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][10], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][10], 1);

	QuantityInv2[playerid][11] = CreatePlayerTextDraw(playerid, 552.000, 237.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][11], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][11], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][11], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][11], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][11], 1);

	QuantityInv2[playerid][12] = CreatePlayerTextDraw(playerid, 418.000, 291.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][12], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][12], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][12], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][12], 1);

	QuantityInv2[playerid][13] = CreatePlayerTextDraw(playerid, 462.000, 291.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][13], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][13], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][13], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][13], 1);

	QuantityInv2[playerid][14] = CreatePlayerTextDraw(playerid, 507.000, 291.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][14], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][14], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][14], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][14], 1);

	QuantityInv2[playerid][15] = CreatePlayerTextDraw(playerid, 552.000, 291.000, "1 (0.00)");
	PlayerTextDrawLetterSize(playerid, QuantityInv2[playerid][15], 0.104, 0.597);
	PlayerTextDrawAlignment(playerid, QuantityInv2[playerid][15], 2);
	PlayerTextDrawColor(playerid, QuantityInv2[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, QuantityInv2[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, QuantityInv2[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, QuantityInv2[playerid][15], 150);
	PlayerTextDrawFont(playerid, QuantityInv2[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, QuantityInv2[playerid][15], 1);
    return 1;
}

DestroyInventoryTextdraw(playerid)
{
    for(new index; index < 33; index ++)
    {
        PlayerTextDrawDestroy(playerid, InventoryTD[playerid][index]);
    }
    
    for(new index; index < MAX_INVENTORY; index ++)
    {
        PlayerTextDrawDestroy(playerid, NameInv[playerid][index]);
        PlayerTextDrawDestroy(playerid, PrevMod[playerid][index]);
        PlayerTextDrawDestroy(playerid, QuantityInv[playerid][index]);  
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
    CreateInventoryTextdraw(playerid);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DestroyInventoryTextdraw(playerid);
    return 1;
}

ShowInventoryTD(playerid)
{
    for(new index = 0; index < 33; index ++)
    {
        PlayerTextDrawShow(playerid, InventoryTD[playerid][index]);
    }
    for(new i; i < 16; i++) 
	{
		PlayerTextDrawShow(playerid, BoxInv[playerid][i]);
    }

    for(new index = 0; index > MAX_INVENTORY; index ++)
    {
        PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][index], 0);
    }
    AccountData[playerid][pSelectItem] = -1;
    AccountData[playerid][pAmountInv] = 0;
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][11], "Jumlah");
    return 1;
}

stock Inventory_UpdateSlot(playerid, index) 
{
	if(!IsPlayerConnected(playerid))
		return 1;

	if(InventoryData[playerid][index][invExists])
	{
		new string[128];
		strunpack(string, InventoryData[playerid][index][invItem], 32);

		PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][index], InventoryData[playerid][index][invModel]);
		PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][index], 0);
		PlayerTextDrawShow(playerid, PrevMod[playerid][index]);

		PlayerTextDrawSetString(playerid, NameInv[playerid][index], string);
		PlayerTextDrawShow(playerid, NameInv[playerid][index]);

		format(string, sizeof(string), "%dx", InventoryData[playerid][index][invQuantity]);
		PlayerTextDrawSetString(playerid, QuantityInv[playerid][index], string);
		PlayerTextDrawShow(playerid, QuantityInv[playerid][index]);
		
	}
	else
	{
		PlayerTextDrawHide(playerid, PrevMod[playerid][index]);
		PlayerTextDrawHide(playerid, NameInv[playerid][index]);
		PlayerTextDrawHide(playerid, QuantityInv[playerid][index]);
		PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][index], 19300);
		PlayerTextDrawShow(playerid, PrevMod[playerid][index]);
	}
	
	return 1;
}

stock Inventory_Show(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

	selectItemWarung[playerid] = -1;
    ShowInventoryTD(playerid);

    static string[128];
    format(string, sizeof(string), "%.3f/50kg", AccountData[playerid][pBeratItem]);
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][4], string);
    PlayerTextDrawShow(playerid, InventoryTD[playerid][4]);

    for (new index = 0; index < MAX_INVENTORY; index ++)
    {
        if(InventoryData[playerid][index][invExists])
        {
            for (new i; i < sizeof(g_aInventoryItems); i ++) if(!strcmp(g_aInventoryItems[i][e_InventoryItem], InventoryData[playerid][index][invItem], true))
            {
                // set preview model
                PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][index], InventoryData[playerid][index][invModel]);
                PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][index], 0);
                PlayerTextDrawShow(playerid, PrevMod[playerid][index]);

                // set string textdraw
                format(string, sizeof(string), "%s", g_aInventoryItems[i][e_InventoryItem]);
                PlayerTextDrawSetString(playerid, NameInv[playerid][index], string);
                PlayerTextDrawShow(playerid, NameInv[playerid][index]);

                // set amount textdraw
                format(string, sizeof(string), "%dx", InventoryData[playerid][index][invQuantity]);
                PlayerTextDrawSetString(playerid, QuantityInv[playerid][index], string);
                PlayerTextDrawShow(playerid, QuantityInv[playerid][index]);

				PlayerTextDrawShow(playerid, BoxInv[playerid][index]);
            }
        }
        else
        {
            // Hide the textdraws for empty slots
            PlayerTextDrawHide(playerid, PrevMod[playerid][index]);
            PlayerTextDrawHide(playerid, NameInv[playerid][index]);
            PlayerTextDrawHide(playerid, QuantityInv[playerid][index]);
        }
    }

    if(AccountData[playerid][pStorageSelect] == 0 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        for(new i; i < 16; i++) 
        {
            if(i < 8) 
            {
                PlayerTextDrawShow(playerid, BoxInv2[playerid][i]);
            }
            
            if(i < 5) {
                PlayerTextDrawShow(playerid, InventoryTD2[playerid][i]);
            }
            PlayerTextDrawSetString(playerid, InventoryTD2[playerid][0], "Grounds");
            PlayerTextDrawSetString(playerid, InventoryTD2[playerid][3], "_");
        }

        InventoryDrop(playerid);
    }

	if(AccountData[playerid][pStorageSelect] == 1 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) 
	{
		for(new i; i < 5; i++) {
			if(i < 8) 
			{
				PlayerTextDrawShow(playerid, BoxInv2[playerid][i]);
			}
			if(i < 4) {
				PlayerTextDrawShow(playerid, InventoryTD2[playerid][i]);
			}
		}
	}

    Toggle_AllTextdraws(playerid, false);
    SelectTextDraw(playerid, 0xE29E9EFF);
    return 1;
}

stock Inventory_Close(playerid)
{
    AccountData[playerid][pStorageSelect] = -1;
	selectItemWarung[playerid] = -1;

    for(new index = 0; index < 33; index ++) {
        PlayerTextDrawHide(playerid, InventoryTD[playerid][index]);

        if(index < 5) {
            PlayerTextDrawHide(playerid, InventoryTD2[playerid][index]);
        }
    }
    for(new index = 0; index < MAX_INVENTORY; index ++) {
        PlayerTextDrawHide(playerid, PrevMod[playerid][index]);
        PlayerTextDrawHide(playerid, BoxInv[playerid][index]);
        PlayerTextDrawHide(playerid, NameInv[playerid][index]);
        PlayerTextDrawHide(playerid, QuantityInv[playerid][index]);

        PlayerTextDrawHide(playerid, PrevMod2[playerid][index]);
        PlayerTextDrawHide(playerid, BoxInv2[playerid][index]);
        PlayerTextDrawHide(playerid, NameInv2[playerid][index]);
        PlayerTextDrawHide(playerid, QuantityInv2[playerid][index]);
    }
    AccountData[playerid][pSelectItem] = -1;
    AccountData[playerid][pAmountInv] = 0;
    Toggle_AllTextdraws(playerid, true);
    CancelSelectTextDraw(playerid);
    return true;
}