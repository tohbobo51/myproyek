#define SMUGGLER_SALARY 800
#define MAX_PACKET 5

new selectedLocation;
new packetStatus[MAX_PACKET];
new packetPlayerid[MAX_PACKET] = {INVALID_PLAYER_ID, ...};
new packetObject[MAX_PACKET], Text3D:packetLabel[MAX_PACKET], Text3D:packetgLabel[MAX_PACKET];
new packetActive = 0;

new Float:pickPacket[][3] = {
  {-1633.02, -2239.38, 31.47},
  {-2057.39, -2464.50, 31.17},
  {-418.21, 2229.03, 42.42},
  {2454.1785,-965.0631,80.0731},
  {-36.12, 2350.08, 24.30}
};

new Float:storePacket[][3] = {
  {-534.31, -103.06, 63.29},
  {-1426.72, 2170.94, 50.62},
  {870.05, -25.43, 63.95},
  {-127.32, 2259.13, 28.43},
  {-391.05, 2487.62, 41.14}
};

task PacketUpdate[1800000]() 
{
  if (packetActive == 0) {
      selectedLocation = random(sizeof(pickPacket));
      if (packetStatus[selectedLocation] == 0)
      {
      packetStatus[selectedLocation] = 1;
      packetgLabel[selectedLocation] = CreateDynamic3DTextLabel(""WHITE"Press '"GREEN"Y"WHITE"' to store the packet.", COLOR_CLIENT, storePacket[selectedLocation][0], storePacket[selectedLocation][1], storePacket[selectedLocation][2]+0.5, 7.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1);
      packetObject[selectedLocation] = CreateDynamicObject(1279, pickPacket[selectedLocation][0], pickPacket[selectedLocation][1], pickPacket[selectedLocation][2]-0.9, 0.0, 0.0, 0.0, 0, 0);
      packetLabel[selectedLocation] = CreateDynamic3DTextLabel("[Smungler Packet]\n"WHITE"Press '"GREEN"Y"WHITE"' to pick the packet.", COLOR_CLIENT, pickPacket[selectedLocation][0], pickPacket[selectedLocation][1], pickPacket[selectedLocation][2]+0.5, 7.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1);
      packetActive = 1;
      SendClientMessageToAllEx(X11_LIMEGREEN, "[Smuggler]: "WHITE"New packet available '"GREEN"/tracepacket"WHITE"' to find the packet.");
      }
  } else SendClientMessageToAllEx(X11_LIMEGREEN, "[Smuggler]: "WHITE"Smuggler job is currently active, use '"GREEN"/tracepacket"WHITE"' to find the packet.");
}

CMD:tracepacket(playerid, params[]) 
{
  if (AccountData[playerid][pSmugglerPick])
    return Error(playerid, "Kamu tidak bisa mengambil packet yang lain, karena kamu sedang mengantarkan paket.");

  if (packetStatus[selectedLocation] == 1) {
    SetPlayerWaypoint(playerid, "Pickup Packet", pickPacket[selectedLocation][0], pickPacket[selectedLocation][1], pickPacket[selectedLocation][2]);
    AccountData[playerid][pSmugglerFind] = 1;
    SetPVarInt(playerid, "sedangSmuggler", 1);
    SendCustomMessage(playerid, "Smuggler", "Please goto the marked location to pickup the packet.");
  } else if (packetStatus[selectedLocation] == 2) {
    new Float:pos[3], Float:osPos[3];
    GetPlayerPos(packetPlayerid[selectedLocation], pos[0], pos[1], pos[2]);
    DisableWaypoint(playerid);
    SetPlayerWaypoint(playerid, "Player picked packet", pos[0], pos[1], pos[2]);

    if (packetPlayerid[selectedLocation] == INVALID_PLAYER_ID) {
      GetDynamicObjectPos(packetObject[selectedLocation], osPos[0], osPos[1], osPos[2]);
      SetPlayerWaypoint(playerid, "Packet position", osPos[0], osPos[1], osPos[2]);
    }
    SetPVarInt(playerid, "sedangSmuggler", 1);
    SendCustomMessage(playerid, "Smuggler", "Please goto the marked location to pickup the packet.");
  } else {
    Error(playerid, "Tidak ada paket yang perlu dikirim.");
  }
  return 1;
}

