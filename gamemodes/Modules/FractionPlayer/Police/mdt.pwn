// mdt_main.pwn - Menu utama MDT & submenu Surat Perintah & Catatan Kriminal & Invoice + Identity & Vehicle Check + Track Unit + SIM

#define DIALOG_MDT_MAIN         9000
#define DIALOG_MDT_WARRANT_MENU 9001
#define DIALOG_MDT_WARRANT_LIST 9002
#define DIALOG_MDT_WARRANT_ADD  9003
#define DIALOG_MDT_WARRANT_DEL  9004

#define DIALOG_MDT_CRIME_MENU   9100
#define DIALOG_MDT_CRIME_ADD    9101
#define DIALOG_MDT_CRIME_LIST   9102
#define DIALOG_MDT_CRIME_DEL    9103

#define DIALOG_MDT_INVOICE_MENU 9200
#define DIALOG_MDT_INVOICE_ADD  9201
#define DIALOG_MDT_INVOICE_LIST 9202
#define DIALOG_MDT_INVOICE_DEL  9203

#define DIALOG_MDT_IDENTITY       9300
#define DIALOG_MDT_VEHICLE_CHECK  9301
#define DIALOG_MDT_VEHICLE_RESULT 9302

#define DIALOG_MDT_TRACK_UNIT     9400

#define DIALOG_MDT_LICENSE_MENU   9500
#define DIALOG_MDT_LICENSE_GIVE   9501
#define DIALOG_MDT_LICENSE_REVOKE 9502

#define DIALOG_MDT_TRACK_MENU     9600
#define DIALOG_MDT_TRACK_PLATE    9601
#define DIALOG_MDT_TRACK_PHONE    9602

#define DIALOG_MDT_EMERGENCY_CALLS 9700
#define DIALOG_MDT_ASSIST_MENU    9701

// Fungsi untuk membuka menu utama MDT
ShowMDTMainMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_MAIN, DIALOG_STYLE_TABLIST_HEADERS,
        "Mobile Data Terminal (MDT)",
        "Fitur\tDeskripsi\n"
        "Identitas Pribadi\tLihat info player\n"
        "Periksa Kendaraan\tCek info kendaraan berdasarkan plat\n"
        "Surat Perintah\tTetapkan & Lihat surat perintah\n"
        "Catatan Kriminal\tRiwayat pelanggaran player\n"
        "Invoice\tTagihan untuk player\n"
        "Track Unit\tLokasi unit kendaraan polisi\n"
        "Surat Izin (SIM)\tBuat atau tahan SIM\n"
        "Lacak\tLokasi plat/nama/ponsel\n"
        "Panggilan Darurat\tRespon /call 911\n"
        "Bantuan\tRespon flare dari player",
        "Pilih", "Tutup");
}

