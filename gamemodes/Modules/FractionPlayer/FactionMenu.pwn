new TradePartner[MAX_PLAYERS] = { INVALID_PLAYER_ID, ... };
new bool:TradeConfirmed[MAX_PLAYERS] = { false, ... };
new TradeItemIndex[MAX_PLAYERS] = { -1, ... };
new TradeItemQty[MAX_PLAYERS];
new TradeItemModel[MAX_PLAYERS];
new TradeItemName[MAX_PLAYERS][128];
new TradeListMap[MAX_PLAYERS][MAX_INVENTORY];
new TradeTempIndex[MAX_PLAYERS] = { -1, ... };
new TradeCash[MAX_PLAYERS];
new TradeTimeoutTimer[MAX_PLAYERS] = { -1, ... };

Trade_StopTimer(playerid)
{
    if(TradeTimeoutTimer[playerid] != -1)
    {
        KillTimer(TradeTimeoutTimer[playerid]);
        TradeTimeoutTimer[playerid] = -1;
    }
    return 1;
}

Trade_BumpTimeout(playerid)
{
    new partner = TradePartner[playerid];
    if(partner == INVALID_PLAYER_ID || !IsPlayerConnected(partner)) return 1;
    Trade_StopTimer(playerid);
    Trade_StopTimer(partner);
    TradeTimeoutTimer[playerid] = SetTimerEx("Trade_Timeout", 60000, false, "d", playerid);
    TradeTimeoutTimer[partner] = SetTimerEx("Trade_Timeout", 60000, false, "d", partner);
    return 1;
}

forward Trade_Timeout(playerid);
public Trade_Timeout(playerid)
{
    if(playerid == INVALID_PLAYER_ID || !IsPlayerConnected(playerid)) return 1;
    if(TradePartner[playerid] == INVALID_PLAYER_ID) return 1;
    Trade_Cancel(playerid, true);
    return 1;
}

Trade_Reset(playerid)
{
    Trade_StopTimer(playerid);
    TradePartner[playerid] = INVALID_PLAYER_ID;
    TradeConfirmed[playerid] = false;
    TradeItemIndex[playerid] = -1;
    TradeItemQty[playerid] = 0;
    TradeItemModel[playerid] = 0;
    TradeItemName[playerid][0] = '\0';
    TradeTempIndex[playerid] = -1;
    TradeCash[playerid] = 0;
    return 1;
}

Trade_Cancel(playerid, bool:notify = true)
{
    new partner = TradePartner[playerid];
    if(partner != INVALID_PLAYER_ID && IsPlayerConnected(partner) && TradePartner[partner] == playerid)
    {
        Trade_StopTimer(partner);
        Trade_Reset(partner);
        if(notify) ShowTDN(partner, NOTIFICATION_WARNING, "Trade dibatalkan.");
    }
    Trade_StopTimer(playerid);
    Trade_Reset(playerid);
    if(notify) ShowTDN(playerid, NOTIFICATION_INFO, "Trade dibatalkan.");
    return 1;
}

Trade_ShowMenu(playerid)
{
    new partner = TradePartner[playerid];
    if(partner == INVALID_PLAYER_ID || !IsPlayerConnected(partner)) return Trade_Cancel(playerid, false);
    Trade_BumpTimeout(playerid);

    static myItem[160], hisItem[160], list[512], title[96];
    if(isnull(TradeItemName[playerid])) format(myItem, sizeof(myItem), "Belum memilih item");
    else format(myItem, sizeof(myItem), "%s x%d", TradeItemName[playerid], TradeItemQty[playerid]);

    if(isnull(TradeItemName[partner])) format(hisItem, sizeof(hisItem), "Belum memilih item");
    else format(hisItem, sizeof(hisItem), "%s x%d", TradeItemName[partner], TradeItemQty[partner]);

    format(title, sizeof(title), ""TTR"Aeterna Roleplay "WHITE"- Trade (%s)", ReturnName(partner));
    format(list, sizeof(list), "Menu\tInfo\nAtur Item\t%s\nAtur Uang\t%s\nConfirm\t%s / %s\nBatalkan\t-\n",
        sprintf("Kamu: %s | Partner: %s", myItem, hisItem),
        sprintf("Kamu: %s | Partner: %s", FormatMoney(TradeCash[playerid]), FormatMoney(TradeCash[partner])),
        TradeConfirmed[playerid] ? ("OK") : ("-"),
        TradeConfirmed[partner] ? ("OK") : ("-")
    );

    Dialog_Show(playerid, DIALOG_TRADE_MENU, DIALOG_STYLE_TABLIST_HEADERS, title, list, "Pilih", "Tutup");
    return 1;
}

