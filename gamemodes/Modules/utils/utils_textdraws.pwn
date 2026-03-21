//Info textdraw
new Text:StressPurple[1]; 
new Text: RobberyGlobalTD[5];
new Text: gServerTextdraws[1];
new Text:A_WM[11];
new Text: ATRP_Warning[10];
new Text: gServerMessage[7];

new Text: RadialTD1[54];

new PlayerText: RobberyTextTD[MAX_PLAYERS][1];
new PlayerText: ProgressBar[MAX_PLAYERS][4];
new PlayerText: P_MENUCLOTHES[MAX_PLAYERS][12];
new PlayerText: P_CLOTHESSELECT[MAX_PLAYERS][16];
new PlayerText: VR_BANNEDTD[MAX_PLAYERS][21];
new PlayerText: BusWait[MAX_PLAYERS][1];
new PlayerText: VR_KARUNG[MAX_PLAYERS][1];
new PlayerText: ktpTextdraws[MAX_PLAYERS][24];
new PlayerText: SksTextdraws[MAX_PLAYERS][22];
new PlayerText: KTAtextdraws[MAX_PLAYERS][41];
new PlayerText: VR_ATMTD[MAX_PLAYERS][44];
new PlayerText: HbeStuffs[MAX_PLAYERS][34];
new PlayerText: VehicleTextdraws[MAX_PLAYERS][17];
new PlayerText: FPStextdraws[MAX_PLAYERS][7];
new PlayerText: PipemTD[MAX_PLAYERS][30];
new PlayerText: ATRP_Gym[MAX_PLAYERS][3];
new PlayerText: Titik_Temu_INJURED[MAX_PLAYERS][2];
new PlayerText: MechMinigameTD[MAX_PLAYERS][6];

/* San Andreas Hud */

