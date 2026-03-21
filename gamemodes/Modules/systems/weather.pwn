new current_hour, current_weather;
new fine_weather_ids[] = {2,3,4,5,6,7,12,13,14,15,17};
new wet_weather_ids[] = {8};

hook OnGameModeInit() {
    gettime(current_hour, _);
}

CMD:setweather(playerid, params[])
{
	if(AccountData[playerid][pAdmin] < 4) return PermissionError(playerid);

	new weather;
	if(sscanf(params, "d", weather)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/setweather [weather id]");

    current_weather = weather;
	
    foreach(new i : Player)  if(!GetPlayerInterior(i)) {
		SetPlayerWeather(i, current_weather);
	}
	SendClientMessageToAllEx(X11_TOMATO, "AdmCmd: %s telah mengubah cuaca in-game server.", AccountData[playerid][pAdminname]);
    return 1;
}

FUNC:: UpdateWeatherAndTime()
{
    gettime(current_hour, _);

    new next_weather_prob = random(91);

    if(next_weather_prob < 70)      current_weather = fine_weather_ids[random(sizeof(fine_weather_ids))];
    else                            current_weather = wet_weather_ids[0];

    foreach(new i : Player) if(!GetPlayerInterior(i)) {
        SetPlayerWeather(i, current_weather);
        RealTime_SyncPlayerWorldTime(i);
    }
    return 1;
}