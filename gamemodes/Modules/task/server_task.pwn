task TaskServer[1000]()
{
    static
        vupdt = 0,
        infomt = 0,
        mrkt = 0
    ;

    WeedUpdate();
    r_FeatureUpdate();
    ScheduleMTExecute();
    CarStealDelayUpdate();
    TrashCooldown_Update();
    DelayHuntingUpdate();
    DelayKanabisUpdate();
    RobberyDelay_Update();
    DelayUraniumUpdate();
    LabelHalte_Update();
    ForkliftSpeedUpdate();
    MowingVehicleUpdate();
    GlobalTimeRusun();
    KompensasiUpdate();
    Tags_Update();

    if(++mrkt == 3600)
    {
        MarketPriceUpdate();
        mrkt = 0;
    }

    if(++infomt == 60)
    {
        InfoScheduleMT();
        infomt = 0;
    }

    if(++vupdt == 30)
    {
        VehicleUpdate();
        vupdt = 0;
    }

    return Y_HOOKS_CONTINUE_RETURN_1;
}