new PlayerText:ATRP_Footer[MAX_PLAYERS];
new PlayerText: SpectatorInfoTD[MAX_PLAYERS][8];
new PlayerText: AdutyTD[MAX_PLAYERS][4];
new PlayerText:AMMOTD[MAX_PLAYERS];
new PlayerText:KeyShareTD[MAX_PLAYERS][2];
CreatePlayerTextDraws(playerid)
{    
	AMMOTD[playerid] = CreatePlayerTextDraw(playerid, 520.000000, 70.000000, "_");
	PlayerTextDrawFont(playerid, AMMOTD[playerid], 1);
	PlayerTextDrawLetterSize(playerid, AMMOTD[playerid], 0.325000, 1.200000);
	PlayerTextDrawTextSize(playerid, AMMOTD[playerid], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, AMMOTD[playerid], 1);
	PlayerTextDrawSetShadow(playerid, AMMOTD[playerid], 0);
	PlayerTextDrawAlignment(playerid, AMMOTD[playerid], 2);
	PlayerTextDrawColor(playerid, AMMOTD[playerid], 1687547391);
	PlayerTextDrawBackgroundColor(playerid, AMMOTD[playerid], 255);
	PlayerTextDrawBoxColor(playerid, AMMOTD[playerid], 50);
	PlayerTextDrawUseBox(playerid, AMMOTD[playerid], 0);
	PlayerTextDrawSetProportional(playerid, AMMOTD[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, AMMOTD[playerid], 0);
    KeyShareTD[playerid][0] = CreatePlayerTextDraw(playerid, 520.000000, 50.000000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, KeyShareTD[playerid][0], 150.000000, 16.000000);
    PlayerTextDrawAlignment(playerid, KeyShareTD[playerid][0], 2);
    PlayerTextDrawColor(playerid, KeyShareTD[playerid][0], 1687547391);
    PlayerTextDrawSetShadow(playerid, KeyShareTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, KeyShareTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, KeyShareTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, KeyShareTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, KeyShareTD[playerid][0], 1);
    KeyShareTD[playerid][1] = CreatePlayerTextDraw(playerid, 520.000000, 51.000000, "Key: - 00:00");
    PlayerTextDrawFont(playerid, KeyShareTD[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, KeyShareTD[playerid][1], 0.250000, 1.000000);
    PlayerTextDrawTextSize(playerid, KeyShareTD[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, KeyShareTD[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, KeyShareTD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, KeyShareTD[playerid][1], 2);
    PlayerTextDrawColor(playerid, KeyShareTD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, KeyShareTD[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, KeyShareTD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, KeyShareTD[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, KeyShareTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, KeyShareTD[playerid][1], 0);
    
    Titik_Temu_INJURED[playerid][0] = CreatePlayerTextDraw(playerid, 323.000, 366.000, "Tekan Tombol ~b~[N]~w~ untuk mengirim signal~n~Tekan Tombol ~b~[Y]~w~ untuk koma | ~b~'/dokterlokal'~w~ jika tidak ada EMS");
    PlayerTextDrawLetterSize(playerid, Titik_Temu_INJURED[playerid][0], 0.230, 1.399);
    PlayerTextDrawAlignment(playerid, Titik_Temu_INJURED[playerid][0], 2);
    PlayerTextDrawColor(playerid, Titik_Temu_INJURED[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Titik_Temu_INJURED[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Titik_Temu_INJURED[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, Titik_Temu_INJURED[playerid][0], 150);
    PlayerTextDrawFont(playerid, Titik_Temu_INJURED[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Titik_Temu_INJURED[playerid][0], 1);

    Titik_Temu_INJURED[playerid][1] = CreatePlayerTextDraw(playerid, 323.000, 392.000, "Anda tidak sadarkan diri dalam ~r~29 Menit 15 Detik");
    PlayerTextDrawLetterSize(playerid, Titik_Temu_INJURED[playerid][1], 0.230, 1.399);
    PlayerTextDrawAlignment(playerid, Titik_Temu_INJURED[playerid][1], 2);
    PlayerTextDrawColor(playerid, Titik_Temu_INJURED[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, Titik_Temu_INJURED[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Titik_Temu_INJURED[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, Titik_Temu_INJURED[playerid][1], 150);
    PlayerTextDrawFont(playerid, Titik_Temu_INJURED[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Titik_Temu_INJURED[playerid][1], 1);

    ATRP_Gym[playerid][0] = CreatePlayerTextDraw(playerid, 16.000, 208.000, "~r~55");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][0], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][0], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][0], 1);

    ATRP_Gym[playerid][1] = CreatePlayerTextDraw(playerid, 16.000, 221.000, "~g~[Y]~w~ Untuk Latihan");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][1], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][1], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][1], 1);

    ATRP_Gym[playerid][2] = CreatePlayerTextDraw(playerid, 16.000, 235.000, "~r~[H]~w~ Untuk Berhenti");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][2], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][2], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][2], 1);

    PipemTD[playerid][0] = CreatePlayerTextDraw(playerid, 5.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][0], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][0], 1);

    PipemTD[playerid][1] = CreatePlayerTextDraw(playerid, 5.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][1], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][1], 1);

    PipemTD[playerid][2] = CreatePlayerTextDraw(playerid, 5.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][2], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][2], 1);

    PipemTD[playerid][3] = CreatePlayerTextDraw(playerid, 39.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][3], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][3], 1);

    PipemTD[playerid][4] = CreatePlayerTextDraw(playerid, 41.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][4], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][4], 1);

    PipemTD[playerid][5] = CreatePlayerTextDraw(playerid, 41.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][5], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][5], 1);

    PipemTD[playerid][6] = CreatePlayerTextDraw(playerid, 41.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][6], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][6], 1);

    PipemTD[playerid][7] = CreatePlayerTextDraw(playerid, 75.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][7], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][7], 1);

    PipemTD[playerid][8] = CreatePlayerTextDraw(playerid, 77.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][8], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][8], 1);

    PipemTD[playerid][9] = CreatePlayerTextDraw(playerid, 77.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][9], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][9], 1);

    PipemTD[playerid][10] = CreatePlayerTextDraw(playerid, 77.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][10], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][10], 1);

    PipemTD[playerid][11] = CreatePlayerTextDraw(playerid, 91.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][11], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][11], 1);

    PipemTD[playerid][12] = CreatePlayerTextDraw(playerid, 93.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][12], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][12], 1);

    PipemTD[playerid][13] = CreatePlayerTextDraw(playerid, 93.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][13], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][13], 1);

    PipemTD[playerid][14] = CreatePlayerTextDraw(playerid, 93.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][14], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][14], 1);

    PipemTD[playerid][15] = CreatePlayerTextDraw(playerid, 107.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][15], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][15], 1);

    PipemTD[playerid][16] = CreatePlayerTextDraw(playerid, 109.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][16], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][16], 1);

    PipemTD[playerid][17] = CreatePlayerTextDraw(playerid, 109.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][17], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][17], 1);

    PipemTD[playerid][18] = CreatePlayerTextDraw(playerid, 109.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][18], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][18], 1);

    PipemTD[playerid][19] = CreatePlayerTextDraw(playerid, 123.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][19], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][19], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][19], 1);

    PipemTD[playerid][20] = CreatePlayerTextDraw(playerid, 6.000, 432.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][20], 33.000, 13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][20], 852308735);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][20], 1);

    PipemTD[playerid][21] = CreatePlayerTextDraw(playerid, 42.000, 432.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][21], 33.000, 13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][21], 16777215);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][21], 1);

    PipemTD[playerid][22] = CreatePlayerTextDraw(playerid, 78.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][22], 13.000, -13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][22], -626712321);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][22], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][22], 1);

    PipemTD[playerid][23] = CreatePlayerTextDraw(playerid, 94.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][23], 13.000, -13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][23], 1097458175);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][23], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][23], 1);

    PipemTD[playerid][24] = CreatePlayerTextDraw(playerid, 110.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][24], 13.000, -13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][24], -1962934017);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][24], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][24], 1);

    PipemTD[playerid][25] = CreatePlayerTextDraw(playerid, 10.000, 435.000, "HUD:radar_girlfriend");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][25], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][25], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][25], 1);

    PipemTD[playerid][26] = CreatePlayerTextDraw(playerid, 45.000, 435.000, "HUD:radar_tshirt");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][26], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][26], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][26], 1);

    PipemTD[playerid][27] = CreatePlayerTextDraw(playerid, 81.000, 435.000, "HUD:radar_burgerShot");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][27], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][27], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][27], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][27], 1);

    PipemTD[playerid][28] = CreatePlayerTextDraw(playerid, 97.000, 435.000, "HUD:radar_diner");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][28], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][28], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][28], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][28], 1);

    PipemTD[playerid][29] = CreatePlayerTextDraw(playerid, 113.000, 435.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][29], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][29], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][29], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][29], 1);
    
    AdutyTD[playerid][0] = CreatePlayerTextDraw(playerid, 317.500000, 400.000000, "AdminName");
    PlayerTextDrawFont(playerid, AdutyTD[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, AdutyTD[playerid][0], 0.199997, 1.500000);
    PlayerTextDrawTextSize(playerid, AdutyTD[playerid][0], 400.000000, 1000.000000);
    PlayerTextDrawSetOutline(playerid, AdutyTD[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, AdutyTD[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, AdutyTD[playerid][0], 2);
    PlayerTextDrawColor(playerid, AdutyTD[playerid][0], -741092353);
    PlayerTextDrawBackgroundColor(playerid, AdutyTD[playerid][0], 1193215);
    PlayerTextDrawBoxColor(playerid, AdutyTD[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, AdutyTD[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, AdutyTD[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, AdutyTD[playerid][0], 0);

    AdutyTD[playerid][1] = CreatePlayerTextDraw(playerid, 317.500000, 409.000000, "Administrator ~w~: ~g~~h~On-Duty");
    PlayerTextDrawFont(playerid, AdutyTD[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, AdutyTD[playerid][1], 0.299997, 2.000000);
    PlayerTextDrawTextSize(playerid, AdutyTD[playerid][1], 400.000000, 1000.000000);
    PlayerTextDrawSetOutline(playerid, AdutyTD[playerid][1], 0);
    PlayerTextDrawSetShadow(playerid, AdutyTD[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, AdutyTD[playerid][1], 2);
    PlayerTextDrawColor(playerid, AdutyTD[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, AdutyTD[playerid][1], 1193215);
    PlayerTextDrawBoxColor(playerid, AdutyTD[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, AdutyTD[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, AdutyTD[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, AdutyTD[playerid][1], 0);

    AdutyTD[playerid][2] = CreatePlayerTextDraw(playerid, 317.500000, 427.000000, "~r~~h~X : ~w~1212.0000 ~r~~h~Y : ~w~1212.0000 ~r~~h~Z : ~w~1212.0000 ~r~~h~A : ~w~1212.0000");
    PlayerTextDrawFont(playerid, AdutyTD[playerid][2], 1);
    PlayerTextDrawLetterSize(playerid, AdutyTD[playerid][2], 0.149997, 1.000000);
    PlayerTextDrawTextSize(playerid, AdutyTD[playerid][2], 400.000000, 1000.000000);
    PlayerTextDrawSetOutline(playerid, AdutyTD[playerid][2], 0);
    PlayerTextDrawSetShadow(playerid, AdutyTD[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, AdutyTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, AdutyTD[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, AdutyTD[playerid][2], 1193215);
    PlayerTextDrawBoxColor(playerid, AdutyTD[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, AdutyTD[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, AdutyTD[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, AdutyTD[playerid][2], 0);

    AdutyTD[playerid][3] = CreatePlayerTextDraw(playerid, 317.500000, 436.000000, "~r~~h~Interior : ~w~10 ~r~~h~Virtua lWorld : ~w~0");
    PlayerTextDrawFont(playerid, AdutyTD[playerid][3], 1);
    PlayerTextDrawLetterSize(playerid, AdutyTD[playerid][3], 0.149997, 1.000000);
    PlayerTextDrawTextSize(playerid, AdutyTD[playerid][3], 400.000000, 1000.000000);
    PlayerTextDrawSetOutline(playerid, AdutyTD[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, AdutyTD[playerid][3], 0);
    PlayerTextDrawAlignment(playerid, AdutyTD[playerid][3], 2);
    PlayerTextDrawColor(playerid, AdutyTD[playerid][3], -1);
    PlayerTextDrawBackgroundColor(playerid, AdutyTD[playerid][3], 1193215);
    PlayerTextDrawBoxColor(playerid, AdutyTD[playerid][3], 50);
    PlayerTextDrawUseBox(playerid, AdutyTD[playerid][3], 0);
    PlayerTextDrawSetProportional(playerid, AdutyTD[playerid][3], 1);
    PlayerTextDrawSetSelectable(playerid, AdutyTD[playerid][3], 0);

    // Spectator Info
    SpectatorInfoTD[playerid][0] = CreatePlayerTextDraw(playerid, 214.000, 306.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, SpectatorInfoTD[playerid][0], 209.000, 129.000);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][0], 150);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][0], 1);

    SpectatorInfoTD[playerid][1] = CreatePlayerTextDraw(playerid, 320.000, 310.000, "~g~Cecep_Sugeni_(100)");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][1], 0.379, 1.399);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][1], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][1], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][1], 1);

    SpectatorInfoTD[playerid][2] = CreatePlayerTextDraw(playerid, 320.000, 333.000, "Cash:~y~_$5,000");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][2], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][2], 1);

    SpectatorInfoTD[playerid][3] = CreatePlayerTextDraw(playerid, 320.000, 349.000, "HP:~y~_100.0");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][3], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][3], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][3], 1);

    SpectatorInfoTD[playerid][4] = CreatePlayerTextDraw(playerid, 320.000, 364.000, "AM:~y~_95.0");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][4], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][4], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][4], 1);

    SpectatorInfoTD[playerid][5] = CreatePlayerTextDraw(playerid, 320.000, 379.000, "Int:~y~7_~w~WID:~y~15");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][5], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][5], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][5], 1);

    SpectatorInfoTD[playerid][6] = CreatePlayerTextDraw(playerid, 320.000, 394.000, "Keys:~y~_0");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][6], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][6], 1);

    SpectatorInfoTD[playerid][7] = CreatePlayerTextDraw(playerid, 320.000, 412.000, "FPS:~y~_52_~w~Ping:~y~_102ms");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][7], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][7], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][7], 1);
    
    // Footer
    ATRP_Footer[playerid] = CreatePlayerTextDraw(playerid, 321.000, 361.385, "_");
    PlayerTextDrawLetterSize(playerid, ATRP_Footer[playerid], 0.236, 1.453);
    PlayerTextDrawAlignment(playerid, ATRP_Footer[playerid], 2);
    PlayerTextDrawColor(playerid, ATRP_Footer[playerid], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Footer[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Footer[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Footer[playerid], 255);
    PlayerTextDrawFont(playerid, ATRP_Footer[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Footer[playerid], 1);

    // FPS
    FPStextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 0.000, 0.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][0], 130.000, 19.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][0], 1687547391);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][0], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][0], 1);

    FPStextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 1.000, 1.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][1], 127.000, 16.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][1], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][1], 505428735);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][1], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][1], 1);

    FPStextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 11.000, 4.000, "FPS: 90");
    PlayerTextDrawLetterSize(playerid, FPStextdraws[playerid][2], 0.170, 0.899);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][2], 150);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][2], 1);

    FPStextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 53.000, 4.000, "PING: 12MS");
    PlayerTextDrawLetterSize(playerid, FPStextdraws[playerid][3], 0.170, 0.899);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][3], 150);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][3], 1);

    FPStextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 101.000, 4.000, "PL: 35#");
    PlayerTextDrawLetterSize(playerid, FPStextdraws[playerid][4], 0.170, 0.899);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][4], 150);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][4], 1);

    FPStextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 42.000, 1.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][5], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][5], 1687547391);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][5], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][5], 1);

    FPStextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 94.000, 1.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, FPStextdraws[playerid][6], 1.000, 16.000);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][6], 1687547391);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][6], 255);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][6], 1);
    
    // Kartu Tanda Anggota
    KTAtextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 361.000, 210.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][0], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][0], 16.500, 20.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][0], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][0], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][0], 1);

    KTAtextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 361.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][1], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][1], 18.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][1], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][1], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][1], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][1], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][1], 1);

    KTAtextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 511.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][2], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][2], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][2], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][2], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][2], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][2], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][2], 1);

    KTAtextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 511.000, 211.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][3], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][3], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][3], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][3], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][3], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][3], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][3], 1);

    KTAtextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 369.000, 293.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][4], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][4], 148.500, 43.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][4], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][4], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][4], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][4], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][4], 1);

    KTAtextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 367.000, 293.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][5], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][5], 151.500, -79.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][5], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][5], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][5], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][5], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][5], 1);

    KTAtextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 364.000, 220.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][6], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][6], 161.000, 109.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][6], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][6], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][6], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][6], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][6], 1);

    KTAtextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 377.000, 234.000, "V");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][7], 0.449, -1.799);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][7], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][7], 1);

    KTAtextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 361.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][8], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][8], 18.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][8], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][8], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][8], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][8], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][8], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][8], 1);

    KTAtextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 364.000, 318.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][9], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][9], 161.000, 14.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][9], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][9], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][9], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][9], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][9], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][9], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][9], 1);

    KTAtextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 370.000, 322.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][10], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][10], 148.000, 14.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][10], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][10], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][10], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][10], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][10], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][10], 1);

    KTAtextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 511.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][11], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][11], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][11], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][11], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][11], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][11], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][11], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][11], 1);

    KTAtextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 377.000, 234.000, "V");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][12], 0.439, -1.799);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][12], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][12], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][12], 1);

    KTAtextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 373.000, 232.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][13], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][13], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][13], 1);

    KTAtextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 373.200, 232.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][14], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][14], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][14], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][14], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][14], 1);

    KTAtextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 374.000, 233.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][15], 8.000, -2.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][15], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][15], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][15], 1);

    KTAtextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 374.299, 233.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][16], 8.199, -1.700);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][16], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][16], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][16], 1);

    KTAtextdraws[playerid][17] = CreatePlayerTextDraw(playerid, 377.000, 232.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][17], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][17], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][17], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][17], 1);

    KTAtextdraws[playerid][18] = CreatePlayerTextDraw(playerid, 377.200, 232.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][18], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][18], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][18], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][18], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][18], 1);

    KTAtextdraws[playerid][19] = CreatePlayerTextDraw(playerid, 382.000, 238.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][19], 2.000, -2.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][19], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][19], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][19], 1);

    KTAtextdraws[playerid][20] = CreatePlayerTextDraw(playerid, 382.299, 238.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][20], 3.197, -1.700);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][20], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][20], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][20], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][20], 1);

    KTAtextdraws[playerid][21] = CreatePlayerTextDraw(playerid, 384.000, 231.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][21], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][21], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][21], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][21], 1);

    KTAtextdraws[playerid][22] = CreatePlayerTextDraw(playerid, 384.000, 231.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][22], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][22], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][22], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][22], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][22], 1);

    KTAtextdraws[playerid][23] = CreatePlayerTextDraw(playerid, 391.000, 231.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][23], -0.349, 0.796);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][23], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][23], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][23], 1);

    KTAtextdraws[playerid][24] = CreatePlayerTextDraw(playerid, 391.000, 231.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][24], -0.349, 0.796);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][24], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][24], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][24], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][24], 1);

    KTAtextdraws[playerid][25] = CreatePlayerTextDraw(playerid, 443.000, 217.000, "Kepolisian Kota Aeterna");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][25], 0.189, 1.098);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][25], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][25], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][25], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][25], 1);

    KTAtextdraws[playerid][26] = CreatePlayerTextDraw(playerid, 387.000, 228.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][26], -0.349, 0.796);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][26], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][26], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][26], 1);

    KTAtextdraws[playerid][27] = CreatePlayerTextDraw(playerid, 387.000, 228.000, "/");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][27], -0.349, 0.796);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][27], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][27], -260013825);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][27], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][27], 1);

    KTAtextdraws[playerid][28] = CreatePlayerTextDraw(playerid, 443.000, 227.000, "KARTU TANDA ANGGOTA");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][28], 0.209, 1.399);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][28], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][28], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][28], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][28], 1);

    KTAtextdraws[playerid][29] = CreatePlayerTextDraw(playerid, 372.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][29], 20.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][29], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][29], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][29], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][29], 1);

    KTAtextdraws[playerid][30] = CreatePlayerTextDraw(playerid, 372.000, 271.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][30], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][30], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][30], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][30], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][30], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][30], 1);

    KTAtextdraws[playerid][31] = CreatePlayerTextDraw(playerid, 379.000, 271.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][31], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][31], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][31], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][31], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][31], 1);

    KTAtextdraws[playerid][32] = CreatePlayerTextDraw(playerid, 386.000, 271.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][32], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][32], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][32], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][32], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][32], 1);

    KTAtextdraws[playerid][33] = CreatePlayerTextDraw(playerid, 372.000, 278.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][33], 20.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][33], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][33], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][33], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][33], 1);

    KTAtextdraws[playerid][34] = CreatePlayerTextDraw(playerid, 396.000, 261.000, "Cecep_Sugeni");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][34], 0.189, 1.299);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][34], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][34], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][34], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][34], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][34], 1);

    KTAtextdraws[playerid][35] = CreatePlayerTextDraw(playerid, 396.000, 274.000, "Wadir Umum");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][35], 0.200, 1.299);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][35], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][35], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][35], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][35], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][35], 1);

    KTAtextdraws[playerid][36] = CreatePlayerTextDraw(playerid, 443.000, 238.000, "_");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][36], 94.000, 94.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][36], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][36], 0);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][36], 5);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][36], 0);
    PlayerTextDrawSetPreviewModel(playerid, KTAtextdraws[playerid][36], 281);
    PlayerTextDrawSetPreviewRot(playerid, KTAtextdraws[playerid][36], -7.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, KTAtextdraws[playerid][36], 0, 0);

    KTAtextdraws[playerid][37] = CreatePlayerTextDraw(playerid, 470.000, 294.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][37], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][37], 39.500, 24.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][37], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][37], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][37], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][37], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][37], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][37], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][37], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][37], 1);

    KTAtextdraws[playerid][38] = CreatePlayerTextDraw(playerid, 475.000, 318.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][38], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][38], 39.500, 14.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][38], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][38], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][38], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][38], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][38], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][38], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][38], 1);

    KTAtextdraws[playerid][39] = CreatePlayerTextDraw(playerid, 369.000, 307.000, "7263 1231 0082 2321");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][39], 0.129, 0.898);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][39], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][39], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][39], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][39], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][39], 1);

    KTAtextdraws[playerid][40] = CreatePlayerTextDraw(playerid, 369.000, 322.000, "INI ADALAH KARTU TANDA ANGGOTA, KEASLIAN KEANGGOTAAN SESEORANG");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][40], 0.119, 0.898);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][40], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][40], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][40], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][40], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][40], 1);

    /* Watermark
    Watermarktextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 324.000, 19.000, "V");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][0], 0.449, -1.799);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][0], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][0], 1);

    Watermarktextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 324.000, 19.000, "V");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][1], 0.439, -1.799);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][1], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][1], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][1], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][1], 1);

    Watermarktextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 320.000, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][2], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][2], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][2], 1);

    Watermarktextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 320.200, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][3], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][3], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][3], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][3], 1);

    Watermarktextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 321.000, 18.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][4], 8.000, -2.000);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][4], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][4], 1);

    Watermarktextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 321.299, 18.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][5], 8.199, -1.700);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][5], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][5], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][5], 1);

    Watermarktextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 324.000, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][6], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][6], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][6], 1);

    Watermarktextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 324.200, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][7], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][7], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][7], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][7], 1);

    Watermarktextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 329.000, 23.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][8], 2.000, -2.000);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][8], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][8], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][8], 1);

    Watermarktextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 329.299, 23.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][9], 3.198, -1.700);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][9], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][9], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][9], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][9], 1);

    Watermarktextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 331.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][10], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][10], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][10], 1);

    Watermarktextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 331.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][11], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][11], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][11], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][11], 1);

    Watermarktextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 338.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][12], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][12], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][12], 1);

    Watermarktextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 338.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][13], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][13], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][13], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][13], 1);

    Watermarktextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 328.799, 25.798, "TTR");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][14], 0.270, 1.098);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][14], 2);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][14], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][14], -92245249);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][14], 1);

    Watermarktextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 334.000, 13.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][15], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][15], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][15], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][15], 1);

    Watermarktextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 334.000, 13.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][16], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][16], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][16], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][16], 1);*/

    // Taxi Argo
    PlayerTextdraws[playerid][textdraw_taxi][0] = CreatePlayerTextDraw(playerid, 67.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 81.000, 38.000);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 150);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 0);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 4);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 1);

    PlayerTextdraws[playerid][textdraw_taxi][1] = CreatePlayerTextDraw(playerid, 86.000, 179.000, "Taxi Argo");
    PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], -1);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 3);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);

    PlayerTextdraws[playerid][textdraw_taxi][2] = CreatePlayerTextDraw(playerid, 73.000, 194.000, "$55");
    PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], -1);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    
    // Vehicle
	VehicleTextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 116.000, 364.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][0], 39.000, 47.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][0], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][0], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][0], 1);

	VehicleTextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 119.000, 368.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][1], 33.000, 40.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][1], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][1], 255);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][1], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][1], 1);

	VehicleTextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 131.000, 383.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][2], 18.000, 5.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][2], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][2], 255);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][2], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][2], 1);

	VehicleTextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 161.000, 391.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][3], 6.000, 20.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][3], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][3], 255);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][3], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][3], 1);

	VehicleTextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 135.000, 383.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][4], 27.000, 33.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][4], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][4], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][4], 1);

	VehicleTextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 135.000, 393.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][5], 27.000, 22.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][5], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][5], 255);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][5], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][5], 1);

	VehicleTextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 137.000, 385.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][6], 23.000, 30.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][6], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][6], 255);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][6], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][6], 1);

	VehicleTextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 131.000, 400.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][7], 27.000, 4.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][7], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][7], 255);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][7], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][7], 1);

	VehicleTextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 146.000, 396.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][8], 5.000, 9.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][8], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][8], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][8], 1);

	VehicleTextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 145.000, 405.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][9], 8.000, 1.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][9], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][9], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][9], 1);

	VehicleTextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 146.000, 402.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][10], 7.000, 1.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][10], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][10], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][10], 1);

	VehicleTextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 152.000, 403.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][11], 1.000, -6.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][11], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][11], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][11], 1);

	VehicleTextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 147.000, 398.000, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][12], 3.000, 3.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][12], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][12], 255);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][12], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][12], 1);

	VehicleTextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 134.000, 390.000, "KMH");
	PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][13], 0.140, 0.699);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][13], 2);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][13], 150);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][13], 1);

	VehicleTextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 143.000, 415.000, "Santa maria beatch");
	PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][14], 0.190, 0.799);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][14], 2);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][14], 150);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][14], 1);

	VehicleTextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 162.000, 410.500, "LD_SPAC:white");
	PlayerTextDrawTextSize(playerid, VehicleTextdraws[playerid][15], 4.000, -18.000);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][15], 1);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][15], 579543807);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][15], 255);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][15], 1);

	VehicleTextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 134.000, 379.000, "120");
	PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][16], 0.190, 1.199);
	PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][16], 2);
	PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][16], 150);
	PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][16], 1);

    //HBE Stuffs 
    HbeStuffs[playerid][0] = CreatePlayerTextDraw(playerid, 262.000, 401.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][0], 27.000, 38.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][0], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][0], 1018392872);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][0], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][0], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][0], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][0], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][0], 0, 0);

    HbeStuffs[playerid][1] = CreatePlayerTextDraw(playerid, 266.000, 407.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][1], 20.000, 28.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][1], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][1], 16744447);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][1], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][1], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][1], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][1], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][1], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][1], 0, 0);

    HbeStuffs[playerid][2] = CreatePlayerTextDraw(playerid, 284.000, 401.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][2], 27.000, 38.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][2], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][2], 512818984);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][2], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][2], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][2], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][2], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][2], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][2], 0, 0);

    HbeStuffs[playerid][3] = CreatePlayerTextDraw(playerid, 288.000, 407.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][3], 20.000, 28.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][3], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][3], 512819199);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][3], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][3], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][3], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][3], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][3], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][3], 0, 0);

    HbeStuffs[playerid][4] = CreatePlayerTextDraw(playerid, 306.000, 401.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][4], 27.000, 38.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][4], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][4], -7602136);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][4], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][4], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][4], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][4], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][4], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][4], 0, 0);

    HbeStuffs[playerid][5] = CreatePlayerTextDraw(playerid, 310.000, 407.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][5], 20.000, 28.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][5], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][5], -7601921);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][5], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][5], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][5], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][5], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][5], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][5], 0, 0);

    HbeStuffs[playerid][6] = CreatePlayerTextDraw(playerid, 327.000, 401.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][6], 27.000, 38.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][6], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][6], 13553960);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][6], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][6], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][6], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][6], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][6], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][6], 0, 0);

    HbeStuffs[playerid][7] = CreatePlayerTextDraw(playerid, 331.000, 407.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][7], 20.000, 28.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][7], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][7], 12582911);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][7], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][7], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][7], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][7], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][7], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][7], 0, 0);

    HbeStuffs[playerid][8] = CreatePlayerTextDraw(playerid, 348.000, 401.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][8], 27.000, 38.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][8], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][8], -602653656);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][8], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][8], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][8], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][8], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][8], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][8], 0, 0);

    HbeStuffs[playerid][9] = CreatePlayerTextDraw(playerid, 352.000, 407.000, "_");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][9], 20.000, 28.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][9], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][9], -602653441);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][9], 0);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][9], 5);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][9], 0);
    PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][9], 2751);
    PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][9], -90.000, 0.000, 60.000, 0.898);
    PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][9], 0, 0);

    HbeStuffs[playerid][10] = CreatePlayerTextDraw(playerid, 273.000, 417.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][10], 6.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][10], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][10], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][10], 1);

    HbeStuffs[playerid][11] = CreatePlayerTextDraw(playerid, 277.000, 417.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][11], 6.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][11], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][11], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][11], 1);

    HbeStuffs[playerid][12] = CreatePlayerTextDraw(playerid, 277.000, 418.000, "/");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][12], 0.388, 1.199);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][12], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][12], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][12], 1);

    HbeStuffs[playerid][13] = CreatePlayerTextDraw(playerid, 274.000, 417.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][13], 7.000, 13.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][13], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][13], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][13], 1);

    HbeStuffs[playerid][14] = CreatePlayerTextDraw(playerid, 298.000, 421.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][14], 4.000, 7.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][14], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][14], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][14], 1);

    HbeStuffs[playerid][15] = CreatePlayerTextDraw(playerid, 296.000, 419.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][15], 3.000, 5.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][15], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][15], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][15], 1);

    HbeStuffs[playerid][16] = CreatePlayerTextDraw(playerid, 301.000, 419.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][16], 3.000, 5.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][16], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][16], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][16], 1);

    HbeStuffs[playerid][17] = CreatePlayerTextDraw(playerid, 316.000, 419.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][17], 11.000, 5.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][17], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][17], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][17], 1);

    HbeStuffs[playerid][18] = CreatePlayerTextDraw(playerid, 318.000, 422.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][18], 7.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][18], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][18], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][18], 1);

    HbeStuffs[playerid][19] = CreatePlayerTextDraw(playerid, 318.000, 425.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][19], 7.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][19], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][19], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][19], 1);

    HbeStuffs[playerid][20] = CreatePlayerTextDraw(playerid, 340.000, 428.000, "V");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][20], 0.216, -1.299);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][20], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][20], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][20], 1);

    HbeStuffs[playerid][21] = CreatePlayerTextDraw(playerid, 339.000, 422.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][21], 7.000, 7.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][21], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][21], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][21], 1);

    HbeStuffs[playerid][22] = CreatePlayerTextDraw(playerid, 342.000, 421.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][22], 2.000, 5.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][22], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][22], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][22], 1);

    HbeStuffs[playerid][23] = CreatePlayerTextDraw(playerid, 360.000, 415.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][23], 8.000, 16.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][23], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][23], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][23], 1);

    HbeStuffs[playerid][24] = CreatePlayerTextDraw(playerid, 361.000, 415.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][24], 7.000, 16.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][24], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][24], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][24], 1);

    HbeStuffs[playerid][25] = CreatePlayerTextDraw(playerid, 363.000, 417.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][25], 1.000, 11.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][25], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][25], -602653441);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][25], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][25], 1);

    HbeStuffs[playerid][26] = CreatePlayerTextDraw(playerid, 362.000, 421.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][26], 4.000, 1.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][26], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][26], -602653441);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][26], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][26], 1);

    HbeStuffs[playerid][27] = CreatePlayerTextDraw(playerid, 362.000, 424.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][27], 4.000, 1.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][27], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][27], -602653441);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][27], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][27], 1);

    HbeStuffs[playerid][28] = CreatePlayerTextDraw(playerid, 279.000, 418.000, "/");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][28], -0.386, 1.199);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][28], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][28], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][28], 1);

    HbeStuffs[playerid][29] = CreatePlayerTextDraw(playerid, 277.500, 403.000, "100");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][29], 0.128, 0.898);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][29], 2);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][29], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][29], 1);

    HbeStuffs[playerid][30] = CreatePlayerTextDraw(playerid, 299.500, 403.000, "100");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][30], 0.128, 0.898);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][30], 2);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][30], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][30], 1);

    HbeStuffs[playerid][31] = CreatePlayerTextDraw(playerid, 321.500, 403.000, "100");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][31], 0.128, 0.898);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][31], 2);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][31], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][31], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][31], 1);

    HbeStuffs[playerid][32] = CreatePlayerTextDraw(playerid, 342.500, 403.000, "100");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][32], 0.128, 0.898);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][32], 2);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][32], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][32], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][32], 1);

    HbeStuffs[playerid][33] = CreatePlayerTextDraw(playerid, 363.500, 403.000, "100");
    PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][33], 0.128, 0.898);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][33], 2);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][33], 150);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][33], 1);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][33], 1);

    //Sks
    SksTextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 319.000, 48.000, "_");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][0], 1.049, 37.400);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][0], 348.500, 270.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][0], 2);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][0], -1);
    PlayerTextDrawUseBox(playerid, SksTextdraws[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, SksTextdraws[playerid][0], -741092353);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][0], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][0], 1);

    SksTextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 395.000, 58.000, "SURAT KETERANGAN SEHAT");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][1], 0.375, 1.748);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][1], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][1], 3);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][1], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][1], 1);

    SksTextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 416.000, 75.000, "DINAS KESEHATAN KOTA AETERNA");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][2], 0.375, 1.748);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][2], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][2], 3);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][2], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][2], 1);

    SksTextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 319.000, 99.000, "_");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][3], 0.600, -0.199);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][3], 298.500, 265.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][3], 2);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][3], -1);
    PlayerTextDrawUseBox(playerid, SksTextdraws[playerid][3], 1);
    PlayerTextDrawBoxColor(playerid, SksTextdraws[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][3], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][3], 1);

    SksTextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 398.000, 104.000, "JKSN/AE25/pKy8/0000 Dinas Kesehatan KOTA AETERNA");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][4], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][4], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][4], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][4], 1);

    SksTextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 207.000, 147.000, "Dengan ini kami pihak rumah sakit KOTA AETERNA mengeluarkan surat keterangan sehat atau SKS kepada saudara/i");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][5], 0.170, 1.450);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][5], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][5], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][5], 1);

    SksTextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 209.000, 195.000, "Nama                 :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][6], 0.153, 1.248);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][6], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][6], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][6], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][6], 1);

    SksTextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 209.000, 205.000, "Alamat               :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][7], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][7], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][7], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][7], 1);

    SksTextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 209.000, 217.000, "Tempat & Tgl Lahir  :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][8], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][8], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][8], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][8], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][8], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][8], 1);

    SksTextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 382.000, 287.000, "bersi dari narkob* dan tidak curi ayam");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][9], 0.229, 1.950);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][9], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][9], 3);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][9], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][9], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][9], 1);

    SksTextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 268.000, 217.000, "11/01/2000");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][10], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][10], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][10], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][10], 1);

    SksTextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 269.000, 205.000, "Los Santos");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][11], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][11], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][11], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][11], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][11], 1);

    SksTextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 203.000, 243.000, "Menyatakan bahwa saudara/i tersebut telah lolos uji kesehata dengan dokter kami, dan dalam hasil pemeriksaan bahwa pasien denga");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][12], 0.165, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][12], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][12], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][12], 1);

    SksTextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 203.000, 266.000, "Data yang tertulis diatas dinyatakan :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][13], 0.144, 1.350);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][13], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][13], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][13], 1);

    SksTextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 203.000, 266.000, "Data yang tertulis diatas dinyatakan :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][14], 0.144, 1.350);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][14], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][14], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][14], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][14], 1);

    SksTextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 318.000, 308.000, "_");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][15], 0.600, -0.398);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][15], 293.000, 206.500);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][15], 2);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][15], -1);
    PlayerTextDrawUseBox(playerid, SksTextdraws[playerid][15], 1);
    PlayerTextDrawBoxColor(playerid, SksTextdraws[playerid][15], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][15], 1);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][15], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][15], 1);

    SksTextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 199.000, 327.000, "TTD Dokter/Perawat");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][16], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][16], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][16], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][16], 1);

    SksTextdraws[playerid][17] = CreatePlayerTextDraw(playerid, 205.000, 337.000, "Bang_Yud");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][17], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][17], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][17], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][17], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][17], 1);

    SksTextdraws[playerid][18] = CreatePlayerTextDraw(playerid, 268.000, 195.000, "Udin_Racing");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][18], 0.150, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][18], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][18], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][18], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][18], 1);

    SksTextdraws[playerid][19] = CreatePlayerTextDraw(playerid, 407.000, 358.000, "#DINASKESEHATAN #KOTAAETERNA");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][19], 0.136, 0.898);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][19], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][19], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][19], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][19], 1);

    SksTextdraws[playerid][20] = CreatePlayerTextDraw(playerid, 209.000, 229.000, "Gender                :");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][20], 0.158, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][20], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][20], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][20], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][20], 1);

    SksTextdraws[playerid][21] = CreatePlayerTextDraw(playerid, 268.000, 227.000, "Perempuan");
    PlayerTextDrawLetterSize(playerid, SksTextdraws[playerid][21], 0.150, 1.299);
    PlayerTextDrawTextSize(playerid, SksTextdraws[playerid][21], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, SksTextdraws[playerid][21], 1);
    PlayerTextDrawColor(playerid, SksTextdraws[playerid][21], 255);
    PlayerTextDrawSetShadow(playerid, SksTextdraws[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, SksTextdraws[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, SksTextdraws[playerid][21], 255);
    PlayerTextDrawFont(playerid, SksTextdraws[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, SksTextdraws[playerid][21], 1);

    // Katepeh
    ktpTextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 352.000, 223.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][0], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][0], 16.500, 20.500);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][0], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][0], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][0], 1);

    ktpTextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 352.000, 335.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][1], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][1], 18.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][1], 2);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][1], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][1], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][1], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][1], 1);

    ktpTextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 502.000, 335.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][2], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][2], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][2], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][2], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][2], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][2], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][2], 1);

    ktpTextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 502.000, 224.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][3], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][3], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][3], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][3], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][3], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][3], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][3], 1);

    ktpTextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 360.000, 306.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][4], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][4], 148.500, 43.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][4], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][4], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][4], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][4], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][4], 1);

    ktpTextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 358.000, 306.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][5], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][5], 151.500, -79.500);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][5], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][5], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][5], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][5], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][5], 1);

    ktpTextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 355.000, 233.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][6], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][6], 161.000, 109.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][6], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][6], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][6], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][6], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][6], 1);

    ktpTextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 400.000, 276.000, "TANGGAL_LAHIR");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][7], 0.136, 1.049);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][7], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][7], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][7], 1);

    ktpTextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 398.000, 250.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][8], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][8], 118.000, 14.500);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][8], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][8], -16776961);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][8], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][8], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][8], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][8], 1);

    ktpTextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 398.000, 264.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][9], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][9], 118.000, 13.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][9], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][9], -1);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][9], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][9], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][9], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][9], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][9], 1);

    ktpTextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 407.000, 226.000, "KARTU_TANDA_PENDUDUK");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][10], 0.143, 1.149);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][10], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][10], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][10], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][10], 1);

    ktpTextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 404.000, 234.000, "PEMERINTAH_KOTA_AETERNA");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][11], 0.150, 1.299);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][11], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][11], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][11], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][11], 1);

    ktpTextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 402.000, 255.000, "Christian_Snouck");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][12], 0.143, 1.649);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][12], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][12], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][12], 2);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][12], 1);

    ktpTextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 453.000, 276.000, "KELAMIN");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][13], 0.133, 0.999);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][13], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][13], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][13], 1);

    ktpTextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 490.000, 276.000, "TINGGI");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][14], 0.143, 1.049);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][14], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][14], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][14], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][14], 1);

    ktpTextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 400.000, 294.000, "TANDA_TANGAN");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][15], 0.115, 1.049);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][15], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][15], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][15], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][15], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][15], 1);

    ktpTextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 405.000, 283.000, "19-10-2001");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][16], 0.123, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][16], 465.500, 10.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][16], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][16], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][16], 1);

    ktpTextdraws[playerid][17] = CreatePlayerTextDraw(playerid, 456.000, 283.000, "MALE");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][17], 0.143, 0.949);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][17], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][17], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][17], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][17], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][17], 1);

    ktpTextdraws[playerid][18] = CreatePlayerTextDraw(playerid, 494.000, 283.000, "165");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][18], 0.143, 0.949);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][18], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][18], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][18], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][18], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][18], 1);

    ktpTextdraws[playerid][19] = CreatePlayerTextDraw(playerid, 405.000, 303.000, "CHRIS");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][19], 0.189, 1.149);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][19], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][19], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][19], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][19], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][19], 0);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][19], 1);

    ktpTextdraws[playerid][20] = CreatePlayerTextDraw(playerid, 365.000, 314.000, "BERLAKU_SEUMUR_HIDUP");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][20], 0.158, 1.098);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][20], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][20], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][20], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][20], 1);

    ktpTextdraws[playerid][21] = CreatePlayerTextDraw(playerid, 365.000, 322.000, "KARTU_TANDA_PENDUDUK_INI_RESMI_DIKELUARKAN_PEMERINTAH_AETERNA");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][21], 0.112, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][21], 620.000, 20.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][21], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][21], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][21], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][21], 1);

    ktpTextdraws[playerid][22] = CreatePlayerTextDraw(playerid, 365.000, 329.000, "MENJADI_BUKTI_BAHWA_YANG_BERSANGKUTAN_MEMILIKI_HAK_DAN_KEWAJIBAN");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][22], 0.112, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][22], 620.000, 20.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][22], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][22], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][22], 1);

    ktpTextdraws[playerid][23] = CreatePlayerTextDraw(playerid, 365.000, 336.000, "SEBAGAI_WARGA_AETERNA");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][23], 0.112, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][23], 620.000, 20.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][23], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][23], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][23], 1);

    // ATM Textdraw
    VR_ATMTD[playerid][0] = CreatePlayerTextDraw(playerid, 173.000, 102.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][0], 285.000, 243.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][0], 656943615);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][0], 1);

    VR_ATMTD[playerid][1] = CreatePlayerTextDraw(playerid, 186.000, 111.000, "TTR");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][1], 0.250, 1.399);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][1], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][1], 1);

    VR_ATMTD[playerid][2] = CreatePlayerTextDraw(playerid, 185.000, 122.000, "BANKING");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][2], 0.259, 1.399);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][2], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][2], 1);

    VR_ATMTD[playerid][3] = CreatePlayerTextDraw(playerid, 177.000, 141.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][3], 56.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][3], -2139062017);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][3], 1);

    VR_ATMTD[playerid][4] = CreatePlayerTextDraw(playerid, 182.000, 143.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][4], 45.000, 45.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][4], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][4], 1);

    VR_ATMTD[playerid][5] = CreatePlayerTextDraw(playerid, 196.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][5], 16.000, 16.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][5], 1);

    VR_ATMTD[playerid][6] = CreatePlayerTextDraw(playerid, 191.000, 162.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][6], 27.000, 16.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][6], 1);

    VR_ATMTD[playerid][7] = CreatePlayerTextDraw(playerid, 181.000, 189.000, "Gilberd_Notowijoyo");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][7], 0.158, 1.399);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][7], 1);

    VR_ATMTD[playerid][8] = CreatePlayerTextDraw(playerid, 177.000, 212.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][8], 57.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][8], -2139062017);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][8], 1);

    VR_ATMTD[playerid][9] = CreatePlayerTextDraw(playerid, 237.000, 109.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][9], 1.000, 198.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][9], -1448498689);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][9], 1);

    VR_ATMTD[playerid][10] = CreatePlayerTextDraw(playerid, 245.000, 117.000, "Aeterna Account");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][10], 0.300, 1.699);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][10], 1);

    VR_ATMTD[playerid][11] = CreatePlayerTextDraw(playerid, 243.000, 138.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][11], 91.000, 54.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][11], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][11], 1);

    VR_ATMTD[playerid][12] = CreatePlayerTextDraw(playerid, 243.000, 160.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][12], 91.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][12], 1);

    VR_ATMTD[playerid][13] = CreatePlayerTextDraw(playerid, 243.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][13], 91.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][13], 1);

    VR_ATMTD[playerid][14] = CreatePlayerTextDraw(playerid, 246.000, 141.000, "Classic Card");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][14], 0.170, 1.098);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][14], 1);

    VR_ATMTD[playerid][15] = CreatePlayerTextDraw(playerid, 252.000, 162.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][15], 4.000, 8.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][15], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][15], 1);

    VR_ATMTD[playerid][16] = CreatePlayerTextDraw(playerid, 252.000, 160.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][16], 19.000, 4.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][16], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][16], 1);

    VR_ATMTD[playerid][17] = CreatePlayerTextDraw(playerid, 267.000, 162.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][17], 4.000, 8.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][17], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][17], 1);

    VR_ATMTD[playerid][18] = CreatePlayerTextDraw(playerid, 257.000, 166.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][18], 8.000, 4.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][18], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][18], 1);

    VR_ATMTD[playerid][19] = CreatePlayerTextDraw(playerid, 252.000, 171.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][19], 4.000, 5.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][19], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][19], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][19], 1);

    VR_ATMTD[playerid][20] = CreatePlayerTextDraw(playerid, 252.000, 172.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][20], 16.000, 5.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][20], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][20], 1);

    VR_ATMTD[playerid][21] = CreatePlayerTextDraw(playerid, 267.000, 172.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][21], 4.000, 5.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][21], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][21], 1);

    VR_ATMTD[playerid][22] = CreatePlayerTextDraw(playerid, 298.000, 178.000, "MANDIRI");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][22], 0.250, 1.398);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][22], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][22], 1);

    VR_ATMTD[playerid][23] = CreatePlayerTextDraw(playerid, 345.000, 132.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][23], 88.000, 189.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][23], 842216703);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][23], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][23], 1);

    VR_ATMTD[playerid][24] = CreatePlayerTextDraw(playerid, 365.000, 160.000, "ATM MENU");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][24], 0.239, 1.398);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][24], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][24], 1);

    VR_ATMTD[playerid][25] = CreatePlayerTextDraw(playerid, 241.000, 211.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][25], 94.000, -1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][25], -1448498689);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][25], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][25], 1);

    VR_ATMTD[playerid][26] = CreatePlayerTextDraw(playerid, 243.000, 214.000, "Informations");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][26], 0.259, 1.398);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][26], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][26], 1);

    VR_ATMTD[playerid][27] = CreatePlayerTextDraw(playerid, 243.000, 236.000, "Balance");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][27], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][27], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][27], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][27], 1);

    VR_ATMTD[playerid][28] = CreatePlayerTextDraw(playerid, 243.000, 257.000, "No. Rek");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][28], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][28], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][28], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][28], 1);

    VR_ATMTD[playerid][29] = CreatePlayerTextDraw(playerid, 243.000, 278.000, "Type");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][29], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][29], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][29], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][29], 1);

    VR_ATMTD[playerid][30] = CreatePlayerTextDraw(playerid, 297.000, 237.000, "$45,664");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][30], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][30], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][30], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][30], 1);

    VR_ATMTD[playerid][31] = CreatePlayerTextDraw(playerid, 297.000, 257.000, "992312");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][31], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][31], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][31], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][31], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][31], 1);

    VR_ATMTD[playerid][32] = CreatePlayerTextDraw(playerid, 297.000, 279.000, "Mandiri");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][32], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][32], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][32], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][32], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][32], 1);

    VR_ATMTD[playerid][33] = CreatePlayerTextDraw(playerid, 349.000, 177.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][33], 80.000, 28.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][33], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][33], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][33], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][33], 1);

    VR_ATMTD[playerid][34] = CreatePlayerTextDraw(playerid, 349.000, 216.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][34], 80.000, 28.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][34], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][34], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][34], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][34], 1);

    VR_ATMTD[playerid][35] = CreatePlayerTextDraw(playerid, 349.000, 254.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][35], 80.000, 28.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][35], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][35], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][35], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][35], 1);

    VR_ATMTD[playerid][36] = CreatePlayerTextDraw(playerid, 365.000, 183.000, "WITHDRAW");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][36], 0.259, 1.598);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][36], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][36], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][36], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][36], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][36], 1);

    VR_ATMTD[playerid][37] = CreatePlayerTextDraw(playerid, 370.000, 222.000, "DEPOSIT");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][37], 0.259, 1.598);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][37], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][37], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][37], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][37], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][37], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][37], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][37], 1);

    VR_ATMTD[playerid][38] = CreatePlayerTextDraw(playerid, 367.000, 260.000, "TRANSFER");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][38], 0.259, 1.598);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][38], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][38], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][38], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][38], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][38], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][38], 1);

    VR_ATMTD[playerid][39] = CreatePlayerTextDraw(playerid, 186.000, 290.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][39], 7.000, -2.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][39], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][39], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][39], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][39], 1);

    VR_ATMTD[playerid][40] = CreatePlayerTextDraw(playerid, 186.000, 289.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][40], 1.000, 15.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][40], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][40], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][40], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][40], 1);

    VR_ATMTD[playerid][41] = CreatePlayerTextDraw(playerid, 186.000, 306.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][41], 7.000, -2.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][41], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][41], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][41], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][41], 1);

    VR_ATMTD[playerid][42] = CreatePlayerTextDraw(playerid, 190.000, 287.000, ">");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][42], 0.300, 1.899);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][42], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][42], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][42], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][42], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][42], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][42], 1);

    VR_ATMTD[playerid][43] = CreatePlayerTextDraw(playerid, 199.000, 290.000, "Log Out");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][43], 0.219, 1.297);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][43], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][43], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][43], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][43], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][43], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][43], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][43], 1);

    // Karung
    VR_KARUNG[playerid][0] = CreatePlayerTextDraw(playerid, -29.000, -13.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, VR_KARUNG[playerid][0], 781.000, 582.000);
    PlayerTextDrawAlignment(playerid, VR_KARUNG[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_KARUNG[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, VR_KARUNG[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_KARUNG[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_KARUNG[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_KARUNG[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_KARUNG[playerid][0], 1);

    // Banned TD
    VR_BANNEDTD[playerid][0] = CreatePlayerTextDraw(playerid, 0.000, -6.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][0], 651.000, 470.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][0], 943210495);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][0], 1);

    VR_BANNEDTD[playerid][1] = CreatePlayerTextDraw(playerid, 89.000, 88.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][1], 458.000, 284.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][1], -2139062017);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][1], 1);

    VR_BANNEDTD[playerid][2] = CreatePlayerTextDraw(playerid, 116.000, 104.000, "Aeterna Roleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][2], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][2], 1);

    VR_BANNEDTD[playerid][3] = CreatePlayerTextDraw(playerid, 102.000, 94.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][3], 0.539, 3.700);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][3], -65281);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][3], 1);

    VR_BANNEDTD[playerid][4] = CreatePlayerTextDraw(playerid, 106.000, 96.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][4], 0.539, 3.700);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][4], 1);

    VR_BANNEDTD[playerid][5] = CreatePlayerTextDraw(playerid, 117.000, 116.000, "Indonesia");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][5], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][5], 1);

    VR_BANNEDTD[playerid][6] = CreatePlayerTextDraw(playerid, 310.000, 144.000, "You Have Been Banned By Adm Mings");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][6], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][6], 1);

    VR_BANNEDTD[playerid][7] = CreatePlayerTextDraw(playerid, 209.000, 174.000, "UCP:_Kims");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][7], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][7], 1);

    VR_BANNEDTD[playerid][8] = CreatePlayerTextDraw(playerid, 209.000, 191.000, "Name: Kim_Jong");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][8], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][8], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][8], 1);

    VR_BANNEDTD[playerid][9] = CreatePlayerTextDraw(playerid, 201.000, 167.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][9], 233.000, 104.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][9], 943210495);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][9], 1);

    VR_BANNEDTD[playerid][10] = CreatePlayerTextDraw(playerid, 209.000, 207.000, "Level: 51");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][10], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][10], 1);

    VR_BANNEDTD[playerid][11] = CreatePlayerTextDraw(playerid, 209.000, 223.000, "Reason:");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][11], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][11], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][11], 1);

    VR_BANNEDTD[playerid][12] = CreatePlayerTextDraw(playerid, 318.000, 245.000, "Anda Mencoba Menggunakan Teleportasi");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][12], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][12], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][12], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][12], 1);

    VR_BANNEDTD[playerid][13] = CreatePlayerTextDraw(playerid, 376.000, 167.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][13], 0.439, 2.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][13], -65281);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][13], 1);

    VR_BANNEDTD[playerid][14] = CreatePlayerTextDraw(playerid, 379.000, 168.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][14], 0.439, 2.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][14], 1);

    VR_BANNEDTD[playerid][15] = CreatePlayerTextDraw(playerid, 387.000, 172.000, "Aeterna Roleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][15], 0.150, 1.100);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][15], 1);

    VR_BANNEDTD[playerid][16] = CreatePlayerTextDraw(playerid, 388.000, 181.000, "Indonesia");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][16], 0.150, 1.100);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][16], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][16], 1);

    VR_BANNEDTD[playerid][17] = CreatePlayerTextDraw(playerid, 321.000, 282.000, "TIDAK MERASA BERSALAH ATAUPUN TIDAK MERASA APA YANG DIBILANG OLEH ADMIN?");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][17], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][17], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][17], 1);

    VR_BANNEDTD[playerid][18] = CreatePlayerTextDraw(playerid, 319.000, 297.000, "Report Misunderstandings On Discord: ~y~http://discord.gg/VeronaRoleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][18], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][18], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][18], 1);

    VR_BANNEDTD[playerid][19] = CreatePlayerTextDraw(playerid, 324.000, 314.000, "In Channel: #create-ticket");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][19], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][19], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][19], 1);

    VR_BANNEDTD[playerid][20] = CreatePlayerTextDraw(playerid, 94.000, 352.000, "Tanggal Terbanned: 25-02-2003");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][20], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][20], 1);

    // LoadBarTD
    /*ProgressBar[playerid][0] = CreatePlayerTextDraw(playerid, 210.000, 359.000, "");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][0], 107.000, 26.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][0], 842682623);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][0], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][0], 1);

    ProgressBar[playerid][1] = CreatePlayerTextDraw(playerid, 212.000, 362.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][1], 103.000, 21.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][1], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][1], 100);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][1], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][1], 1);

    ProgressBar[playerid][2] = CreatePlayerTextDraw(playerid, 212.000, 362.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], 103.000, 21.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][2], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][2], -6710855);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][2], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][2], 1);

    ProgressBar[playerid][3] = CreatePlayerTextDraw(playerid, 265.000, 365.000, "MAKAN");
    PlayerTextDrawLetterSize(playerid, ProgressBar[playerid][3], 0.217, 1.500);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][3], 2);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][3], 150);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][3], 1);*/

    ProgressBar[playerid][0] = CreatePlayerTextDraw(playerid, -850.000, -920.000, "Gambar teks baru");
    PlayerTextDrawLetterSize(playerid, ProgressBar[playerid][0], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][0], 150);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][0], 1);

    ProgressBar[playerid][1] = CreatePlayerTextDraw(playerid, 273.000, 378.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][1], 89.000, -19.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][1], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][1], 30);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][1], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][1], 1);

    ProgressBar[playerid][2] = CreatePlayerTextDraw(playerid, 275.000, 361.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], 85.000, 15.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][2], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][2], X11_SALMON);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][2], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][2], 1);

    ProgressBar[playerid][3] = CreatePlayerTextDraw(playerid, 317.000, 365.000, "MAKAN");
    PlayerTextDrawLetterSize(playerid, ProgressBar[playerid][3], 0.136, 0.598);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][3], 2);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][3], 150);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][3], 1);
    
    // Robbery
    RobberyTextTD[playerid][0] = CreatePlayerTextDraw(playerid, 18.000, 195.000, "  Mohon tetap diwarung~n~selama 14 menit 59 detik");
    PlayerTextDrawLetterSize(playerid, RobberyTextTD[playerid][0], 0.249, 1.399);
    PlayerTextDrawAlignment(playerid, RobberyTextTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, RobberyTextTD[playerid][0], 1926329087);
    PlayerTextDrawSetShadow(playerid, RobberyTextTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, RobberyTextTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyTextTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, RobberyTextTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, RobberyTextTD[playerid][0], 1);
    // Fivem HBE

    // Clothes New
    P_MENUCLOTHES[playerid][0] = CreatePlayerTextDraw(playerid, 130.000, 158.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][0], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][0], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][0], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][0], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][0], 1);

    P_MENUCLOTHES[playerid][1] = CreatePlayerTextDraw(playerid, 130.000, 182.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][1], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][1], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][1], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][1], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][1], 1);

    P_MENUCLOTHES[playerid][2] = CreatePlayerTextDraw(playerid, 130.000, 206.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][2], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][2], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][2], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][2], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][2], 1);

    P_MENUCLOTHES[playerid][3] = CreatePlayerTextDraw(playerid, 130.000, 230.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][3], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][3], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][3], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][3], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][3], 1);

    P_MENUCLOTHES[playerid][4] = CreatePlayerTextDraw(playerid, 130.000, 255.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][4], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][4], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][4], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][4], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][4], 1);

    P_MENUCLOTHES[playerid][5] = CreatePlayerTextDraw(playerid, 130.000, 331.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][5], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][5], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][5], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][5], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][5], 1);

    P_MENUCLOTHES[playerid][6] = CreatePlayerTextDraw(playerid, 146.000, 161.000, "PAKAIAN");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][6], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][6], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][6], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][6], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][6], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][6], 1);

    P_MENUCLOTHES[playerid][7] = CreatePlayerTextDraw(playerid, 141.000, 184.000, "TOPI/HELMET");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][7], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][7], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][7], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][7], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][7], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][7], 1);

    P_MENUCLOTHES[playerid][8] = CreatePlayerTextDraw(playerid, 143.000, 208.000, "KACAMATA");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][8], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][8], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][8], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][8], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][8], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][8], 1);

    P_MENUCLOTHES[playerid][9] = CreatePlayerTextDraw(playerid, 143.000, 233.000, "AKSESORIS");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][9], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][9], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][9], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][9], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][9], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][9], 1);

    P_MENUCLOTHES[playerid][10] = CreatePlayerTextDraw(playerid, 143.000, 257.000, "TAS/KOPER");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][10], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][10], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][10], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][10], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][10], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][10], 1);

    P_MENUCLOTHES[playerid][11] = CreatePlayerTextDraw(playerid, 151.000, 334.000, "BATAL");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][11], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][11], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][11], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][11], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][11], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][11], 1);

    P_CLOTHESSELECT[playerid][0] = CreatePlayerTextDraw(playerid, 127.000, 159.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][0], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][0], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][0], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][0], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][0], 1);

    P_CLOTHESSELECT[playerid][1] = CreatePlayerTextDraw(playerid, 69.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][1], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][1], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][1], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][1], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][1], 1);

    P_CLOTHESSELECT[playerid][2] = CreatePlayerTextDraw(playerid, 209.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][2], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][2], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][2], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][2], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][2], 1);

    P_CLOTHESSELECT[playerid][3] = CreatePlayerTextDraw(playerid, 69.000, 287.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][3], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][3], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][3], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][3], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][3], 1);

    P_CLOTHESSELECT[playerid][4] = CreatePlayerTextDraw(playerid, 209.000, 287.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][4], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][4], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][4], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][4], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][4], 1);

    P_CLOTHESSELECT[playerid][5] = CreatePlayerTextDraw(playerid, 125.000, 286.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][5], 67.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][5], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][5], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][5], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][5], 1);

    P_CLOTHESSELECT[playerid][6] = CreatePlayerTextDraw(playerid, 226.000, 375.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][6], 67.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][6], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][6], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][6], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][6], 1);

    P_CLOTHESSELECT[playerid][7] = CreatePlayerTextDraw(playerid, 310.000, 375.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][7], 46.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][7], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][7], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][7], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][7], 1);

    P_CLOTHESSELECT[playerid][8] = CreatePlayerTextDraw(playerid, 140.000, 160.000, "TOPI/HELM");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][8], 0.219, 1.700);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][8], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][8], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][8], 1);

    P_CLOTHESSELECT[playerid][9] = CreatePlayerTextDraw(playerid, 73.000, 265.000, "< ROT");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][9], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][9], 118.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][9], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][9], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][9], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][9], 1);

    P_CLOTHESSELECT[playerid][10] = CreatePlayerTextDraw(playerid, 221.000, 265.000, "ROT >");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][10], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][10], 264.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][10], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][10], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][10], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][10], 1);

    P_CLOTHESSELECT[playerid][11] = CreatePlayerTextDraw(playerid, 80.000, 288.000, "<<");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][11], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][11], 118.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][11], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][11], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][11], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][11], 1);

    P_CLOTHESSELECT[playerid][12] = CreatePlayerTextDraw(playerid, 222.000, 288.000, ">>");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][12], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][12], 264.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][12], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][12], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][12], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][12], 1);

    P_CLOTHESSELECT[playerid][13] = CreatePlayerTextDraw(playerid, 151.000, 288.000, "BELI");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][13], 0.250, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][13], 201.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][13], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][13], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][13], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][13], 1);

    P_CLOTHESSELECT[playerid][14] = CreatePlayerTextDraw(playerid, 246.000, 377.000, "KEMBALI");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][14], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][14], 315.000, 12.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][14], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][14], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][14], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][14], 1);

    P_CLOTHESSELECT[playerid][15] = CreatePlayerTextDraw(playerid, 323.000, 377.000, "0/96");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][15], 0.270, 1.600);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][15], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][15], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][15], 3);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][15], 1);

    // Bus Waiting
    BusWait[playerid][0] = CreatePlayerTextDraw(playerid, 320.000, 351.000, "~w~Waiting_Time:_10~n~~r~NOTE~w~: Tunggu untuk lanjut ke rute berikutnya");
    PlayerTextDrawLetterSize(playerid, BusWait[playerid][0], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, BusWait[playerid][0], 2);
    PlayerTextDrawColor(playerid, BusWait[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, BusWait[playerid][0], 150);
    PlayerTextDrawFont(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, BusWait[playerid][0], 1);
}