CMD:setpacket(playerid, params[]) {
  if (CheckAdmin(playerid, 7))
    return PermissionError(playerid);

  if (packetActive == 0) {
    selectedLocation = random(sizeof(pickPacket));
    if (packetStatus[selectedLocation] == 0) {
      packetStatus[selectedLocation] = 1;
      packetgLabel[selectedLocation] = CreateDynamic3DTextLabel(""WHITE"Press '"GREEN"Y"WHITE"' untuk menyetor packet.", COLOR_CLIENT, storePacket[selectedLocation][0], storePacket[selectedLocation][1], storePacket[selectedLocation][2]+0.5, 7.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1);
      packetObject[selectedLocation] = CreateDynamicObject(1279, pickPacket[selectedLocation][0], pickPacket[selectedLocation][1], pickPacket[selectedLocation][2]-0.9, 0.0, 0.0, 0.0, 0, 0);
      packetLabel[selectedLocation] = CreateDynamic3DTextLabel("[Smungler Packet]\n"WHITE"Press '"GREEN"Y"WHITE"' untuk mengambil packet.", COLOR_CLIENT, pickPacket[selectedLocation][0], pickPacket[selectedLocation][1], pickPacket[selectedLocation][2]+0.5, 7.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1);
      packetActive = 1;
      SendClientMessageToAllEx(X11_LIGHT_SKY_BLUE_1, "[Smuggler] "WHITE"New packet available '"YELLOW"/tracepacket"WHITE"' untuk melacak packet.");
    }
  } else SendClientMessageToAllEx(X11_LIGHT_SKY_BLUE_1, "[Smuggler] "WHITE"Smuggler job is currently active, use '"YELLOW"/tracepacket"WHITE"' untuk melacak packet.");
  return 1;
}

CMD:resetsmuggler(playerid, params[]) {
  if (CheckAdmin(playerid, 7))
    return PermissionError(playerid);

  packetActive = 0;
  packetPlayerid[selectedLocation] = INVALID_PLAYER_ID;
  packetStatus[selectedLocation] = 0;
  foreach (new i : Player) {
    AccountData[i][pSmugglerPick] = 0;
    AccountData[i][pSmugglerFind] = 0;
    DeletePVar(i, "sedangSmuggler");
    DeletePVar(i, "sedangNganter");
  }
  SendCustomMessage(playerid, "Packet Reset", "Paket sudah di reset.");
  return 1;
}

#include <YSI_Coding\y_hooks>
hook OnPlayerDisconnectEx(playerid) {
  if (GetPVarInt(playerid, "sedangNganter")) {
    if (AccountData[playerid][pSmugglerPick]) {
      new Float:pos[3];
      GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
      packetObject[selectedLocation] = CreateDynamicObject(1279, pos[0], pos[1], pos[2]-0.9, 0.0, 0.0, 0.0, 0, 0);
      packetLabel[selectedLocation] = CreateDynamic3DTextLabel("[Smuggler Packet]\n"WHITE"Press '"GREEN"Y"WHITE"' Untuk mengambil packet.", COLOR_CLIENT, pos[0], pos[1], pos[2]+0.5, 7.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1);
      packetPlayerid[selectedLocation] = INVALID_PLAYER_ID;
      AccountData[playerid][pSmugglerPick] = 0;
      AccountData[playerid][pSmugglerFind] = 0;
      DisablePlayerRaceCheckpoint(playerid);
      SendCustomMessage(playerid, "Smuggler", "You've failed store a packet.");
      DeletePVar(playerid, "sedangSmuggler");
      DeletePVar(playerid, "sedangNganter");
    }
  }
  AccountData[playerid][pSmugglerPick] = 0;
  AccountData[playerid][pSmugglerFind] = 0;
  DeletePVar(playerid, "sedangSmuggler");
  DeletePVar(playerid, "sedangNganter");
  return 1;
}

