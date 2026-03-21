#define DIALOG_MYFAM_MAIN 1500
#define DIALOG_MYFAM_CHOOSE_RANK 1501

CMD:myfam(playerid, params[])
{
    new famida = AccountData[playerid][pFamily];
    if(famida == 0)
        return SendClientMessage(playerid, -1, "Kamu tidak tergabung dalam family.");

    ShowMyFamilyDialog(playerid);
    return 1;
}

stock ShowMyFamilyDialog(playerid)
{
    new dialogStr[128];
    format(dialogStr, sizeof(dialogStr), "{FF0000}%s{FFFFFF} - My Family\n\n{FF0000}Online Member\n{FFFFFF}Ganti Rank Family", FamData[AccountData[playerid][pFamily]][famName]);

    ShowPlayerDialog(playerid, DIALOG_MYFAM_MAIN, DIALOG_STYLE_LIST, "Family Management", dialogStr, "Pilih", "Tutup");
}

stock ShowFamilyOnlineMembers(playerid)
{
    new str[512], name[MAX_PLAYER_NAME];
    new famida = AccountData[playerid][pFamily];
    format(str, sizeof(str), "Member Online dalam Family-mu:\n\n");

    new count = 0;
    for(new i = 0; i < MAX_PLAYERS; i++)
    {
        if(AccountData[i][pFamily] == famida)
        {
            GetPlayerName(i, name, sizeof(name));
            new color = IsPlayerConnected(i) ? "{00FF00}" : "{AAAAAA}"; // hijau jika online, abu jika offline
            format(str, sizeof(str), "%s%s%s - %s\n", str, color, name, AccountData[i][pFamilyRank]);
            count++;
        }
    }

    if(count == 0) strcat(str, "Tidak ada member online.");

    ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "Daftar Member Family", str, "Tutup", "");
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_MYFAM_MAIN)
    {
        if(!response) return 1;

        switch(listitem)
        {
            case 0: ShowFamilyOnlineMembers(playerid);
            case 1: 
            {
                new myRank = AccountData[playerid][pFamilyRank];
                if(myRank < 5) // Hanya Ketua & Wakil Ketua yang bisa ubah rank
                    return SendClientMessage(playerid, -1, "Hanya Ketua atau Wakil Ketua yang bisa mengubah rank.");

                ShowRankSelectionDialog(playerid);
            }
        }
        return 1;
    }

    if(dialogid == DIALOG_MYFAM_CHOOSE_RANK)
    {
        if(!response) return 1;

        new targetid = GetPVarInt(playerid, "RankTarget");
        DeletePVar(playerid, "RankTarget");

        if(!IsPlayerConnected(targetid) || AccountData[targetid][pFamily] != AccountData[playerid][pFamily])
            return SendClientMessage(playerid, -1, "Pemain tidak valid atau bukan satu family.");

        AccountData[targetid][pFamilyRank] = listitem;
        SavePlayerFamilyRank(targetid);

        new msg[128];
        format(msg, sizeof(msg), "Kamu telah mengubah rank %s menjadi \"%s\".", AccountData[targetid][pName], FamiliesRank[listitem]);
        SendClientMessage(playerid, -1, msg);

        format(msg, sizeof(msg), "Rank kamu telah diubah menjadi \"%s\" oleh atasan.", FamiliesRank[listitem]);
        SendClientMessage(targetid, -1, msg);
        return 1;
    }
    return 0;
}

stock ShowRankSelectionDialog(playerid)
{
    new dialogStr[256];
    for(new i = 1; i < sizeof(FamiliesRank); i++)
    {
        format(dialogStr, sizeof(dialogStr), "%s%s\n", dialogStr, FamiliesRank[i]);
    }

    ShowPlayerDialog(playerid, DIALOG_MYFAM_CHOOSE_RANK, DIALOG_STYLE_LIST, "Pilih Rank Baru", dialogStr, "Pilih", "Batal");
}

stock SavePlayerFamilyRank(playerid)
{
    new query[256], name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));

    mysql_format(MySQL, query, sizeof(query), 
        "UPDATE players SET fam_rank=%d WHERE username='%e'",
        AccountData[playerid][pFamilyRank], name);

    mysql_tquery(MySQL, query, "", "");
}
