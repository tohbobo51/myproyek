#include <YSI\y_hooks>
#define COUNT_ANIMATIONS    (10)
#define MaxAnimationPerPage  10

new PlayerText: AnimListTD[MAX_PLAYERS][14];
new PlayerText: BoxAnim[MAX_PLAYERS][COUNT_ANIMATIONS];
new PlayerText: NameAnim[MAX_PLAYERS][COUNT_ANIMATIONS];

new AnimOffset[MAX_PLAYERS], SelectAnimation[MAX_PLAYERS];

new const ANIM_NAME[][13] = {
    "Angkat", "Angkat2", "Angkat3", "Angkat4", "Angtang", "Bartender", "Bartender2", "Bartender3", 
    "Bartender4", "Bartender5", "Bartender6", "Bartender7", "Bartender8", "Baseball", "Baseball2", 
    "Baseball3", "Baseball4", "Baseball5", "Bicara", "Bicara2", "Bicara3", "Bicara4", "Bicara5", 
    "Bicara6", "Cium", "Cium2", "Cium3", "Cium4", "Cium5", "Cium6", "Dj", "Dj2", "Dj3", 
    "Duduk", "Duduk2", "Duduk3", "Duduk4", "Duduk5", "Duduk6", "Gang", "Gang2", "Gang3", 
    "Gang4", "Gang5", "Gang6", "Gang7", "Gang8", "Gang9", "Gatal", "Geledah", "Jarteng", 
    "Joget", "Joget2", "Joget3", "Joget4", "Joget5", "Joget6", "Joget7", "Joget8", "Joget9", 
    "Joget10", "Kencing", "Kerja", "Kerja2", "Kerja3", "Kerja4", "Kerja5", "Kerja6", "Kesakitan", 
    "Kungfu", "Lambai", "Lambai2", "Lambai3", "Lelah", "Lelah2", "Lempar", "Liptang", "Liptang2", 
    "Liptang3", "Liptang4", "Lompat", "Mabuk", "Medis", "Medis2", "Nangis",
    "Nodong", "Nodong2", "Nodong3", "Nodong4", "Nunjuk", "Nunduk", "Onani", "Onani2", "Onani3", 
    "Ped", "Ped2", "Ped3", "Ped4", "Ped5", "Ped6", "Ped7", "Ped8", "Ped9", "Ped10", "Ped11", 
    "Ped12", "Ped13", "Ped14", "Ped15", "Ped15", "Pusing", "Rokok", "Rokok2", "Rokok3", 
    "Santai", "Santai2", "Santai3", "Santai4", "Santai5", "Sorak", "Sorak2", 
    "Sorak3", "Sorak4", "Sorak5", "Sorak6", "Sorak7", "Sorak8", "Tampar", "Tertusuk", "Turu", "Turu2", "Tusuk", "Tusuk2", "X"
};

