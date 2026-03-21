new PlayerText: Ui_CharSelect[MAX_PLAYERS][10];

CreateUi_CharSelect(playerid)
{
    Ui_CharSelect[playerid][0] = CreatePlayerTextDraw(playerid, 297.000, 258.000, "Character Selector");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][0], 0.187, 1.098);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][0], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][0], -260013825);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][0], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][0], 1);

    Ui_CharSelect[playerid][1] = CreatePlayerTextDraw(playerid, 320.000, 271.000, "1/3 Characters");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][1], 0.150, 0.898);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][1], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][1], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][1], 1);

    Ui_CharSelect[playerid][2] = CreatePlayerTextDraw(playerid, 206.000, 292.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][2], 231.000, 1.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][2], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][2], -156);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][2], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][2], 1);

    Ui_CharSelect[playerid][3] = CreatePlayerTextDraw(playerid, 231.000, 290.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][3], 179.000, 4.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][3], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][3], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][3], 1);

    Ui_CharSelect[playerid][4] = CreatePlayerTextDraw(playerid, 219.000, 301.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][4], 100.000, 46.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][4], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][4], -201);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][4], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][4], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_CharSelect[playerid][4], 1);

    Ui_CharSelect[playerid][5] = CreatePlayerTextDraw(playerid, 323.000, 301.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][5], 100.000, 46.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][5], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][5], -201);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][5], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][5], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_CharSelect[playerid][5], 1);

    Ui_CharSelect[playerid][6] = CreatePlayerTextDraw(playerid, 269.000, 319.000, "Clasius_Imperior");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][6], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][6], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][6], -260013825);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][6], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][6], 1);

    Ui_CharSelect[playerid][7] = CreatePlayerTextDraw(playerid, 374.000, 319.000, "Create New Characters");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][7], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][7], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][7], -260013825);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][7], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][7], 1);

    Ui_CharSelect[playerid][8] = CreatePlayerTextDraw(playerid, 219.000, 350.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, Ui_CharSelect[playerid][8], 204.000, 15.000);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][8], 1);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][8], -260013825);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][8], 255);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, Ui_CharSelect[playerid][8], 1);

    Ui_CharSelect[playerid][9] = CreatePlayerTextDraw(playerid, 321.000, 352.000, "Spawn");
    PlayerTextDrawLetterSize(playerid, Ui_CharSelect[playerid][9], 0.150, 0.999);
    PlayerTextDrawAlignment(playerid, Ui_CharSelect[playerid][9], 2);
    PlayerTextDrawColor(playerid, Ui_CharSelect[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, Ui_CharSelect[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Ui_CharSelect[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Ui_CharSelect[playerid][9], 150);
    PlayerTextDrawFont(playerid, Ui_CharSelect[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, Ui_CharSelect[playerid][9], 1);
    return 1;
}

DestroyUi_CharSelect(playerid)
{
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][0]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][1]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][2]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][3]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][4]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][5]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][6]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][7]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][8]);
    PlayerTextDrawDestroy(playerid, Ui_CharSelect[playerid][9]);
    return 1;
}

