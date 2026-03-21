//Clothing System TextDraw for SA-MP
//Created for character customization

#include <a_samp>
#include <zcmd>

// Define constants
#define MAX_CLOTHES_SLOTS    6
#define DIALOG_CLOTHES       1000

// TextDraw Global Variables
new Text:ClothesTitle;
new Text:ClothesBackground;
new Text:ClothesGenderLabel;
new Text:ClothesGenderMale;
new Text:ClothesGenderFemale;
new Text:ClothesPreview;
new Text:ClothesExit;

new Text:ClothesSlotLabel[MAX_CLOTHES_SLOTS];
new Text:ClothesSlotName[MAX_CLOTHES_SLOTS];
new Text:ClothesSlotLeft[MAX_CLOTHES_SLOTS];
new Text:ClothesSlotValue[MAX_CLOTHES_SLOTS];
new Text:ClothesSlotRight[MAX_CLOTHES_SLOTS];

// Player Variables
new PlayerClothes[MAX_PLAYERS][MAX_CLOTHES_SLOTS];
new PlayerGender[MAX_PLAYERS];
new bool:PlayerUsingClothesMenu[MAX_PLAYERS];

// Clothing data arrays
new ClothesNames[MAX_CLOTHES_SLOTS][32] = {
    "Shop Index 1",
    "Shop Index 2",
    "Shop Index 3",
    "Shop Index 4",
    "Shop Index 5",
    "Shop Index 6"
};

new MaleSkins[MAX_CLOTHES_SLOTS][10] = {
    {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},       // Shop Index 1 options
    {10, 11, 12, 13, 14, 15, 16, 17, 18, 19}, // Shop Index 2 options
    {20, 21, 22, 23, 24, 25, 26, 27, 28, 29}, // Shop Index 3 options
    {30, 31, 32, 33, 34, 35, 36, 37, 38, 39}, // Shop Index 4 options
    {40, 41, 42, 43, 44, 45, 46, 47, 48, 49}, // Shop Index 5 options
    {50, 51, 52, 53, 54, 55, 56, 57, 58, 59}  // Shop Index 6 options
};

new FemaleSkins[MAX_CLOTHES_SLOTS][10] = {
    {9, 10, 11, 12, 13, 14, 15, 16, 17, 18},  // Shop Index 1 options
    {19, 20, 21, 22, 23, 24, 25, 26, 27, 28}, // Shop Index 2 options
    {29, 30, 31, 32, 33, 34, 35, 36, 37, 38}, // Shop Index 3 options
    {39, 40, 41, 42, 43, 44, 45, 46, 47, 48}, // Shop Index 4 options
    {49, 50, 51, 52, 53, 54, 55, 56, 57, 58}, // Shop Index 5 options
    {59, 60, 61, 62, 63, 64, 65, 66, 67, 68}  // Shop Index 6 options
};

public OnFilterScriptInit()
{
    print("\n--------------------------------------");
    print(" Clothes System TextDraw Loaded");
    print("--------------------------------------\n");
    
    // Create TextDraws
    CreateClothesTextDraws();
    return 1;
}

public OnFilterScriptExit()
{
    // Destroy TextDraws
    DestroyClothesTextDraws();
    return 1;
}

