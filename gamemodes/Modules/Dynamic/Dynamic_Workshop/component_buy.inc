#include <YSI_Coding\y_hooks>

// ====== KONSTANTA & VARIABEL ======
#define componentPrice 8
new componentStock;

enum e_stuffComponent
{
    STREAMER_TAG_AREA: CompoArea,
    STREAMER_TAG_3D_TEXT_LABEL: CompoLabel,
    CompoPickup
};
new Stuff_Compo[e_stuffComponent];

stock UpdateComponentLabel()
{
    new text[128];
    format(text, sizeof(text), "/buycomponent\n"GRAY"Stock: %d", componentStock);

    // Hapus label lama jika masih aktif
    if (IsValidDynamic3DTextLabel(Stuff_Compo[CompoLabel]))
    {
        DestroyDynamic3DTextLabel(Stuff_Compo[CompoLabel]);
    }

    if(Stuff_Compo[CompoPickup] != 0)
        DestroyPickup(Stuff_Compo[CompoPickup]);

    // Buat ulang label baru
    Stuff_Compo[CompoArea] = CreateDynamicSphere(-168.2961, 1033.0253, 19.7344, 3.0, 0, 0, -1);
    Stuff_Compo[CompoPickup] = CreatePickup(1575, 1, -168.2961, 1033.0253, 19.7344, 0);
    Stuff_Compo[CompoLabel] = CreateDynamic3DTextLabel(
        text,
        -1,
        -168.2961, 1033.0253, 19.7344,
        20.0,
        INVALID_PLAYER_ID,
        INVALID_VEHICLE_ID,
        0, 0, 0,
        -1, 20.0, -1, 0
    );
}

stock LoadComponent()
{
    mysql_tquery(g_SQL, "SELECT component_stock FROM component_depot WHERE id = 1", "OnLoadComponentDepot", "");
}

forward OnLoadComponentDepot();
public OnLoadComponentDepot()
{
    if(cache_num_rows())
    {
        cache_get_value_index_int(0, 0, componentStock);
        printf("[Component] Stock loaded: %d", componentStock);
    }
    else
    {
        componentStock = 0;
        printf("[Component] No stock found. Set to 0.");
    }
    UpdateComponentLabel(); // Pindahkan ke sini agar update setelah load
    return 1;
}

stock SaveComponent()
{
    new query[128];
    format(query, sizeof(query), "UPDATE component_depot SET component_stock = %d WHERE id = 1", componentStock);
    mysql_tquery(g_SQL, query);
}

CMD:buycomponent(playerid, params[])
{
    if(!AccountData[playerid][IsLoggedIn]) return 0;
    if(GetTotalWeightStatus(playerid) > 50) return ShowTDN(playerid, NOTIFICATION_ERROR, "Inventory anda telah penuh!");
    if(IsPlayerInAnyVehicle(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada di luar kendaraan!");

    if(!IsPlayerInDynamicArea(playerid, Stuff_Compo[CompoArea]))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di lokasi Component Depot!");

    new value;
    if(sscanf(params, "d", value)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/buycomponent [amount]");
    if(value < 1 || value > 250) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid amount (1 - 250).");
    if(componentStock < value) return ShowTDN(playerid, NOTIFICATION_ERROR, "Stok komponen tidak mencukupi!");
    if(AccountData[playerid][pMoney] < (value * componentPrice)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang anda tidak cukup!");

    componentStock -= value;
    SaveComponent();
    UpdateComponentLabel();

    Inventory_Add(playerid, "Component", 19772, value);
    ShowItemBox(playerid, sprintf("Removed %sx", FormatMoney(value * componentPrice)), "Uang", 1212);
    ShowItemBox(playerid, sprintf("Received %dx", value), "Component", 19772);
    TakePlayerMoneyEx(playerid, value * componentPrice);
    return 1;
}

CMD:setcomponent(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    new amount;
    if(sscanf(params, "d", amount)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/setcomponent [amount]");
    if(amount < 0 || amount > 10000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah tidak valid (0 - 10000).");

    componentStock = amount;
    SaveComponent();
    UpdateComponentLabel();

    ShowTDN(playerid, NOTIFICATION_INFO, "Stock berhasil diupdate.");
    return 1;
}