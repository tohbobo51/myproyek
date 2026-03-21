#include <YSI_Coding\y_hooks>

// Mechanic Minigame System
// Created by Assistant for Mechanic Job precision
// Fixed: Colors, Size, Visibility, Difficulty scaling

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
    // TD[0] = Background (dark bar)
    MechMinigameTD[playerid][0] = CreatePlayerTextDraw(playerid, 240.0, 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][0], 160.0, 20.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][0], 0x333333FF); // Dark grey background
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][0], 1);

    // TD[1] = Target Zone (HIJAU)
    MechMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, 290.0, 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], 20.0, 20.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][1], 0x00FF00FF); // GREEN (hijau)
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][1], 1);

    // TD[2] = Moving Indicator (PUTIH)
    MechMinigameTD[playerid][2] = CreatePlayerTextDraw(playerid, 240.0, 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][2], 6.0, 20.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][2], 0xFFFFFFFF); // WHITE
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][2], 1);

    // TD[3] = Progress Background
    MechMinigameTD[playerid][3] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][3], 160.0, 8.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][3], 0x444444FF); // Dark grey
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][3], 1);

    // TD[4] = Progress Fill (KUNING)
    MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], 0.0, 8.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0xFFFF00FF); // Yellow for progress
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][4], 1);

    // TD[5] = Instruction Text
    MechMinigameTD[playerid][5] = CreatePlayerTextDraw(playerid, 320.0, 418.0, "Tekan ~y~[Y]~w~ saat jarum di area ~g~HIJAU");
    PlayerTextDrawLetterSize(playerid, MechMinigameTD[playerid][5], 0.25, 1.2);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][5], 2);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][5], 1);
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

    // Get speed based on skill (LOWER skill = FASTER = HARDER)
    // HIGHER skill = SLOWER = EASIER
    new Float:speed = 6.0 - (float(AccountData[playerid][pMechSkill]) * 0.3);
    if(speed < 2.0) speed = 2.0; // Min speed (easy for high level)
    if(speed > 8.0) speed = 8.0; // Max speed (hard for low level)

    if(AccountData[playerid][pMinigameDirection] == 1) // Right
    {
        AccountData[playerid][pMinigameIndicatorPos] += speed;
        if(AccountData[playerid][pMinigameIndicatorPos] >= 394.0) 
        {
            AccountData[playerid][pMinigameIndicatorPos] = 394.0;
            AccountData[playerid][pMinigameDirection] = 0;
        }
    }
    else // Left
    {
        AccountData[playerid][pMinigameIndicatorPos] -= speed;
        if(AccountData[playerid][pMinigameIndicatorPos] <= 240.0) 
        {
            AccountData[playerid][pMinigameIndicatorPos] = 240.0;
            AccountData[playerid][pMinigameDirection] = 1;
        }
    }

    // Update indicator position
    PlayerTextDrawHide(playerid, MechMinigameTD[playerid][2]);
    PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][2]);
    
    MechMinigameTD[playerid][2] = CreatePlayerTextDraw(playerid, AccountData[playerid][pMinigameIndicatorPos], 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][2], 6.0, 20.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][2], 0xFFFFFFFF); // WHITE
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][2], 1);
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
    
    // Calculate target zone size based on skill
    // LOW skill = SMALLER target (HARDER)
    // HIGH skill = BIGGER target (EASIER - reward for leveling up)
    new Float:targetSize = 15.0 + (float(AccountData[playerid][pMechSkill]) * 1.5);
    if(targetSize < 15.0) targetSize = 15.0; // Min 15px
    if(targetSize > 60.0) targetSize = 60.0; // Max 60px for high level

    // Randomize target zone position
    new Float:barWidth = 160.0;
    new Float:maxStart = barWidth - targetSize;
    AccountData[playerid][pMinigameTargetMin] = 240.0 + float(random(floatround(maxStart)));
    AccountData[playerid][pMinigameTargetMax] = AccountData[playerid][pMinigameTargetMin] + targetSize;

    // Update target zone textdraw
    PlayerTextDrawHide(playerid, MechMinigameTD[playerid][1]);
    PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][1]);
    
    MechMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, AccountData[playerid][pMinigameTargetMin], 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], targetSize, 20.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][1], 0x00FF00FF); // GREEN
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][1], 1);
    PlayerTextDrawShow(playerid, MechMinigameTD[playerid][1]);
    
    // Reset progress bar
    PlayerTextDrawHide(playerid, MechMinigameTD[playerid][4]);
    PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][4]);
    MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], 0.0, 8.0);
    PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0xFFFF00FF); // Yellow
    PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][4], 1);

    // Show all textdraws
    for(new i = 0; i < 6; i++) PlayerTextDrawShow(playerid, MechMinigameTD[playerid][i]);
    
    // Start timer (20ms interval)
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
        new Float:indicatorCenter = AccountData[playerid][pMinigameIndicatorPos] + 3.0; // Center of 6px indicator
        
        if(indicatorCenter >= AccountData[playerid][pMinigameTargetMin] && 
           indicatorCenter <= AccountData[playerid][pMinigameTargetMax])
        {
            // Success hit
            AccountData[playerid][pMinigameProgress] += 20.0;
            
            // Update progress bar
            new Float:progressWidth = (AccountData[playerid][pMinigameProgress] / 100.0) * 160.0;
            PlayerTextDrawHide(playerid, MechMinigameTD[playerid][4]);
            PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][4]);
            MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], progressWidth, 8.0);
            PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][4], 1);
            PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0xFFFF00FF); // Yellow
            PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][4], 0);
            PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][4], 0);
            PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][4], 255);
            PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);
            PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][4], 1);
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
            new Float:targetSize = 15.0 + (float(AccountData[playerid][pMechSkill]) * 1.5);
            if(targetSize < 15.0) targetSize = 15.0;
            if(targetSize > 60.0) targetSize = 60.0;

            new Float:barWidth = 160.0;
            new Float:maxStart = barWidth - targetSize;
            AccountData[playerid][pMinigameTargetMin] = 240.0 + float(random(floatround(maxStart)));
            AccountData[playerid][pMinigameTargetMax] = AccountData[playerid][pMinigameTargetMin] + targetSize;
            
            // Update target zone
            PlayerTextDrawHide(playerid, MechMinigameTD[playerid][1]);
            PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][1]);
            MechMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, AccountData[playerid][pMinigameTargetMin], 380.0, "LD_SPAC:white");
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], targetSize, 20.0);
            PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][1], 1);
            PlayerTextDrawColor(playerid, MechMinigameTD[playerid][1], 0x00FF00FF); // GREEN
            PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][1], 0);
            PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][1], 0);
            PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][1], 255);
            PlayerTextDrawFont(playerid, MechMinigameTD[playerid][1], 4);
            PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][1], 1);
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
                    AccountData[playerid][ActivityTime] = 10;
                    OilChange(playerid, vehicleid);
                }
                else if(type == MECH_MINIGAME_TIRE)
                {
                    AccountData[playerid][ActivityTime] = 10;
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
            
            // Update progress bar
            new Float:progressWidth = (AccountData[playerid][pMinigameProgress] / 100.0) * 160.0;
            PlayerTextDrawHide(playerid, MechMinigameTD[playerid][4]);
            PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][4]);
            MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], progressWidth, 8.0);
            PlayerTextDrawAlignment(playerid, MechMinigameTD[playerid][4], 1);
            PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0xFFFF00FF);
            PlayerTextDrawSetShadow(playerid, MechMinigameTD[playerid][4], 0);
            PlayerTextDrawSetOutline(playerid, MechMinigameTD[playerid][4], 0);
            PlayerTextDrawBackgroundColor(playerid, MechMinigameTD[playerid][4], 255);
            PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);
            PlayerTextDrawSetProportional(playerid, MechMinigameTD[playerid][4], 1);
            PlayerTextDrawShow(playerid, MechMinigameTD[playerid][4]);
        }
    }
    return 1;
}