public OnPlayerConnect(playerid)
{
    // Initialize player variables
    PlayerUsingClothesMenu[playerid] = false;
    PlayerGender[playerid] = 0; // Default to male
    
    for(new i = 0; i < MAX_CLOTHES_SLOTS; i++)
    {
        PlayerClothes[playerid][i] = 0;
    }
    
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    // Reset player variables
    PlayerUsingClothesMenu[playerid] = false;
    return 1;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
    if(!PlayerUsingClothesMenu[playerid]) return 0;
    
    // Handle exit button
    if(clickedid == ClothesExit || clickedid == Text:INVALID_TEXT_DRAW)
    {
        HideClothesMenu(playerid);
        return 1;
    }
    
    // Handle gender selection
    if(clickedid == ClothesGenderMale)
    {
        PlayerGender[playerid] = 0;
        UpdateClothingPreview(playerid);
        return 1;
    }
    
    if(clickedid == ClothesGenderFemale)
    {
        PlayerGender[playerid] = 1;
        UpdateClothingPreview(playerid);
        return 1;
    }
    
    // Handle clothes navigation
    for(new i = 0; i < MAX_CLOTHES_SLOTS; i++)
    {
        if(clickedid == ClothesSlotLeft[i])
        {
            // Decrease clothing option
            if(PlayerClothes[playerid][i] <= 0)
                PlayerClothes[playerid][i] = 9;
            else
                PlayerClothes[playerid][i]--;
                
            UpdateClothingValues(playerid);
            UpdateClothingPreview(playerid);
            return 1;
        }
        
        if(clickedid == ClothesSlotRight[i])
        {
            // Increase clothing option
            if(PlayerClothes[playerid][i] >= 9)
                PlayerClothes[playerid][i] = 0;
            else
                PlayerClothes[playerid][i]++;
                
            UpdateClothingValues(playerid);
            UpdateClothingPreview(playerid);
            return 1;
        }
    }
    
    return 0;
}

// Command to show clothes menu
CMD:clothes(playerid, params[])
{
    ShowClothesMenu(playerid);
    return 1;
}