stock CreateAnimTextdraws(playerid)
{
    AnimListTD[playerid][0] = CreatePlayerTextDraw(playerid, 496.000, 139.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][0], 141.000, 18.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][0], 180);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][0], 1);

    AnimListTD[playerid][1] = CreatePlayerTextDraw(playerid, 496.000, 78.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][1], 141.000, 62.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][1], X11_LIGHTCORAL);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][1], 1);

    AnimListTD[playerid][2] = CreatePlayerTextDraw(playerid, 533.000, 88.000, "Emote List");
    PlayerTextDrawLetterSize(playerid, AnimListTD[playerid][2], 0.359, 2.399);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][2], 3);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][2], 1);

    AnimListTD[playerid][3] = CreatePlayerTextDraw(playerid, 539.000, 104.000, "Aeterna Roleplay");
    PlayerTextDrawLetterSize(playerid, AnimListTD[playerid][3], 0.359, 2.399);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][3], 0);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][3], 1);

    AnimListTD[playerid][4] = CreatePlayerTextDraw(playerid, 499.000, 141.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][4], 7.000, 8.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][4], 1);

    AnimListTD[playerid][5] = CreatePlayerTextDraw(playerid, 497.000, 147.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][5], 11.000, 8.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][5], 1);

    AnimListTD[playerid][6] = CreatePlayerTextDraw(playerid, 510.000, 142.000, "Emote Animations");
    PlayerTextDrawLetterSize(playerid, AnimListTD[playerid][6], 0.159, 1.199);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][6], 1);

    AnimListTD[playerid][7] = CreatePlayerTextDraw(playerid, 620.000, 142.000, "01/27");
    PlayerTextDrawLetterSize(playerid, AnimListTD[playerid][7], 0.159, 1.199);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][7], 1);

    AnimListTD[playerid][8] = CreatePlayerTextDraw(playerid, 496.000, 337.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][8], 141.000, 18.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][8], 230);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][8], 1);

    AnimListTD[playerid][9] = CreatePlayerTextDraw(playerid, 502.000, 340.000, "< PREV");
    PlayerTextDrawLetterSize(playerid, AnimListTD[playerid][9], 0.210, 1.199);
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][9], 555.000, 10.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][9], 150);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, AnimListTD[playerid][9], 1);

    AnimListTD[playerid][10] = CreatePlayerTextDraw(playerid, 611.000, 340.000, "NEXT >");
    PlayerTextDrawLetterSize(playerid, AnimListTD[playerid][10], 0.210, 1.199);
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][10], 645.000, 10.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, AnimListTD[playerid][10], 1);

    AnimListTD[playerid][11] = CreatePlayerTextDraw(playerid, 557.000, 338.000, "LD_BEAT:cross");
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][11], 15.000, 15.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, AnimListTD[playerid][11], 1);

    AnimListTD[playerid][12] = CreatePlayerTextDraw(playerid, 496.000, 357.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][12], 141.000, 29.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][12], 230);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][12], 1);

    AnimListTD[playerid][13] = CreatePlayerTextDraw(playerid, 502.000, 359.000, "/e (~g~nama~w~) untuk memainkannya atau klik langsung di atas");
    PlayerTextDrawLetterSize(playerid, AnimListTD[playerid][13], 0.159, 1.199);
    PlayerTextDrawTextSize(playerid, AnimListTD[playerid][13], 625.000, 0.000);
    PlayerTextDrawAlignment(playerid, AnimListTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, AnimListTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, AnimListTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, AnimListTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, AnimListTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, AnimListTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, AnimListTD[playerid][13], 1);
    return 1;
}

