#include <YSI_Coding\y_hooks>

#define MAX_CONTACTS	100

enum contactData {
	contactID,
	contactExists,
	contactName[32],
	contactNumber[64],
	contactOwnerID,
	contactUnread,
	contactBlocked
};
new ContactData[MAX_PLAYERS][MAX_CONTACTS][contactData];
new contactPage[MAX_PLAYERS];
new PlayerText:Contact_Head[MAX_PLAYERS][10],
    PlayerText:Contact_Select[MAX_PLAYERS][10],
    PlayerText:Contact_Body[MAX_PLAYERS][10],
    PlayerText:Contact_Info[MAX_PLAYERS][10],
    PlayerText:Contact_Line[MAX_PLAYERS][10];


ShowContactList(playerid, i) 
{
    PlayerTextDrawShow(playerid, Contact_Select[playerid][i]);
    PlayerTextDrawShow(playerid, Contact_Body[playerid][i]);
    PlayerTextDrawShow(playerid, Contact_Info[playerid][i]);
    PlayerTextDrawShow(playerid, Contact_Line[playerid][i]);
    PlayerTextDrawShow(playerid, Contact_Head[playerid][i]);
}

HideContactList(playerid) 
{
    for(new i = 0; i < 10; i++) 
    {
        PlayerTextDrawHide(playerid, Contact_Head[playerid][i]);
        PlayerTextDrawHide(playerid, Contact_Select[playerid][i]);
        PlayerTextDrawHide(playerid, Contact_Body[playerid][i]);
        PlayerTextDrawHide(playerid, Contact_Info[playerid][i]);
        PlayerTextDrawHide(playerid, Contact_Line[playerid][i]);
    }
}

CreateContactList(playerid) 
{
    for(new idx = 0; idx < 10; idx++) {
        new Float: y = (idx * 18.0);
        
        Contact_Select[playerid][idx] = CreatePlayerTextDraw(playerid, 529.000, 202.000 + y, "LD_SPAC:white");
        PlayerTextDrawTextSize(playerid, Contact_Select[playerid][idx], 89.000, 15.000);
        PlayerTextDrawAlignment(playerid, Contact_Select[playerid][idx], 1);
        PlayerTextDrawColor(playerid, Contact_Select[playerid][idx], 658264063);
        PlayerTextDrawSetShadow(playerid, Contact_Select[playerid][idx], 0);
        PlayerTextDrawSetOutline(playerid, Contact_Select[playerid][idx], 0);
        PlayerTextDrawBackgroundColor(playerid, Contact_Select[playerid][idx], 255);
        PlayerTextDrawFont(playerid, Contact_Select[playerid][idx], 4);
        PlayerTextDrawSetProportional(playerid, Contact_Select[playerid][idx], 1);
        PlayerTextDrawSetSelectable(playerid, Contact_Select[playerid][idx], 1);

        Contact_Line[playerid][idx] = CreatePlayerTextDraw(playerid, 529.000, 217.000 + y, "LD_SPAC:white");
        PlayerTextDrawTextSize(playerid, Contact_Line[playerid][idx], 89.000, 1.000);
        PlayerTextDrawAlignment(playerid, Contact_Line[playerid][idx], 1);
        PlayerTextDrawColor(playerid, Contact_Line[playerid][idx], -56);
        PlayerTextDrawSetShadow(playerid, Contact_Line[playerid][idx], 0);
        PlayerTextDrawSetOutline(playerid, Contact_Line[playerid][idx], 0);
        PlayerTextDrawBackgroundColor(playerid, Contact_Line[playerid][idx], 255);
        PlayerTextDrawFont(playerid, Contact_Line[playerid][idx], 4);
        PlayerTextDrawSetProportional(playerid, Contact_Line[playerid][idx], 1);
        PlayerTextDrawSetSelectable(playerid, Contact_Line[playerid][idx], 1);


        Contact_Info[playerid][idx] = CreatePlayerTextDraw(playerid, 545.000, 202.000 + y, "Oliver Reyy~n~12345678910");
        PlayerTextDrawLetterSize(playerid, Contact_Info[playerid][idx], 0.128, 0.799);
        PlayerTextDrawAlignment(playerid, Contact_Info[playerid][idx], 1);
        PlayerTextDrawColor(playerid, Contact_Info[playerid][idx], -56);
        PlayerTextDrawSetShadow(playerid, Contact_Info[playerid][idx], 0);
        PlayerTextDrawSetOutline(playerid, Contact_Info[playerid][idx], 0);
        PlayerTextDrawBackgroundColor(playerid, Contact_Info[playerid][idx], 150);
        PlayerTextDrawFont(playerid, Contact_Info[playerid][idx], 1);
        PlayerTextDrawSetProportional(playerid, Contact_Info[playerid][idx], 1);

        Contact_Body[playerid][idx] = CreatePlayerTextDraw(playerid, 533.000, 210.000 + y, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, Contact_Body[playerid][idx], 8.000, 6.000);
        PlayerTextDrawAlignment(playerid, Contact_Body[playerid][idx], 1);
        PlayerTextDrawColor(playerid, Contact_Body[playerid][idx], -56);
        PlayerTextDrawSetShadow(playerid, Contact_Body[playerid][idx], 0);
        PlayerTextDrawSetOutline(playerid, Contact_Body[playerid][idx], 0);
        PlayerTextDrawBackgroundColor(playerid, Contact_Body[playerid][idx], 255);
        PlayerTextDrawFont(playerid, Contact_Body[playerid][idx], 4);
        PlayerTextDrawSetProportional(playerid, Contact_Body[playerid][idx], 1);

        Contact_Head[playerid][idx] = CreatePlayerTextDraw(playerid, 535.000, 203.000 + y, "LD_BEAT:chit");
        PlayerTextDrawTextSize(playerid, Contact_Head[playerid][idx], 4.000, 6.000);
        PlayerTextDrawAlignment(playerid, Contact_Head[playerid][idx], 1);
        PlayerTextDrawColor(playerid, Contact_Head[playerid][idx], -56);
        PlayerTextDrawSetShadow(playerid, Contact_Head[playerid][idx], 0);
        PlayerTextDrawSetOutline(playerid, Contact_Head[playerid][idx], 0);
        PlayerTextDrawBackgroundColor(playerid, Contact_Head[playerid][idx], 255);
        PlayerTextDrawFont(playerid, Contact_Head[playerid][idx], 4);
        PlayerTextDrawSetProportional(playerid, Contact_Head[playerid][idx], 1);

    }
}  

