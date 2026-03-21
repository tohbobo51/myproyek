ptask PTaskVehicleTD[100](playerid)
{
    if(!AccountData[playerid][IsLoggedIn])
        return 0;
        
    VehicleTDUpdate(playerid);
    return 1;
}

ptask PTaskPlayer[1000](playerid)
{
    if(!AccountData[playerid][IsLoggedIn])
        return 0;

    static 
        lvlup = 0,
        alert = 0,
        gov = 0,
        fuels = 0
    ;

    OnPDelayUpdate(playerid);
    PlayerUpdate(playerid);
    OnAnotherSecUpdate(playerid);
    OnCarStealUpdate(playerid);
    OnRentalUpdate(playerid);
    OnRobberyUpdate(playerid);
    OnTaxiUpdate(playerid);
    OnBusUpdate(playerid);
    OnDeliveryUpdate(playerid);
    OnFarmerUpdate(playerid);
    OnKargoUpdate(playerid);
    OnLumberUpdate(playerid);
    OnMinerUpdate(playerid);
    OnMowingSidejobUpdate(playerid);
    OnSweeperSidejobUpdate(playerid);
    OnTrashmasterSidejobUpdate(playerid);
    OnPhoneUpdate(playerid);
    OnIdleUpdate(playerid);
    OnNameTagUpdate(playerid);
    Player_AFKUpdate(playerid);
    Player_ResetAsk(playerid);
    OnTagUpdate(playerid);
    OnJailUpdate(playerid);

    if(++lvlup == 1800)
    {
        PlayerExpUp(playerid);
        lvlup = 0;
    }

    if(++gov == 900)
    {
        GiveGovermentAllowance(playerid);
        gov = 0;
    }

    if(++fuels == 2)
    {
        PlayerEnterPoms(playerid);
        fuels = 0;
    }

    if(++alert == 180)
    {
        AlertNeeds_Player(playerid);
        alert = 0;
    }

    return Y_HOOKS_CONTINUE_RETURN_1;
}