CreateTextDraw()
{ 
    RadialTD1[0] = TextDrawCreate(-1144.000, -1243.000, "Gambar teks baru");
    TextDrawLetterSize(RadialTD1[0], 0.300, 1.500);
    TextDrawAlignment(RadialTD1[0], 1);
    TextDrawColor(RadialTD1[0], -1);
    TextDrawSetShadow(RadialTD1[0], 1);
    TextDrawSetOutline(RadialTD1[0], 1);
    TextDrawBackgroundColor(RadialTD1[0], 150);
    TextDrawFont(RadialTD1[0], 1);
    TextDrawSetProportional(RadialTD1[0], 1);

    RadialTD1[1] = TextDrawCreate(-4.000, -4.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[1], 747.000, 686.000);
    TextDrawAlignment(RadialTD1[1], 1);
    TextDrawColor(RadialTD1[1], 20);
    TextDrawSetShadow(RadialTD1[1], 0);
    TextDrawSetOutline(RadialTD1[1], 0);
    TextDrawBackgroundColor(RadialTD1[1], 255);
    TextDrawFont(RadialTD1[1], 4);
    TextDrawSetProportional(RadialTD1[1], 1);

    RadialTD1[2] = TextDrawCreate(263.000, 199.000, "_");
    TextDrawTextSize(RadialTD1[2], 45.000, 57.000);
    TextDrawAlignment(RadialTD1[2], 1);
    TextDrawColor(RadialTD1[2], 40);
    TextDrawSetShadow(RadialTD1[2], 0);
    TextDrawSetOutline(RadialTD1[2], 0);
    TextDrawBackgroundColor(RadialTD1[2], 0);
    TextDrawFont(RadialTD1[2], 5);
    TextDrawSetProportional(RadialTD1[2], 0);
    TextDrawSetPreviewModel(RadialTD1[2], 2751);
    TextDrawSetPreviewRot(RadialTD1[2], -90.000, 0.000, -30.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[2], 0, 0);
    TextDrawSetSelectable(RadialTD1[2], 1);

    RadialTD1[3] = TextDrawCreate(299.000, 199.000, "_");
    TextDrawTextSize(RadialTD1[3], 45.000, 57.000);
    TextDrawAlignment(RadialTD1[3], 1);
    TextDrawColor(RadialTD1[3], X11_SALMON);
    TextDrawSetShadow(RadialTD1[3], 0);
    TextDrawSetOutline(RadialTD1[3], 0);
    TextDrawBackgroundColor(RadialTD1[3], 0);
    TextDrawFont(RadialTD1[3], 5);
    TextDrawSetProportional(RadialTD1[3], 0);
    TextDrawSetPreviewModel(RadialTD1[3], 2751);
    TextDrawSetPreviewRot(RadialTD1[3], -90.000, 0.000, -30.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[3], 0, 0);
    TextDrawSetSelectable(RadialTD1[3], 1);

    RadialTD1[4] = TextDrawCreate(281.000, 159.000, "_");
    TextDrawTextSize(RadialTD1[4], 45.000, 57.000);
    TextDrawAlignment(RadialTD1[4], 1);
    TextDrawColor(RadialTD1[4], 50);
    TextDrawSetShadow(RadialTD1[4], 0);
    TextDrawSetOutline(RadialTD1[4], 0);
    TextDrawBackgroundColor(RadialTD1[4], 0);
    TextDrawFont(RadialTD1[4], 5);
    TextDrawSetProportional(RadialTD1[4], 0);
    TextDrawSetPreviewModel(RadialTD1[4], 2751);
    TextDrawSetPreviewRot(RadialTD1[4], -90.000, 0.000, -30.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[4], 0, 0);
    TextDrawSetSelectable(RadialTD1[4], 1);

    RadialTD1[5] = TextDrawCreate(318.000, 159.000, "_");
    TextDrawTextSize(RadialTD1[5], 45.000, 57.000);
    TextDrawAlignment(RadialTD1[5], 1);
    TextDrawColor(RadialTD1[5], 50);
    TextDrawSetShadow(RadialTD1[5], 0);
    TextDrawSetOutline(RadialTD1[5], 0);
    TextDrawBackgroundColor(RadialTD1[5], 0);
    TextDrawFont(RadialTD1[5], 5);
    TextDrawSetProportional(RadialTD1[5], 0);
    TextDrawSetPreviewModel(RadialTD1[5], 2751);
    TextDrawSetPreviewRot(RadialTD1[5], -90.000, 0.000, -30.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[5], 0, 0);
    TextDrawSetSelectable(RadialTD1[5], 1);

    RadialTD1[6] = TextDrawCreate(336.000, 200.000, "_");
    TextDrawTextSize(RadialTD1[6], 45.000, 57.000);
    TextDrawAlignment(RadialTD1[6], 1);
    TextDrawColor(RadialTD1[6], 50);
    TextDrawSetShadow(RadialTD1[6], 0);
    TextDrawSetOutline(RadialTD1[6], 0);
    TextDrawBackgroundColor(RadialTD1[6], 0);
    TextDrawFont(RadialTD1[6], 5);
    TextDrawSetProportional(RadialTD1[6], 0);
    TextDrawSetPreviewModel(RadialTD1[6], 2751);
    TextDrawSetPreviewRot(RadialTD1[6], -90.000, 0.000, -30.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[6], 0, 0);
    TextDrawSetSelectable(RadialTD1[6], 1);

    RadialTD1[7] = TextDrawCreate(317.000, 240.000, "_");
    TextDrawTextSize(RadialTD1[7], 45.000, 57.000);
    TextDrawAlignment(RadialTD1[7], 1);
    TextDrawColor(RadialTD1[7], 40);
    TextDrawSetShadow(RadialTD1[7], 0);
    TextDrawSetOutline(RadialTD1[7], 0);
    TextDrawBackgroundColor(RadialTD1[7], 0);
    TextDrawFont(RadialTD1[7], 5);
    TextDrawSetProportional(RadialTD1[7], 0);
    TextDrawSetPreviewModel(RadialTD1[7], 2751);
    TextDrawSetPreviewRot(RadialTD1[7], -90.000, 0.000, -30.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[7], 0, 0);
    TextDrawSetSelectable(RadialTD1[7], 1);

    RadialTD1[8] = TextDrawCreate(280.000, 240.000, "_");
    TextDrawTextSize(RadialTD1[8], 45.000, 57.000);
    TextDrawAlignment(RadialTD1[8], 1);
    TextDrawColor(RadialTD1[8], 40);
    TextDrawSetShadow(RadialTD1[8], 0);
    TextDrawSetOutline(RadialTD1[8], 0);
    TextDrawBackgroundColor(RadialTD1[8], 0);
    TextDrawFont(RadialTD1[8], 5);
    TextDrawSetProportional(RadialTD1[8], 0);
    TextDrawSetPreviewModel(RadialTD1[8], 2751);
    TextDrawSetPreviewRot(RadialTD1[8], -90.000, 0.000, -30.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[8], 0, 0);
    TextDrawSetSelectable(RadialTD1[8], 1);

    RadialTD1[9] = TextDrawCreate(313.000, 223.000, "<");
    TextDrawLetterSize(RadialTD1[9], 0.230, 1.199);
    TextDrawAlignment(RadialTD1[9], 1);
    TextDrawColor(RadialTD1[9], -1);
    TextDrawSetShadow(RadialTD1[9], 0);
    TextDrawSetOutline(RadialTD1[9], 0);
    TextDrawBackgroundColor(RadialTD1[9], 150);
    TextDrawFont(RadialTD1[9], 1);
    TextDrawSetProportional(RadialTD1[9], 1);

    RadialTD1[10] = TextDrawCreate(314.000, 228.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[10], 13.000, 2.000);
    TextDrawAlignment(RadialTD1[10], 1);
    TextDrawColor(RadialTD1[10], -1);
    TextDrawSetShadow(RadialTD1[10], 0);
    TextDrawSetOutline(RadialTD1[10], 0);
    TextDrawBackgroundColor(RadialTD1[10], 255);
    TextDrawFont(RadialTD1[10], 4);
    TextDrawSetProportional(RadialTD1[10], 1);

    RadialTD1[11] = TextDrawCreate(334.000, 264.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[11], 9.000, 13.000);
    TextDrawAlignment(RadialTD1[11], 1);
    TextDrawColor(RadialTD1[11], -1061109505);
    TextDrawSetShadow(RadialTD1[11], 0);
    TextDrawSetOutline(RadialTD1[11], 0);
    TextDrawBackgroundColor(RadialTD1[11], 255);
    TextDrawFont(RadialTD1[11], 4);
    TextDrawSetProportional(RadialTD1[11], 1);

    RadialTD1[12] = TextDrawCreate(314.000, 231.000, "Keluar");
    TextDrawLetterSize(RadialTD1[12], 0.150, 0.799);
    TextDrawAlignment(RadialTD1[12], 1);
    TextDrawColor(RadialTD1[12], -1);
    TextDrawSetShadow(RadialTD1[12], 0);
    TextDrawSetOutline(RadialTD1[12], 0);
    TextDrawBackgroundColor(RadialTD1[12], 150);
    TextDrawFont(RadialTD1[12], 1);
    TextDrawSetProportional(RadialTD1[12], 1);

    RadialTD1[13] = TextDrawCreate(331.000, 261.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[13], 6.000, 6.000);
    TextDrawAlignment(RadialTD1[13], 1);
    TextDrawColor(RadialTD1[13], -1061109505);
    TextDrawSetShadow(RadialTD1[13], 0);
    TextDrawSetOutline(RadialTD1[13], 0);
    TextDrawBackgroundColor(RadialTD1[13], 255);
    TextDrawFont(RadialTD1[13], 4);
    TextDrawSetProportional(RadialTD1[13], 1);

    RadialTD1[14] = TextDrawCreate(334.000, 278.000, "Toys");
    TextDrawLetterSize(RadialTD1[14], 0.150, 0.799);
    TextDrawAlignment(RadialTD1[14], 1);
    TextDrawColor(RadialTD1[14], -1);
    TextDrawSetShadow(RadialTD1[14], 0);
    TextDrawSetOutline(RadialTD1[14], 0);
    TextDrawBackgroundColor(RadialTD1[14], 150);
    TextDrawFont(RadialTD1[14], 1);
    TextDrawSetProportional(RadialTD1[14], 1);

    RadialTD1[15] = TextDrawCreate(340.000, 261.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[15], 7.000, 6.000);
    TextDrawAlignment(RadialTD1[15], 1);
    TextDrawColor(RadialTD1[15], -1061109505);
    TextDrawSetShadow(RadialTD1[15], 0);
    TextDrawSetOutline(RadialTD1[15], 0);
    TextDrawBackgroundColor(RadialTD1[15], 255);
    TextDrawFont(RadialTD1[15], 4);
    TextDrawSetProportional(RadialTD1[15], 1);

    RadialTD1[16] = TextDrawCreate(347.000, 222.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[16], 22.000, 15.000);
    TextDrawAlignment(RadialTD1[16], 1);
    TextDrawColor(RadialTD1[16], -1061109505);
    TextDrawSetShadow(RadialTD1[16], 0);
    TextDrawSetOutline(RadialTD1[16], 0);
    TextDrawBackgroundColor(RadialTD1[16], 255);
    TextDrawFont(RadialTD1[16], 4);
    TextDrawSetProportional(RadialTD1[16], 1);

    RadialTD1[17] = TextDrawCreate(349.000, 224.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[17], 8.000, 6.000);
    TextDrawAlignment(RadialTD1[17], 1);
    TextDrawColor(RadialTD1[17], -1);
    TextDrawSetShadow(RadialTD1[17], 0);
    TextDrawSetOutline(RadialTD1[17], 0);
    TextDrawBackgroundColor(RadialTD1[17], 255);
    TextDrawFont(RadialTD1[17], 4);
    TextDrawSetProportional(RadialTD1[17], 1);

    RadialTD1[18] = TextDrawCreate(359.000, 224.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[18], 8.000, 2.000);
    TextDrawAlignment(RadialTD1[18], 1);
    TextDrawColor(RadialTD1[18], -1);
    TextDrawSetShadow(RadialTD1[18], 0);
    TextDrawSetOutline(RadialTD1[18], 0);
    TextDrawBackgroundColor(RadialTD1[18], 255);
    TextDrawFont(RadialTD1[18], 4);
    TextDrawSetProportional(RadialTD1[18], 1);

    RadialTD1[19] = TextDrawCreate(359.000, 227.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[19], 8.000, 2.000);
    TextDrawAlignment(RadialTD1[19], 1);
    TextDrawColor(RadialTD1[19], -1);
    TextDrawSetShadow(RadialTD1[19], 0);
    TextDrawSetOutline(RadialTD1[19], 0);
    TextDrawBackgroundColor(RadialTD1[19], 255);
    TextDrawFont(RadialTD1[19], 4);
    TextDrawSetProportional(RadialTD1[19], 1);

    RadialTD1[20] = TextDrawCreate(359.000, 231.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[20], 8.000, 2.000);
    TextDrawAlignment(RadialTD1[20], 1);
    TextDrawColor(RadialTD1[20], -1);
    TextDrawSetShadow(RadialTD1[20], 0);
    TextDrawSetOutline(RadialTD1[20], 0);
    TextDrawBackgroundColor(RadialTD1[20], 255);
    TextDrawFont(RadialTD1[20], 4);
    TextDrawSetProportional(RadialTD1[20], 1);

    RadialTD1[21] = TextDrawCreate(348.000, 237.000, "Dokumen");
    TextDrawLetterSize(RadialTD1[21], 0.150, 0.799);
    TextDrawAlignment(RadialTD1[21], 1);
    TextDrawColor(RadialTD1[21], -1);
    TextDrawSetShadow(RadialTD1[21], 0);
    TextDrawSetOutline(RadialTD1[21], 0);
    TextDrawBackgroundColor(RadialTD1[21], 150);
    TextDrawFont(RadialTD1[21], 1);
    TextDrawSetProportional(RadialTD1[21], 1);

    RadialTD1[22] = TextDrawCreate(332.000, 176.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[22], 1.000, 19.000);
    TextDrawAlignment(RadialTD1[22], 1);
    TextDrawColor(RadialTD1[22], -1061109505);
    TextDrawSetShadow(RadialTD1[22], 0);
    TextDrawSetOutline(RadialTD1[22], 0);
    TextDrawBackgroundColor(RadialTD1[22], 255);
    TextDrawFont(RadialTD1[22], 4);
    TextDrawSetProportional(RadialTD1[22], 1);

    RadialTD1[23] = TextDrawCreate(347.000, 176.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[23], 1.000, 19.000);
    TextDrawAlignment(RadialTD1[23], 1);
    TextDrawColor(RadialTD1[23], -1061109505);
    TextDrawSetShadow(RadialTD1[23], 0);
    TextDrawSetOutline(RadialTD1[23], 0);
    TextDrawBackgroundColor(RadialTD1[23], 255);
    TextDrawFont(RadialTD1[23], 4);
    TextDrawSetProportional(RadialTD1[23], 1);

    RadialTD1[24] = TextDrawCreate(332.000, 192.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[24], 16.000, 7.000);
    TextDrawAlignment(RadialTD1[24], 1);
    TextDrawColor(RadialTD1[24], -1061109505);
    TextDrawSetShadow(RadialTD1[24], 0);
    TextDrawSetOutline(RadialTD1[24], 0);
    TextDrawBackgroundColor(RadialTD1[24], 255);
    TextDrawFont(RadialTD1[24], 4);
    TextDrawSetProportional(RadialTD1[24], 1);

    RadialTD1[25] = TextDrawCreate(332.000, 176.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[25], 16.000, 1.000);
    TextDrawAlignment(RadialTD1[25], 1);
    TextDrawColor(RadialTD1[25], -1061109505);
    TextDrawSetShadow(RadialTD1[25], 0);
    TextDrawSetOutline(RadialTD1[25], 0);
    TextDrawBackgroundColor(RadialTD1[25], 255);
    TextDrawFont(RadialTD1[25], 4);
    TextDrawSetProportional(RadialTD1[25], 1);

    RadialTD1[26] = TextDrawCreate(338.000, 193.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[26], 5.000, 6.000);
    TextDrawAlignment(RadialTD1[26], 1);
    TextDrawColor(RadialTD1[26], -1);
    TextDrawSetShadow(RadialTD1[26], 0);
    TextDrawSetOutline(RadialTD1[26], 0);
    TextDrawBackgroundColor(RadialTD1[26], 255);
    TextDrawFont(RadialTD1[26], 4);
    TextDrawSetProportional(RadialTD1[26], 1);

    RadialTD1[27] = TextDrawCreate(334.000, 199.000, "Phone");
    TextDrawLetterSize(RadialTD1[27], 0.150, 0.799);
    TextDrawAlignment(RadialTD1[27], 1);
    TextDrawColor(RadialTD1[27], -1);
    TextDrawSetShadow(RadialTD1[27], 0);
    TextDrawSetOutline(RadialTD1[27], 0);
    TextDrawBackgroundColor(RadialTD1[27], 150);
    TextDrawFont(RadialTD1[27], 1);
    TextDrawSetProportional(RadialTD1[27], 1);

    RadialTD1[28] = TextDrawCreate(294.000, 192.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[28], 18.000, 2.000);
    TextDrawAlignment(RadialTD1[28], 1);
    TextDrawColor(RadialTD1[28], -1061109505);
    TextDrawSetShadow(RadialTD1[28], 0);
    TextDrawSetOutline(RadialTD1[28], 0);
    TextDrawBackgroundColor(RadialTD1[28], 255);
    TextDrawFont(RadialTD1[28], 4);
    TextDrawSetProportional(RadialTD1[28], 1);

    RadialTD1[29] = TextDrawCreate(294.000, 178.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[29], 18.000, 2.000);
    TextDrawAlignment(RadialTD1[29], 1);
    TextDrawColor(RadialTD1[29], -1061109505);
    TextDrawSetShadow(RadialTD1[29], 0);
    TextDrawSetOutline(RadialTD1[29], 0);
    TextDrawBackgroundColor(RadialTD1[29], 255);
    TextDrawFont(RadialTD1[29], 4);
    TextDrawSetProportional(RadialTD1[29], 1);

    RadialTD1[30] = TextDrawCreate(294.000, 179.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[30], 1.000, 14.000);
    TextDrawAlignment(RadialTD1[30], 1);
    TextDrawColor(RadialTD1[30], -1061109505);
    TextDrawSetShadow(RadialTD1[30], 0);
    TextDrawSetOutline(RadialTD1[30], 0);
    TextDrawBackgroundColor(RadialTD1[30], 255);
    TextDrawFont(RadialTD1[30], 4);
    TextDrawSetProportional(RadialTD1[30], 1);

    RadialTD1[31] = TextDrawCreate(312.000, 179.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[31], -1.000, 14.000);
    TextDrawAlignment(RadialTD1[31], 1);
    TextDrawColor(RadialTD1[31], -1061109505);
    TextDrawSetShadow(RadialTD1[31], 0);
    TextDrawSetOutline(RadialTD1[31], 0);
    TextDrawBackgroundColor(RadialTD1[31], 255);
    TextDrawFont(RadialTD1[31], 4);
    TextDrawSetProportional(RadialTD1[31], 1);

    RadialTD1[32] = TextDrawCreate(300.000, 166.000, "o");
    TextDrawLetterSize(RadialTD1[32], 0.358, 1.799);
    TextDrawTextSize(RadialTD1[32], 0.000, 3.000);
    TextDrawAlignment(RadialTD1[32], 1);
    TextDrawColor(RadialTD1[32], -1061109505);
    TextDrawSetShadow(RadialTD1[32], 0);
    TextDrawSetOutline(RadialTD1[32], 0);
    TextDrawBackgroundColor(RadialTD1[32], 150);
    TextDrawFont(RadialTD1[32], 1);
    TextDrawSetProportional(RadialTD1[32], 1);

    RadialTD1[33] = TextDrawCreate(311.000, 179.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[33], -1.000, 14.000);
    TextDrawAlignment(RadialTD1[33], 1);
    TextDrawColor(RadialTD1[33], -1061109505);
    TextDrawSetShadow(RadialTD1[33], 0);
    TextDrawSetOutline(RadialTD1[33], 0);
    TextDrawBackgroundColor(RadialTD1[33], 255);
    TextDrawFont(RadialTD1[33], 4);
    TextDrawSetProportional(RadialTD1[33], 1);

    RadialTD1[34] = TextDrawCreate(302.000, 180.000, "/");
    TextDrawLetterSize(RadialTD1[34], 0.219, 0.799);
    TextDrawTextSize(RadialTD1[34], 0.000, 3.000);
    TextDrawAlignment(RadialTD1[34], 1);
    TextDrawColor(RadialTD1[34], -1);
    TextDrawSetShadow(RadialTD1[34], 0);
    TextDrawSetOutline(RadialTD1[34], 0);
    TextDrawBackgroundColor(RadialTD1[34], 150);
    TextDrawFont(RadialTD1[34], 1);
    TextDrawSetProportional(RadialTD1[34], 1);

    RadialTD1[35] = TextDrawCreate(304.000, 180.000, "/");
    TextDrawLetterSize(RadialTD1[35], 0.219, 0.799);
    TextDrawTextSize(RadialTD1[35], 0.000, 3.000);
    TextDrawAlignment(RadialTD1[35], 1);
    TextDrawColor(RadialTD1[35], -1);
    TextDrawSetShadow(RadialTD1[35], 0);
    TextDrawSetOutline(RadialTD1[35], 0);
    TextDrawBackgroundColor(RadialTD1[35], 150);
    TextDrawFont(RadialTD1[35], 1);
    TextDrawSetProportional(RadialTD1[35], 1);

    RadialTD1[36] = TextDrawCreate(293.000, 196.000, "inventory");
    TextDrawLetterSize(RadialTD1[36], 0.150, 0.799);
    TextDrawAlignment(RadialTD1[36], 1);
    TextDrawColor(RadialTD1[36], -1);
    TextDrawSetShadow(RadialTD1[36], 0);
    TextDrawSetOutline(RadialTD1[36], 0);
    TextDrawBackgroundColor(RadialTD1[36], 150);
    TextDrawFont(RadialTD1[36], 1);
    TextDrawSetProportional(RadialTD1[36], 1);

    RadialTD1[37] = TextDrawCreate(276.000, 227.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[37], 17.000, 10.000);
    TextDrawAlignment(RadialTD1[37], 1);
    TextDrawColor(RadialTD1[37], -1061109505);
    TextDrawSetShadow(RadialTD1[37], 0);
    TextDrawSetOutline(RadialTD1[37], 0);
    TextDrawBackgroundColor(RadialTD1[37], 255);
    TextDrawFont(RadialTD1[37], 4);
    TextDrawSetProportional(RadialTD1[37], 1);

    RadialTD1[38] = TextDrawCreate(279.000, 219.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[38], 11.000, 2.000);
    TextDrawAlignment(RadialTD1[38], 1);
    TextDrawColor(RadialTD1[38], -1061109505);
    TextDrawSetShadow(RadialTD1[38], 0);
    TextDrawSetOutline(RadialTD1[38], 0);
    TextDrawBackgroundColor(RadialTD1[38], 255);
    TextDrawFont(RadialTD1[38], 4);
    TextDrawSetProportional(RadialTD1[38], 1);

    RadialTD1[39] = TextDrawCreate(287.000, 236.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[39], 4.000, 3.000);
    TextDrawAlignment(RadialTD1[39], 1);
    TextDrawColor(RadialTD1[39], -1061109505);
    TextDrawSetShadow(RadialTD1[39], 0);
    TextDrawSetOutline(RadialTD1[39], 0);
    TextDrawBackgroundColor(RadialTD1[39], 255);
    TextDrawFont(RadialTD1[39], 4);
    TextDrawSetProportional(RadialTD1[39], 1);

    RadialTD1[40] = TextDrawCreate(278.000, 236.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[40], 4.000, 3.000);
    TextDrawAlignment(RadialTD1[40], 1);
    TextDrawColor(RadialTD1[40], -1061109505);
    TextDrawSetShadow(RadialTD1[40], 0);
    TextDrawSetOutline(RadialTD1[40], 0);
    TextDrawBackgroundColor(RadialTD1[40], 255);
    TextDrawFont(RadialTD1[40], 4);
    TextDrawSetProportional(RadialTD1[40], 1);

    RadialTD1[41] = TextDrawCreate(276.000, 218.000, "/");
    TextDrawLetterSize(RadialTD1[41], 0.338, 1.098);
    TextDrawTextSize(RadialTD1[41], 0.000, 3.000);
    TextDrawAlignment(RadialTD1[41], 1);
    TextDrawColor(RadialTD1[41], -1061109505);
    TextDrawSetShadow(RadialTD1[41], 0);
    TextDrawSetOutline(RadialTD1[41], 0);
    TextDrawBackgroundColor(RadialTD1[41], 150);
    TextDrawFont(RadialTD1[41], 1);
    TextDrawSetProportional(RadialTD1[41], 1);

    RadialTD1[42] = TextDrawCreate(293.000, 218.000, "/");
    TextDrawLetterSize(RadialTD1[42], -0.310, 1.098);
    TextDrawTextSize(RadialTD1[42], 0.000, 3.000);
    TextDrawAlignment(RadialTD1[42], 1);
    TextDrawColor(RadialTD1[42], -1061109505);
    TextDrawSetShadow(RadialTD1[42], 0);
    TextDrawSetOutline(RadialTD1[42], 0);
    TextDrawBackgroundColor(RadialTD1[42], 150);
    TextDrawFont(RadialTD1[42], 1);
    TextDrawSetProportional(RadialTD1[42], 1);

    RadialTD1[43] = TextDrawCreate(274.000, 225.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[43], 4.000, 3.000);
    TextDrawAlignment(RadialTD1[43], 1);
    TextDrawColor(RadialTD1[43], -1061109505);
    TextDrawSetShadow(RadialTD1[43], 0);
    TextDrawSetOutline(RadialTD1[43], 0);
    TextDrawBackgroundColor(RadialTD1[43], 255);
    TextDrawFont(RadialTD1[43], 4);
    TextDrawSetProportional(RadialTD1[43], 1);

    RadialTD1[44] = TextDrawCreate(291.000, 225.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[44], 4.000, 3.000);
    TextDrawAlignment(RadialTD1[44], 1);
    TextDrawColor(RadialTD1[44], -1061109505);
    TextDrawSetShadow(RadialTD1[44], 0);
    TextDrawSetOutline(RadialTD1[44], 0);
    TextDrawBackgroundColor(RadialTD1[44], 255);
    TextDrawFont(RadialTD1[44], 4);
    TextDrawSetProportional(RadialTD1[44], 1);

    RadialTD1[45] = TextDrawCreate(278.000, 231.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[45], 3.000, 2.000);
    TextDrawAlignment(RadialTD1[45], 1);
    TextDrawColor(RadialTD1[45], -1);
    TextDrawSetShadow(RadialTD1[45], 0);
    TextDrawSetOutline(RadialTD1[45], 0);
    TextDrawBackgroundColor(RadialTD1[45], 255);
    TextDrawFont(RadialTD1[45], 4);
    TextDrawSetProportional(RadialTD1[45], 1);

    RadialTD1[46] = TextDrawCreate(288.000, 231.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[46], 3.000, 2.000);
    TextDrawAlignment(RadialTD1[46], 1);
    TextDrawColor(RadialTD1[46], -1);
    TextDrawSetShadow(RadialTD1[46], 0);
    TextDrawSetOutline(RadialTD1[46], 0);
    TextDrawBackgroundColor(RadialTD1[46], 255);
    TextDrawFont(RadialTD1[46], 4);
    TextDrawSetProportional(RadialTD1[46], 1);

    RadialTD1[47] = TextDrawCreate(277.000, 239.000, "Vehicle");
    TextDrawLetterSize(RadialTD1[47], 0.150, 0.799);
    TextDrawAlignment(RadialTD1[47], 1);
    TextDrawColor(RadialTD1[47], -1);
    TextDrawSetShadow(RadialTD1[47], 0);
    TextDrawSetOutline(RadialTD1[47], 0);
    TextDrawBackgroundColor(RadialTD1[47], 150);
    TextDrawFont(RadialTD1[47], 1);
    TextDrawSetProportional(RadialTD1[47], 1);

    RadialTD1[48] = TextDrawCreate(338.000, 265.000, "/");
    TextDrawLetterSize(RadialTD1[48], 0.219, 0.799);
    TextDrawTextSize(RadialTD1[48], 0.000, 3.000);
    TextDrawAlignment(RadialTD1[48], 1);
    TextDrawColor(RadialTD1[48], -1);
    TextDrawSetShadow(RadialTD1[48], 0);
    TextDrawSetOutline(RadialTD1[48], 0);
    TextDrawBackgroundColor(RadialTD1[48], 150);
    TextDrawFont(RadialTD1[48], 1);
    TextDrawSetProportional(RadialTD1[48], 1);

    RadialTD1[49] = TextDrawCreate(300.000, 255.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[49], 12.000, 14.000);
    TextDrawAlignment(RadialTD1[49], 1);
    TextDrawColor(RadialTD1[49], -1061109505);
    TextDrawSetShadow(RadialTD1[49], 0);
    TextDrawSetOutline(RadialTD1[49], 0);
    TextDrawBackgroundColor(RadialTD1[49], 255);
    TextDrawFont(RadialTD1[49], 4);
    TextDrawSetProportional(RadialTD1[49], 1);

    RadialTD1[50] = TextDrawCreate(298.000, 265.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[50], 16.000, 15.000);
    TextDrawAlignment(RadialTD1[50], 1);
    TextDrawColor(RadialTD1[50], -1061109505);
    TextDrawSetShadow(RadialTD1[50], 0);
    TextDrawSetOutline(RadialTD1[50], 0);
    TextDrawBackgroundColor(RadialTD1[50], 255);
    TextDrawFont(RadialTD1[50], 4);
    TextDrawSetProportional(RadialTD1[50], 1);

    RadialTD1[51] = TextDrawCreate(293.000, 267.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[51], 16.000, 15.000);
    TextDrawAlignment(RadialTD1[51], 1);
    TextDrawColor(RadialTD1[51], -1);
    TextDrawSetShadow(RadialTD1[51], 0);
    TextDrawSetOutline(RadialTD1[51], 0);
    TextDrawBackgroundColor(RadialTD1[51], 255);
    TextDrawFont(RadialTD1[51], 4);
    TextDrawSetProportional(RadialTD1[51], 1);

    RadialTD1[52] = TextDrawCreate(295.000, 257.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[52], 12.000, 15.000);
    TextDrawAlignment(RadialTD1[52], 1);
    TextDrawColor(RadialTD1[52], -1);
    TextDrawSetShadow(RadialTD1[52], 0);
    TextDrawSetOutline(RadialTD1[52], 0);
    TextDrawBackgroundColor(RadialTD1[52], 255);
    TextDrawFont(RadialTD1[52], 4);
    TextDrawSetProportional(RadialTD1[52], 1);

    RadialTD1[53] = TextDrawCreate(295.000, 279.000, "Action");
    TextDrawLetterSize(RadialTD1[53], 0.150, 0.799);
    TextDrawAlignment(RadialTD1[53], 1);
    TextDrawColor(RadialTD1[53], -1);
    TextDrawSetShadow(RadialTD1[53], 0);
    TextDrawSetOutline(RadialTD1[53], 0);
    TextDrawBackgroundColor(RadialTD1[53], 150);
    TextDrawFont(RadialTD1[53], 1);
    TextDrawSetProportional(RadialTD1[53], 1);

    gServerMessage[0] = TextDrawCreate(211.000, 41.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[0], 218.000, 62.000);
    TextDrawAlignment(gServerMessage[0], 1);
    TextDrawColor(gServerMessage[0], -6710840);
    TextDrawSetShadow(gServerMessage[0], 0);
    TextDrawSetOutline(gServerMessage[0], 0);
    TextDrawBackgroundColor(gServerMessage[0], 255);
    TextDrawFont(gServerMessage[0], 4);
    TextDrawSetProportional(gServerMessage[0], 1);

    gServerMessage[1] = TextDrawCreate(213.000, 44.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[1], 214.000, 57.000);
    TextDrawAlignment(gServerMessage[1], 1);
    TextDrawColor(gServerMessage[1], 200);
    TextDrawSetShadow(gServerMessage[1], 0);
    TextDrawSetOutline(gServerMessage[1], 0);
    TextDrawBackgroundColor(gServerMessage[1], 255);
    TextDrawFont(gServerMessage[1], 4);
    TextDrawSetProportional(gServerMessage[1], 1);

    gServerMessage[2] = TextDrawCreate(220.000, 50.000, "LD_CHAT:badchat");
    TextDrawTextSize(gServerMessage[2], 10.000, 10.000);
    TextDrawAlignment(gServerMessage[2], 1);
    TextDrawColor(gServerMessage[2], -1);
    TextDrawSetShadow(gServerMessage[2], 0);
    TextDrawSetOutline(gServerMessage[2], 0);
    TextDrawBackgroundColor(gServerMessage[2], 255);
    TextDrawFont(gServerMessage[2], 4);
    TextDrawSetProportional(gServerMessage[2], 1);

    gServerMessage[3] = TextDrawCreate(232.000, 50.000, "ANNOUNCEMENT");
    TextDrawLetterSize(gServerMessage[3], 0.200, 0.999);
    TextDrawAlignment(gServerMessage[3], 1);
    TextDrawColor(gServerMessage[3], -1);
    TextDrawSetShadow(gServerMessage[3], 1);
    TextDrawSetOutline(gServerMessage[3], 1);
    TextDrawBackgroundColor(gServerMessage[3], 150);
    TextDrawFont(gServerMessage[3], 1);
    TextDrawSetProportional(gServerMessage[3], 1);

    gServerMessage[4] = TextDrawCreate(219.000, 71.000, "SERVER AKAN MAINTANCE PADA PUKUL 12.00 WIB, DIHARAPKAN UNTUK KALIAN MEMASUKKAN KENDARAAN KE GARASI TERDEKAT");
    TextDrawLetterSize(gServerMessage[4], 0.209, 0.898);
    TextDrawTextSize(gServerMessage[4], 416.000, 61.000);
    TextDrawAlignment(gServerMessage[4], 1);
    TextDrawColor(gServerMessage[4], -1);
    TextDrawSetShadow(gServerMessage[4], 1);
    TextDrawSetOutline(gServerMessage[4], 1);
    TextDrawBackgroundColor(gServerMessage[4], 150);
    TextDrawFont(gServerMessage[4], 1);
    TextDrawSetProportional(gServerMessage[4], 1);

    gServerMessage[5] = TextDrawCreate(379.000, 106.000, "Admin By: Aeterna - YellowKitty");
    TextDrawLetterSize(gServerMessage[5], 0.159, 0.898);
    TextDrawAlignment(gServerMessage[5], 2);
    TextDrawColor(gServerMessage[5], -1);
    TextDrawSetShadow(gServerMessage[5], 1);
    TextDrawSetOutline(gServerMessage[5], 1);
    TextDrawBackgroundColor(gServerMessage[5], 150);
    TextDrawFont(gServerMessage[5], 1);
    TextDrawSetProportional(gServerMessage[5], 1);

    gServerMessage[6] = TextDrawCreate(328.000, 104.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[6], 101.000, 14.000);
    TextDrawAlignment(gServerMessage[6], 1);
    TextDrawColor(gServerMessage[6], 200);
    TextDrawSetShadow(gServerMessage[6], 0);
    TextDrawSetOutline(gServerMessage[6], 0);
    TextDrawBackgroundColor(gServerMessage[6], 255);
    TextDrawFont(gServerMessage[6], 4);
    TextDrawSetProportional(gServerMessage[6], 1);
    
    ATRP_Warning[0] = TextDrawCreate(-2.000, -2.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[0], 657.000, 460.000);
    TextDrawAlignment(ATRP_Warning[0], 1);
    TextDrawColor(ATRP_Warning[0], -16777126);
    TextDrawSetShadow(ATRP_Warning[0], 0);
    TextDrawSetOutline(ATRP_Warning[0], 0);
    TextDrawBackgroundColor(ATRP_Warning[0], 255);
    TextDrawFont(ATRP_Warning[0], 4);
    TextDrawSetProportional(ATRP_Warning[0], 1);

    ATRP_Warning[1] = TextDrawCreate(238.000, 153.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[1], 165.000, 2.000);
    TextDrawAlignment(ATRP_Warning[1], 1);
    TextDrawColor(ATRP_Warning[1], -1);
    TextDrawSetShadow(ATRP_Warning[1], 0);
    TextDrawSetOutline(ATRP_Warning[1], 0);
    TextDrawBackgroundColor(ATRP_Warning[1], 255);
    TextDrawFont(ATRP_Warning[1], 4);
    TextDrawSetProportional(ATRP_Warning[1], 1);

    ATRP_Warning[2] = TextDrawCreate(238.000, 260.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[2], 165.000, 2.000);
    TextDrawAlignment(ATRP_Warning[2], 1);
    TextDrawColor(ATRP_Warning[2], -1);
    TextDrawSetShadow(ATRP_Warning[2], 0);
    TextDrawSetOutline(ATRP_Warning[2], 0);
    TextDrawBackgroundColor(ATRP_Warning[2], 255);
    TextDrawFont(ATRP_Warning[2], 4);
    TextDrawSetProportional(ATRP_Warning[2], 1);

    ATRP_Warning[3] = TextDrawCreate(238.000, 154.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[3], 2.000, 107.000);
    TextDrawAlignment(ATRP_Warning[3], 1);
    TextDrawColor(ATRP_Warning[3], -1);
    TextDrawSetShadow(ATRP_Warning[3], 0);
    TextDrawSetOutline(ATRP_Warning[3], 0);
    TextDrawBackgroundColor(ATRP_Warning[3], 255);
    TextDrawFont(ATRP_Warning[3], 4);
    TextDrawSetProportional(ATRP_Warning[3], 1);

    ATRP_Warning[4] = TextDrawCreate(401.000, 154.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[4], 2.000, 107.000);
    TextDrawAlignment(ATRP_Warning[4], 1);
    TextDrawColor(ATRP_Warning[4], -1);
    TextDrawSetShadow(ATRP_Warning[4], 0);
    TextDrawSetOutline(ATRP_Warning[4], 0);
    TextDrawBackgroundColor(ATRP_Warning[4], 255);
    TextDrawFont(ATRP_Warning[4], 4);
    TextDrawSetProportional(ATRP_Warning[4], 1);

    ATRP_Warning[5] = TextDrawCreate(243.000, 181.000, "LD_BUM:blkdot");
    TextDrawTextSize(ATRP_Warning[5], 156.000, -1.000);
    TextDrawAlignment(ATRP_Warning[5], 1);
    TextDrawColor(ATRP_Warning[5], -1);
    TextDrawSetShadow(ATRP_Warning[5], 0);
    TextDrawSetOutline(ATRP_Warning[5], 0);
    TextDrawBackgroundColor(ATRP_Warning[5], 255);
    TextDrawFont(ATRP_Warning[5], 4);
    TextDrawSetProportional(ATRP_Warning[5], 1);

    ATRP_Warning[6] = TextDrawCreate(268.000, 157.000, "WARNING!");
    TextDrawLetterSize(ATRP_Warning[6], 0.458, 2.198);
    TextDrawAlignment(ATRP_Warning[6], 1);
    TextDrawColor(ATRP_Warning[6], -1);
    TextDrawSetShadow(ATRP_Warning[6], 0);
    TextDrawSetOutline(ATRP_Warning[6], 0);
    TextDrawBackgroundColor(ATRP_Warning[6], 150);
    TextDrawFont(ATRP_Warning[6], 1);
    TextDrawSetProportional(ATRP_Warning[6], 1);

    ATRP_Warning[7] = TextDrawCreate(347.000, 158.000, "LD_CHAT:badchat");
    TextDrawTextSize(ATRP_Warning[7], 17.000, 17.000);
    TextDrawAlignment(ATRP_Warning[7], 1);
    TextDrawColor(ATRP_Warning[7], -1);
    TextDrawSetShadow(ATRP_Warning[7], 0);
    TextDrawSetOutline(ATRP_Warning[7], 0);
    TextDrawBackgroundColor(ATRP_Warning[7], 255);
    TextDrawFont(ATRP_Warning[7], 4);
    TextDrawSetProportional(ATRP_Warning[7], 1);

    ATRP_Warning[8] = TextDrawCreate(256.000, 193.000, "ANAK BUAH WAHYU DILARANG AETERNA DI AETERNA");
    TextDrawLetterSize(ATRP_Warning[8], 0.250, 1.299);
    TextDrawTextSize(ATRP_Warning[8], 381.000, 7.000);
    TextDrawAlignment(ATRP_Warning[8], 1);
    TextDrawColor(ATRP_Warning[8], -1);
    TextDrawSetShadow(ATRP_Warning[8], 0);
    TextDrawSetOutline(ATRP_Warning[8], 0);
    TextDrawBackgroundColor(ATRP_Warning[8], 150);
    TextDrawFont(ATRP_Warning[8], 1);
    TextDrawSetProportional(ATRP_Warning[8], 1);

    ATRP_Warning[9] = TextDrawCreate(397.000, 242.000, "Warned by: Aeterna - Azpsss.");
    TextDrawLetterSize(ATRP_Warning[9], 0.159, 1.098);
    TextDrawTextSize(ATRP_Warning[9], 462.000, -5.000);
    TextDrawAlignment(ATRP_Warning[9], 3);
    TextDrawColor(ATRP_Warning[9], -1);
    TextDrawSetShadow(ATRP_Warning[9], 0);
    TextDrawSetOutline(ATRP_Warning[9], 0);
    TextDrawBackgroundColor(ATRP_Warning[9], 150);
    TextDrawFont(ATRP_Warning[9], 1);
    TextDrawSetProportional(ATRP_Warning[9], 1);
    
    A_WM[0] = TextDrawCreate(346.000, 18.000, "V");
    TextDrawLetterSize(A_WM[0], 0.439, -1.799);
    TextDrawAlignment(A_WM[0], 1);
    TextDrawColor(A_WM[0], -260013825);
    TextDrawSetShadow(A_WM[0], 0);
    TextDrawSetOutline(A_WM[0], 0);
    TextDrawBackgroundColor(A_WM[0], 150);
    TextDrawFont(A_WM[0], 1);
    TextDrawSetProportional(A_WM[0], 1);

    A_WM[1] = TextDrawCreate(342.200, 16.000, "/");
    TextDrawLetterSize(A_WM[1], 0.330, 0.999);
    TextDrawAlignment(A_WM[1], 1);
    TextDrawColor(A_WM[1], -260013825);
    TextDrawSetShadow(A_WM[1], 0);
    TextDrawSetOutline(A_WM[1], 0);
    TextDrawBackgroundColor(A_WM[1], 150);
    TextDrawFont(A_WM[1], 1);
    TextDrawSetProportional(A_WM[1], 1);

    A_WM[2] = TextDrawCreate(343.299, 17.000, "LD_SPAC:white");
    TextDrawTextSize(A_WM[2], 8.199, -1.700);
    TextDrawAlignment(A_WM[2], 1);
    TextDrawColor(A_WM[2], -260013825);
    TextDrawSetShadow(A_WM[2], 0);
    TextDrawSetOutline(A_WM[2], 0);
    TextDrawBackgroundColor(A_WM[2], 255);
    TextDrawFont(A_WM[2], 4);
    TextDrawSetProportional(A_WM[2], 1);

    A_WM[3] = TextDrawCreate(346.200, 16.000, "/");
    TextDrawLetterSize(A_WM[3], 0.330, 0.999);
    TextDrawAlignment(A_WM[3], 1);
    TextDrawColor(A_WM[3], -260013825);
    TextDrawSetShadow(A_WM[3], 0);
    TextDrawSetOutline(A_WM[3], 0);
    TextDrawBackgroundColor(A_WM[3], 150);
    TextDrawFont(A_WM[3], 1);
    TextDrawSetProportional(A_WM[3], 1);

    A_WM[4] = TextDrawCreate(351.299, 22.000, "LD_SPAC:white");
    TextDrawTextSize(A_WM[4], 3.197, -1.700);
    TextDrawAlignment(A_WM[4], 1);
    TextDrawColor(A_WM[4], -260013825);
    TextDrawSetShadow(A_WM[4], 0);
    TextDrawSetOutline(A_WM[4], 0);
    TextDrawBackgroundColor(A_WM[4], 255);
    TextDrawFont(A_WM[4], 4);
    TextDrawSetProportional(A_WM[4], 1);

    A_WM[5] = TextDrawCreate(353.000, 15.000, "/");
    TextDrawLetterSize(A_WM[5], 0.270, 0.698);
    TextDrawAlignment(A_WM[5], 1);
    TextDrawColor(A_WM[5], -260013825);
    TextDrawSetShadow(A_WM[5], 0);
    TextDrawSetOutline(A_WM[5], 0);
    TextDrawBackgroundColor(A_WM[5], 150);
    TextDrawFont(A_WM[5], 1);
    TextDrawSetProportional(A_WM[5], 1);

    A_WM[6] = TextDrawCreate(360.000, 15.000, "/");
    TextDrawLetterSize(A_WM[6], -0.349, 0.796);
    TextDrawAlignment(A_WM[6], 1);
    TextDrawColor(A_WM[6], -260013825);
    TextDrawSetShadow(A_WM[6], 0);
    TextDrawSetOutline(A_WM[6], 0);
    TextDrawBackgroundColor(A_WM[6], 150);
    TextDrawFont(A_WM[6], 1);
    TextDrawSetProportional(A_WM[6], 1);

    A_WM[7] = TextDrawCreate(356.000, 12.000, "/");
    TextDrawLetterSize(A_WM[7], -0.349, 0.796);
    TextDrawAlignment(A_WM[7], 1);
    TextDrawColor(A_WM[7], -260013825);
    TextDrawSetShadow(A_WM[7], 0);
    TextDrawSetOutline(A_WM[7], 0);
    TextDrawBackgroundColor(A_WM[7], 150);
    TextDrawFont(A_WM[7], 1);
    TextDrawSetProportional(A_WM[7], 1);

    A_WM[8] = TextDrawCreate(300.000, 17.000, "ANNIVERSARY");
    TextDrawLetterSize(A_WM[8], 0.210, 1.099);
    TextDrawAlignment(A_WM[8], 1);
    TextDrawColor(A_WM[8], -260013825);
    TextDrawSetShadow(A_WM[8], 0);
    TextDrawSetOutline(A_WM[8], 0);
    TextDrawBackgroundColor(A_WM[8], 150);
    TextDrawFont(A_WM[8], 1);
    TextDrawSetProportional(A_WM[8], 1);

    A_WM[9] = TextDrawCreate(294.000, 7.000, "1");
    TextDrawLetterSize(A_WM[9], 0.439, 2.399);
    TextDrawAlignment(A_WM[9], 1);
    TextDrawColor(A_WM[9], -260013825);
    TextDrawSetShadow(A_WM[9], 0);
    TextDrawSetOutline(A_WM[9], 0);
    TextDrawBackgroundColor(A_WM[9], 150);
    TextDrawFont(A_WM[9], 1);
    TextDrawSetProportional(A_WM[9], 1);

    A_WM[10] = TextDrawCreate(308.000, 8.000, "AETERNA");
    TextDrawLetterSize(A_WM[10], 0.210, 1.099);
    TextDrawAlignment(A_WM[10], 1);
    TextDrawColor(A_WM[10], -1);
    TextDrawSetShadow(A_WM[10], 0);
    TextDrawSetOutline(A_WM[10], 0);
    TextDrawBackgroundColor(A_WM[10], 150);
    TextDrawFont(A_WM[10], 1);
    TextDrawSetProportional(A_WM[10], 1);
            
    // Restart Server
    gServerTextdraws[0] = TextDrawCreate(22.005966, 209.766693, "_");
    TextDrawLetterSize(gServerTextdraws[0], 0.263191, 1.156665);
    TextDrawAlignment(gServerTextdraws[0], 1);
    TextDrawColor(gServerTextdraws[0], -1);
    TextDrawSetShadow(gServerTextdraws[0], 0);
    TextDrawSetOutline(gServerTextdraws[0], 1);
    TextDrawBackgroundColor(gServerTextdraws[0], 255);
    TextDrawFont(gServerTextdraws[0], 3);
    TextDrawSetProportional(gServerTextdraws[0], 1);
    TextDrawSetShadow(gServerTextdraws[0], 0);

    // Robbery
    RobberyGlobalTD[0] = TextDrawCreate(18.000, 294.000, "LD_DUAL:white");
    TextDrawTextSize(RobberyGlobalTD[0], 104.000, 38.000);
    TextDrawAlignment(RobberyGlobalTD[0], 1);
    TextDrawColor(RobberyGlobalTD[0], 1926328957);
    TextDrawSetShadow(RobberyGlobalTD[0], 0);
    TextDrawSetOutline(RobberyGlobalTD[0], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[0], 255);
    TextDrawFont(RobberyGlobalTD[0], 4);
    TextDrawSetProportional(RobberyGlobalTD[0], 1);

    RobberyGlobalTD[1] = TextDrawCreate(18.000, 294.000, "LD_DUAL:white");
    TextDrawTextSize(RobberyGlobalTD[1], 24.000, 19.000);
    TextDrawAlignment(RobberyGlobalTD[1], 1);
    TextDrawColor(RobberyGlobalTD[1], 1926329087);
    TextDrawSetShadow(RobberyGlobalTD[1], 0);
    TextDrawSetOutline(RobberyGlobalTD[1], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[1], 255);
    TextDrawFont(RobberyGlobalTD[1], 4);
    TextDrawSetProportional(RobberyGlobalTD[1], 1);

    RobberyGlobalTD[2] = TextDrawCreate(25.000, 297.000, "HUD:radar_ammugun");
    TextDrawTextSize(RobberyGlobalTD[2], 12.000, 12.000);
    TextDrawAlignment(RobberyGlobalTD[2], 1);
    TextDrawColor(RobberyGlobalTD[2], -1);
    TextDrawSetShadow(RobberyGlobalTD[2], 0);
    TextDrawSetOutline(RobberyGlobalTD[2], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[2], 255);
    TextDrawFont(RobberyGlobalTD[2], 4);
    TextDrawSetProportional(RobberyGlobalTD[2], 1);

    RobberyGlobalTD[3] = TextDrawCreate(44.000, 293.000, "Aeterna Roleplay~n~Perampokan Warung");
    TextDrawLetterSize(RobberyGlobalTD[3], 0.129, 0.999);
    TextDrawAlignment(RobberyGlobalTD[3], 1);
    TextDrawColor(RobberyGlobalTD[3], -1);
    TextDrawSetShadow(RobberyGlobalTD[3], 0);
    TextDrawSetOutline(RobberyGlobalTD[3], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[3], 150);
    TextDrawFont(RobberyGlobalTD[3], 2);
    TextDrawSetProportional(RobberyGlobalTD[3], 1);

    RobberyGlobalTD[4] = TextDrawCreate(20.000, 312.000, "Perampokan Warung gagal, anda terlalu~n~jauh dari Warung!");
    TextDrawLetterSize(RobberyGlobalTD[4], 0.129, 0.999);
    TextDrawAlignment(RobberyGlobalTD[4], 1);
    TextDrawColor(RobberyGlobalTD[4], -1);
    TextDrawSetShadow(RobberyGlobalTD[4], 0);
    TextDrawSetOutline(RobberyGlobalTD[4], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[4], 150);
    TextDrawFont(RobberyGlobalTD[4], 1);
    TextDrawSetProportional(RobberyGlobalTD[4], 1);
        
    //Stress Purple
    StressPurple[0] = TextDrawCreate(314.000000, 1.000000, "_");
	TextDrawFont(StressPurple[0], 1);
	TextDrawLetterSize(StressPurple[0], 0.600000, 51.049999);
	TextDrawTextSize(StressPurple[0], 298.500000, 676.500000);
	TextDrawSetOutline(StressPurple[0], 1);
	TextDrawSetShadow(StressPurple[0], 0);
	TextDrawAlignment(StressPurple[0], 2);
	TextDrawColor(StressPurple[0], -1);
	TextDrawBackgroundColor(StressPurple[0], 255);
	TextDrawBoxColor(StressPurple[0], -2147450812);
	TextDrawUseBox(StressPurple[0], 1);
	TextDrawSetProportional(StressPurple[0], 1);
	TextDrawSetSelectable(StressPurple[0], 0);
}

stock UpdateAdutyTD(playerid)
{
    new str[256];
    new Float:x, Float:y, Float:z, Float:a;

    GetPlayerPos(playerid, x, y, z);
    GetPlayerFacingAngle(playerid, a);

    // Nama admin
    PlayerTextDrawSetString(playerid, AdutyTD[playerid][0], GetAdminName(playerid));

    // Status duty
    format(str, sizeof(str),
        "Administrator ~w~: ~g~~h~On-Duty"
    );
    PlayerTextDrawSetString(playerid, AdutyTD[playerid][1], str);

    // Koordinat
    format(str, sizeof(str),
        "~r~~h~X : ~w~%.2f  ~r~~h~Y : ~w~%.2f  ~r~~h~Z : ~w~%.2f  ~r~~h~A : ~w~%.2f",
        x, y, z, a
    );
    PlayerTextDrawSetString(playerid, AdutyTD[playerid][2], str);

    // Interior & VW
    format(str, sizeof(str),
        "~r~~h~Interior : ~w~%d  ~r~~h~Virtual World : ~w~%d",
        GetPlayerInterior(playerid),
        GetPlayerVirtualWorld(playerid)
    );
    PlayerTextDrawSetString(playerid, AdutyTD[playerid][3], str);
}