// Handler setelah memilih menu utama
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if (!response) return 0;

    switch (dialogid)
    {
        case DIALOG_MDT_MAIN:
        {
            switch (listitem)
            {
                case 0: ShowIdentityDialog(playerid);
                case 1: ShowVehicleCheckDialog(playerid);
                case 2: ShowWarrantMenu(playerid);
                case 3: ShowCrimeMenu(playerid);
                case 4: ShowInvoiceMenu(playerid);
                case 5: ShowTrackUnitDialog(playerid);
                case 6: ShowLicenseMenu(playerid);
                case 7: ShowTrackMenu(playerid);
                case 8: ShowEmergencyCallDialog(playerid); break;
                case 9: ShowAssistMenu(playerid); break;
            }
            return 1;
        }

        case DIALOG_MDT_VEHICLE_CHECK:
        {
            if (isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_MDT_VEHICLE_CHECK, DIALOG_STYLE_INPUT,
                "Periksa Kendaraan", "Masukkan plat kendaraan untuk diperiksa:", "Periksa", "Batal");

            new plate[32];
            format(plate, sizeof(plate), "%s", inputtext);
            new info[256];
            format(info, sizeof(info),
                "Plat: %s\n"
                "Pemilik: John Doe\n"
                "Status: Valid\n"
                "Model: Sultan\n"
                "Terakhir Terlihat: Pershing Square",
                plate);

            ShowPlayerDialog(playerid, DIALOG_MDT_VEHICLE_RESULT, DIALOG_STYLE_MSGBOX,
                "Hasil Pemeriksaan Kendaraan", info, "Tutup", "");
            return 1;
        }

        case DIALOG_MDT_WARRANT_MENU:
        {
            switch (listitem)
            {
                case 0: ShowPlayerDialog(playerid, DIALOG_MDT_WARRANT_ADD, DIALOG_STYLE_INPUT, "Tetapkan Surat Perintah", "Masukkan nama & alasan:", "Tetapkan", "Batal");
                case 1: ShowWarrantList(playerid);
            }
            return 1;
        }

        case DIALOG_MDT_WARRANT_ADD:
        {
            if (strlen(inputtext) > 0)
            {
                SendClientMessage(playerid, -1, "{00FF00}Surat perintah berhasil ditetapkan.");
            }
            return 1;
        }

        case DIALOG_MDT_WARRANT_LIST:
        {
            ShowPlayerDialog(playerid, DIALOG_MDT_WARRANT_DEL, DIALOG_STYLE_LIST, "Hapus Surat Perintah", "ID #1 - John Doe\nID #2 - Jane Smith", "Hapus", "Batal");
            return 1;
        }

        case DIALOG_MDT_WARRANT_DEL:
        {
            SendClientMessage(playerid, -1, "{FF0000}Surat perintah berhasil dihapus.");
            return 1;
        }

        case DIALOG_MDT_CRIME_MENU:
        {
            switch (listitem)
            {
                case 0: ShowPlayerDialog(playerid, DIALOG_MDT_CRIME_ADD, DIALOG_STYLE_INPUT, "Masukkan Catatan Kriminal", "Masukkan nama & pelanggaran:", "Masukkan", "Batal");
                case 1: ShowCrimeList(playerid);
            }
            return 1;
        }

        case DIALOG_MDT_CRIME_ADD:
        {
            if (strlen(inputtext) > 0)
            {
                SendClientMessage(playerid, -1, "{00FF00}Catatan kriminal berhasil ditambahkan.");
            }
            return 1;
        }

        case DIALOG_MDT_CRIME_LIST:
        {
            ShowPlayerDialog(playerid, DIALOG_MDT_CRIME_DEL, DIALOG_STYLE_LIST, "Catatan Kriminal", "ID #1 - John Doe: Pencurian\nID #2 - Jane Smith: Penipuan", "Hapus", "Tutup");
            return 1;
        }

        case DIALOG_MDT_CRIME_DEL:
        {
            SendClientMessage(playerid, -1, "{FF0000}Catatan kriminal berhasil dihapus.");
            return 1;
        }

        case DIALOG_MDT_INVOICE_MENU:
        {
            switch (listitem)
            {
                case 0: ShowPlayerDialog(playerid, DIALOG_MDT_INVOICE_ADD, DIALOG_STYLE_INPUT, "Berikan Invoice", "Masukkan nama & alasan invoice:", "Berikan", "Batal");
                case 1: ShowInvoiceList(playerid);
            }
            return 1;
        }

        case DIALOG_MDT_INVOICE_ADD:
        {
            if (strlen(inputtext) > 0)
            {
                SendClientMessage(playerid, -1, "{00FF00}Invoice berhasil diberikan ke player.");
            }
            return 1;
        }

        case DIALOG_MDT_INVOICE_LIST:
        {
            ShowPlayerDialog(playerid, DIALOG_MDT_INVOICE_DEL, DIALOG_STYLE_LIST, "Daftar Invoice", "ID #1 - John Doe: Denda Parkir\nID #2 - Jane Smith: Pajak Kendaraan", "Hapus", "Tutup");
            return 1;
        }

        case DIALOG_MDT_INVOICE_DEL:
        {
            SendClientMessage(playerid, -1, "{FF0000}Invoice berhasil dihapus.");
            return 1;
        }

        case DIALOG_MDT_TRACK_UNIT:
        {
            new trackInfo[512];
            format(trackInfo, sizeof(trackInfo),
                "Unit #1 - Cruiser 12\n"
                "Terakhir Diketahui: Idlewood\n"
                "Unit #2 - Ranger 21\n"
                "Terakhir Diketahui: Flint County");

            ShowPlayerDialog(playerid, DIALOG_MDT_TRACK_UNIT, DIALOG_STYLE_MSGBOX,
                "Track Unit Kendaraan Polisi",
                trackInfo,
                "Tutup", "");
            return 1;
        }

        case DIALOG_MDT_LICENSE_MENU:
        {
            switch (listitem)
            {
                case 0: ShowPlayerDialog(playerid, DIALOG_MDT_LICENSE_GIVE, DIALOG_STYLE_INPUT, "Buat SIM", "Masukkan nama penerima SIM:", "Buat", "Batal");
                case 1: ShowPlayerDialog(playerid, DIALOG_MDT_LICENSE_REVOKE, DIALOG_STYLE_INPUT, "Tahan SIM", "Masukkan nama yang akan dicabut SIM-nya:", "Tahan", "Batal");
            }
            return 1;
        }

        case DIALOG_MDT_LICENSE_GIVE:
        {
            if (strlen(inputtext) > 0)
            {
                SendClientMessage(playerid, -1, "{00FF00}SIM berhasil dibuat.");
            }
            return 1;
        }

        case DIALOG_MDT_LICENSE_REVOKE:
        {
            if (strlen(inputtext) > 0)
            {
                SendClientMessage(playerid, -1, "{FF0000}SIM berhasil ditahan.");
            }
            return 1;
        }
        case DIALOG_MDT_TRACK_MENU:
        {
            switch (listitem)
            {
                case 0: ShowPlayerDialog(playerid, DIALOG_MDT_TRACK_PLATE, DIALOG_STYLE_INPUT, "Lacak Plat Kendaraan", "Masukkan plat kendaraan:", "Lacak", "Batal");
                case 1: ShowPlayerDialog(playerid, DIALOG_MDT_TRACK_PHONE, DIALOG_STYLE_INPUT, "Lacak Nomor Ponsel", "Masukkan nomor ponsel:", "Lacak", "Batal");
            }
            return 1;
        }

        case DIALOG_MDT_TRACK_PLATE:
        {
            if (strlen(inputtext) > 0)
            {
                new info[256];
                format(info, sizeof(info),
                    "Plat: %s\nTerakhir Terlihat: Market\nStatus: Aktif",
                    inputtext);
                ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "Hasil Pelacakan Plat", info, "Tutup", "");
            }
            return 1;
        }

        case DIALOG_MDT_TRACK_PHONE:
        {
            if (strlen(inputtext) > 0)
            {
                new info[256];
                format(info, sizeof(info),
                    "Nomor: %s\nLokasi Terakhir: Verona Beach\nStatus: Aktif",
                    inputtext);
                ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "Hasil Pelacakan Nomor", info, "Tutup", "");
            }
            return 1;
        }
        case DIALOG_MDT_EMERGENCY_CALLS:
        {
            new info[256];
            format(info, sizeof(info), "Panggilan masuk dari warga di lokasi: Market\nSituasi: Perampokan toko 24/7");
            ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "Panggilan Darurat Masuk", info, "Tutup", "");
            return 1;
        }

        case DIALOG_MDT_ASSIST_MENU:
        {
            new info[256];
            format(info, sizeof(info), "Sinyal bantuan diterima dari unit di lokasi: Idlewood\nStatus: Membutuhkan backup segera.");
            ShowPlayerDialog(playerid, -1, DIALOG_STYLE_MSGBOX, "Sinyal Bantuan", info, "Tutup", "");
            return 1;
        }
    }
    return 0;
}

