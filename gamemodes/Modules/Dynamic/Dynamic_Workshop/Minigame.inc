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
    // TD[0] = Background (black bar)
    MechMinigameTD[playerid][0] = CreatePlayerTextDraw(playerid, 240.0, 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][0], 160.0, 20.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][0], 255); // Black
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][0], 4);

    // TD[1] = Target Zone (HIJAU - makin tinggi level makin besar)
    MechMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, 290.0, 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], 15.0, 20.0); // Default 15px width
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][1], 0x00FF00FF); // GREEN (hijau)
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][1], 4);

    // TD[2] = Moving Indicator (PUTIH - lebih kelihatan)
    MechMinigameTD[playerid][2] = CreatePlayerTextDraw(playerid, 240.0, 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][2], 4.0, 20.0); // Lebih tebal (4px)
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][2], 0xFFFFFFFF); // WHITE (bukan merah)
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][2], 4);

    // TD[3] = Progress Background
    MechMinigameTD[playerid][3] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][3], 160.0, 5.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][3], 0x333333FF); // Dark Grey
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][3], 4);

    // TD[4] = Progress Fill
    MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], 0.0, 5.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0x00FF00FF); // Green for progress
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);

    // TD[5] = Instruction Text
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

    // Get speed based on skill (LOWER skill = FASTER = HARDER)
    // HIGHER skill = SLOWER = EASIER
    new Float:speed = 6.0 - (float(AccountData[playerid][pMechSkill]) * 0.3);
    if(speed < 2.0) speed = 2.0; // Min speed (easy for high level)
    if(speed > 8.0) speed = 8.0; // Max speed (hard for low level)

    if(AccountData[playerid][pMinigameDirection] == 1) // Right
    {
        AccountData[playerid][pMinigameIndicatorPos] += speed;
        if(AccountData[playerid][pMinigameIndicatorPos] >= 396.0) 
        {
            AccountData[playerid][pMinigameIndicatorPos] = 396.0;
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

    // Update indicator position - HIDE then SHOW untuk fix visibility
    PlayerTextDrawHide(playerid, MechMinigameTD[playerid][2]);
    
    // Destroy and recreate untuk fix visibility issue
    PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][2]);
    MechMinigameTD[playerid][2] = CreatePlayerTextDraw(playerid, AccountData[playerid][pMinigameIndicatorPos], 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][2], 4.0, 20.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][2], 0xFFFFFFFF); // White
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][2], 4);
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
    new Float:targetSize = 15.0 + (float(AccountData[playerid][pMechSkill]) * 1.0);
    if(targetSize < 10.0) targetSize = 10.0; // Min 10px
    if(targetSize > 50.0) targetSize = 50.0; // Max 50px for high level

    // Randomize target zone position
    new Float:barWidth = 160.0;
    new Float:maxStart = 240.0 + (barWidth - targetSize);
    AccountData[playerid][pMinigameTargetMin] = 240.0 + float(random(floatround(maxStart - 240.0)));
    AccountData[playerid][pMinigameTargetMax] = AccountData[playerid][pMinigameTargetMin] + targetSize;

    // Update target zone textdraw
    PlayerTextDrawHide(playerid, MechMinigameTD[playerid][1]);
    PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][1]);
    MechMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, AccountData[playerid][pMinigameTargetMin], 380.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], targetSize, 20.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][1], 0x00FF00FF); // GREEN
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][1], 4);
    PlayerTextDrawShow(playerid, MechMinigameTD[playerid][1]);
    
    // Reset progress bar
    PlayerTextDrawHide(playerid, MechMinigameTD[playerid][4]);
    PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][4]);
    MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], 0.0, 5.0);
    PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0x00FF00FF); // Green
    PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);

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
        // Check if indicator is in target zone (with small tolerance for fairness)
        new Float:indicatorCenter = AccountData[playerid][pMinigameIndicatorPos] + 2.0; // Center of 4px indicator
        
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
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], progressWidth, 5.0);
            PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0x00FF00FF); // Green
            PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);
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
            // HIGH skill = BIGGER target (EASIER)
            new Float:targetSize = 15.0 + (float(AccountData[playerid][pMechSkill]) * 1.0);
            if(targetSize < 10.0) targetSize = 10.0;
            if(targetSize > 50.0) targetSize = 50.0;

            new Float:barWidth = 160.0;
            new Float:maxStart = 240.0 + (barWidth - targetSize);
            AccountData[playerid][pMinigameTargetMin] = 240.0 + float(random(floatround(maxStart - 240.0)));
            AccountData[playerid][pMinigameTargetMax] = AccountData[playerid][pMinigameTargetMin] + targetSize;
            
            // Update target zone
            PlayerTextDrawHide(playerid, MechMinigameTD[playerid][1]);
            PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][1]);
            MechMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, AccountData[playerid][pMinigameTargetMin], 380.0, "LD_SPAC:white");
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][1], targetSize, 20.0);
            PlayerTextDrawColor(playerid, MechMinigameTD[playerid][1], 0x00FF00FF); // GREEN
            PlayerTextDrawFont(playerid, MechMinigameTD[playerid][1], 4);
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
            
            // Update progress bar
            new Float:progressWidth = (AccountData[playerid][pMinigameProgress] / 100.0) * 160.0;
            PlayerTextDrawHide(playerid, MechMinigameTD[playerid][4]);
            PlayerTextDrawDestroy(playerid, MechMinigameTD[playerid][4]);
            MechMinigameTD[playerid][4] = CreatePlayerTextDraw(playerid, 240.0, 405.0, "LD_SPAC:white");
            PlayerTextDrawTextSize(playerid, MechMinigameTD[playerid][4], progressWidth, 5.0);
            PlayerTextDrawColor(playerid, MechMinigameTD[playerid][4], 0x00FF00FF);
            PlayerTextDrawFont(playerid, MechMinigameTD[playerid][4], 4);
            PlayerTextDrawShow(playerid, MechMinigameTD[playerid][4]);
        }
    }
    return 1;
}
