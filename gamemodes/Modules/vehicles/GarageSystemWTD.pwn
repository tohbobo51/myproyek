#include <YSI\y_hooks>

new PlayerText: GarageTD[MAX_PLAYERS][19];
new PlayerText: ScrollUp[MAX_PLAYERS];
new PlayerText: ScrollDown[MAX_PLAYERS];

new PlayerText: BoxVehicle[MAX_PLAYERS][MAX_PRIVATE_VEHICLE];
new PlayerText: PrevVehicle[MAX_PLAYERS][MAX_PRIVATE_VEHICLE];
new PlayerText: NameVehicle[MAX_PLAYERS][MAX_PRIVATE_VEHICLE];
new PlayerText: PlateVehicle[MAX_PLAYERS][MAX_PRIVATE_VEHICLE];

new MaxVehiclePerPage = 6;
new VehicleOffset[MAX_PLAYERS];
new vehicleCount[MAX_PLAYERS];
new selectVehicle[MAX_PLAYERS];

stock CreateGarageTextdraws(playerid)
{
    GarageTD[playerid][0] = CreatePlayerTextDraw(playerid, 366.000, 124.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][0], 111.000, 221.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][0], 505428735);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][0], 1);

    GarageTD[playerid][1] = CreatePlayerTextDraw(playerid, 373.000, 163.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][1], 1.000, 175.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][1], -1448498689);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][1], 1);

    GarageTD[playerid][2] = CreatePlayerTextDraw(playerid, 374.000, 163.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][2], 95.000, 1.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][2], -1448498689);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][2], 1);

    GarageTD[playerid][3] = CreatePlayerTextDraw(playerid, 469.000, 163.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][3], 1.000, 175.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][3], -1448498689);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][3], 1);

    GarageTD[playerid][4] = CreatePlayerTextDraw(playerid, 374.000, 337.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][4], 95.000, 1.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][4], -1448498689);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][4], 1);

    GarageTD[playerid][5] = CreatePlayerTextDraw(playerid, 374.000, 130.000, "Garkot 5");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][5], 0.250, 1.700);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][5], 1);

    GarageTD[playerid][6] = CreatePlayerTextDraw(playerid, 375.000, 145.000, "List Kendaraan Yang Ada");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][6], 0.129, 0.999);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][6], 13554175);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][6], 1);

    GarageTD[playerid][7] = CreatePlayerTextDraw(playerid, 441.000, 135.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][7], 28.000, 18.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][7], 13554175);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, GarageTD[playerid][7], 1);

    GarageTD[playerid][8] = CreatePlayerTextDraw(playerid, 447.000, 138.000, "Exit");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][8], 0.250, 1.299);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][8], 255);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][8], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][8], 1);

    GarageTD[playerid][9] = CreatePlayerTextDraw(playerid, 479.000, 124.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][9], 85.000, 125.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][9], 505428735);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][9], 1);

    GarageTD[playerid][10] = CreatePlayerTextDraw(playerid, 485.000, 130.000, "Detail");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][10], 0.250, 1.700);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][10], 1);

    GarageTD[playerid][11] = CreatePlayerTextDraw(playerid, 485.000, 145.000, "Informasi Kendaraan");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][11], 0.129, 0.999);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][11], 13554175);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][11], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][11], 1);

    GarageTD[playerid][12] = CreatePlayerTextDraw(playerid, 485.000, 163.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][12], 72.000, 1.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][12], -1448498689);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][12], 1);

    GarageTD[playerid][13] = CreatePlayerTextDraw(playerid, 485.000, 171.000, "Plate: B 505 JIR");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][13], 0.129, 0.999);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][13], 1);

    GarageTD[playerid][14] = CreatePlayerTextDraw(playerid, 485.000, 181.000, "Model: Sultan");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][14], 0.129, 0.999);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][14], 1);

    GarageTD[playerid][15] = CreatePlayerTextDraw(playerid, 485.000, 191.000, "Fuel: 57 Liter");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][15], 0.129, 0.999);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][15], 1);

    GarageTD[playerid][16] = CreatePlayerTextDraw(playerid, 485.000, 201.000, "Health: 1500.00");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][16], 0.129, 0.999);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][16], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][16], 1);

    GarageTD[playerid][17] = CreatePlayerTextDraw(playerid, 485.000, 218.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, GarageTD[playerid][17], 73.000, 21.000);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][17], 13554175);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, GarageTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][17], 1);
    PlayerTextDrawSetSelectable(playerid, GarageTD[playerid][17], 1);

    GarageTD[playerid][18] = CreatePlayerTextDraw(playerid, 502.000, 222.000, "Take Out Vehicle");
    PlayerTextDrawLetterSize(playerid, GarageTD[playerid][18], 0.140, 1.199);
    PlayerTextDrawAlignment(playerid, GarageTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, GarageTD[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, GarageTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, GarageTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, GarageTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, GarageTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, GarageTD[playerid][18], 1);

    ScrollUp[playerid] = CreatePlayerTextDraw(playerid, 481.000, 280.000, "LD_BEAT:up");
    PlayerTextDrawTextSize(playerid, ScrollUp[playerid], 20.000, 25.000);
    PlayerTextDrawAlignment(playerid, ScrollUp[playerid], 1);
    PlayerTextDrawColor(playerid, ScrollUp[playerid], -1);
    PlayerTextDrawSetShadow(playerid, ScrollUp[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ScrollUp[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, ScrollUp[playerid], 255);
    PlayerTextDrawFont(playerid, ScrollUp[playerid], 4);
    PlayerTextDrawSetProportional(playerid, ScrollUp[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ScrollUp[playerid], 1);

    ScrollDown[playerid] = CreatePlayerTextDraw(playerid, 481.000, 315.000, "LD_BEAT:down");
    PlayerTextDrawTextSize(playerid, ScrollDown[playerid], 20.000, 25.000);
    PlayerTextDrawAlignment(playerid, ScrollDown[playerid], 1);
    PlayerTextDrawColor(playerid, ScrollDown[playerid], -1);
    PlayerTextDrawSetShadow(playerid, ScrollDown[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ScrollDown[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, ScrollDown[playerid], 255);
    PlayerTextDrawFont(playerid, ScrollDown[playerid], 4);
    PlayerTextDrawSetProportional(playerid, ScrollDown[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ScrollDown[playerid], 1);
    return 1;
}

stock DestroyGarageTextdraws(playerid)
{
    for(new slot = 0; slot < 19; slot ++) {
        PlayerTextDrawDestroy(playerid, GarageTD[playerid][slot]);
    }
    PlayerTextDrawDestroy(playerid, ScrollUp[playerid]);
    PlayerTextDrawDestroy(playerid, ScrollDown[playerid]);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    CreateGarageTextdraws(playerid);
    vehicleCount[playerid] = 0;
    selectVehicle[playerid] = -1;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(GetPVarInt(playerid, "OnSelectedGarkot") > 0) HideGarageTextdraws(playerid);
    DestroyGarageTextdraws(playerid);
    vehicleCount[playerid] = 0;
    selectVehicle[playerid] = -1;
    return 1;
}

stock ShowGarageTextdraws(playerid, garkotid)
{
    for(new i = 0; i < MaxVehiclePerPage; i ++)
    {
        PlayerTextDrawDestroy(playerid, BoxVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PrevVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, NameVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PlateVehicle[playerid][i]);
    }

    new Float:x = 377.000, Float:y = 169.000; // Posisi Awal Box
    new Float:xb = 372.000, Float:yb = 155.000; // Posisi Awal Preview
    new Float:xc = 416.000, Float:yc = 171.000; // Posisi Awal Nama
    new Float:xd = 416.000, Float:yd = 180.000; // Posisi Awal Plate
    new Float:offsetY = 27.0; // Jarak Antar Box
    new vehicleName[32], vehiclePlate[32];

    PlayerTextDrawSetString(playerid, GarageTD[playerid][5], sprintf("Garkot %d", garkotid));
    PlayerTextDrawSetString(playerid, GarageTD[playerid][6], sprintf("List Kendaraan Yang Ada: %d", CountPlayerVehicleParked(playerid, garkotid)));
    PlayerTextDrawShow(playerid, GarageTD[playerid][0]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][1]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][2]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][3]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][4]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][5]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][6]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][7]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][8]);

    if(CountPlayerVehicleParked(playerid, garkotid) > 6)
    {
        PlayerTextDrawShow(playerid, ScrollUp[playerid]);
        PlayerTextDrawShow(playerid, ScrollDown[playerid]);
    }

    if(!CountPlayerVehicleParked(playerid, garkotid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak menyimpan kendaraan apapun di garasi ini!");
    vehicleCount[playerid] = CountPlayerVehicleParked(playerid, garkotid);
    new vehicleIndex = 0;

    for(new itt = VehicleOffset[playerid]; itt < VehicleOffset[playerid] + MaxVehiclePerPage; itt ++)
    {
        if(itt >= vehicleCount[playerid]) break;

        new carid = ReturnAnyVehicleParked(playerid, itt, garkotid);
        format(vehicleName, sizeof(vehicleName), "%s", GetVehicleModelName(PlayerVehicle[carid][pVehModelID]));
        format(vehiclePlate, sizeof(vehiclePlate), "Plate: %s", PlayerVehicle[carid][pVehPlate]);
        
        BoxVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, x, y + (vehicleIndex * offsetY), "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, BoxVehicle[playerid][vehicleIndex], 89.000, 24.000);
        PlayerTextDrawAlignment(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, BoxVehicle[playerid][vehicleIndex], -2139062112);
        PlayerTextDrawSetShadow(playerid, BoxVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, BoxVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, BoxVehicle[playerid][vehicleIndex], 255);
        PlayerTextDrawFont(playerid, BoxVehicle[playerid][vehicleIndex], 4);
        PlayerTextDrawSetProportional(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetSelectable(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, BoxVehicle[playerid][vehicleIndex]);

        PrevVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xb, yb + (vehicleIndex * offsetY), "_");
        PlayerTextDrawTextSize(playerid, PrevVehicle[playerid][vehicleIndex], 39.000, 51.000);
        PlayerTextDrawAlignment(playerid, PrevVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, PrevVehicle[playerid][vehicleIndex], -1);
        PlayerTextDrawSetShadow(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawFont(playerid, PrevVehicle[playerid][vehicleIndex], 5);
        PlayerTextDrawSetProportional(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetPreviewModel(playerid, PrevVehicle[playerid][vehicleIndex], PlayerVehicle[carid][pVehModelID]);
        PlayerTextDrawSetPreviewRot(playerid, PrevVehicle[playerid][vehicleIndex], -5.000, 0.000, 30.000, 1.000);
        PlayerTextDrawSetPreviewVehCol(playerid, PrevVehicle[playerid][vehicleIndex], PlayerVehicle[carid][pVehColor1], PlayerVehicle[carid][pVehColor2]);
        PlayerTextDrawShow(playerid, PrevVehicle[playerid][vehicleIndex]);
    
        NameVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xc, yc + (vehicleIndex * offsetY), vehicleName);
        PlayerTextDrawLetterSize(playerid, NameVehicle[playerid][vehicleIndex], 0.129, 0.999);
        PlayerTextDrawAlignment(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, NameVehicle[playerid][vehicleIndex], -1);
        PlayerTextDrawSetShadow(playerid, NameVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, NameVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, NameVehicle[playerid][vehicleIndex], 150);
        PlayerTextDrawFont(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetProportional(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, NameVehicle[playerid][vehicleIndex]);

        PlateVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xd, yd + (vehicleIndex * offsetY), vehiclePlate);
        PlayerTextDrawLetterSize(playerid, PlateVehicle[playerid][vehicleIndex], 0.129, 0.999);
        PlayerTextDrawAlignment(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, PlateVehicle[playerid][vehicleIndex], 13554175);
        PlayerTextDrawSetShadow(playerid, PlateVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, PlateVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, PlateVehicle[playerid][vehicleIndex], 150);
        PlayerTextDrawFont(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetProportional(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, PlateVehicle[playerid][vehicleIndex]);
 
        vehicleIndex ++;
    }
    AccountData[playerid][pPark] = garkotid;
    SetPVarInt(playerid, "OnSelectedGarkot", 1);
    SelectTextDraw(playerid, 0xFF9999FF);
    return 1;
}

stock ShowHouseGarageTextdraws(playerid, houseid)
{
    for(new i = 0; i < MaxVehiclePerPage; i ++)
    {
        PlayerTextDrawDestroy(playerid, BoxVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PrevVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, NameVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PlateVehicle[playerid][i]);
    }

    new Float:x = 377.000, Float:y = 169.000; // Posisi Awal Box
    new Float:xb = 372.000, Float:yb = 155.000; // Posisi Awal Preview
    new Float:xc = 416.000, Float:yc = 171.000; // Posisi Awal Nama
    new Float:xd = 416.000, Float:yd = 180.000; // Posisi Awal Plate
    new Float:offsetY = 27.0; // Jarak Antar Box
    new vehicleName[32], vehiclePlate[32];

    PlayerTextDrawSetString(playerid, GarageTD[playerid][5], sprintf("House %d", houseid));
    PlayerTextDrawSetString(playerid, GarageTD[playerid][6], sprintf("List Kendaraan Yang Ada: %d", CountPlayerVehicleHoused(playerid, houseid)));
    PlayerTextDrawShow(playerid, GarageTD[playerid][0]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][1]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][2]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][3]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][4]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][5]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][6]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][7]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][8]);

    if(CountPlayerVehicleHoused(playerid, houseid) > 6)
    {
        PlayerTextDrawShow(playerid, ScrollUp[playerid]);
        PlayerTextDrawShow(playerid, ScrollDown[playerid]);
    }

    if(!CountPlayerVehicleHoused(playerid, houseid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak menyimpan kendaraan apapun di garasi ini!");
    vehicleCount[playerid] = CountPlayerVehicleHoused(playerid, houseid);

    new vehicleIndex = 0;
    for(new itt = VehicleOffset[playerid]; itt < VehicleOffset[playerid] + MaxVehiclePerPage; itt ++)
    {
        if(itt >= vehicleCount[playerid]) break;

        new carid = ReturnAnyVehicleHoused(playerid, itt, houseid);
        format(vehicleName, sizeof(vehicleName), "%s", GetVehicleModelName(PlayerVehicle[carid][pVehModelID]));
        format(vehiclePlate, sizeof(vehiclePlate), "Plate: %s", PlayerVehicle[carid][pVehPlate]);
        
        BoxVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, x, y + (vehicleIndex * offsetY), "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, BoxVehicle[playerid][vehicleIndex], 89.000, 24.000);
        PlayerTextDrawAlignment(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, BoxVehicle[playerid][vehicleIndex], -2139062112);
        PlayerTextDrawSetShadow(playerid, BoxVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, BoxVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, BoxVehicle[playerid][vehicleIndex], 255);
        PlayerTextDrawFont(playerid, BoxVehicle[playerid][vehicleIndex], 4);
        PlayerTextDrawSetProportional(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetSelectable(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, BoxVehicle[playerid][vehicleIndex]);

        PrevVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xb, yb + (vehicleIndex * offsetY), "_");
        PlayerTextDrawTextSize(playerid, PrevVehicle[playerid][vehicleIndex], 39.000, 51.000);
        PlayerTextDrawAlignment(playerid, PrevVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, PrevVehicle[playerid][vehicleIndex], -1);
        PlayerTextDrawSetShadow(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawFont(playerid, PrevVehicle[playerid][vehicleIndex], 5);
        PlayerTextDrawSetProportional(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetPreviewModel(playerid, PrevVehicle[playerid][vehicleIndex], PlayerVehicle[carid][pVehModelID]);
        PlayerTextDrawSetPreviewRot(playerid, PrevVehicle[playerid][vehicleIndex], -5.000, 0.000, 30.000, 1.000);
        PlayerTextDrawSetPreviewVehCol(playerid, PrevVehicle[playerid][vehicleIndex], PlayerVehicle[carid][pVehColor1], PlayerVehicle[carid][pVehColor2]);
        PlayerTextDrawShow(playerid, PrevVehicle[playerid][vehicleIndex]);
    
        NameVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xc, yc + (vehicleIndex * offsetY), vehicleName);
        PlayerTextDrawLetterSize(playerid, NameVehicle[playerid][vehicleIndex], 0.129, 0.999);
        PlayerTextDrawAlignment(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, NameVehicle[playerid][vehicleIndex], -1);
        PlayerTextDrawSetShadow(playerid, NameVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, NameVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, NameVehicle[playerid][vehicleIndex], 150);
        PlayerTextDrawFont(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetProportional(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, NameVehicle[playerid][vehicleIndex]);

        PlateVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xd, yd + (vehicleIndex * offsetY), vehiclePlate);
        PlayerTextDrawLetterSize(playerid, PlateVehicle[playerid][vehicleIndex], 0.129, 0.999);
        PlayerTextDrawAlignment(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, PlateVehicle[playerid][vehicleIndex], 13554175);
        PlayerTextDrawSetShadow(playerid, PlateVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, PlateVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, PlateVehicle[playerid][vehicleIndex], 150);
        PlayerTextDrawFont(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetProportional(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, PlateVehicle[playerid][vehicleIndex]);
 
        vehicleIndex ++;
    }
    AccountData[playerid][pPark] = houseid;
    SetPVarInt(playerid, "OnSelectedGarkot", 2);
    SelectTextDraw(playerid, 0xFF9999FF);
    return 1;
}

stock ShowFamiliesGarageTextdraws(playerid, families)
{
    for(new i = 0; i < MaxVehiclePerPage; i ++)
    {
        PlayerTextDrawDestroy(playerid, BoxVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PrevVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, NameVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PlateVehicle[playerid][i]);
    }

    new Float:x = 377.000, Float:y = 169.000; // Posisi Awal Box
    new Float:xb = 372.000, Float:yb = 155.000; // Posisi Awal Preview
    new Float:xc = 416.000, Float:yc = 171.000; // Posisi Awal Nama
    new Float:xd = 416.000, Float:yd = 180.000; // Posisi Awal Plate
    new Float:offsetY = 27.0; // Jarak Antar Box
    new vehicleName[32], vehiclePlate[32];

    PlayerTextDrawSetString(playerid, GarageTD[playerid][5], sprintf("Families %d", families));
    PlayerTextDrawSetString(playerid, GarageTD[playerid][6], sprintf("List Kendaraan Yang Ada: %d", CountPlayerVehicleFamilies(playerid, families)));
    PlayerTextDrawShow(playerid, GarageTD[playerid][0]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][1]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][2]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][3]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][4]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][5]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][6]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][7]);
    PlayerTextDrawShow(playerid, GarageTD[playerid][8]);

    if(CountPlayerVehicleFamilies(playerid, families) > 6)
    {
        PlayerTextDrawShow(playerid, ScrollUp[playerid]);
        PlayerTextDrawShow(playerid, ScrollDown[playerid]);
    }

    if(!CountPlayerVehicleFamilies(playerid, families)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak menyimpan kendaraan apapun di garasi ini!");
    vehicleCount[playerid] = CountPlayerVehicleFamilies(playerid, families);

    new vehicleIndex = 0;
    for(new itt = VehicleOffset[playerid]; itt < VehicleOffset[playerid] + MaxVehiclePerPage; itt ++)
    {
        if(itt >= vehicleCount[playerid]) break;

        new carid = ReturnAnyVehicleFamilies(playerid, itt, families);
        format(vehicleName, sizeof(vehicleName), "%s", GetVehicleModelName(PlayerVehicle[carid][pVehModelID]));
        format(vehiclePlate, sizeof(vehiclePlate), "Plate: %s", PlayerVehicle[carid][pVehPlate]);
        
        BoxVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, x, y + (vehicleIndex * offsetY), "LD_BUM:blkdot");
        PlayerTextDrawTextSize(playerid, BoxVehicle[playerid][vehicleIndex], 89.000, 24.000);
        PlayerTextDrawAlignment(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, BoxVehicle[playerid][vehicleIndex], -2139062112);
        PlayerTextDrawSetShadow(playerid, BoxVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, BoxVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, BoxVehicle[playerid][vehicleIndex], 255);
        PlayerTextDrawFont(playerid, BoxVehicle[playerid][vehicleIndex], 4);
        PlayerTextDrawSetProportional(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetSelectable(playerid, BoxVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, BoxVehicle[playerid][vehicleIndex]);

        PrevVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xb, yb + (vehicleIndex * offsetY), "_");
        PlayerTextDrawTextSize(playerid, PrevVehicle[playerid][vehicleIndex], 39.000, 51.000);
        PlayerTextDrawAlignment(playerid, PrevVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, PrevVehicle[playerid][vehicleIndex], -1);
        PlayerTextDrawSetShadow(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawFont(playerid, PrevVehicle[playerid][vehicleIndex], 5);
        PlayerTextDrawSetProportional(playerid, PrevVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetPreviewModel(playerid, PrevVehicle[playerid][vehicleIndex], PlayerVehicle[carid][pVehModelID]);
        PlayerTextDrawSetPreviewRot(playerid, PrevVehicle[playerid][vehicleIndex], -5.000, 0.000, 30.000, 1.000);
        PlayerTextDrawSetPreviewVehCol(playerid, PrevVehicle[playerid][vehicleIndex], PlayerVehicle[carid][pVehColor1], PlayerVehicle[carid][pVehColor2]);
        PlayerTextDrawShow(playerid, PrevVehicle[playerid][vehicleIndex]);
    
        NameVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xc, yc + (vehicleIndex * offsetY), vehicleName);
        PlayerTextDrawLetterSize(playerid, NameVehicle[playerid][vehicleIndex], 0.129, 0.999);
        PlayerTextDrawAlignment(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, NameVehicle[playerid][vehicleIndex], -1);
        PlayerTextDrawSetShadow(playerid, NameVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, NameVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, NameVehicle[playerid][vehicleIndex], 150);
        PlayerTextDrawFont(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetProportional(playerid, NameVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, NameVehicle[playerid][vehicleIndex]);

        PlateVehicle[playerid][vehicleIndex] = CreatePlayerTextDraw(playerid, xd, yd + (vehicleIndex * offsetY), vehiclePlate);
        PlayerTextDrawLetterSize(playerid, PlateVehicle[playerid][vehicleIndex], 0.129, 0.999);
        PlayerTextDrawAlignment(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawColor(playerid, PlateVehicle[playerid][vehicleIndex], 13554175);
        PlayerTextDrawSetShadow(playerid, PlateVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawSetOutline(playerid, PlateVehicle[playerid][vehicleIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, PlateVehicle[playerid][vehicleIndex], 150);
        PlayerTextDrawFont(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawSetProportional(playerid, PlateVehicle[playerid][vehicleIndex], 1);
        PlayerTextDrawShow(playerid, PlateVehicle[playerid][vehicleIndex]);
 
        vehicleIndex ++;
    }
    AccountData[playerid][pPark] = families;
    SetPVarInt(playerid, "OnSelectedGarkot", 3);
    SelectTextDraw(playerid, 0xFF9999FF);
    return 1;
}

stock ShowGarageDetails(playerid)
{
    forex(i, 19) PlayerTextDrawShow(playerid, GarageTD[playerid][i]);
    return 1;
}

stock HideGarageTextdraws(playerid) 
{
    forex(txd, 19) PlayerTextDrawHide(playerid, GarageTD[playerid][txd]);
    PlayerTextDrawHide(playerid, ScrollUp[playerid]);
    PlayerTextDrawHide(playerid, ScrollDown[playerid]);

    for (new i = 0; i < vehicleCount[playerid]; i++) 
    {
        PlayerTextDrawHide(playerid, BoxVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, BoxVehicle[playerid][i]);
        PlayerTextDrawHide(playerid, PrevVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PrevVehicle[playerid][i]);
        PlayerTextDrawHide(playerid, NameVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, NameVehicle[playerid][i]);
        PlayerTextDrawHide(playerid, PlateVehicle[playerid][i]);
        PlayerTextDrawDestroy(playerid, PlateVehicle[playerid][i]);
    }
    vehicleCount[playerid] = 0; // Reset jumlah kendaraan
    SetPVarInt(playerid, "OnSelectedGarkot", false);
    CancelSelectTextDraw(playerid);
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	foreach(new id : PublicGarage)
	{
		if(newkeys & KEY_CROUCH && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			if(IsPlayerInRangeOfPoint(playerid, 2.5, PublicGarage[id][pgPOS][0], PublicGarage[id][pgPOS][1], PublicGarage[id][pgPOS][2]))
			{
				HideShortKey(playerid);
				
				new carid = -1, bool: found = false;
				if((carid = Vehicle_Nearest2(playerid)) != -1)
				{
					if(!(PlayerVehicle[carid][pVehOwnerID] == AccountData[playerid][pID] || IsVehicleKeyHolder(playerid, carid))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
					if(PlayerVehicle[carid][pVehRental] != -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan rental tidak dapat disimpan!");
					if(PlayerVehicle[carid][pVehFaction] != FACTION_NONE) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan faction tidak dapat disimpan disini!");
					if(TrunkVehEntered[PlayerVehicle[carid][pVehPhysic]] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Ada seseorang dibagasi kendaraan!");

					Vehicle_GetStatus(carid);
					PlayerVehicle[carid][pVehParked] = id;

					found = true;

					RemovePlayerFromVehicle(playerid);
					SetTimerEx("InputVehicleToGarage", 1800, false, "d", carid);
				}
				if(!found) return false;
			}
		}
		if(PRESSED(KEY_YES) && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
		{
			if(IsPlayerInRangeOfPoint(playerid, 2.5, PublicGarage[id][pgPOS][0], PublicGarage[id][pgPOS][1], PublicGarage[id][pgPOS][2]))
			{
				HideShortKey(playerid);
				
				if(!CountPlayerVehicleParked(playerid, id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak menyimpan kendaraan apapun di garasi ini!");
                if(GetPVarInt(playerid, "OnSelectedGarkot") != 0) return 0;

                VehicleOffset[playerid] = 0;
                ShowGarageTextdraws(playerid, id);
			}
		}
	}

    if(PRESSED(KEY_YES) && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        new gid = IsPlayerNearGarageFamily(playerid);
        if(gid > -1)
        {
            if(AccountData[playerid][pFamily] != gid) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari Families Ini!");
            if(CountPlayerVehicleFamilies(playerid, gid) < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak menyimpan kendaraan apapun di garasi ini!");
            if(GetPVarInt(playerid, "OnSelectedGarkot") != 0) return 0;

            VehicleOffset[playerid] = 0;
            ShowFamiliesGarageTextdraws(playerid, gid);
            HideShortKey(playerid);
        }

        new ghid = GarasiHouseNearest(playerid);
        if(ghid != -1)
        {
            if(!House_HaveAccess(playerid, ghid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Garasi ini bukan milik anda!");
            if(CountPlayerVehicleHoused(playerid, ghid) < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak menyimpan kendaraan apapun di garasi ini!");
            if(GetPVarInt(playerid, "OnSelectedGarkot") != 0) return 0;

            VehicleOffset[playerid] = 0;
            ShowHouseGarageTextdraws(playerid, ghid);
            HideShortKey(playerid);
        }

        new hpid = HelipadHouseNearest(playerid);
        if(hpid != -1)
        {
            if(!House_HaveAccess(playerid, hpid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Helipad ini bukan milik anda!");
            if(CountPlayerHelipadHoused(playerid, hpid) < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak menyimpan kendaraan apapun di helipad ini!");

            new vehid, count = CountPlayerHelipadHoused(playerid, hpid), list[596];
            format(list, sizeof(list), "No\tModel Kendaraan\tNomor Plat\n");
            for(new itt; itt < count; itt ++)
            {
                vehid = ReturnAnyVehicleHelipad(playerid, itt, hpid);
                if(itt == count)
                {
                    format(list, sizeof(list), "%s%d\t%s\t%s", list, itt+1, GetVehicleModelName(PlayerVehicle[vehid][pVehModelID]), PlayerVehicle[vehid][pVehPlate]);
                } else format(list, sizeof(list), "%s%d\t%s\t%s\n", list, itt+1, GetVehicleModelName(PlayerVehicle[vehid][pVehModelID]), PlayerVehicle[vehid][pVehPlate]);
            }
            AccountData[playerid][pPark] = hpid;
            ShowPlayerDialog(playerid, DIALOG_HOUSEHELIPAD_OUT, DIALOG_STYLE_TABLIST_HEADERS, sprintf(""TTR"Aeterna Roleplay "WHITE"- Garasi Helipad %d", hpid), list, "Pilih", "Batal");
        }
    }
    if(newkeys & KEY_CROUCH && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
    {
        new gid = IsPlayerNearGarageFamily(playerid);
        if(gid > -1)
        {
            if(AccountData[playerid][pFamily] != gid) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan bagian dari Families Ini!");
            new carid = -1, bool: found = false;
            if((carid = Vehicle_Nearest2(playerid)) != -1)
            {
                if(!(PlayerVehicle[carid][pVehOwnerID] == AccountData[playerid][pID] || IsVehicleKeyHolder(playerid, carid))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
                if(PlayerVehicle[carid][pVehRental] != -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat memasukkan kendaraan rental!");

                HideShortKey(playerid);
                Vehicle_GetStatus(carid);
                PlayerVehicle[carid][pVehFamiliesGarage] = gid;
                found = true;

                RemovePlayerFromVehicle(playerid);
                SetTimerEx("InputVehicleToGarage", 1800, false, "d", carid);
            }
            if(!found) return false;
        }

        new ghid = GarasiHouseNearest(playerid);
        if(ghid > -1)
        {
            if(!House_HaveAccess(playerid, ghid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Garasi ini bukan milik anda!");
            new carid = -1, bool: found = false;
            if((carid = Vehicle_Nearest2(playerid)) != -1)
            {
                if(!(PlayerVehicle[carid][pVehOwnerID] == AccountData[playerid][pID] || IsVehicleKeyHolder(playerid, carid))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
                if(PlayerVehicle[carid][pVehRental] != -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat memasukkan kendaraan Rental!");
                
                Vehicle_GetStatus(carid);
                PlayerVehicle[carid][pVehHouseGarage] = ghid;

                found = true;

                RemovePlayerFromVehicle(playerid);
                SetTimerEx("InputVehicleToGarage", 1800, false, "d", carid);

                HideShortKey(playerid);
            }
            if(!found) return false;
        }

        new hpid = HelipadHouseNearest(playerid);
        if(hpid > -1)
        {
            if(!House_HaveAccess(playerid, hpid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Helipad ini bukan milik anda!");
            new carid = -1, bool: found = false;
            if((carid = Vehicle_Nearest2(playerid)) != -1)
            {
                if(!(PlayerVehicle[carid][pVehOwnerID] == AccountData[playerid][pID] || IsVehicleKeyHolder(playerid, carid))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
                if(PlayerVehicle[carid][pVehRental] != -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat memasukkan kendaraan Rental!");
                if(!IsAHelicopter(PlayerVehicle[carid][pVehPhysic])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Hanya dapat memasukkan Helicopter!");

                Vehicle_GetStatus(carid);
                PlayerVehicle[carid][pVehHelipadGarage] = hpid;

                found = true;

                if(IsValidVehicle(PlayerVehicle[carid][pVehPhysic]))
                {
                    DisableVehicleSpeedCap(PlayerVehicle[carid][pVehPhysic]);
                    SetVehicleNeonLights(PlayerVehicle[carid][pVehPhysic], false, PlayerVehicle[carid][pVehNeon], 0);

                    DestroyVehicle(PlayerVehicle[carid][pVehPhysic]);
                    PlayerVehicle[carid][pVehPhysic] = INVALID_VEHICLE_ID;
                }
            }
            if(!found) return false;
        }
    }
	return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    if(playertextid == GarageTD[playerid][7]) // Tutup
    {
        HideGarageTextdraws(playerid);
    }
    if(playertextid == ScrollUp[playerid]) 
    {
        if(VehicleOffset[playerid] > 0) 
        {
            VehicleOffset[playerid] -= MaxVehiclePerPage;
            switch(GetPVarInt(playerid, "OnSelectedGarkot"))
            {
                case 1: ShowGarageTextdraws(playerid, AccountData[playerid][pPark]); //Garkot
                case 2: ShowHouseGarageTextdraws(playerid, AccountData[playerid][pPark]);//Rumah
                case 3: ShowFamiliesGarageTextdraws(playerid, AccountData[playerid][pPark]);//Families
            }
        }
    }
    if(playertextid == ScrollDown[playerid]) 
    {
        if(VehicleOffset[playerid] + MaxVehiclePerPage < vehicleCount[playerid])
        {
            VehicleOffset[playerid] += MaxVehiclePerPage;
            switch(GetPVarInt(playerid, "OnSelectedGarkot"))
            {
                case 1: ShowGarageTextdraws(playerid, AccountData[playerid][pPark]); //Garkot
                case 2: ShowHouseGarageTextdraws(playerid, AccountData[playerid][pPark]);//Rumah
                case 3: ShowFamiliesGarageTextdraws(playerid, AccountData[playerid][pPark]);//Families
            }
        }
    }
    for(new i = 0; i < vehicleCount[playerid]; i ++)
    {
        if(playertextid == BoxVehicle[playerid][i]) // Select Textdraw sesuai box kendaraan yg dipilih
        {
            new realIndex = VehicleOffset[playerid] + i;
            switch(GetPVarInt(playerid, "OnSelectedGarkot"))
            {
                case 1: // Garasi Kota
                {
                    new garkotid = AccountData[playerid][pPark];
                    new vehid = ReturnAnyVehicleParked(playerid, realIndex, garkotid);
                    
                    selectVehicle[playerid] = vehid;

                    new modelName[100], plate[100], fuel[100], engineHealth[100];
                    format(plate, sizeof(plate), "Plate: %s", PlayerVehicle[vehid][pVehPlate]);
                    format(modelName, sizeof(modelName), "Model: %s", GetVehicleModelName(PlayerVehicle[vehid][pVehModelID]));
                    format(fuel, sizeof(fuel), "Fuel: %d Liter", PlayerVehicle[vehid][pVehFuel]);
                    format(engineHealth, sizeof(engineHealth), "Health: %.1f", PlayerVehicle[vehid][pVehHealth]);

                    // Set String Information Textdraw
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][13], plate);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][14], modelName);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][15], fuel);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][16], engineHealth);

                    // Tampilkan semua textdraw informasi
                    ShowGarageDetails(playerid);
                }
                case 2: // Garasi Rumah
                {
                    new carid = ReturnAnyVehicleHoused(playerid, realIndex, AccountData[playerid][pPark]);

                    selectVehicle[playerid] = carid;

                    new modelName[100], plate[100], fuel[100], engineHealth[100];
                    format(plate, sizeof(plate), "Plate: %s", PlayerVehicle[carid][pVehPlate]);
                    format(modelName, sizeof(modelName), "Model: %s", GetVehicleModelName(PlayerVehicle[carid][pVehModelID]));
                    format(fuel, sizeof(fuel), "Fuel: %d Liter", PlayerVehicle[carid][pVehFuel]);
                    format(engineHealth, sizeof(engineHealth), "Health: %.1f", PlayerVehicle[carid][pVehHealth]);

                    PlayerTextDrawSetString(playerid, GarageTD[playerid][13], plate);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][14], modelName);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][15], fuel);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][16], engineHealth);

                    ShowGarageDetails(playerid);
                }
                case 3: // Garasi Families
                {
                    new carid = ReturnAnyVehicleFamilies(playerid, realIndex, AccountData[playerid][pPark]);

                    selectVehicle[playerid] = carid;

                    new modelName[100], plate[100], fuel[100], engineHealth[100];
                    format(plate, sizeof(plate), "Plate: %s", PlayerVehicle[carid][pVehPlate]);
                    format(modelName, sizeof(modelName), "Model: %s", GetVehicleModelName(PlayerVehicle[carid][pVehModelID]));
                    format(fuel, sizeof(fuel), "Fuel: %d Liter", PlayerVehicle[carid][pVehFuel]);
                    format(engineHealth, sizeof(engineHealth), "Health: %.1f", PlayerVehicle[carid][pVehHealth]);

                    PlayerTextDrawSetString(playerid, GarageTD[playerid][13], plate);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][14], modelName);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][15], fuel);
                    PlayerTextDrawSetString(playerid, GarageTD[playerid][16], engineHealth);

                    ShowGarageDetails(playerid);
                }
            }
        }
        else if(playertextid == GarageTD[playerid][17]) // Keluarkan kendaraan
        {
            switch(GetPVarInt(playerid, "OnSelectedGarkot"))
            {
                case 1: // Garasi Kota
                {
                    new garkotid = AccountData[playerid][pPark];
                    new vehid = selectVehicle[playerid];

                    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
                    if(vehid == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih kendaraan yang ingin dikeluarkan!");

                    if(!IsPlayerInRangeOfPoint(playerid, 2.5, PublicGarage[garkotid][pgPOS][0], PublicGarage[garkotid][pgPOS][1], PublicGarage[garkotid][pgPOS][2])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di tempat garasi kota!");
                    if(PublicGarage[garkotid][pgSpawnPOS][0] == 0.0 && PublicGarage[garkotid][pgSpawnPOS][1] == 0.0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Garkot ini belum di set spawn positionnya!");
                    if(!(PlayerVehicle[vehid][pVehOwnerID] == AccountData[playerid][pID] || IsVehicleKeyHolder(playerid, vehid))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
                    PlayerVehicle[vehid][pVehParked] = -1;
                    PlayerVehicle[vehid][pVehHouseGarage] = -1;
                    PlayerVehicle[vehid][pVehHelipadGarage] = -1;
                    PlayerVehicle[vehid][pVehFamiliesGarage] = -1;
                    PlayerVehicle[vehid][pVehFactStored] = -1;

                    if(PlayerVehicle[vehid][pVehLocked])
                        PlayerVehicle[vehid][pVehLocked] = false;

                    PlayerVehicle[vehid][pVehPos][0] = PublicGarage[garkotid][pgSpawnPOS][0];
                    PlayerVehicle[vehid][pVehPos][1] = PublicGarage[garkotid][pgSpawnPOS][1];
                    PlayerVehicle[vehid][pVehPos][2] = PublicGarage[garkotid][pgSpawnPOS][2];
                    PlayerVehicle[vehid][pVehPos][3] = PublicGarage[garkotid][pgSpawnPOS][3];

                    PlayerVehicle[vehid][pVehWorld] = PublicGarage[garkotid][pgWorld];
                    PlayerVehicle[vehid][pVehInterior] = PublicGarage[garkotid][pgInterior];

                    PlayerVehicle[vehid][pVehFuel] = PlayerVehicle[vehid][pVehFuel];
                    PlayerVehicle[vehid][pVehHealth] = PlayerVehicle[vehid][pVehHealth];

                    OnPlayerVehicleRespawn(vehid);
                    HideGarageTextdraws(playerid);

                    SetTimerEx("ForcedPlayerHopInVehicle", 1500, false, "idd", playerid, PlayerVehicle[vehid][pVehPhysic], 0);
                }
                case 2: // Garasi Rumah
                {
                    new id = selectVehicle[playerid];

                    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih kendaraan untuk dikeluarkan!");

                    if(!IsPlayerInRangeOfPoint(playerid, 3.0, HouseData[AccountData[playerid][pPark]][housegaragePos][0], HouseData[AccountData[playerid][pPark]][housegaragePos][1], HouseData[AccountData[playerid][pPark]][housegaragePos][2])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak didekat Garasi Rumah!");
                    if(HouseData[AccountData[playerid][pPark]][housegarageSpawnPos][0] == 0.0 && HouseData[AccountData[playerid][pPark]][housegarageSpawnPos][1] == 0.0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Garasi ini belum di set spawn positionnya!");
                    // if(!IsPlayerInDynamicArea(playerid, HouseData[AccountData[playerid][pPark]][housegarageArea])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak didekat Garasi Rumah!");
                    if(!(PlayerVehicle[id][pVehOwnerID] == AccountData[playerid][pID] || IsVehicleKeyHolder(playerid, id))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
                    PlayerVehicle[id][pVehParked] = -1;
                    PlayerVehicle[id][pVehHouseGarage] = -1;
                    PlayerVehicle[id][pVehHelipadGarage] = -1;
                    PlayerVehicle[id][pVehFamiliesGarage] = -1;
                    PlayerVehicle[id][pVehFactStored] = -1;

                    PlayerVehicle[id][pVehWorld] = GetPlayerVirtualWorld(playerid);
                    PlayerVehicle[id][pVehInterior] = GetPlayerInterior(playerid);

                    if(PlayerVehicle[id][pVehLocked])
                        PlayerVehicle[id][pVehLocked] = false;

                    PlayerVehicle[id][pVehPos][0] = HouseData[AccountData[playerid][pPark]][housegarageSpawnPos][0];
                    PlayerVehicle[id][pVehPos][1] = HouseData[AccountData[playerid][pPark]][housegarageSpawnPos][1];
                    PlayerVehicle[id][pVehPos][2] = HouseData[AccountData[playerid][pPark]][housegarageSpawnPos][2];
                    PlayerVehicle[id][pVehPos][3] = HouseData[AccountData[playerid][pPark]][housegarageSpawnPos][3];

                    PlayerVehicle[id][pVehFuel] = PlayerVehicle[id][pVehFuel];
                    PlayerVehicle[id][pVehHealth] = PlayerVehicle[id][pVehHealth];

                    OnPlayerVehicleRespawn(id);
                    HideGarageTextdraws(playerid);

                    AccountData[playerid][pPark] = -1;
                    SetTimerEx("ForcedPlayerHopInVehicle", 1500, false, "idd", playerid, PlayerVehicle[id][pVehPhysic], 0);
                }
                case 3: // Garasi Families
                {
                    new id = selectVehicle[playerid];

                    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih kendaraan untuk dikeluarkan!");

                    if(!IsPlayerInRangeOfPoint(playerid, 2.0, FamData[AccountData[playerid][pPark]][famgaragePos][0], FamData[AccountData[playerid][pPark]][famgaragePos][1], FamData[AccountData[playerid][pPark]][famgaragePos][2])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak didekat Garasi Families!");
                    if(FamData[AccountData[playerid][pPark]][famgaragespawnPos][0] == 0.0 && FamData[AccountData[playerid][pPark]][famgaragespawnPos][1] == 0.0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Garkot ini belum di set spawn positionnya!");
                    if(!(PlayerVehicle[id][pVehOwnerID] == AccountData[playerid][pID] || IsVehicleKeyHolder(playerid, id))) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
                    PlayerVehicle[id][pVehParked] = -1;
                    PlayerVehicle[id][pVehHouseGarage] = -1;
                    PlayerVehicle[id][pVehHelipadGarage] = -1;
                    PlayerVehicle[id][pVehFamiliesGarage] = -1;
                    PlayerVehicle[id][pVehFactStored] = -1;

                    if(PlayerVehicle[id][pVehLocked])
                        PlayerVehicle[id][pVehLocked] = false;

                    PlayerVehicle[id][pVehPos][0] = FamData[AccountData[playerid][pPark]][famgaragespawnPos][0];
                    PlayerVehicle[id][pVehPos][1] = FamData[AccountData[playerid][pPark]][famgaragespawnPos][1];
                    PlayerVehicle[id][pVehPos][2] = FamData[AccountData[playerid][pPark]][famgaragespawnPos][2];
                    PlayerVehicle[id][pVehPos][3] = FamData[AccountData[playerid][pPark]][famgaragespawnPos][3];
                    
                    PlayerVehicle[id][pVehWorld] = FamData[AccountData[playerid][pPark]][famgarageWorld];
                    PlayerVehicle[id][pVehInterior] = FamData[AccountData[playerid][pPark]][famgarageInt];

                    OnPlayerVehicleRespawn(id);
                    HideGarageTextdraws(playerid);

                    AccountData[playerid][pPark] = -1;
                    SetTimerEx("ForcedPlayerHopInVehicle", 1500, false, "idd", playerid, PlayerVehicle[id][pVehPhysic], 0);
                }
            }
        }
    }
    return 1;
}
