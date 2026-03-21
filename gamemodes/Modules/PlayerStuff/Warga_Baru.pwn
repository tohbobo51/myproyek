#include <YSI\y_hooks>
new Text3D:g_WargaBaruLabel[MAX_PLAYERS];

stock bool:IsValid3DTextLabel(Text3D:labelid)
{
    return labelid != Text3D:INVALID_3DTEXT_ID;
}

hook OnGameModeInit()
{
    for (new i = 0; i < MAX_PLAYERS; i++)
    {
        g_WargaBaruLabel[i] = Text3D:INVALID_3DTEXT_ID;
    }
    return 1;
}

hook OnPlayerSpawn(playerid)
{
    if (IsValid3DTextLabel(g_WargaBaruLabel[playerid]))
    {
        Delete3DTextLabel(g_WargaBaruLabel[playerid]);
    }

    new level = GetPlayerLevel(playerid);

    if (level >= 1 && level <= 5)
    {
        new Float:x, Float:y, Float:z;
        GetPlayerPos(playerid, x, y, z);
        g_WargaBaruLabel[playerid] = Create3DTextLabel("[Warga Baru]", 0xFFFFFFAA, x, y, z + 1.0, 15.0, 0, 1);
        Attach3DTextLabelToPlayer(g_WargaBaruLabel[playerid], playerid, 0.0, 0.0, 0.6);
    }
    return 1;
}

stock GetPlayerLevel(playerid)
{
    return AccountData[playerid][pLevel]; // Ganti sesuai dengan variable level kamu
}

hook OnPlayerDisconnect(playerid, reason)
{
    if (IsValid3DTextLabel(g_WargaBaruLabel[playerid]))
    {
        Delete3DTextLabel(g_WargaBaruLabel[playerid]);
    }
    return 1;
}