// Create all TextDraws for the clothing system
CreateClothesTextDraws()
{
    // Background and title
    ClothesBackground = TextDrawCreate(160.0, 130.0, "_");
    TextDrawAlignment(ClothesBackground, 2);
    TextDrawBackgroundColor(ClothesBackground, 0x00000080);
    TextDrawFont(ClothesBackground, 1);
    TextDrawLetterSize(ClothesBackground, 0.5, 22.0);
    TextDrawColor(ClothesBackground, -1);
    TextDrawSetOutline(ClothesBackground, 0);
    TextDrawSetProportional(ClothesBackground, 1);
    TextDrawSetShadow(ClothesBackground, 1);
    TextDrawUseBox(ClothesBackground, 1);
    TextDrawBoxColor(ClothesBackground, 0x000000AA);
    TextDrawTextSize(ClothesBackground, 300.0, 300.0);
    TextDrawSetSelectable(ClothesBackground, 0);
    
    ClothesTitle = TextDrawCreate(160.0, 132.0, "CLOTHES SYSTEM");
    TextDrawAlignment(ClothesTitle, 2);
    TextDrawBackgroundColor(ClothesTitle, 0x000000FF);
    TextDrawFont(ClothesTitle, 2);
    TextDrawLetterSize(ClothesTitle, 0.4, 1.5);
    TextDrawColor(ClothesTitle, 0x1E90FFFF); // Blue color
    TextDrawSetOutline(ClothesTitle, 1);
    TextDrawSetProportional(ClothesTitle, 1);
    TextDrawSetShadow(ClothesTitle, 1);
    TextDrawSetSelectable(ClothesTitle, 0);
    
    // Subtitle
    new Text:ClothesSubtitle = TextDrawCreate(160.0, 150.0, "Build your character with all your wishes");
    TextDrawAlignment(ClothesSubtitle, 2);
    TextDrawBackgroundColor(ClothesSubtitle, 0x000000FF);
    TextDrawFont(ClothesSubtitle, 1);
    TextDrawLetterSize(ClothesSubtitle, 0.25, 1.0);
    TextDrawColor(ClothesSubtitle, -1);
    TextDrawSetOutline(ClothesSubtitle, 0);
    TextDrawSetProportional(ClothesSubtitle, 1);
    TextDrawSetShadow(ClothesSubtitle, 1);
    TextDrawSetSelectable(ClothesSubtitle, 0);
    
    // Gender selection
    ClothesGenderLabel = TextDrawCreate(70.0, 165.0, "Gender:");
    TextDrawBackgroundColor(ClothesGenderLabel, 0x000000FF);
    TextDrawFont(ClothesGenderLabel, 1);
    TextDrawLetterSize(ClothesGenderLabel, 0.25, 1.0);
    TextDrawColor(ClothesGenderLabel, -1);
    TextDrawSetOutline(ClothesGenderLabel, 0);
    TextDrawSetProportional(ClothesGenderLabel, 1);
    TextDrawSetShadow(ClothesGenderLabel, 1);
    TextDrawSetSelectable(ClothesGenderLabel, 0);
    
    ClothesGenderMale = TextDrawCreate(160.0, 165.0, "Male");
    TextDrawBackgroundColor(ClothesGenderMale, 0x000000FF);
    TextDrawFont(ClothesGenderMale, 1);
    TextDrawLetterSize(ClothesGenderMale, 0.25, 1.0);
    TextDrawColor(ClothesGenderMale, 0x1E90FFFF); // Blue color
    TextDrawSetOutline(ClothesGenderMale, 0);
    TextDrawSetProportional(ClothesGenderMale, 1);
    TextDrawSetShadow(ClothesGenderMale, 1);
    TextDrawUseBox(ClothesGenderMale, 0);
    TextDrawTextSize(ClothesGenderMale, 180.0, 10.0);
    TextDrawSetSelectable(ClothesGenderMale, 1);
    
    ClothesGenderFemale = TextDrawCreate(240.0, 165.0, "Female");
    TextDrawBackgroundColor(ClothesGenderFemale, 0x000000FF);
    TextDrawFont(ClothesGenderFemale, 1);
    TextDrawLetterSize(ClothesGenderFemale, 0.25, 1.0);
    TextDrawColor(ClothesGenderFemale, 0x1E90FFFF); // Blue color
    TextDrawSetOutline(ClothesGenderFemale, 0);
    TextDrawSetProportional(ClothesGenderFemale, 1);
    TextDrawSetShadow(ClothesGenderFemale, 1);
    TextDrawUseBox(ClothesGenderFemale, 0);
    TextDrawTextSize(ClothesGenderFemale, 280.0, 10.0);
    TextDrawSetSelectable(ClothesGenderFemale, 1);
    
    // Clothing slots
    new Float:yPos = 185.0;
    
    for(new i = 0; i < MAX_CLOTHES_SLOTS; i++)
    {
        // Slot label
        ClothesSlotLabel[i] = TextDrawCreate(70.0, yPos, ClothesNames[i]);
        TextDrawBackgroundColor(ClothesSlotLabel[i], 0x000000FF);
        TextDrawFont(ClothesSlotLabel[i], 1);
        TextDrawLetterSize(ClothesSlotLabel[i], 0.25, 1.0);
        TextDrawColor(ClothesSlotLabel[i], -1);
        TextDrawSetOutline(ClothesSlotLabel[i], 0);
        TextDrawSetProportional(ClothesSlotLabel[i], 1);
        TextDrawSetShadow(ClothesSlotLabel[i], 1);
        TextDrawSetSelectable(ClothesSlotLabel[i], 0);
        
        // Left arrow
        ClothesSlotLeft[i] = TextDrawCreate(160.0, yPos, "<");
        TextDrawBackgroundColor(ClothesSlotLeft[i], 0x000000FF);
        TextDrawFont(ClothesSlotLeft[i], 1);
        TextDrawLetterSize(ClothesSlotLeft[i], 0.25, 1.0);
        TextDrawColor(ClothesSlotLeft[i], 0x1E90FFFF); // Blue color
        TextDrawSetOutline(ClothesSlotLeft[i], 0);
        TextDrawSetProportional(ClothesSlotLeft[i], 1);
        TextDrawSetShadow(ClothesSlotLeft[i], 1);
        TextDrawTextSize(ClothesSlotLeft[i], 170.0, 10.0);
        TextDrawSetSelectable(ClothesSlotLeft[i], 1);
        
        // Value
        ClothesSlotValue[i] = TextDrawCreate(180.0, yPos, "0");
        TextDrawBackgroundColor(ClothesSlotValue[i], 0x000000FF);
        TextDrawFont(ClothesSlotValue[i], 1);
        TextDrawLetterSize(ClothesSlotValue[i], 0.25, 1.0);
        TextDrawColor(ClothesSlotValue[i], -1);
        TextDrawSetOutline(ClothesSlotValue[i], 0);
        TextDrawSetProportional(ClothesSlotValue[i], 1);
        TextDrawSetShadow(ClothesSlotValue[i], 1);
        TextDrawSetSelectable(ClothesSlotValue[i], 0);
        
        // Right arrow
        ClothesSlotRight[i] = TextDrawCreate(200.0, yPos, ">");
        TextDrawBackgroundColor(ClothesSlotRight[i], 0x000000FF);
        TextDrawFont(ClothesSlotRight[i], 1);
        TextDrawLetterSize(ClothesSlotRight[i], 0.25, 1.0);
        TextDrawColor(ClothesSlotRight[i], 0x1E90FFFF); // Blue color
        TextDrawSetOutline(ClothesSlotRight[i], 0);
        TextDrawSetProportional(ClothesSlotRight[i], 1);
        TextDrawSetShadow(ClothesSlotRight[i], 1);
        TextDrawTextSize(ClothesSlotRight[i], 210.0, 10.0);
        TextDrawSetSelectable(ClothesSlotRight[i], 1);
        
        // Category name (e.g., "Body", "Bone")
        ClothesSlotName[i] = TextDrawCreate(240.0, yPos, "Bone");
        TextDrawBackgroundColor(ClothesSlotName[i], 0x000000FF);
        TextDrawFont(ClothesSlotName[i], 1);
        TextDrawLetterSize(ClothesSlotName[i], 0.25, 1.0);
        TextDrawColor(ClothesSlotName[i], 0x1E90FFFF); // Blue color
        TextDrawSetOutline(ClothesSlotName[i], 0);
        TextDrawSetProportional(ClothesSlotName[i], 1);
        TextDrawSetShadow(ClothesSlotName[i], 1);
        TextDrawSetSelectable(ClothesSlotName[i], 0);
        
        yPos += 20.0;
    }
    
    // Preview & Exit buttons
    ClothesPreview = TextDrawCreate(330.0, 170.0, "PREVIEW");
    TextDrawBackgroundColor(ClothesPreview, 0x000000FF);
    TextDrawFont(ClothesPreview, 1);
    TextDrawLetterSize(ClothesPreview, 0.25, 1.0);
    TextDrawColor(ClothesPreview, 0x1E90FFFF); // Blue color
    TextDrawSetOutline(ClothesPreview, 0);
    TextDrawSetProportional(ClothesPreview, 1);
    TextDrawSetShadow(ClothesPreview, 1);
    TextDrawUseBox(ClothesPreview, 1);
    TextDrawBoxColor(ClothesPreview, 0x00000080);
    TextDrawTextSize(ClothesPreview, 380.0, 10.0);
    TextDrawSetSelectable(ClothesPreview, 1);
    
    ClothesExit = TextDrawCreate(330.0, 190.0, "X");
    TextDrawBackgroundColor(ClothesExit, 0x000000FF);
    TextDrawFont(ClothesExit, 1);
    TextDrawLetterSize(ClothesExit, 0.25, 1.0);
    TextDrawColor(ClothesExit, 0xFF0000FF); // Red color
    TextDrawSetOutline(ClothesExit, 0);
    TextDrawSetProportional(ClothesExit, 1);
    TextDrawSetShadow(ClothesExit, 1);
    TextDrawTextSize(ClothesExit, 340.0, 10.0);
    TextDrawSetSelectable(ClothesExit, 1);
}