ShowIdentityDialog(playerid)
{
    new list[512];
    format(list, sizeof(list),
        "Nama: %s\n"
        "Umur: 27\n"
        "Jenis Kelamin: Laki-laki\n"
        "Pekerjaan: Polisi\n"
        "Alamat: Los Santos\n"
        "Nomor Telepon: 1234567\n"
        "Level: 10\n"
        "Status Wanted: Tidak",
        GetPlayerNameEx(playerid));

    ShowPlayerDialog(playerid, DIALOG_MDT_IDENTITY, DIALOG_STYLE_MSGBOX,
        "Identitas Pribadi", list, "Tutup", "");
}

ShowVehicleCheckDialog(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_VEHICLE_CHECK, DIALOG_STYLE_INPUT,
        "Periksa Kendaraan",
        "Masukkan plat kendaraan untuk diperiksa:",
        "Periksa", "Batal");
}

ShowTrackUnitDialog(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_TRACK_UNIT, DIALOG_STYLE_MSGBOX,
        "Track Unit Kendaraan Polisi",
        "Memuat data unit...",
        "Tutup", "");
}

ShowWarrantMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_WARRANT_MENU, DIALOG_STYLE_LIST,
        "Menu Surat Perintah",
        "Tetapkan Surat Perintah\nLihat Surat Perintah Aktif",
        "Pilih", "Tutup");
}