function OnContactAdd(playerid, id)
{
	ContactData[playerid][id][contactID] = cache_insert_id();
	return 1;
}

function LoadPlayerContact(playerid)
{
	if(cache_num_rows())
	{
		for(new i = 0; i < cache_num_rows() && i < MAX_CONTACTS; i++)
		{
			ContactData[playerid][i][contactExists] = true;
			cache_get_value_name_int(i, "contactID", ContactData[playerid][i][contactID]);
			cache_get_value_name(i, "contactName", ContactData[playerid][i][contactName]);
			cache_get_value_name(i, "contactNumber", ContactData[playerid][i][contactNumber]);
			cache_get_value_name_int(i, "contactUnread", ContactData[playerid][i][contactUnread]);
			cache_get_value_name_int(i, "contactBlocked", ContactData[playerid][i][contactBlocked]);
			cache_get_value_name_int(i, "contactOwner", ContactData[playerid][i][contactOwnerID]);
		}
	}
	return 1;
}

stock CreateContact(playerid, const number[], const name[]) 
{
    new id = -1, query[156];
    if((id = GetFreeContactID(playerid)) != -1) 
    {
        ContactData[playerid][id][contactExists] = true;
		strcpy(ContactData[playerid][id][contactNumber], number);
		strcpy(ContactData[playerid][id][contactName], name);

        mysql_format(g_SQL, query, sizeof(query), "INSERT INTO `contacts` (`contactName`, `contactNumber`, `contactOwner`) VALUES('%e', '%e', '%d')", name, number, AccountData[playerid][pID]);
        mysql_tquery(g_SQL, query, "OnContactAdd", "dd", playerid, id);
    }
    return id;
}

stock GetFreeContactID(playerid) 
{
    new id = -1;
    for(new i = 0; i < MAX_CONTACTS; i++) if(!ContactData[playerid][i][contactExists]) 
    {
        id = i; 
        break;
    }
    return id;
}

