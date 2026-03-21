//function
stock CountPlayerCharges(playerid)
{
    new tempcount = 0, Cache:execute;

    execute = mysql_query(g_SQL, sprintf("SELECT * FROM `charges` WHERE `ID` = %d AND `StatusActived` = 1", AccountData[playerid][pID]), true);
    if(cache_num_rows()) tempcount ++;

    cache_delete(execute);
    return tempcount;
}

ShowArrestRecord(playerid, playerdbID, playerdbName[])
{
    new query[128], rowcounts, Cache:execute;
    mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `arrestrecord` WHERE `ID` = %d ORDER BY `Date` ASC", playerdbID);
    execute = mysql_query(g_SQL, query, true);

    rowcounts = cache_num_rows();
    if(rowcounts)
    {
        new list[1024], string[200], date[64], reason[64], issuer[24];

        strcat(list, "Time\tAssigned detentions\tOfficer\n");
        for(new i; i < rowcounts; i ++)
        {
            cache_get_value_name(i, "Date", date);
            cache_get_value_name(i, "Reason", reason);
            cache_get_value_name(i, "Issuer", issuer);

            format(string, sizeof(string), ""WHITE"%s\t%s\t"SKYBLUE"%s\n", date, reason, issuer);
            strcat(list, string);
        }

        Dialog_Show(playerid, ARREST_RECORD, DIALOG_STYLE_TABLIST_HEADERS, sprintf("MDT: %s - Arrest Record", playerdbName), list, "Return", "");
    }
    else
    {
        Dialog_Show(playerid, ARREST_RECORD, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Arrest Record", playerdbName), 
        "no data found......", "Return", "");
    }

    cache_delete(execute);
    return 1;
}

ShowWarrantsActived(playerid, playerdbID, playerdbName[])
{
    new query[128], rowcounts, Cache:execute;
    mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `warrants` WHERE `ID` = %d ORDER BY `Date` ASC", playerdbID);
    execute = mysql_query(g_SQL, query, true);

    rowcounts = cache_num_rows();
    if(rowcounts)
    {
        new list[1024], string[255], date[64], reason[128], issuer[24];

        strcat(list, "Time\tWarrants Reason\tOfficer\n");
        for(new i; i < rowcounts; i ++)
        {
            cache_get_value_name(i, "Date", date);
            cache_get_value_name(i, "Reason", reason);
            cache_get_value_name(i, "Issuer", issuer);

            format(string, sizeof(string), ""ORANGE"%s\t"WHITE"%s\t"SKYBLUE"%s\n", date, reason, issuer);
            strcat(list, string);
        }

        Dialog_Show(playerid, WARRANTS_ACTIVE, DIALOG_STYLE_TABLIST_HEADERS, sprintf("MDT: %s - Check Active Warrants", playerdbName), list, "Delete", "Return");
    }
    else
    {
        Dialog_Show(playerid, WARRANTS_NOTFOUND, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Check Active Warrants", playerdbName),
        "no data found......", "Return", "");
    }

    cache_delete(execute);
    return 1;
}

ShowChargesActived(playerid, playerdbID, playerdbName[])
{
    new query[128], rowcount, Cache:execute;
    mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `charges` WHERE `ID` = %d AND `StatusActived` = 1 ORDER BY `Date` ASC", playerdbID);
    execute = mysql_query(g_SQL, query, true);

    rowcount = cache_num_rows();
    if(rowcount)
    {
        new list[1024], string[255], date[64], reason[128], issuer[24], actived, status[64];

        strcat(list, "Time\tCharges Reason\tIssuer\tStatus\n");
        for(new i; i < rowcount; i ++)
        {
            cache_get_value_name(i, "Date", date);
            cache_get_value_name(i, "Description", reason);
            cache_get_value_name(i, "Issuer", issuer);
            cache_get_value_name_int(i, "StatusActived", actived);

            if(actived == 1) format(status, sizeof(status), ""ORANGE"Active");
            else format(status, sizeof(status), ""GREEN"Inactive");

            format(string, sizeof(string), ""WHITE"%s\t%s\t"SKYBLUE"%s\t%s\n", date, reason, issuer, status);
            strcat(list, string);
        }

        Dialog_Show(playerid, CHARGES_ACTIVE, DIALOG_STYLE_TABLIST_HEADERS, sprintf("MDT: %s - Active Charges", playerdbName), list, "Delete", "Return");
    }
    else
    {
        Dialog_Show(playerid, CHARGES_ACTIVENF, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Active Charges", playerdbName),
        "no data found......", "Return", "");
    }

    cache_delete(execute);
    return 1;
}

ShowChargesHistory(playerid, playerdbID, playerdbName[])
{
    new query[128], rowcount, Cache:execute;
    mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `charges` WHERE `ID` = %d AND `StatusActived` = 0 ORDER BY `Date` ASC", playerdbID);
    execute = mysql_query(g_SQL, query, true);

    rowcount = cache_num_rows();
    if(rowcount)
    {
        new list[1024], string[255], date[64], reason[128], issuer[24], actived, status[64];

        strcat(list, "Time\tCharges Reason\tIssuer\tStatus\n");
        for(new i; i < rowcount; i ++)
        {
            cache_get_value_name(i, "Date", date);
            cache_get_value_name(i, "Description", reason);
            cache_get_value_name(i, "Issuer", issuer);
            cache_get_value_name_int(i, "StatusActived", actived);

            if(actived == 1) format(status, sizeof(status), ""ORANGE"Active");
            else format(status, sizeof(status), ""GREEN"Inactive");

            format(string, sizeof(string), ""WHITE"%s\t%s\t"SKYBLUE"%s\t%s\n", date, reason, issuer, status);
            strcat(list, string);
        }

        Dialog_Show(playerid, CHARGES_HISTORY, DIALOG_STYLE_TABLIST_HEADERS, sprintf("MDT: %s - Charges History", playerdbName), list, "Return", "");
    }
    else
    {
        Dialog_Show(playerid, CHARGES_HISTORY, DIALOG_STYLE_MSGBOX, sprintf("MDT: %s - Charges History", playerdbName),
        "no data found......", "Return", "");
    }

    cache_delete(execute);
    return 1;
}