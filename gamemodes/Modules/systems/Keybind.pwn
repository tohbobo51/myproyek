#include <YSI_Coding\y_hooks>
forward OnPlayerKeyPress(playerid, keycode);

native IsKeyDown(playerid, keycode);
native IsKeyJustPressed(playerid, keycode);

// Callback dari KeyListener.asi
public OnPlayerKeyPress(playerid, keycode)
{
    if (keycode == 77) // 77 = ASCII code untuk huruf 'M'
    {
        PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);
		ShowingSmartphone(playerid);
    }
    return 1;
}



hook OnPlayerConnect(playerid)
{
    SetTimerEx("CheckKeybind", 500, true, "i", playerid);
}

forward CheckKeybind(playerid);
public CheckKeybind(playerid)
{
    if (IsKeyJustPressed(playerid, 77)) // M
    {
        PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);
		ShowingSmartphone(playerid);
    }
}