DestroyClothesTextDraws()
{
    TextDrawDestroy(ClothesTitle);
    TextDrawDestroy(ClothesBackground);
    TextDrawDestroy(ClothesGenderLabel);
    TextDrawDestroy(ClothesGenderMale);
    TextDrawDestroy(ClothesGenderFemale);
    TextDrawDestroy(ClothesPreview);
    TextDrawDestroy(ClothesExit);
    
    for(new i = 0; i < MAX_CLOTHES_SLOTS; i++)
    {
        TextDrawDestroy(ClothesSlotLabel[i]);
        TextDrawDestroy(ClothesSlotName[i]);
        TextDrawDestroy(ClothesSlotLeft[i]);
        TextDrawDestroy(ClothesSlotValue[i]);
        TextDrawDestroy(ClothesSlotRight[i]);
    }
}

ShowClothesMenu(playerid)
{
    if(PlayerUsingClothesMenu[playerid]) return 0;
    
    // Show all TextDraws
    TextDrawShowForPlayer(playerid, ClothesBackground);
    TextDrawShowForPlayer(playerid, ClothesTitle);
    TextDrawShowForPlayer(playerid, ClothesGenderLabel);
    TextDrawShowForPlayer(playerid, ClothesGenderMale);
    TextDrawShowForPlayer(playerid, ClothesGenderFemale);
    TextDrawShowForPlayer(playerid, ClothesPreview);
    TextDrawShowForPlayer(playerid, ClothesExit);
    
    for(new i = 0; i < MAX_CLOTHES_SLOTS; i++)
    {
        TextDrawShowForPlayer(playerid, ClothesSlotLabel[i]);
        TextDrawShowForPlayer(playerid, ClothesSlotName[i]);
        TextDrawShowForPlayer(playerid, ClothesSlotLeft[i]);
        TextDrawShowForPlayer(playerid, ClothesSlotValue[i]);
        TextDrawShowForPlayer(playerid, ClothesSlotRight[i]);
    }
    
    // Update displayed values
    UpdateClothingValues(playerid);
    
    // Enable TextDraw selection
    SelectTextDraw(playerid, 0x1E90FFFF);
    
    PlayerUsingClothesMenu[playerid] = true;
    return 1;
}

