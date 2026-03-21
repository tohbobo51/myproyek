enum e_itembox
{
	ItemBoxIcon,
	ItemBoxMessage[320],
	ItemBoxTotalMessage[200],
	ItemBoxLoading,
	ItemBoxSize
}
new ItemBox[MAX_PLAYERS][7][e_itembox];
new MaxShowItemBox[MAX_PLAYERS];
new PlayerText:ui_showitembox[MAX_PLAYERS][7*10];
new IndexItemBox[MAX_PLAYERS];

function HideItemBox(playerid)
{
	if(!IndexItemBox[playerid]) return 1;
	--IndexItemBox[playerid];
	MaxShowItemBox[playerid]--;
	for(new i=-1;++i<10;) PlayerTextDrawDestroy(playerid, ui_showitembox[playerid][(IndexItemBox[playerid]*10)+i]);
	return 1;
}

stock ShowItemBox(playerid, string[], total[], model)
{
	if(MaxShowItemBox[playerid] == 4) 
        return 1;
        
	MaxShowItemBox[playerid]++;
	for(new x=-1; ++x <IndexItemBox[playerid];)
	{
		for(new i=-1;++i<10;) PlayerTextDrawDestroy(playerid, ui_showitembox[playerid][(x*10) + i]);
		ItemBox[playerid][IndexItemBox[playerid]-x] = ItemBox[playerid][(IndexItemBox[playerid]-x)-1];
	}
    PlayerPlaySound(playerid, 1150, 0.0, 0.0, 0.0);
	format(ItemBox[playerid][0][ItemBoxMessage], 320, "%s", string);
	format(ItemBox[playerid][0][ItemBoxTotalMessage], 200, "%s", total);
	ItemBox[playerid][0][ItemBoxIcon] = model;

	++IndexItemBox[playerid];
	new Float:new_x=0.0;
	for(new x=-1;++x<IndexItemBox[playerid];)
	{
		CreateItemBox(playerid, x, x * 10, new_x);
		new_x += (ItemBox[playerid][x][ItemBoxSize]*7.25)+55.0;
	}
	SetTimerEx("HideItemBox", 2500, false, "d", playerid);
	return 1;
}

stock CreateItemBox(const playerid, index, i, const Float:new_x)
{
	new lines = ItemBox[playerid][index][ItemBoxSize];
	new Float:x = (lines * 10) + new_x;
	new Float:newpos = x+10.0;

    ui_showitembox[playerid][++i] = CreatePlayerTextDraw(playerid, 316.000 + newpos, 313.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ui_showitembox[playerid][i], 45.000, 47.000);
    PlayerTextDrawAlignment(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawColor(playerid, ui_showitembox[playerid][i], 50);
    PlayerTextDrawSetShadow(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_showitembox[playerid][i], 255);
    PlayerTextDrawFont(playerid, ui_showitembox[playerid][i], 4);
    PlayerTextDrawSetProportional(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawShow(playerid, ui_showitembox[playerid][i]);

    ui_showitembox[playerid][++i] = CreatePlayerTextDraw(playerid, 315.000 + newpos, 356.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ui_showitembox[playerid][i], 5.000, 12.000);
    PlayerTextDrawAlignment(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawColor(playerid, ui_showitembox[playerid][i], X11_SALMON);
    PlayerTextDrawSetShadow(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_showitembox[playerid][i], 255);
    PlayerTextDrawFont(playerid, ui_showitembox[playerid][i], 4);
    PlayerTextDrawSetProportional(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawShow(playerid, ui_showitembox[playerid][i]);

    ui_showitembox[playerid][++i] = CreatePlayerTextDraw(playerid, 357.000 + newpos, 356.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ui_showitembox[playerid][i], 5.000, 12.000);
    PlayerTextDrawAlignment(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawColor(playerid, ui_showitembox[playerid][i], X11_SALMON);
    PlayerTextDrawSetShadow(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_showitembox[playerid][i], 255);
    PlayerTextDrawFont(playerid, ui_showitembox[playerid][i], 4);
    PlayerTextDrawSetProportional(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawShow(playerid, ui_showitembox[playerid][i]);

    ui_showitembox[playerid][++i] = CreatePlayerTextDraw(playerid, 318.000 + newpos, 358.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ui_showitembox[playerid][i], 41.000, 8.000);
    PlayerTextDrawAlignment(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawColor(playerid, ui_showitembox[playerid][i], X11_SALMON);
    PlayerTextDrawSetShadow(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_showitembox[playerid][i], 255);
    PlayerTextDrawFont(playerid, ui_showitembox[playerid][i], 4);
    PlayerTextDrawSetProportional(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawShow(playerid, ui_showitembox[playerid][i]);

    ui_showitembox[playerid][++i] = CreatePlayerTextDraw(playerid, 293.000 + newpos, 290.000, "_");
    PlayerTextDrawTextSize(playerid, ui_showitembox[playerid][i], 90.000, 90.000);
    PlayerTextDrawAlignment(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawColor(playerid, ui_showitembox[playerid][i], -1);
    PlayerTextDrawSetShadow(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawFont(playerid, ui_showitembox[playerid][i], 5);
    PlayerTextDrawSetProportional(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetPreviewModel(playerid, ui_showitembox[playerid][i], ItemBox[playerid][index][ItemBoxIcon]);
    PlayerTextDrawSetPreviewRot(playerid, ui_showitembox[playerid][i], 0.000, 0.000, 0.000, 2.000);
    PlayerTextDrawSetPreviewVehCol(playerid, ui_showitembox[playerid][i], 0, 0);
    PlayerTextDrawShow(playerid, ui_showitembox[playerid][i]);

    ui_showitembox[playerid][++i] = CreatePlayerTextDraw(playerid, 338.000 + newpos, 358.000, ItemBox[playerid][index][ItemBoxMessage]);
    PlayerTextDrawLetterSize(playerid, ui_showitembox[playerid][i], 0.129, 0.797);
    PlayerTextDrawAlignment(playerid, ui_showitembox[playerid][i], 2);
    PlayerTextDrawColor(playerid, ui_showitembox[playerid][i], -1);
    PlayerTextDrawSetShadow(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_showitembox[playerid][i], 150);
    PlayerTextDrawFont(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawSetProportional(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawShow(playerid, ui_showitembox[playerid][i]);

    ui_showitembox[playerid][++i] = CreatePlayerTextDraw(playerid, 317.000 + newpos, 312.000, ItemBox[playerid][index][ItemBoxTotalMessage]);
    PlayerTextDrawLetterSize(playerid, ui_showitembox[playerid][i], 0.099, 0.597);
    PlayerTextDrawAlignment(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawColor(playerid, ui_showitembox[playerid][i], -1);
    PlayerTextDrawSetShadow(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, ui_showitembox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, ui_showitembox[playerid][i], 150);
    PlayerTextDrawFont(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawSetProportional(playerid, ui_showitembox[playerid][i], 1);
    PlayerTextDrawShow(playerid, ui_showitembox[playerid][i]);
	return true;
}