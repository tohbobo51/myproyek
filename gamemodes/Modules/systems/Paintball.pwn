#define PAINTBALL_WEAPON 30 // MP5 sebagai senjata paintball
#define PAINTBALL_ARENA_X 1500.0
#define PAINTBALL_ARENA_Y -1700.0
#define PAINTBALL_ARENA_Z 15.0
#define PAINTBALL_EXIT_X 1958.0
#define PAINTBALL_EXIT_Y 1343.0
#define PAINTBALL_EXIT_Z 15.0

new bool:IsInPaintball[MAX_PLAYERS];
new PlayerScore[MAX_PLAYERS];

// Fungsi untuk memulai Paintball
CMD:joinpaintball(playerid, params[])
{
    if (IsInPaintball[playerid])
    {
        SendClientMessage(playerid, 0xFF0000FF, "Anda sudah berada di dalam arena Paintball!");
        return 1;
    }

    SetPlayerPos(playerid, PAINTBALL_ARENA_X, PAINTBALL_ARENA_Y, PAINTBALL_ARENA_Z);
    GivePlayerWeaponEx(playerid, PAINTBALL_WEAPON, 200);
    IsInPaintball[playerid] = true;
    PlayerScore[playerid] = 0;
    SendClientMessage(playerid, 0x00FF00FF, "Selamat datang di arena Paintball! Tembak lawan untuk mendapatkan poin!");

    return 1;
}

// Fungsi untuk keluar dari Paintball
CMD:leavepaintball(playerid, params[])
{
    if (!IsInPaintball[playerid])
    {
        SendClientMessage(playerid, 0xFF0000FF, "Anda tidak berada di dalam arena Paintball!");
        return 1;
    }

    SetPlayerPos(playerid, PAINTBALL_EXIT_X, PAINTBALL_EXIT_Y, PAINTBALL_EXIT_Z);
    ResetPlayerWeaponsEx(playerid);
    IsInPaintball[playerid] = false;
    SendClientMessage(playerid, 0xFF9900FF, "Anda telah keluar dari arena Paintball!");

    return 1;
}
