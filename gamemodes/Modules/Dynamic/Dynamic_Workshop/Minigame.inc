#include <YSI_Coding\y_hooks>

// Mechanic Minigame System
// Created by Assistant for Mechanic Job precision

enum {
    MECH_MINIGAME_NONE = 0,
    MECH_MINIGAME_OIL,
    MECH_MINIGAME_TIRE
};

hook OnPlayerConnect(playerid)
{
    AccountData[playerid][pMinigameActive] = MECH_MINIGAME_NONE;
    AccountData[playerid][pMinigameProgress] = 0.0;
    AccountData[playerid][pMinigameTimer] = -1;
    
    // Create Player TextDraws for Minigame
    MechMinigameTD[playerid][0] = CreatePlayerTextDraw(playerid, 240.0, 380.0, "LD_SPAC:white"); // Background
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][0], 240.0 + 160.0, 20.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][0], 255); // Black
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][0], 4);

    MechMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, 290.0, 380.0, "LD_SPAC:white"); // Target Zone
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], 290.0 + 60.0, 20.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][1], 0x00FF00FF); // Green
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][1], 4);

    MechMinigameTD[playerid][2] = CreatePlayerTextDraw(playerid, 240.0, 380.0, "LD_SPAC:white"); // Indicator
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][2], 240.0 + 2.0, 20.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][2], 0xFF0000FF); // Red
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][2], 4);

    MechMinigameTD[playerid][3] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white"); // Progress BG
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][3], 240.0 + 160.0, 5.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][3], 0x333333FF); // Dark Grey
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][3], 4);

    MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white"); // Progress Fill
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], 240.0 + 0.0, 5.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0xFFFF00FF); // Yellow
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);

    MechMinigameTD[playerid][5] = CreatePlayerTextDraw(playerid, 320.0, 415.0, "Tekan ~y~[Y]~w~ saat jarum di area ~g~HIJAU");
    PlayerTextDrawLetterSize(playerid, MechMinigameTD[playerid][5], 0.2, 1.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][5], 2);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][5], -1);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][5], 1);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][5], 1);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(AccountData[playerid][pMinigameTimer] != -1) {
        KillTimer(AccountData[playerid][pMinigameTimer]);
        AccountData[playerid][pMinigameTimer] = -1;
    }
    return 1;
}

forward UpdateMechanicMinigame(playerid);
public UpdateMechanicMinigame(playerid)
{
    if(!AccountData[playerid][pMinigameActive]) return 0;

    if(AccountData[playerid][pMinigameDirection] == 1) // Right
    {
        AccountData[playerid][pMinigameIndicatorPos] += 4.0;
        if(AccountData[playerid][pMinigameIndicatorPos] >= 398.0) 
        {
            AccountData[playerid][pMinigameIndicatorPos] = 398.0;
            AccountData[playerid][pMinigameDirection] = 0;
        }
    }
    else // Left
    {
        AccountData[playerid][pMinigameIndicatorPos] -= 4.0;
        if(AccountData[playerid][pMinigameIndicatorPos] <= 240.0) 
        {
            AccountData[playerid][pMinigameIndicatorPos] = 240.0;
            AccountData[playerid][pMinigameDirection] = 1;
        }
    }

    // SA-MP TextDrawTextSize for boxes uses ABSOLUTE X for the right edge
    PlayerTextDrawSetPos(playerid, MechMinigameTD[playerid][2], AccountData[playerid][pMinigameIndicatorPos], 380.0);
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][2], AccountData[playerid][pMinigameIndicatorPos] + 2.0, 20.0);
    PlayerTextDrawShow(playerid, MechMinigameTD[playerid][2]);
    return 1;
}

stock StartMechanicMinigame(playerid, type, wheel = -1)
{
    AccountData[playerid][pMinigameActive] = type;
    AccountData[playerid][pMinigameType] = type;
    AccountData[playerid][pMinigameWheel] = wheel;
    AccountData[playerid][pMinigameProgress] = 0.0;
    AccountData[playerid][pMinigameIndicatorPos] = 240.0;
    AccountData[playerid][pMinigameDirection] = 1;
    
    // Calculate green zone size based on skill (Base 15.0 + Skill bonus)
    new Float:greenSize = 15.0 + (float(AccountData[playerid][pMechSkill]) * 0.5);
    if(greenSize > 60.0) greenSize = 60.0; // Max size limit

    // Randomize target zone
    AccountData[playerid][pMinigameTargetMin] = 240.0 + float(random(160 - floatround(greenSize)));
    AccountData[playerid][pMinigameTargetMax] = AccountData[playerid][pMinigameTargetMin] + greenSize;

    PlayerTextDrawSetPos(playerid, MechMinigameTD[playerid][1], AccountData[playerid][pMinigameTargetMin], 380.0);
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], AccountData[playerid][pMinigameTargetMin] + greenSize, 20.0);
    
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], 240.0 + 0.0, 5.0); // Absolute 240.0

    for(new i = 0; i < 6; i++) PlayerTextDrawShow(playerid, MechMinigameTD[playerid][i]);
    
    AccountData[playerid][pMinigameTimer] = SetTimerEx("UpdateMechanicMinigame", 20, true, "d", playerid);
    
    HideProgressBar(playerid);
    return 1;
}

