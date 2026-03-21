// SA-MP Basic KeyListener Script
// Requires keylistener.asi plugin

#include <a_samp>
#include <core>
#include <float>

// If you have a keylistener include file, uncomment the line below and add the correct path
// #include <keylistener>

// Plugin native declarations - adjust these based on your keylistener documentation
// Option 1: Standard format (try this first)
native KeyListener_InitializePlugin();
native KeyListener_AddKey(key, const callback[]);

// Option 2: Alternative format with plugin prefix (uncomment if Option 1 doesn't work)
/*
#define KEY_LISTENER "keylistener"
native KeyListener_InitializePlugin() = KEY_LISTENER.InitializePlugin;
native KeyListener_AddKey(key, const callback[]) = KEY_LISTENER.AddKey;
*/

// Variables
new bool:isPhoneOpen = false;
new bool:isRadioOpen = false;
new bool:isInventoryOpen = false;

public OnFilterScriptInit()
{
    print("\n--------------------------------------");
    print(" Basic Keybinds Script Initialized");
    print("--------------------------------------\n");
    
    // Initialize keylistener.asi plugin - comment out if not needed for your version
    // KeyListener_InitializePlugin();
    
    // Register key callbacks
    KeyListener_AddKey(77, "OnKeyM"); // M key for smartphone
    KeyListener_AddKey(82, "OnKeyR"); // R key for radio
    KeyListener_AddKey(73, "OnKeyI"); // I key for inventory
    KeyListener_AddKey(113, "OnKeyF2"); // F2 key for inventory (alternate)
    
    return 1;
}

public OnFilterScriptExit()
{
    print("\n--------------------------------------");
    print(" Basic Keybinds Script Unloaded");
    print("--------------------------------------\n");
    return 1;
}

// Callback function for M key (Smartphone)
forward OnKeyM();
public OnKeyM()
{
    new playerid = GetActivePlayerID();
    if(!IsPlayerConnected(playerid)) return 0;
    
    isPhoneOpen = !isPhoneOpen;
    if(isPhoneOpen)
    {
        SendClientMessage(playerid, 0x33CCFFAA, "* Smartphone opened.");
        ShowPlayerDialog(playerid, 1000, DIALOG_STYLE_LIST, "Smartphone", "Contacts\nMessages\nSettings\nApps", "Select", "Cancel");
    }
    else
    {
        SendClientMessage(playerid, 0x33CCFFAA, "* Smartphone closed.");
        // Using ShowPlayerDialog with an invalid dialog ID to hide current dialog
        ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "", "", "", "");
    }
    return 1;
}

// Callback function for R key (Radio)
forward OnKeyR();
public OnKeyR()
{
    new playerid = GetActivePlayerID();
    if(!IsPlayerConnected(playerid)) return 0;
    
    isRadioOpen = !isRadioOpen;
    if(isRadioOpen)
    {
        SendClientMessage(playerid, 0x33CCFFAA, "* Radio opened.");
        ShowPlayerDialog(playerid, 1001, DIALOG_STYLE_LIST, "Radio", "Channel 1\nChannel 2\nChannel 3\nOff", "Select", "Cancel");
    }
    else
    {
        SendClientMessage(playerid, 0x33CCFFAA, "* Radio closed.");
        // Using ShowPlayerDialog with an invalid dialog ID to hide current dialog
        ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "", "", "", "");
    }
    return 1;
}

// Callback function for I key (Inventory)
forward OnKeyI();
public OnKeyI()
{
    new playerid = GetActivePlayerID();
    if(!IsPlayerConnected(playerid)) return 0;
    
    OpenInventory(playerid);
    return 1;
}

// Callback function for F2 key (Inventory - alternate)
forward OnKeyF2();
public OnKeyF2()
{
    new playerid = GetActivePlayerID();
    if(!IsPlayerConnected(playerid)) return 0;
    
    OpenInventory(playerid);
    return 1;
}

// Helper function to open inventory
stock OpenInventory(playerid)
{
    isInventoryOpen = !isInventoryOpen;
    if(isInventoryOpen)
    {
        SendClientMessage(playerid, 0x33CCFFAA, "* Inventory opened.");
        ShowPlayerDialog(playerid, 1002, DIALOG_STYLE_LIST, "Inventory", "Slot 1\nSlot 2\nSlot 3\nSlot 4\nMore items...", "Use", "Close");
    }
    else
    {
        SendClientMessage(playerid, 0x33CCFFAA, "* Inventory closed.");
        // Using ShowPlayerDialog with an invalid dialog ID to hide current dialog
        ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "", "", "", "");
    }
}

// Helper function to get active player ID
stock GetActivePlayerID()
{
    // This should return the current player ID when using keylistener.asi
    // Implementation may vary depending on the keylistener plugin
    return 0; // Placeholder - replace with actual implementation
}