stock DestroyAnimTextdraw(playerid)
{
    for(new slot = 0; slot < 14; slot ++){
        PlayerTextDrawDestroy(playerid, AnimListTD[playerid][slot]);
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
    CreateAnimTextdraws(playerid);
    AnimOffset[playerid] = 0;
    SelectAnimation[playerid] = -1;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DestroyAnimTextdraw(playerid);
    AnimOffset[playerid] = 0;
    SelectAnimation[playerid] = -1;
    return 1;
}

ShowAnimationList(playerid)
{
    if(AccountData[playerid][pDraggedBy] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang digendong orang lain!");
	if(AccountData[playerid][pCuffed]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang diborgol!");
	if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Selama activity progress masih berjalan, anda tidak dapat menggunakan CMD!");
	if(AccountData[playerid][pInjured] > 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak bisa menggunakan ini jika sedang keadaan Pingsan!");
	if(DurringRefill[playerid]) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang mengisi bensin!");
	if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak bisa menggunakan emote didalam kendaraan!");
	if(GetPVarInt(playerid, "DurringDaur")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang membawa barang, tidak dapat melakukan ini!");
    
    for(new i = 0; i < MaxAnimationPerPage; i ++)
    {
        PlayerTextDrawDestroy(playerid, BoxAnim[playerid][i]);
        PlayerTextDrawDestroy(playerid, NameAnim[playerid][i]);
    }

    new Float:x = 496.000, Float:y = 157.000; // Posisi Awal Box
    new Float:xb = 501.000, Float:yb = 160.000; // Posisi Awal Text
    new Float: OffsetY = 18.0;

     // Hitung jumlah total halaman
    new totalAnimations = sizeof(ANIM_NAME);
    new totalPages = totalAnimations / MaxAnimationPerPage;
    if (totalAnimations % MaxAnimationPerPage != 0) totalPages++; // Tambahkan satu halaman jika ada sisa

    new animIndex = 0;

    PlayerTextDrawSetString(playerid, AnimListTD[playerid][7], sprintf("%02d/%02d", (AnimOffset[playerid] / MaxAnimationPerPage) + 1, totalPages));  
    forex(id, 14) PlayerTextDrawShow(playerid, AnimListTD[playerid][id]);

    for(new itt = AnimOffset[playerid]; itt < AnimOffset[playerid] + MaxAnimationPerPage; itt ++)
    {
        if(itt >= sizeof(ANIM_NAME)) break;

        new animationName[128];
        format(animationName, sizeof(animationName), "%s", ANIM_NAME[itt]);

        BoxAnim[playerid][animIndex] = CreatePlayerTextDraw(playerid, x, y + (animIndex * OffsetY), "LD_SPAC:white");
        PlayerTextDrawTextSize(playerid, BoxAnim[playerid][animIndex], 141.000, 18.000);
        PlayerTextDrawAlignment(playerid, BoxAnim[playerid][animIndex], 1);
        PlayerTextDrawColor(playerid, BoxAnim[playerid][animIndex], 180);
        PlayerTextDrawSetShadow(playerid, BoxAnim[playerid][animIndex], 0);
        PlayerTextDrawSetOutline(playerid, BoxAnim[playerid][animIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, BoxAnim[playerid][animIndex], 255);
        PlayerTextDrawFont(playerid, BoxAnim[playerid][animIndex], 4);
        PlayerTextDrawSetProportional(playerid, BoxAnim[playerid][animIndex], 1);
        PlayerTextDrawSetSelectable(playerid, BoxAnim[playerid][animIndex], 1);
        PlayerTextDrawShow(playerid, BoxAnim[playerid][animIndex]);

        NameAnim[playerid][animIndex] = CreatePlayerTextDraw(playerid, xb, yb + (animIndex * OffsetY), animationName);
        PlayerTextDrawLetterSize(playerid, NameAnim[playerid][animIndex], 0.159, 1.199);
        PlayerTextDrawAlignment(playerid, NameAnim[playerid][animIndex], 1);
        PlayerTextDrawColor(playerid, NameAnim[playerid][animIndex], -1);
        PlayerTextDrawSetShadow(playerid, NameAnim[playerid][animIndex], 0);
        PlayerTextDrawSetOutline(playerid, NameAnim[playerid][animIndex], 0);
        PlayerTextDrawBackgroundColor(playerid, NameAnim[playerid][animIndex], 150);
        PlayerTextDrawFont(playerid, NameAnim[playerid][animIndex], 1);
        PlayerTextDrawSetProportional(playerid, NameAnim[playerid][animIndex], 1);
        PlayerTextDrawShow(playerid, NameAnim[playerid][animIndex]);

        animIndex ++;
    }
    SetPVarInt(playerid, "OnAnimList", 1);
    SelectTextDraw(playerid, X11_LIGHTGOLDENROD);
    return 1;
}

stock HideAnimTextdraw(playerid) 
{
    forex(txd, 14) PlayerTextDrawHide(playerid, AnimListTD[playerid][txd]);

    for (new i = 0; i < 10; i++) 
    {
        PlayerTextDrawHide(playerid, BoxAnim[playerid][i]);
        PlayerTextDrawDestroy(playerid, BoxAnim[playerid][i]);
        PlayerTextDrawHide(playerid, NameAnim[playerid][i]);
        PlayerTextDrawDestroy(playerid, NameAnim[playerid][i]);
    }
    Toggle_AllTextdraws(playerid, true);
    SetPVarInt(playerid, "OnAnimList", 0);
    CancelSelectTextDraw(playerid);
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    if(playertextid == AnimListTD[playerid][11]) // Tutup
    {
        HideAnimTextdraw(playerid);
    }
    if(playertextid == AnimListTD[playerid][9]) // Prev
    {
        if(AnimOffset[playerid] > 0)
        {
            AnimOffset[playerid] -= MaxAnimationPerPage;
            ShowAnimationList(playerid);
        }
    }
    if(playertextid == AnimListTD[playerid][10]) // Next
    {
        if(AnimOffset[playerid] + MaxAnimationPerPage < sizeof(ANIM_NAME))
        {
            AnimOffset[playerid] += MaxAnimationPerPage;
            ShowAnimationList(playerid);
        }
    }
    for(new i = 0; i < MaxAnimationPerPage; i ++)
    {
        if(playertextid == BoxAnim[playerid][i] && GetPVarInt(playerid, "OnAnimList"))
        {
            new realIndex = AnimOffset[playerid] + i;
            OnPlayerApplyAnimation(playerid, ANIM_NAME[realIndex]);
        }
    }
    return 1;
}

CMD:animnear(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(AccountData[playerid][pAdmin] < 4) return PermissionError(playerid);

    new animName[32];
    if(sscanf(params, "s[32]", animName)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/animnear [anim name]");
    foreach(new i : Player) if(IsPlayerConnected(i) && AccountData[i][IsLoggedIn])
    {
        if(AccountData[i][pDraggedBy] != INVALID_PLAYER_ID) return 0;
        if(AccountData[i][pCuffed]) return 0; 
        if(AccountData[i][ActivityTime] != 0) return 0;  
        if(AccountData[i][pInjured] > 0) return 0;  
        if(DurringRefill[i]) return 0;
        if(GetPlayerState(i) != PLAYER_STATE_ONFOOT) return 0; 
        if(GetPVarInt(i, "DurringDaur")) return 0;  

        if(IsPlayerNearPlayer(playerid, i, 15.0))
        {
            OnPlayerApplyAnimation(i, animName);    
        }
    }
    return 1;
}

CMD:e(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn] || !AccountData[playerid][pSpawned]) return 0;
    if(AccountData[playerid][pDraggedBy] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang digendong orang lain!");
	if(AccountData[playerid][pCuffed]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang diborgol!");
	if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Selama activity progress masih berjalan, anda tidak dapat menggunakan CMD!");
	if(AccountData[playerid][pInjured] > 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak bisa menggunakan ini jika sedang keadaan Pingsan!");
	if(DurringRefill[playerid]) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang mengisi bensin!");
	if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak bisa menggunakan emote didalam kendaraan!");
	if(GetPVarInt(playerid, "DurringDaur")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang membawa barang, tidak dapat melakukan ini!");

    new name[64];
    if(isnull(params))
    {
        AnimOffset[playerid] = 0;
        ShowAnimationList(playerid);
        return 1;
    }
    if(sscanf(params, "s[64]", name)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/e [anim name]");
    OnPlayerApplyAnimation(playerid, name);
    return 1;
}

Dialog:Dialog_Animation(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    if(!AccountData[playerid][IsLoggedIn] || !AccountData[playerid][pSpawned]) return 0;
    if(AccountData[playerid][pDraggedBy] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang digendong orang lain!");
	if(AccountData[playerid][pCuffed]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang diborgol!");
	if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Selama activity progress masih berjalan, anda tidak dapat menggunakan CMD!");
	if(AccountData[playerid][pInjured] > 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak bisa menggunakan ini jika sedang keadaan Pingsan!");
	if(DurringRefill[playerid]) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang mengisi bensin!");
	if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak bisa menggunakan emote didalam kendaraan!");
	if(GetPVarInt(playerid, "DurringDaur")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang membawa barang, tidak dapat melakukan ini!");

    OnPlayerApplyAnimation(playerid, inputtext);
    return 1;
}

Dialog:Dialog_AnimProperty(playerid, response, listitem, inputtext[])
{
    if(!response) return 1;
    if(!AccountData[playerid][IsLoggedIn] || !AccountData[playerid][pSpawned]) return 0;
    if(AccountData[playerid][pDraggedBy] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang digendong orang lain!");
	if(AccountData[playerid][pCuffed]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang diborgol!");
	if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Selama activity progress masih berjalan, anda tidak dapat menggunakan CMD!");
	if(AccountData[playerid][pInjured] > 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak bisa menggunakan ini jika sedang keadaan Pingsan!");
	if(DurringRefill[playerid]) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang mengisi bensin!");
	if(GetPlayerState(playerid) != PLAYER_STATE_ONFOOT) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak bisa menggunakan emote didalam kendaraan!");
	if(GetPVarInt(playerid, "DurringDaur")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang membawa barang, tidak dapat melakukan ini!");

    OnPlayerApplyEprop(playerid, inputtext);
    return 1;
}