stock IsContactHas(playerid, const number[]) {
	for(new i; i < MAX_CONTACTS; i ++)
	{
		if(ContactData[playerid][i][contactExists])
		{
			if(!strcmp(ContactData[playerid][i][contactNumber], number, false))
				return true;
		}
	}
    return false;
}

stock IsNumberKnow(playerid, number[]) {
    new string[32], id = -1;
	
    for (new i = 0; i < MAX_CONTACTS; i++) {
        if (ContactData[playerid][i][contactExists] && !strcmp(ContactData[playerid][i][contactNumber], number, true)) {
            id = i;
            break;
        }
    }
    if (id == -1) {
        format(string, sizeof(string), "%s", number);
    } else {
        format(string, sizeof(string), "%s", ContactData[playerid][id][contactName]);
    }
    
    return string;
}

stock GetNumberOwner(const number[])
{
	foreach(new i : Player)
	{
		if(!strcmp(AccountData[i][pPhone], number, false) && PlayerHasItem(i, "Smartphone"))
		{
			return i;
		}
	}
	return INVALID_PLAYER_ID;
}

stock PhoneContactSync(playerid)
{
    HideContactList(playerid);

    new page = contactPage[playerid],
        index = page * 10;

    new Contact_Names[10][32],
        Contact_Numbers[10][64],
        Contact_Status[10],
        Contact_Exists[10],
        Contact_Id[10];

    for (new i = 0; i < 10; i++) {
        Contact_Exists[i] = 0;
    }

    new ii = 0;

    for (new i = index; i < index + 10 && ii < sizeof(Contact_Exists); i++) {
        if (i < MAX_CONTACTS) {
            if (ContactData[playerid][i][contactExists]) {
                Contact_Exists[ii] = 1;

                format(Contact_Names[ii], 32, ContactData[playerid][i][contactName]);
                format(Contact_Numbers[ii], 64, ContactData[playerid][i][contactNumber]);

                if(GetNumberOwner(Contact_Numbers[ii]) == INVALID_PLAYER_ID) {
                    Contact_Status[ii] = 0;
                }
                else {
                    Contact_Status[ii] = 1;
                }
                
                Contact_Id[ii] = i;
                ii++;
            }
        }
    }
    new count = 0;
    for (new i = 0; i < 10; i++) {
        if (Contact_Exists[i]) {
            ShowContactList(playerid, i);
            PlayerTextDrawSetString(playerid, Contact_Info[playerid][i], sprintf("%s (%s)~n~%s",
                Contact_Names[i],
                Contact_Status[i] ? "Online" : "Offline",
                Contact_Numbers[i]));
            ListedItems[playerid][count++] = Contact_Id[i];
        } else {
            PlayerTextDrawHide(playerid, Contact_Select[playerid][i]);
            PlayerTextDrawHide(playerid, Contact_Head[playerid][i]);
            PlayerTextDrawHide(playerid, Contact_Body[playerid][i]);
            PlayerTextDrawHide(playerid, Contact_Info[playerid][i]);
            PlayerTextDrawHide(playerid, Contact_Line[playerid][i]);
        }
    }

    return 1;
}