ShowWarrantList(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_WARRANT_LIST, DIALOG_STYLE_LIST,
        "Surat Perintah Aktif",
        "ID #1 - John Doe\nID #2 - Jane Smith",
        "Lanjut", "Tutup");
}

ShowCrimeMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_CRIME_MENU, DIALOG_STYLE_LIST,
        "Catatan Kriminal",
        "Masukkan Catatan Kriminal\nLihat Catatan Kriminal",
        "Pilih", "Tutup");
}

ShowCrimeList(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_CRIME_LIST, DIALOG_STYLE_LIST,
        "Catatan Kriminal",
        "ID #1 - John Doe: Pencurian\nID #2 - Jane Smith: Penipuan",
        "Hapus", "Tutup");
}

ShowInvoiceMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_INVOICE_MENU, DIALOG_STYLE_LIST,
        "Menu Invoice",
        "Berikan Invoice\nCek Invoice",
        "Pilih", "Tutup");
}

ShowInvoiceList(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_INVOICE_LIST, DIALOG_STYLE_LIST,
        "Daftar Invoice",
        "ID #1 - John Doe: Denda Parkir\nID #2 - Jane Smith: Pajak Kendaraan",
        "Hapus", "Tutup");
}

ShowLicenseMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_LICENSE_MENU, DIALOG_STYLE_LIST,
        "Surat Izin Berkendara (SIM)",
        "Buatkan Surat Izin Berkendara\nTahan Surat Izin Berkendara",
        "Pilih", "Tutup");
}

ShowTrackMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_TRACK_MENU, DIALOG_STYLE_LIST,
        "Menu Pelacakan",
        "Lacak Plat Kendaraan\nLacak Nomor Ponsel",
        "Pilih", "Tutup");
}

ShowEmergencyCallDialog(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_EMERGENCY_CALLS, DIALOG_STYLE_MSGBOX, "Panggilan Darurat", "Memuat data panggilan dari warga...", "Tutup", "");
}

ShowAssistMenu(playerid)
{
    ShowPlayerDialog(playerid, DIALOG_MDT_ASSIST_MENU, DIALOG_STYLE_MSGBOX, "Permintaan Bantuan", "Memuat sinyal flare / bantuan dari unit lain...", "Tutup", "");
}

stock const GetPlayerNameEx(playerid)
{
    static name[MAX_PLAYER_NAME];
    GetPlayerName(playerid, name, sizeof(name));
    return name;
}