stock StopMechanicMinigame(playerid)
{
    if(AccountData[playerid][pMinigameTimer] != -1) {
        KillTimer(AccountData[playerid][pMinigameTimer]);
        AccountData[playerid][pMinigameTimer] = -1;
    }
    AccountData[playerid][pMinigameActive] = MECH_MINIGAME_NONE;
    for(new i = 0; i < 6; i++) PlayerTextDrawHide(playerid, MechMinigameTD[playerid][i]);
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(AccountData[playerid][pMinigameActive] != MECH_MINIGAME_NONE && (newkeys & KEY_YES))
    {
        // Check if indicator is in target zone
        if(AccountData[playerid][pMinigameIndicatorPos] >= AccountData[playerid][pMinigameTargetMin] && 
           AccountData[playerid][pMinigameIndicatorPos] <= AccountData[playerid][pMinigameTargetMax])
        {
            // Success hit
            AccountData[playerid][pMinigameProgress] += 20.0;
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], (AccountData[playerid][pMinigameProgress] / 100.0) * 160.0, 5.0);
            PlayerTextDrawShow(playerid, MechMinigameTD[playerid][4]);
            
            GameTextForPlayer(playerid, "~g~SUCCESS!", 1000, 3);
            
            // Mechanic Skill Progression
            AccountData[playerid][pMechExp]++;
            if(AccountData[playerid][pMechExp] >= 50) // Level up every 50 successful hits
            {
                AccountData[playerid][pMechExp] = 0;
                AccountData[playerid][pMechSkill]++;
                SendCustomMessage(playerid, "WORKSHOP", "Skill mekanik anda meningkat ke level "YELLOW"%d"WHITE"!", AccountData[playerid][pMechSkill]);
            }

            // Randomize target zone again for next hit
            new Float:greenSize = 12.0 + (float(AccountData[playerid][pMechSkill]) * 0.4);
            if(greenSize > 50.0) greenSize = 50.0;

            AccountData[playerid][pMinigameTargetMin] = 240.0 + float(random(160 - floatround(greenSize)));
            AccountData[playerid][pMinigameTargetMax] = AccountData[playerid][pMinigameTargetMin] + greenSize;
            PlayerTextDrawSetPos(playerid, MechMinigameTD[playerid][1], AccountData[playerid][pMinigameTargetMin], 380.0);
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], AccountData[playerid][pMinigameTargetMin] + greenSize, 20.0);
            PlayerTextDrawShow(playerid, MechMinigameTD[playerid][1]);

            if(AccountData[playerid][pMinigameProgress] >= 100.0)
            {
                // Finished!
                new type = AccountData[playerid][pMinigameType];
                new vehicleid = AccountData[playerid][pMechVeh];
                new wheel = AccountData[playerid][pMinigameWheel];
                
                StopMechanicMinigame(playerid);
                
                if(type == MECH_MINIGAME_OIL)
                {
                    // Call the original finish logic for Oil
                    AccountData[playerid][ActivityTime] = 10; // Set to max to trigger finish
                    OilChange(playerid, vehicleid);
                }
                else if(type == MECH_MINIGAME_TIRE)
                {
                    // Call the original finish logic for Tire
                    AccountData[playerid][ActivityTime] = 10; // Set to max to trigger finish
                    TireReplace(playerid, vehicleid, wheel);
                }
            }
        }
        else
        {
            // Failed hit
            GameTextForPlayer(playerid, "~r~MISS!", 1000, 3);
            AccountData[playerid][pMinigameProgress] -= 10.0;
            if(AccountData[playerid][pMinigameProgress] < 0.0) AccountData[playerid][pMinigameProgress] = 0.0;
            
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], 240.0 + (AccountData[playerid][pMinigameProgress] / 100.0) * 160.0, 5.0);
            PlayerTextDrawShow(playerid, MechMinigameTD[playerid][4]);
        }
    }
    return 1;
}