Trade_Start(playerid, targetid)
{
    if(targetid == INVALID_PLAYER_ID || !IsPlayerConnected(targetid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi!");
    if(targetid == playerid) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat trade dengan diri sendiri!");
    if(!IsPlayerNearPlayer(playerid, targetid, 3.5)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak di dekat anda!");
    if(AccountData[playerid][ActivityTime] != 0 || AccountData[targetid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Salah satu sedang melakukan sesuatu, tunggu sebentar!");
    if(TradePartner[playerid] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang dalam sesi trade!");
    if(TradePartner[targetid] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut sedang dalam sesi trade!");

    Trade_Reset(playerid);
    Trade_Reset(targetid);
    TradePartner[playerid] = targetid;
    TradePartner[targetid] = playerid;

    Dialog_Show(targetid, DIALOG_TRADE_REQUEST, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Permintaan Trade",
        sprintf("%s mengajak anda trade.\n\nTerima?", ReturnName(playerid)), "Terima", "Tolak");
    ShowTDN(playerid, NOTIFICATION_INFO, "Permintaan trade dikirim. Menunggu jawaban.");
    return 1;
}

DisplayFactionMenu(playerid)
{
    if (!AccountData[playerid][IsLoggedIn]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus login!");

    ShowFactionMenu(playerid);
    return 1;
}

ShowWargaMenu(playerid)
{
    new str[600];
    strcat(str, ""WHITE"Drag/Undrag Person\n");
    strcat(str, ""GRAY"Berikan Uang\n");
    strcat(str, ""WHITE"Perlihatkan Dokumen\n");
    strcat(str, ""GRAY"Trade System\n");
    
    if (AccountData[playerid][pFaction] != FACTION_NONE)
    {
        strcat(str, ""YELLOW"Faction Panel\n");
    }
    
    if (AccountData[playerid][pFamily] != -1)
    {
        strcat(str, ""PINK"Gang Panel\n");
    }
    
    Dialog_Show(playerid, DIALOG_WARGA_MENU, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Menu Interaksi", str, "Pilih", "Batal");
    return 1;
}

ShowFactionMenu(playerid)
{
    if (AccountData[playerid][pFaction] == FACTION_POLISI)
    {
        new sha[600];
        strcat(sha, ""WHITE"Periksa Lisensi\n");
        strcat(sha, ""GRAY"Invoice belum terbayar\n");
        strcat(sha, ""WHITE"Kartu identitas\n");
        strcat(sha, ""GRAY"Geledah\n");
        strcat(sha, ""WHITE"Borgol\n");
        strcat(sha, ""GRAY"Lepas borgol\n");
        strcat(sha, ""WHITE"Seret\n");
        strcat(sha, ""GRAY"Lepas seret\n");
        strcat(sha, ""WHITE"Masukkan ke mobil\n");
        strcat(sha, ""GRAY"Keluarkan paksa\n");
        strcat(sha, ""WHITE"Invoice manual\n");
        strcat(sha, ""GRAY"Penjarakan\n");
        strcat(sha, ""WHITE"Bebaskan dari penjara\n");
        strcat(sha, ""GRAY"Ambil uang kotor\n");
        strcat(sha, ""WHITE"Lepaskan karung\n");
        strcat(sha, ""GRAY"Cek blacklist\n");
        strcat(sha, ""WHITE"Cek Senjata\n");
        strcat(sha, ""WHITE"Sita Senjata\n");
        strcat(sha, ""GRAY"Riwayat Kriminal\n");
        strcat(sha, ""WHITE"Buat catatan kriminal\n");
        strcat(sha, ""GRAY"Hapus catatan kriminal\n");
        ShowPlayerDialog(playerid, DIALOG_POLICE_PANEL, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Faction Panel (Polisi)", sha, "Pilih", "Batal");
    }
    
    if (AccountData[playerid][pFaction] == FACTION_PEMERINTAH)
    {
        new sha[300];
        strcat(sha, ""WHITE"Kartu identitas\n");
        strcat(sha, ""GRAY"Invoice belum terbayar\n");
        strcat(sha, ""WHITE"Invoice manual\n");
        strcat(sha, ""GRAY"Seret\n");
        strcat(sha, ""WHITE"Lepas seret\n");
        strcat(sha, ""GRAY"Borgol\n");
        strcat(sha, ""WHITE"Lepas borgol\n");
        strcat(sha, ""GRAY"Cek blacklist\n");
        ShowPlayerDialog(playerid, DIALOG_PEMERINTAH_PANEL, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Faction Panel (PEMER)", sha, "Pilih", "Batal");
    }

    if (AccountData[playerid][pFaction] == FACTION_EMS)
    {
        new str[300];
        strcat(str, ""WHITE"Revive\n");
        strcat(str, ""GRAY"Treatment\n");
        strcat(str, ""WHITE"Seret\n");
        strcat(str, ""GRAY"Lepas seret\n");
        strcat(str, ""WHITE"Borgol\n");
        strcat(str, ""GRAY"Lepas borgol\n");
        strcat(str, ""WHITE"Invoice belum terbayar\n");
        strcat(str, ""GRAY"Invoice manual\n");
        strcat(str, ""WHITE"Periksa\n");
        strcat(str, ""GRAY"Masukkan korban ke mobil\n");
        strcat(str, ""WHITE"Drop korban\n");
        strcat(str, ""GRAY"Cek blacklist\n");
        ShowPlayerDialog(playerid, DIALOG_EMS_PANEL, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Faction Panel (EMS)", str, "Pilih", "Batal");
    }

    if (AccountData[playerid][pFaction] == FACTION_BENGKEL)
    {
        new str[300];
        strcat(str, ""WHITE"Kartu identitas\n");
        strcat(str, ""GRAY"Invoice belum terbayar\n");
        strcat(str, ""WHITE"Invoice manual\n");
        strcat(str, ""GRAY"Cek blacklist\n");
        strcat(str, ""WHITE"Ikat\n");
        strcat(str, ""GRAY"Lepas ikatan\n");
        ShowPlayerDialog(playerid, DIALOG_BENGKEL_PANEL, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Faction Panel (Bennys)", str, "Pilih", "Batal");
    }

    if (AccountData[playerid][pFaction] == FACTION_PEDAGANG)
    {
        new str[300];
        strcat(str, ""WHITE"Invoice belum terbayar\n");
        strcat(str, ""GRAY"Kartu identitas\n");
        strcat(str, ""WHITE"Invoice manual\n");
        strcat(str, ""GRAY"Cek blacklist\n");
        Dialog_Show(playerid, DIALOG_PEDAGANG_PANEL, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Faction Panel (Pedagang)", str, "Pilih", "Batal");
    }

    if (AccountData[playerid][pFaction] == FACTION_GOJEK)
    {
        new str[400];
        strcat(str, ""WHITE"Revive\n");
        strcat(str, ""GRAY"Treatment\n");
        strcat(str, ""WHITE"Seret\n");
        strcat(str, ""GRAY"Lepas Seret\n");
        strcat(str, ""WHITE"Borgol\n");
        strcat(str, ""GRAY"Buka Borgol\n");
        strcat(str, ""WHITE"Invoice Belum Terbayar\n");
        strcat(str, ""GRAY"Periksa\n");
        strcat(str, ""WHITE"Cek Blacklist\n");
        Dialog_Show(playerid, DIALOG_TENTARA_PANEL, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Faction Panel (Tentara)", str, "Pilih", "Batal");
    }

    if (AccountData[playerid][pFamily] != -1)
    {
        new str[400];
        strcat(str, ""WHITE"Geledah\n");
        strcat(str, ""GRAY"Ikat\n");
        strcat(str, ""WHITE"Buka Ikatan\n");
        strcat(str, ""GRAY"Seret\n");
        strcat(str, ""WHITE"Lepas Seretan\n");
        strcat(str, ""GRAY"Masukan Mobil\n");
        strcat(str, ""WHITE"Keluarkan Paksa\n");
        strcat(str, ""GRAY"Karung\n");
        strcat(str, ""WHITE"Lepas Karung\n");
        strcat(str, ""GRAY"Ambil uang kotor\n");
        strcat(str, ""WHITE"Ambil Uang Paksa\n");
        strcat(str, ""GRAY"Cek Senjata\n");

        ShowPlayerDialog(playerid, DIALOG_FAMILY_PANEL, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE" - Faction Menu (Gang)", str, "Pilih", "Batal");
    }
    return 1;
}

Dialog:DialogKantongPanel(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    
    new targetid = NearestPlayer[playerid][listitem];
    if(targetid < 0 || targetid >= MAX_PLAYERS) return 0;
    if (!IsPlayerConnected(targetid) || targetid == INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");

    AccountData[playerid][pTarget] = targetid;
    ShowWargaMenu(playerid);
    return 1;
}

Dialog:DIALOG_PANEL_CITIZEN(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    
    new targetid = NearestPlayer[playerid][listitem];
    if(targetid < 0 || targetid >= MAX_PLAYERS) return 0;
    if (!IsPlayerConnected(targetid) || targetid == INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");

    AccountData[playerid][pTarget] = targetid;
    ShowWargaMenu(playerid);
    return 1;
}

Dialog:DIALOG_WARGA_MENU(playerid, response, listitem, inputtext[])
{
    if (!response) return 1;
    new targetid = AccountData[playerid][pTarget];
    if(!IsPlayerConnected(targetid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
    if(!IsPlayerNearPlayer(playerid, targetid, 3.5)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak di dekat anda!");

    switch(listitem)
    {
        case 0: // Drag/Undrag
        {
            if (GetPVarInt(playerid, "OnCarry") && IsDragging[playerid] != INVALID_PLAYER_ID)
            {
                new CarryID = IsDragging[playerid];
                TogglePlayerControllable(CarryID, true);
                AccountData[CarryID][pDraggedBy] = INVALID_PLAYER_ID;
                
                IsDragging[playerid] = INVALID_PLAYER_ID;
                DeletePVar(playerid, "OnCarry");
                SendRPMeAboveHead(playerid, "Melepaskan gendongan", X11_LIGHTGREEN);
            }
            else
            {
                if (AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat melakukan ini saat sedang pingsan!");
                if (AccountData[playerid][pDraggedBy] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang digendong seseorang!");
                
                Dialog_Show(targetid, PANEL_DRAGCONF, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Drag/Undrag Person",
                "Seseorang ingin menggendong anda, apakah anda setuju?\nAnda dapat melepaskan gendongannya dengan '/uncarry'", "Setuju", "Tidak");
                AccountData[targetid][pDragOffer] = playerid;
            }
        }
        case 1: // Berikan Uang
        {
            Dialog_Show(playerid, DIALOG_WARGA_PAY, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Berikan Uang", "Masukkan jumlah uang yang ingin diberikan:", "Berikan", "Batal");
        }
        case 2: // Perlihatkan Dokumen
        {
            Dialog_Show(playerid, DIALOG_WARGA_DOCS, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Perlihatkan Dokumen", "ID Card (KTP)\nSurat Izin Mengemudi (SIM)", "Pilih", "Batal");
        }
        case 3: // Trade System
        {
            Trade_Start(playerid, targetid);
        }
        case 4: // Faction Panel
        {
            if (AccountData[playerid][pFaction] != FACTION_NONE) ShowFactionMenu(playerid);
            else if (AccountData[playerid][pFamily] != -1) ShowFactionMenu(playerid);
        }
        case 5: // Gang Panel (if Faction was Case 4)
        {
            if (AccountData[playerid][pFaction] != FACTION_NONE && AccountData[playerid][pFamily] != -1) ShowFactionMenu(playerid);
        }
    }
    return 1;
}

Dialog:DIALOG_TRADE_REQUEST(playerid, response, listitem, inputtext[])
{
    new partner = TradePartner[playerid];
    if(partner == INVALID_PLAYER_ID || !IsPlayerConnected(partner)) return Trade_Cancel(playerid, false);

    if(!response)
    {
        ShowTDN(partner, NOTIFICATION_WARNING, "Permintaan trade ditolak.");
        return Trade_Cancel(playerid, false);
    }

    if(!IsPlayerNearPlayer(playerid, partner, 3.5)) return Trade_Cancel(playerid, true);
    Trade_ShowMenu(playerid);
    Trade_ShowMenu(partner);
    return 1;
}

Dialog:DIALOG_TRADE_MENU(playerid, response, listitem, inputtext[])
{
    if(!response) return Trade_Cancel(playerid, true);
    new partner = TradePartner[playerid];
    if(partner == INVALID_PLAYER_ID || !IsPlayerConnected(partner)) return Trade_Cancel(playerid, false);
    if(!IsPlayerNearPlayer(playerid, partner, 3.5)) return Trade_Cancel(playerid, true);
    Trade_BumpTimeout(playerid);

    switch(listitem)
    {
        case 0:
        {
            new list[2048];
            format(list, sizeof(list), "Item\tJumlah\n");
            new count = 0;
            for(new i = 0; i < MAX_INVENTORY; i++)
            {
                if(!InventoryData[playerid][i][invExists]) continue;
                if(InventoryData[playerid][i][invQuantity] < 1) continue;

                new itemname[128];
                strunpack(itemname, InventoryData[playerid][i][invItem]);
                format(list, sizeof(list), "%s%s\t%d\n", list, itemname, InventoryData[playerid][i][invQuantity]);
                TradeListMap[playerid][count++] = i;
                if(count >= MAX_INVENTORY) break;
            }
            if(count == 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda kosong!"), Trade_ShowMenu(playerid);
            Dialog_Show(playerid, DIALOG_TRADE_ITEM_SELECT, DIALOG_STYLE_TABLIST_HEADERS, ""TTR"Aeterna Roleplay "WHITE"- Pilih Item", list, "Pilih", "Kembali");
        }
        case 1:
        {
            Dialog_Show(playerid, DIALOG_TRADE_CASH, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Trade Cash",
                sprintf("Masukkan jumlah uang (cash) yang kamu tawarkan.\n\nUang kamu: %s\nOffer sekarang: %s", FormatMoney(AccountData[playerid][pMoney]), FormatMoney(TradeCash[playerid])),
                "OK", "Batal");
        }
        case 2:
        {
            if((isnull(TradeItemName[playerid]) || TradeItemQty[playerid] < 1) && TradeCash[playerid] < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih item atau uang!"), Trade_ShowMenu(playerid);
            if(TradeCash[playerid] < 0) TradeCash[playerid] = 0;
            if(TradeCash[playerid] > AccountData[playerid][pMoney]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak cukup untuk offer tersebut!"), Trade_ShowMenu(playerid);

            TradeConfirmed[playerid] = true;
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda sudah confirm trade.");
            if(TradeConfirmed[partner])
            {
                if(playerid < partner) CallLocalFunction("Trade_Execute", "dd", playerid, partner);
            }
            Trade_ShowMenu(playerid);
            Trade_ShowMenu(partner);
        }
        case 3:
        {
            Trade_Cancel(playerid, true);
        }
    }
    return 1;
}

Dialog:DIALOG_TRADE_CASH(playerid, response, listitem, inputtext[])
{
    if(!response) return Trade_ShowMenu(playerid);
    new partner = TradePartner[playerid];
    if(partner == INVALID_PLAYER_ID || !IsPlayerConnected(partner)) return Trade_Cancel(playerid, false);
    if(!IsPlayerNearPlayer(playerid, partner, 3.5)) return Trade_Cancel(playerid, true);
    Trade_BumpTimeout(playerid);

    if(isnull(inputtext) || !IsNumeric(inputtext)) return Trade_ShowMenu(playerid);
    new amount = strval(inputtext);
    if(amount < 0) amount = 0;
    if(amount > AccountData[playerid][pMoney]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak cukup!"), Trade_ShowMenu(playerid);

    TradeCash[playerid] = amount;
    TradeConfirmed[playerid] = false;
    TradeConfirmed[partner] = false;
    Trade_ShowMenu(playerid);
    Trade_ShowMenu(partner);
    return 1;
}

forward Trade_Execute(playerid, partner);
public Trade_Execute(playerid, partner)
{
    if(playerid == INVALID_PLAYER_ID || partner == INVALID_PLAYER_ID) return 1;
    if(!IsPlayerConnected(playerid) || !IsPlayerConnected(partner)) return Trade_Cancel(playerid, true);
    if(TradePartner[playerid] != partner || TradePartner[partner] != playerid) return 1;
    if(!TradeConfirmed[playerid] || !TradeConfirmed[partner]) return 1;
    if(!IsPlayerNearPlayer(playerid, partner, 3.5)) return Trade_Cancel(playerid, true);

    new a = playerid, b = partner;

    new bool:aHasItem = !(isnull(TradeItemName[a]) || TradeItemQty[a] < 1);
    new bool:bHasItem = !(isnull(TradeItemName[b]) || TradeItemQty[b] < 1);
    if(!aHasItem && TradeCash[a] < 1) return Trade_Cancel(a, true);
    if(!bHasItem && TradeCash[b] < 1) return Trade_Cancel(b, true);

    if(TradeCash[a] < 0) TradeCash[a] = 0;
    if(TradeCash[b] < 0) TradeCash[b] = 0;
    if(TradeCash[a] > AccountData[a][pMoney]) return Trade_Cancel(a, true);
    if(TradeCash[b] > AccountData[b][pMoney]) return Trade_Cancel(b, true);

    new aInv = TradeItemIndex[a];
    new bInv = TradeItemIndex[b];

    if(aHasItem)
    {
        if(aInv < 0 || aInv >= MAX_INVENTORY) return Trade_Cancel(a, true);
        if(!InventoryData[a][aInv][invExists] || InventoryData[a][aInv][invQuantity] < TradeItemQty[a]) return Trade_Cancel(a, true);
        if(Inventory_GetItemID(b, TradeItemName[a]) == -1 && Inventory_GetFreeID(b) == -1) return Trade_Cancel(a, true);
        if(GetTotalWeightFloat(b) > 50) return Trade_Cancel(a, true);
    }
    if(bHasItem)
    {
        if(bInv < 0 || bInv >= MAX_INVENTORY) return Trade_Cancel(b, true);
        if(!InventoryData[b][bInv][invExists] || InventoryData[b][bInv][invQuantity] < TradeItemQty[b]) return Trade_Cancel(b, true);
        if(Inventory_GetItemID(a, TradeItemName[b]) == -1 && Inventory_GetFreeID(a) == -1) return Trade_Cancel(a, true);
        if(GetTotalWeightFloat(a) > 50) return Trade_Cancel(a, true);
    }

    if(aHasItem) Inventory_Remove(a, TradeItemName[a], TradeItemQty[a]);
    if(bHasItem) Inventory_Remove(b, TradeItemName[b], TradeItemQty[b]);

    if(aHasItem)
    {
        if(Inventory_Add(b, TradeItemName[a], TradeItemModel[a], TradeItemQty[a]) == -1)
        {
            if(aHasItem) Inventory_Add(a, TradeItemName[a], TradeItemModel[a], TradeItemQty[a]);
            if(bHasItem) Inventory_Add(b, TradeItemName[b], TradeItemModel[b], TradeItemQty[b]);
            return Trade_Cancel(a, true);
        }
    }

    if(bHasItem)
    {
        if(Inventory_Add(a, TradeItemName[b], TradeItemModel[b], TradeItemQty[b]) == -1)
        {
            if(aHasItem) { Inventory_Remove(b, TradeItemName[a], TradeItemQty[a]); Inventory_Add(a, TradeItemName[a], TradeItemModel[a], TradeItemQty[a]); }
            if(bHasItem) Inventory_Add(b, TradeItemName[b], TradeItemModel[b], TradeItemQty[b]);
            return Trade_Cancel(a, true);
        }
    }

    if(TradeCash[a] > 0)
    {
        TakePlayerMoneyEx(a, TradeCash[a]);
        GivePlayerMoneyEx(b, TradeCash[a]);
    }
    if(TradeCash[b] > 0)
    {
        TakePlayerMoneyEx(b, TradeCash[b]);
        GivePlayerMoneyEx(a, TradeCash[b]);
    }

    ShowTDN(a, NOTIFICATION_SUKSES, "Trade berhasil.");
    ShowTDN(b, NOTIFICATION_SUKSES, "Trade berhasil.");
    Trade_Reset(a);
    Trade_Reset(b);
    return 1;
}

Dialog:DIALOG_TRADE_ITEM_SELECT(playerid, response, listitem, inputtext[])
{
    if(!response) return Trade_ShowMenu(playerid);
    Trade_BumpTimeout(playerid);
    if(listitem < 0 || listitem >= MAX_INVENTORY) return Trade_ShowMenu(playerid);
    new idx = TradeListMap[playerid][listitem];
    if(idx < 0 || idx >= MAX_INVENTORY) return Trade_ShowMenu(playerid);
    if(!InventoryData[playerid][idx][invExists]) return Trade_ShowMenu(playerid);

    TradeTempIndex[playerid] = idx;
    new itemname[128];
    strunpack(itemname, InventoryData[playerid][idx][invItem]);
    new maxq = InventoryData[playerid][idx][invQuantity];
    Dialog_Show(playerid, DIALOG_TRADE_ITEM_QTY, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Jumlah Item",
        sprintf("Item: %s\nJumlah tersedia: %d\n\nMasukkan jumlah:", itemname, maxq), "OK", "Batal");
    return 1;
}

Dialog:DIALOG_TRADE_ITEM_QTY(playerid, response, listitem, inputtext[])
{
    if(!response) return Trade_ShowMenu(playerid);
    Trade_BumpTimeout(playerid);
    if(isnull(inputtext) || !IsNumeric(inputtext)) return Trade_ShowMenu(playerid);
    new qty = strval(inputtext);
    new idx = TradeTempIndex[playerid];
    if(idx < 0 || idx >= MAX_INVENTORY) return Trade_ShowMenu(playerid);
    if(!InventoryData[playerid][idx][invExists]) return Trade_ShowMenu(playerid);
    if(qty < 1 || qty > InventoryData[playerid][idx][invQuantity]) return Trade_ShowMenu(playerid);

    strunpack(TradeItemName[playerid], InventoryData[playerid][idx][invItem]);
    TradeItemModel[playerid] = InventoryData[playerid][idx][invModel];
    TradeItemQty[playerid] = qty;
    TradeItemIndex[playerid] = idx;

    new partner = TradePartner[playerid];
    TradeConfirmed[playerid] = false;
    if(partner != INVALID_PLAYER_ID && IsPlayerConnected(partner)) TradeConfirmed[partner] = false;

    Trade_ShowMenu(playerid);
    if(partner != INVALID_PLAYER_ID && IsPlayerConnected(partner)) Trade_ShowMenu(partner);
    return 1;
}

Dialog:DIALOG_WARGA_PAY(playerid, response, listitem, inputtext[])
{
    if (!response) return ShowWargaMenu(playerid);
    new amount = strval(inputtext);
    new targetid = AccountData[playerid][pTarget];
    
    if(!IsPlayerConnected(targetid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi!");
    if(amount < 1 || amount > 100000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah tidak valid ($1 - $100,000)!");
    if(AccountData[playerid][pMoney] < amount) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak cukup!");
    
    TakePlayerMoneyEx(playerid, amount);
    GivePlayerMoneyEx(targetid, amount);
    
    ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil memberikan uang %s kepada %s", FormatMoney(amount), ReturnName(targetid)));
    ShowTDN(targetid, NOTIFICATION_INFO, sprintf("Anda menerima uang %s dari %s", FormatMoney(amount), ReturnName(playerid)));
    
    new frmxt[255];
    format(frmxt, sizeof(frmxt), "Memberikan uang kepada %s sebesar $%d (Radial)", AccountData[targetid][pName], amount);
    AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], frmxt, amount);
    return 1;
}

Dialog:DIALOG_WARGA_DOCS(playerid, response, listitem, inputtext[])
{
    if (!response) return ShowWargaMenu(playerid);
    new targetid = AccountData[playerid][pTarget];
    if(!IsPlayerConnected(targetid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi!");

    switch(listitem)
    {
        case 0: // ID Card
        {
            ShowMyKTPTD(playerid, targetid);
            ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Menunjukkan KTP kepada %s", ReturnName(targetid)));
        }
        case 1: // SIM
        {
            DisplayLicensi(targetid, playerid);
            ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Menunjukkan SIM kepada %s", ReturnName(targetid)));
        }
    }
    return 1;
}



Dialog:PANEL_DRAGCONF(playerid, response, listitem, inputtext[])
{
    if (!response)
    {
        ShowTDN(AccountData[playerid][pDragOffer], NOTIFICATION_WARNING, "Pemain tersebut menolak untuk digendong!");
        AccountData[playerid][pDragOffer] = INVALID_PLAYER_ID;
        return 1;
    }

    new CarryID = AccountData[playerid][pDragOffer];
    if (!IsPlayerConnected(CarryID) || CarryID == INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
    if (!IsPlayerNearPlayer(playerid, CarryID, 3.0)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak di dekat anda!");
    if (IsDragging[CarryID] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut sedang menggendong orang lain!"); 

    IsDragging[CarryID] = playerid;
    SetPVarInt(CarryID, "OnCarry", 1);

    AccountData[playerid][pDraggedBy] = CarryID;
    AccountData[playerid][pDragOffer] = INVALID_PLAYER_ID;
    ShowTDN(CarryID, NOTIFICATION_INFO, "Anda menggendong seseorang");
    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda menyetujui permintaan Dragging");
    return 1;
}