HideClothesMenu(playerid)
{
    if(!PlayerUsingClothesMenu[playerid]) return 0;
    
    // Hide all TextDraws
    TextDrawHideForPlayer(playerid, ClothesBackground);
    TextDrawHideForPlayer(playerid, ClothesTitle);
    TextDrawHideForPlayer(playerid, ClothesGenderLabel);
    TextDrawHideForPlayer(playerid, ClothesGenderMale);
    TextDrawHideForPlayer(playerid, ClothesGenderFemale);
    TextDrawHideForPlayer(playerid, ClothesPreview);
    TextDrawHideForPlayer(playerid, ClothesExit);
    
    for(new i = 0; i < MAX_CLOTHES_SLOTS; i++)
    {
        TextDrawHideForPlayer(playerid, ClothesSlotLabel[i]);
        TextDrawHideForPlayer(playerid, ClothesSlotName[i]);
        TextDrawHideForPlayer(playerid, ClothesSlotLeft[i]);
        TextDrawHideForPlayer(playerid, ClothesSlotValue[i]);
        TextDrawHideForPlayer(playerid, ClothesSlotRight[i]);
    }
    
    // Disable TextDraw selection
    CancelSelectTextDraw(playerid);
    
    PlayerUsingClothesMenu[playerid] = false;
    return 1;
}

UpdateClothingValues(playerid)
{
    new valstr[16];
    
    for(new i = 0; i < MAX_CLOTHES_SLOTS; i++)
    {
        format(valstr, sizeof(valstr), "%d", PlayerClothes[playerid][i]);
        TextDrawSetString(ClothesSlotValue[i], valstr);
    }
}

UpdateClothingPreview(playerid)
{
    new skinid;
    
    // Get skin based on selected clothes and gender
    if(PlayerGender[playerid] == 0) // Male
        skinid = MaleSkins[0][PlayerClothes[playerid][0]]; // Using first slot for simplicity
    else // Female
        skinid = FemaleSkins[0][PlayerClothes[playerid][0]]; // Using first slot for simplicity
    
    // Update player skin
    SetPlayerSkin(playerid, skinid);
    
    // You could also apply additional clothing components here
    return 1;
}