CMD:destroypacket(playerid, params[]) {
    if(AccountData[playerid][pFaction] != FACTION_POLISI)
        return Error(playerid, "You must be a police officer.");

    if (IsValidDynamicObject(packetObject[selectedLocation])) {
        new Float:position[3];
        GetDynamicObjectPos(packetObject[selectedLocation], position[0], position[1], position[2]);

        if (!IsPlayerInRangeOfPoint(playerid, 3.0, position[0], position[1], position[2]))
            return Error(playerid, "You're not near any packet.");

        packetActive = 0;
        packetPlayerid[selectedLocation] = INVALID_PLAYER_ID;
        packetStatus[selectedLocation] = 0;
        foreach (new i : Player) {
            AccountData[i][pSmugglerPick] = 0;
            AccountData[i][pSmugglerFind] = 0;
            DeletePVar(i, "sedangSmuggler");
            DeletePVar(i, "sedangNganter");
        }
        SendCustomMessage(playerid,"Smuggler","You've been destroyed this packet");
    } else Error(playerid, "There are no packet active");
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(PRESSED(KEY_YES))
    {
        if (AccountData[playerid][pSmugglerPick] == 1 && GetPVarInt(playerid, "sedangNganter") == 1)
        {
            new Float:pos[3];
            GetPlayerPos(playerid, pos[0], pos[1], pos[2]);
            packetPlayerid[selectedLocation] = INVALID_PLAYER_ID;
            packetObject[selectedLocation] = CreateDynamicObject(1279, pos[0], pos[1], pos[2]-0.9, 0.0, 0.0, 0.0, 0, 0);
            packetLabel[selectedLocation] = CreateDynamic3DTextLabel("[Smuggler Packet]\n"WHITE"Press '"GREEN"Y"WHITE"' to pick the packet.", COLOR_CLIENT, pos[0], pos[1], pos[2]+0.5, 7.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1);
            AccountData[playerid][pSmugglerPick] = 0;
            AccountData[playerid][pSmugglerFind] = 0;
            DisablePlayerRaceCheckpoint(playerid);
            SendCustomMessage(playerid, "Smuggler", "You've dropped the packet..");
            DeletePVar(playerid, "sedangSmuggler");
            DeletePVar(playerid, "sedangNganter");
        }

        if (GetPVarInt(playerid, "sedangSmuggler") == 1) 
        {
            if (IsPlayerInRangeOfPoint(playerid, 3.0, pickPacket[selectedLocation][0], pickPacket[selectedLocation][1], pickPacket[selectedLocation][2]) && AccountData[playerid][pSmugglerFind]) {

              if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu harus level 15 untuk menggunakan ini!");

              if (AccountData[playerid][pFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Polisi jangan ngambil paket ngab.");

              packetPlayerid[selectedLocation] = playerid;
              packetStatus[selectedLocation] = 2;
              foreach (new i : Player)  
              {
                  if (GetPVarInt(i, "sedangSmuggler") == 1) 
                  {
                      DisableWaypoint(i);
                  }
                  SendCustomMessage(i, "Smuggler", "Someone has already pickup the packet, packet was moved!");
                  SendCustomMessage(i, "Smuggler", "Type '"YELLOW"/tracepacket"WHITE"' again to know the packet location.");
              }
              AccountData[playerid][pSmugglerPick] = 1;
              AccountData[playerid][pSmugglerFind] = 0;
              SetPVarInt(playerid, "sedangNganter", 1);
              SetPVarInt(playerid, "sedangSmuggler", 0);
              DestroyDynamicObject(packetObject[selectedLocation]);
              DestroyDynamic3DTextLabel(packetLabel[selectedLocation]);
              packetObject[selectedLocation] = INVALID_STREAMER_ID;
              SetPlayerWaypoint(playerid, "Store Packet", storePacket[selectedLocation][0], storePacket[selectedLocation][1], storePacket[selectedLocation][2]);
              ApplyAnimation(playerid, "BSKTBALL", "BBALL_pickup", 4.0, false, true, true, false, 0, true);

              SendCustomMessage(playerid, "Smuggler", "You've pickup the packet, please go to marked location to store this packet!");
              SendCustomMessage(playerid, "Smuggler", "You have taken the package press N to throw the package");
            }
        }

        new Float:osPos[3];
        GetDynamicObjectPos(packetObject[selectedLocation], osPos[0], osPos[1], osPos[2]);

        if (IsPlayerInRangeOfPoint(playerid, 3.0, osPos[0], osPos[1], osPos[2]))
        {
            if (AccountData[playerid][pFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Polisi jangan ngambil paket ngab.");

            if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu harus level 15 untuk menggunakan ini!");

            SetPVarInt(playerid, "sedangNganter", 1);
            SetPVarInt(playerid, "sedangSmuggler", 0);

            DestroyDynamicObject(packetObject[selectedLocation]);
            packetObject[selectedLocation] = INVALID_STREAMER_ID;
            DestroyDynamic3DTextLabel(packetLabel[selectedLocation]);
            packetLabel[selectedLocation] = Text3D:INVALID_3DTEXT_ID;
            AccountData[playerid][pSmugglerPick] = 1;
            AccountData[playerid][pSmugglerFind] = 0;
            packetPlayerid[selectedLocation] = playerid;
            packetStatus[selectedLocation] = 2;
            SetPlayerWaypoint(playerid, "Store Packet", storePacket[selectedLocation][0], storePacket[selectedLocation][1], storePacket[selectedLocation][2]);
            SendCustomMessage(playerid, "Smuggler", "You've pickup the packet, please go to marked location to store this packet!");
            SendCustomMessage(playerid, "Smuggler", "You have taken the package press N to throw the package");
        }

        if (AccountData[playerid][pSmugglerPick]) 
        {
            if (AccountData[playerid][pSmugglerPick] && IsPlayerInRangeOfPoint(playerid, 3.0, storePacket[selectedLocation][0], storePacket[selectedLocation][1], storePacket[selectedLocation][2])) {

            if(AccountData[playerid][pLevel] < 15) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu harus level 15 untuk menggunakan ini!");

            ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, false, false, false, false, 0, true);
            new rands = RandomEx(700, 15000);
            AccountData[playerid][pRedMoney] += rands;

            DestroyDynamic3DTextLabel(packetgLabel[selectedLocation]);
            packetgLabel[selectedLocation] = Text3D:INVALID_3DTEXT_ID;
            AccountData[playerid][pSmugglerPick] = 0;
            AccountData[playerid][pSmugglerFind] = 0;
            packetPlayerid[selectedLocation] = INVALID_PLAYER_ID;
            packetStatus[selectedLocation] = 0;
            DeletePVar(playerid, "sedangSmuggler");
            DeletePVar(playerid, "sedangNganter");
            RemovePlayerAttachedObject(playerid, JOB_SLOT);
            packetActive = 0;
            foreach (new i : Player) 
            {
                AccountData[i][pSmugglerPick] = 0;
                AccountData[i][pSmugglerFind] = 0;
                DeletePVar(i, "sedangSmuggler");
                DeletePVar(i, "sedangNganter");
            }
            SendCustomMessage(playerid, "Smuggler", "You've been stored the packet and you'll received "GREEN"%s", FormatNumber(SMUGGLER_SALARY));
            } else return SendCustomMessage(playerid, "Smuggler", "Please go to the marked location, to store the packet.");
        }
    }
    return 1;
}