stock ShowContactMenu(playerid) 
{
    new string[256], id = GetPVarInt(playerid, "ContactID");
    format(string, sizeof(string), "Call %s\nOpen Chat\nEdit Contact\nDelete Contact\n", ContactData[playerid][id][contactName]);
    Dialog_Show(playerid, ContactMenu, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay{FFFFFF} - Contact Menu", string, "Select", "Close");
    return 1;
}

Dialog:ContactMenu(playerid, response, listitem, inputtext[]) {
    if(response) {

        new id = GetPVarInt(playerid, "ContactID");

        if(listitem == 0) 
        {
            if(GetNumberOwner(ContactData[playerid][id][contactNumber]) == INVALID_PLAYER_ID) 
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor tersebut sedang tidak aktif!");

            HideContactList(playerid);
            OnOutcomingCall(playerid, ContactData[playerid][id][contactNumber]);
        }
        if(listitem == 1) 
        {
            SetPVarString(playerid, "SelectNumber", ContactData[playerid][id][contactNumber]);
            PhoneContacts(playerid, false);
            HideContactList(playerid);
            CallLocalFunction("OnOpenPhoneMessage", "d", playerid);
        }
        if(listitem == 2) 
        {
            Dialog_Show(playerid, EditContact, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay{FFFFFF} - Edit Contact", "Edit Name\nEdit Number", "Select", "Close");
        }
        if(listitem == 3) 
        {
            ShowTDN(playerid, NOTIFICATION_INFO, "Kontak berhasil dihapus!");

            ContactData[playerid][id][contactExists] = false;
            format(ContactData[playerid][id][contactNumber], 64, "\0");
            format(ContactData[playerid][id][contactName], 32, "\0");
            mysql_tquery(g_SQL, sprintf("DELETE FROM `contacts` WHERE `contactID` = '%d'", ContactData[playerid][id][contactID]));

            ContactData[playerid][id][contactID] = 0;
            PhoneContactSync(playerid);
        }
    }
    return 1;
}

Dialog:ContactAdd(playerid, response, listitem, inputtext[]) {
    if (response) {
        if (!IsNumeric(inputtext)) {
            return Dialog_Show(playerid, ContactAdd, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Contact Add", "Masukkan nomor kontak yang valid:", "Next", "Close");
        }
		if(IsContactHas(playerid, inputtext)) {
            return Dialog_Show(playerid, ContactAdd, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Contact Add", "Nomor sudah dimiliki!\nMasukkan nama kontak:", "Submit", "Close");
		}

        SetPVarString(playerid, "NumberC", inputtext);

        Dialog_Show(playerid, ContactAddName, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Contact Add", "Masukkan nama kontak:", "Submit", "Close");
    }
    return 1;
}


Dialog:ContactAddName(playerid, response, listitem, inputtext[]) 
{
    if(response) 
    {
        new number[64];
		GetPVarString(playerid, "NumberC", number, 64);	
        new id = CreateContact(playerid, number, inputtext);
	

        if(id == -1) 
        {
            ShowTDN(playerid, NOTIFICATION_ERROR, "Anda gagal menambahkan kontak.");
        }
        else {
            PhoneContactSync(playerid);
            ShowTDN(playerid, NOTIFICATION_INFO, "Berhasil menambahkan kontak.");
        }
    }
    return 1;
}

Dialog:EditContact(playerid, response, listitem, inputtext[]) {
    if(response) {
        if(listitem == 0) {
            Dialog_Show(playerid, EditContactName, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Edit Contact Name", "Silahkan masukkan nama kontak yang baru:", "Edit", "Close");
        }
        if(listitem == 1) {
            Dialog_Show(playerid, EditContactNumber, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Edit Contact Number", "Silahkan masukkan nomor kontak yang baru:", "Edit", "Close");
        }
    }
    return 1;
}

Dialog:EditContactName(playerid, response, listitem, inputtext[]) {
    if(response) {
        new id = GetPVarInt(playerid, "ContactID");

        if(isnull(inputtext))
            return Dialog_Show(playerid, EditContactName, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Edit Contact Name", "Silahkan masukkan nama kontak yang baru:", "Edit", "Close");

        format(ContactData[playerid][id][contactName], 32, inputtext);
        new query[256];
        mysql_format(g_SQL, query, sizeof(query), "UPDATE `contacts` SET `contactName` = '%e' WHERE `contactID` = '%d'", SQL_ReturnEscape(inputtext), ContactData[playerid][id][contactID]);
        mysql_tquery(g_SQL, query);
        
        PhoneContactSync(playerid);
    }
    return 1;
}


Dialog:EditContactNumber(playerid, response, listitem, inputtext[]) {
    if (response) {
        new id = GetPVarInt(playerid, "ContactID");

        if (isnull(inputtext) || strlen(inputtext) == 0)
            return Dialog_Show(playerid, EditContactNumber, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Edit Contact Number", "Silahkan masukkan nomor kontak yang baru:", "Edit", "Close");

        if (!IsNumeric(inputtext))
            return Dialog_Show(playerid, EditContactNumber, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Edit Contact Number", "Nomor yang dimasukkan tidak valid. Silahkan masukkan nomor kontak yang baru:", "Edit", "Close");

        if (IsContactHas(playerid, inputtext))
            return Dialog_Show(playerid, EditContactNumber, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Edit Contact Number", "ERROR: Nomor ini sudah ada pada kontakmu!\nSilahkan masukkan nomor kontak yang baru:", "Edit", "Close");

        format(ContactData[playerid][id][contactNumber], 64, inputtext);

	    mysql_tquery(g_SQL,sprintf("UPDATE contacts SET contactNumber = '%e' WHERE contactID = '%d'", SQL_ReturnEscape(inputtext), ContactData[playerid][id][contactID]));
        PhoneContactSync(playerid);
    }
    return 1;
}



hook OnPlayerConnect(playerid) 
{
    CreateContactList(playerid);
}

hook ClickDynPlayerTextdraw(playerid, PlayerText:textid) 
{
	if(textid == TextDraw_PhoneCall[playerid][24]) // RED BUTTON 
    {
		foreach(new i : Player) if(AccountData[i][phoneCallingWithPlayerID] == playerid)
        {
            new phoneCallFromID = i;
            ApplyAnimation(phoneCallFromID, "ped", "phone_out", 4.0, 0, 0, 0, 0, 0, 1);
		    RemovePlayerAttachedObject(phoneCallFromID, 9);
            ApplyAnimation(playerid, "ped", "phone_out", 4.0, 0, 0, 0, 0, 0, 1);
		    RemovePlayerAttachedObject(playerid, 9);
            if(AccountData[playerid][phoneShown]) {
                AccountData[playerid][phoneShown] = false;
                RemovePlayerAttachedObject(playerid, 9);
                if(!IsPlayerInAnyVehicle(playerid)) {
                    ClearAnimations(playerid, 1);
                }
            }
            
            if(AccountData[phoneCallFromID][phoneShown]) {
                AccountData[phoneCallFromID][phoneShown] = false;
                RemovePlayerAttachedObject(phoneCallFromID, 9);
                
                if(!IsPlayerInAnyVehicle(phoneCallFromID)) {
                    ClearAnimations(phoneCallFromID, 1);
                }
            }

            PhoneHideAll(playerid), PhoneHideAll(phoneCallFromID);
            PhoneCall(playerid, false), PhoneCall(phoneCallFromID, false);
            CancelSelectTextDraw(playerid), CancelSelectTextDraw(phoneCallFromID);
            StopAudioStreamForPlayer(playerid);
            
            AccountData[playerid][phoneCallingTime] = 0;
            AccountData[playerid][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            AccountData[playerid][phoneIncomingCall] = false;
            AccountData[playerid][phoneIncomingCall] = false;
            
            AccountData[phoneCallFromID][phoneCallingTime] = 0;
            AccountData[phoneCallFromID][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            AccountData[phoneCallFromID][phoneIncomingCall] = false;
            AccountData[phoneCallFromID][phoneIncomingCall] = false;
        }  
	}
	if(textid == TextDraw_PhoneCall[playerid][25]) // GREEN BUTTON
    {
		if(AccountData[playerid][phoneDurringConversation]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang dalam percakapan!");
        if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan tidak dapat mengangkat panggilan!");
        foreach(new i : Player) if (AccountData[i][phoneCallingWithPlayerID] == playerid)
        {
            new callingWithPlayerID = i;
            AccountData[playerid][phoneDurringConversation] = true;
            AccountData[playerid][phoneIncomingCall] = false;
            AccountData[playerid][phoneCallingTime] = 0;
            AccountData[playerid][phoneCallingWithPlayerID] = callingWithPlayerID;

            AccountData[callingWithPlayerID][phoneDurringConversation] = true;
            AccountData[callingWithPlayerID][phoneIncomingCall] = false;
            AccountData[callingWithPlayerID][phoneCallingTime] = 0;
            AccountData[callingWithPlayerID][phoneCallingWithPlayerID] = playerid;

            ApplyAnimationEx(playerid, "ped", "phone_talk", 3.1, 0, 1, 0, 1, 1, 1);
            
            SetPlayerAttachedObject(playerid, 9, 18870, 6,  0.099000, 0.009999, 0.000000,  78.200027, 179.000061, -1.500000,  1.000000, 1.000000, 1.000000); // 276
            
            ApplyAnimationEx(callingWithPlayerID, "ped", "phone_talk", 3.1, 0, 1, 0, 1, 1, 1);

            SetPlayerAttachedObject(callingWithPlayerID, 9, 18870, 6,  0.099000, 0.009999, 0.000000,  78.200027, 179.000061, -1.500000,  1.000000, 1.000000, 1.000000); // 276
            
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][22], IsNumberKnow(playerid, AccountData[callingWithPlayerID][pPhone]));

            StopAudioStreamForPlayer(playerid);

            PhoneHideAll(playerid), PhoneHideAll(callingWithPlayerID);
            PhoneCall(playerid, true), PhoneCall(callingWithPlayerID, true);
            CancelSelectTextDraw(playerid), CancelSelectTextDraw(callingWithPlayerID);
            CallRemoteFunction("ConnectPlayerCalling", "dd", playerid, callingWithPlayerID);

            PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][23], "In Call...");
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[callingWithPlayerID][23], "In Call...");

            PlayerTextDrawHide(playerid, TextDraw_PhoneCall[playerid][24]);

            PlayerTextDrawHide(playerid, TextDraw_PhoneCall[playerid][25]);
            PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][26]);	

            PlayerTextDrawHide(i, TextDraw_PhoneCall[i][24]);

            PlayerTextDrawHide(i, TextDraw_PhoneCall[i][25]);
            PlayerTextDrawShow(i, TextDraw_PhoneCall[i][26]);	

            break;
        }
	}
	if(textid == TextDraw_PhoneCall[playerid][26]) // RED BUTTON WHEN IN CALL
    {
        CutCallingLine(playerid); 
	}

    if(textid == TextDraw_PhoneCallNumber[playerid][41]) {
        if(GetNumberOwner(tempNumber[playerid]) == INVALID_PLAYER_ID) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor tersebut sedang tidak aktif!");

        if(!strlen(tempNumber[playerid])) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor tersebut sedang tidak aktif!");
        OnOutcomingCall(playerid, tempNumber[playerid]);
    }

    if(textid == TextDraw_Phone[playerid][48]) 
    {
        contactPage[playerid] = 0;
        Phone(playerid, false);
        PhoneContacts(playerid, true);
        PhoneContactSync(playerid);
    }
    if(textid == TextDraw_Contact[playerid][32]) 
    {
        HideContactList(playerid);
        PhoneContacts(playerid, false);
        Phone(playerid, true);
    }
    if(textid == TextDraw_Contact[playerid][24]) 
    {
        Dialog_Show(playerid, ContactAdd, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay{FFFFFF} - Contact Add", "Masukkan nomor kontak:", "Next", "Close");
    }
    if(textid == TextDraw_Contact[playerid][26]) 
    {
        contactPage[playerid]--;
        if(contactPage[playerid] <= 0) 
        {
            contactPage[playerid] = 0;
        }

        PhoneContactSync(playerid);
    }

    if(textid == TextDraw_Contact[playerid][27]) 
    {
        contactPage[playerid]++;
        if(contactPage[playerid] >= 2) 
        {
            contactPage[playerid] = 2;
        }

        PhoneContactSync(playerid);
    }

    if(GetPVarInt(playerid, "OpenContact")) {
        for(new i = 0; i < 10; i++) if(textid == Contact_Select[playerid][i]) 
        {
            new index = ListedItems[playerid][i];
            SetPVarInt(playerid, "ContactID", index);
            ShowContactMenu(playerid);
            break;
        }
    }
    return Y_HOOKS_CONTINUE_RETURN_1;
}

stock CutCallingLine(playerid)
{
    new inlinewithplayerID = AccountData[playerid][phoneCallingWithPlayerID];
    AccountData[playerid][phoneIncomingCall] = false;
    AccountData[playerid][phoneDurringConversation] = false;
    AccountData[playerid][phoneCallingTime] = 0;
    
    RemovePlayerAttachedObject(playerid, 9);
    PhoneHideAll(playerid);
    CancelSelectTextDraw(playerid);

    if(!IsPlayerInAnyVehicle(playerid)) {
        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
    }

    if(IsPlayerConnected(inlinewithplayerID))
    {
        AccountData[inlinewithplayerID][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
        AccountData[inlinewithplayerID][phoneIncomingCall] = false;
        AccountData[inlinewithplayerID][phoneDurringConversation] = false;
        AccountData[inlinewithplayerID][phoneCallingTime] = 0;

        SendRPMeAboveHead(inlinewithplayerID, "Menutup HP miliknya.", X11_PLUM);

        if(!IsPlayerInAnyVehicle(inlinewithplayerID)) {
            ClearAnimations(inlinewithplayerID, 1);
            StopLoopingAnim(inlinewithplayerID);
            ApplyAnimation(inlinewithplayerID, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
        }

        RemovePlayerAttachedObject(inlinewithplayerID, 9); 

        PhoneHideAll(inlinewithplayerID);

        if(AccountData[inlinewithplayerID][phoneShown]) 
        {
            AccountData[inlinewithplayerID][phoneShown] = false;
            RemovePlayerAttachedObject(inlinewithplayerID, 9);
            if(!IsPlayerInAnyVehicle(inlinewithplayerID)) {
                ClearAnimations(inlinewithplayerID, 1);
            }
        }
        CallRemoteFunction("DisconnectPlayerCalling", "dd", playerid, inlinewithplayerID);
        Info(inlinewithplayerID, "Telepon terputus...");
        CancelSelectTextDraw(inlinewithplayerID);
    }
    return 1;
}

function OnIncomingCall(playerid, fromnumber[])
{
    PhoneHideAll(playerid);

    if(!AccountData[playerid][phoneShown]) 
        AccountData[playerid][phoneShown] = true;

    PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][22], IsNumberKnow(playerid, fromnumber));
    PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][23], "Panggilan masuk...");
    PlayAudioStreamForPlayer(playerid, AccountData[playerid][phoneCallRingtone], 0.0, 0.0, 0.0, 30.0, 0); // Memulai Nada Dering Sendiri

    PhoneCall(playerid, true);

    SelectTextDraw(playerid, 0xFF9999FF);
	PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][24]);
	PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][25]);
	PlayerTextDrawHide(playerid, TextDraw_PhoneCall[playerid][26]);	
    return 1;
}

function OnOutcomingCall(playerid, targetnumber[])
{
    PhoneHideAll(playerid);

    PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][22], IsNumberKnow(playerid, targetnumber));
    PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][23], "_");

    new targetnumberownerid = GetNumberOwner(targetnumber);
    if(IsPlayerConnected(targetnumberownerid) && targetnumberownerid != INVALID_PLAYER_ID)
    {
        if(AccountData[targetnumberownerid][phoneIncomingCall] || AccountData[targetnumberownerid][phoneDurringConversation])
        {
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][23], "Panggilan sedang sibuk...");
            AccountData[playerid][phoneIncomingCall] = true;
        }
        else
        {

            foreach(new i : Player) if(AccountData[i][phoneCallingWithPlayerID] == playerid || AccountData[i][phoneCallingWithPlayerID] == targetnumberownerid) {
                AccountData[i][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            }
            AccountData[playerid][phoneCallingWithPlayerID] = targetnumberownerid;
            AccountData[playerid][phoneIncomingCall] = false;
            OnIncomingCall(targetnumberownerid, AccountData[playerid][pPhone]);
            PlayerTextDrawSetString(playerid, TextDraw_PhoneCall[playerid][23], "Berdering...");
        }
    }

    
    ApplyAnimation(playerid, "ped", "phone_talk", 3.1, 0, 1, 0, 1, 1, 1);
	RemovePlayerAttachedObject(playerid, 9);
    SetPlayerAttachedObject(playerid, 9, 18870, 6,  0.099000, 0.009999, 0.000000,  78.200027, 179.000061, -1.500000,  1.000000, 1.000000, 1.000000); // 276

    PhoneCall(playerid, true);
    PlayerTextDrawHide(playerid, TextDraw_PhoneCall[playerid][24]);

    PlayerTextDrawHide(playerid, TextDraw_PhoneCall[playerid][25]);
    PlayerTextDrawShow(playerid, TextDraw_PhoneCall[playerid][26]);	
    return 1;
}