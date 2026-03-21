stock CheckPajakTime(playerid) 
{
    if (AccountData[playerid][pPajakTime] > 0) {
        AccountData[playerid][pPajakTime]--;
        if (AccountData[playerid][pPajakTime] <= 0) {
            AccountData[playerid][pPajakTime] = 72000;
            CalculatePayPajak(playerid);
        }
    }
}

forward Timer_CheckPajakAll();
public Timer_CheckPajakAll()
{
    foreach (new i : Player) // butuh y_foreach
    {
        if (IsPlayerConnected(i))
        {
            CheckPajakTime(i);
        }
    }
    return 1;
}