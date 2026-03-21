// Konstanta
#define MAX_BLACKJACK_TABLES     10
#define MAX_PLAYERS_PER_TABLE    5
#define BLACKJACK_BET_MIN        500
#define BLACKJACK_BET_MAX        50000

// Nilai kartu
#define CARD_ACE                 1
#define CARD_JACK                11
#define CARD_QUEEN               12
#define CARD_KING                13

// Status permainan
#define BJ_STATE_WAITING         0
#define BJ_STATE_BETTING         1
#define BJ_STATE_PLAYING         2
#define BJ_STATE_DEALER_TURN     3
#define BJ_STATE_RESULTS         4

// Enumerasi untuk kartu blackjack
enum E_CARD {
    card_value,  // Nilai kartu (1-11)
    card_suit    // Jenis kartu (hati, sekop, wajik, keriting)
}

// Enumerasi untuk pemain blackjack
enum E_BLACKJACK_PLAYER {
    bool:bj_Playing,             // Apakah pemain sedang bermain?
    bj_Bet,                      // Taruhan pemain
    bj_HandValue,                // Total nilai kartu pemain
    bj_Cards[10][E_CARD],        // Kartu yang dimiliki pemain (maksimal 10)
    bj_CardCount,                // Jumlah kartu pemain
    bool:bj_HasAce,              // Apakah pemain memiliki kartu As?
    bool:bj_Standing,            // Apakah pemain sudah "stand"?
    bool:bj_Busted               // Apakah pemain sudah bust (melebihi 21)?
}

// Enumerasi untuk meja blackjack
enum E_BLACKJACK_TABLE {
    bool:table_Active,               // Apakah meja aktif?
    table_State,                      // Status meja saat ini
    table_Players[MAX_PLAYERS_PER_TABLE], // ID pemain dalam meja
    table_PlayerCount,                // Jumlah pemain di meja
    table_CurrentPlayer,               // Pemain yang sedang bermain
    table_DealerCards[10][E_CARD],    // Kartu dealer (maksimal 10)
    table_DealerCardCount,            // Jumlah kartu dealer
    table_DealerValue,                // Total nilai kartu dealer
    bool:table_DealerHasAce,          // Apakah dealer memiliki kartu As?
    table_Timer                       // Timer untuk permainan
}

// Variabel global untuk menyimpan data permainan blackjack
new BlackjackTable[MAX_BLACKJACK_TABLES][E_BLACKJACK_TABLE];  // Data semua meja blackjack
new BlackjackPlayer[MAX_PLAYERS][E_BLACKJACK_PLAYER];         // Data semua pemain blackjack
new PlayerTable[MAX_PLAYERS] = {-1, ...};                     // Menyimpan informasi meja dari masing-masing pemain

// Array untuk menampilkan kartu
new CardNames[13][] = {
    "Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"
};

new CardSuits[4][] = {
    "Hearts", "Diamonds", "Clubs", "Spades"
};

// Forward declarations
forward BlackjackTimerUpdate(tableid);
forward EndBlackjackGame(tableid);

#include <YSI\y_hooks>

// Inisialisasi blackjack
hook OnGameModeInit() {
    print(" Blackjack System Loaded");
    // Reset semua tabel
    for(new i = 0; i < MAX_BLACKJACK_TABLES; i++) 
    {
        ResetBlackjackTable(i);
    }
    
    return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
    if(PlayerTable[playerid] != -1) {
        RemovePlayerFromBlackjack(playerid);
    }
    return 1;
}

// Command untuk membuat meja blackjack (admin only)
CMD:createbjtable(playerid, params[]) {
    // Cek admin level disini
    if(AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);
    
    new tableid = -1;
    
    // Cari meja yang tersedia
    for(new i = 0; i < MAX_BLACKJACK_TABLES; i++) {
        if(!BlackjackTable[i][table_Active]) {
            tableid = i;
            break;
        }
    }
    
    if(tableid == -1) return SendClientMessageEx(playerid, -1, "Sudah terlalu banyak meja blackjack!");
    
    // Aktifkan meja
    BlackjackTable[tableid][table_Active] = true;
    BlackjackTable[tableid][table_State] = BJ_STATE_WAITING;
    BlackjackTable[tableid][table_PlayerCount] = 0;
    
    new Float:x, Float:y, Float:z;
    GetPlayerPos(playerid, x, y, z);
    
    // Objek meja bisa ditambahkan disini
    // CreateObject(...
    
    SendClientMessageEx(playerid, -1, "Meja blackjack berhasil dibuat. Gunakan /bjoin untuk bergabung.");
    
    return 1;
}

// Command untuk menghapus meja blackjack
CMD:removebjtable(playerid, params[]) {
    // Cek admin level disini
    // if(!IsPlayerAdmin(playerid)) return SendClientMessageEx(playerid, COLOR_RED, "Hanya admin yang dapat menggunakan perintah ini!");
    
    new tableid;
    if(sscanf(params, "i", tableid)) return SendClientMessageEx(playerid, -1, "USAGE: /removebjtable [tableid]");
    
    if(tableid < 0 || tableid >= MAX_BLACKJACK_TABLES) return SendClientMessageEx(playerid, -1, "ID meja tidak valid!");
    if(!BlackjackTable[tableid][table_Active]) return SendClientMessageEx(playerid, -1, "Meja tersebut tidak aktif!");
    
    // Hapus semua pemain
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        new pid = BlackjackTable[tableid][table_Players][i];
        if(pid != INVALID_PLAYER_ID) {
            RemovePlayerFromBlackjack(pid);
        }
    }
    
    // Reset meja
    ResetBlackjackTable(tableid);
    
    SendClientMessageEx(playerid, -1, "Meja blackjack berhasil dihapus.");
    
    return 1;
}

// Command untuk bergabung ke meja blackjack
CMD:bjoin(playerid, params[]) {
    if(PlayerTable[playerid] != -1) return SendClientMessageEx(playerid, -1, "Anda sudah berada di meja blackjack!");
    
    new tableid;
    if(sscanf(params, "i", tableid)) return SendClientMessageEx(playerid, -1, "USAGE: /bjoin [tableid]");
    
    if(tableid < 0 || tableid >= MAX_BLACKJACK_TABLES) return SendClientMessageEx(playerid, -1, "ID meja tidak valid!");
    if(!BlackjackTable[tableid][table_Active]) return SendClientMessageEx(playerid, -1, "Meja tersebut tidak aktif!");
    if(BlackjackTable[tableid][table_PlayerCount] >= MAX_PLAYERS_PER_TABLE) return SendClientMessageEx(playerid, -1, "Meja sudah penuh!");
    if(BlackjackTable[tableid][table_State] != BJ_STATE_WAITING) return SendClientMessageEx(playerid, -1, "Permainan sedang berlangsung, tunggu hingga selesai!");
    
    // Tambahkan pemain ke meja
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        if(BlackjackTable[tableid][table_Players][i] == INVALID_PLAYER_ID) {
            BlackjackTable[tableid][table_Players][i] = playerid;
            BlackjackTable[tableid][table_PlayerCount]++;
            PlayerTable[playerid] = tableid;
            
            // Reset data pemain
            BlackjackPlayer[playerid][bj_Playing] = false;
            BlackjackPlayer[playerid][bj_Bet] = 0;
            
            SendClientMessageEx(playerid, -1, "Anda bergabung ke meja blackjack. Gunakan /bbet [jumlah] untuk memasang taruhan.");
            
            // Jika sudah cukup pemain, mulai permainan
            if(BlackjackTable[tableid][table_PlayerCount] >= 2 && BlackjackTable[tableid][table_State] == BJ_STATE_WAITING) {
                BlackjackTable[tableid][table_State] = BJ_STATE_BETTING;
                BlackjackTable[tableid][table_Timer] = SetTimerEx("BlackjackTimerUpdate", 1000, true, "i", tableid);
                
                // Beritahu semua pemain
                for(new j = 0; j < MAX_PLAYERS_PER_TABLE; j++) {
                    new pid = BlackjackTable[tableid][table_Players][j];
                    if(pid != INVALID_PLAYER_ID) {
                        SendClientMessageEx(pid, -1, "Permainan blackjack akan dimulai. Silahkan pasang taruhan Anda (/bbet [jumlah])");
                    }
                }
            }
            
            break;
        }
    }
    
    return 1;
}

// Command untuk keluar dari meja blackjack
CMD:bleave(playerid, params[]) {
    if(PlayerTable[playerid] == -1) return SendClientMessageEx(playerid, -1, "Anda tidak berada di meja blackjack!");
    
    RemovePlayerFromBlackjack(playerid);
    SendClientMessageEx(playerid, -1, "Anda meninggalkan meja blackjack.");
    
    return 1;
}

// Command untuk memasang taruhan
CMD:bbet(playerid, params[]) {
    new tableid = PlayerTable[playerid];
    if(tableid == -1) return SendClientMessageEx(playerid, -1, "Anda tidak berada di meja blackjack!");
    if(BlackjackTable[tableid][table_State] != BJ_STATE_BETTING) return SendClientMessageEx(playerid, -1, "Saat ini bukan waktu untuk memasang taruhan!");
    if(BlackjackPlayer[playerid][bj_Playing]) return SendClientMessageEx(playerid, -1, "Anda sudah memasang taruhan!");
    
    new bet;
    if(sscanf(params, "i", bet)) return SendClientMessageEx(playerid, -1, "USAGE: /bbet [jumlah]");
    
    if(bet < BLACKJACK_BET_MIN) {
        new string[128];
        format(string, sizeof(string), "Taruhan minimum adalah $%d!", BLACKJACK_BET_MIN);
        return SendClientMessageEx(playerid, -1, string);
    }
    
    if(bet > BLACKJACK_BET_MAX) {
        new string[128];
        format(string, sizeof(string), "Taruhan maksimum adalah $%d!", BLACKJACK_BET_MAX);
        return SendClientMessageEx(playerid, -1, string);
    }
    
    //Cek uang pemain
    if(GetPlayerMoney(playerid) < bet) return SendClientMessageEx(playerid, -1, "Anda tidak memiliki cukup uang!");
    
    //Ambil uang
    GivePlayerMoneyEx(playerid, -bet);
    
    // Set taruhan
    BlackjackPlayer[playerid][bj_Playing] = true;
    BlackjackPlayer[playerid][bj_Bet] = bet;
    
    // Reset kartu pemain
    BlackjackPlayer[playerid][bj_CardCount] = 0;
    BlackjackPlayer[playerid][bj_HandValue] = 0;
    BlackjackPlayer[playerid][bj_HasAce] = false;
    BlackjackPlayer[playerid][bj_Standing] = false;
    BlackjackPlayer[playerid][bj_Busted] = false;
    
    new string[128];
    format(string, sizeof(string), "Anda memasang taruhan sebesar $%d", bet);
    SendClientMessageEx(playerid, -1, string);
    
    // Cek jika semua pemain sudah memasang taruhan
    new allBet = true;
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        new pid = BlackjackTable[tableid][table_Players][i];
        if(pid != INVALID_PLAYER_ID && !BlackjackPlayer[pid][bj_Playing]) {
            allBet = false;
            break;
        }
    }
    
    if(allBet) {
        StartBlackjackGame(tableid);
    }
    
    return 1;
}

// Command untuk hit (ambil kartu)
CMD:bhit(playerid, params[]) {
    new tableid = PlayerTable[playerid];
    if(tableid == -1) return SendClientMessageEx(playerid, -1, "Anda tidak berada di meja blackjack!");
    if(BlackjackTable[tableid][table_State] != BJ_STATE_PLAYING) return SendClientMessageEx(playerid, -1, "Saat ini bukan giliran Anda!");
    if(!BlackjackPlayer[playerid][bj_Playing]) return SendClientMessageEx(playerid, -1, "Anda tidak ikut bermain di ronde ini!");
    if(BlackjackPlayer[playerid][bj_Standing]) return SendClientMessageEx(playerid, -1, "Anda sudah stand!");
    if(BlackjackPlayer[playerid][bj_Busted]) return SendClientMessageEx(playerid, -1, "Anda sudah bust!");
    if(BlackjackTable[tableid][table_Players][BlackjackTable[tableid][table_CurrentPlayer]] != playerid) return SendClientMessageEx(playerid, -1, "Bukan giliran Anda!");
    
    DealCardToPlayer(playerid);
    
    // Cek jika bust
    if(BlackjackPlayer[playerid][bj_Busted]) {
        SendClientMessageEx(playerid, -1, "Bust! Anda melebihi 21.");
        
        // Pindah ke pemain berikutnya
        NextBlackjackPlayer(tableid);
    }
    
    return 1;
}

// Command untuk stand (berhenti ambil kartu)
CMD:bstand(playerid, params[]) {
    new tableid = PlayerTable[playerid];
    if(tableid == -1) return SendClientMessageEx(playerid, -1, "Anda tidak berada di meja blackjack!");
    if(BlackjackTable[tableid][table_State] != BJ_STATE_PLAYING) return SendClientMessageEx(playerid, -1, "Saat ini bukan giliran Anda!");
    if(!BlackjackPlayer[playerid][bj_Playing]) return SendClientMessageEx(playerid, -1, "Anda tidak ikut bermain di ronde ini!");
    if(BlackjackPlayer[playerid][bj_Standing]) return SendClientMessageEx(playerid, -1, "Anda sudah stand!");
    if(BlackjackPlayer[playerid][bj_Busted]) return SendClientMessageEx(playerid, -1, "Anda sudah bust!");
    if(BlackjackTable[tableid][table_Players][BlackjackTable[tableid][table_CurrentPlayer]] != playerid) return SendClientMessageEx(playerid, -1, "Bukan giliran Anda!");
    
    BlackjackPlayer[playerid][bj_Standing] = true;
    SendClientMessageEx(playerid, -1, "Anda memilih untuk stand.");
    
    // Pindah ke pemain berikutnya
    NextBlackjackPlayer(tableid);
    
    return 1;
}

// Command untuk double down
CMD:bdouble(playerid, params[]) {
    new tableid = PlayerTable[playerid];
    if(tableid == -1) return SendClientMessageEx(playerid, -1, "Anda tidak berada di meja blackjack!");
    if(BlackjackTable[tableid][table_State] != BJ_STATE_PLAYING) return SendClientMessageEx(playerid, -1, "Saat ini bukan giliran Anda!");
    if(!BlackjackPlayer[playerid][bj_Playing]) return SendClientMessageEx(playerid, -1, "Anda tidak ikut bermain di ronde ini!");
    if(BlackjackPlayer[playerid][bj_Standing]) return SendClientMessageEx(playerid, -1, "Anda sudah stand!");
    if(BlackjackPlayer[playerid][bj_Busted]) return SendClientMessageEx(playerid, -1, "Anda sudah bust!");
    if(BlackjackTable[tableid][table_Players][BlackjackTable[tableid][table_CurrentPlayer]] != playerid) return SendClientMessageEx(playerid, -1, "Bukan giliran Anda!");
    if(BlackjackPlayer[playerid][bj_CardCount] != 2) return SendClientMessageEx(playerid, -1, "Double down hanya bisa dilakukan pada 2 kartu pertama!");
    
    // Cek uang pemain
    if(GetPlayerMoney(playerid) < BlackjackPlayer[playerid][bj_Bet]) return SendClientMessageEx(playerid, -1, "Anda tidak memiliki cukup uang untuk double down!");
    
    // Ambil uang
    GivePlayerMoneyEx(playerid, -BlackjackPlayer[playerid][bj_Bet]);
    
    // Double taruhan
    BlackjackPlayer[playerid][bj_Bet] *= 2;
    
    // Deal kartu dan langsung stand
    DealCardToPlayer(playerid);
    BlackjackPlayer[playerid][bj_Standing] = true;
    
    new string[128];
    format(string, sizeof(string), "Anda melakukan double down. Taruhan sekarang $%d", BlackjackPlayer[playerid][bj_Bet]);
    SendClientMessageEx(playerid, -1, string);
    
    // Pindah ke pemain berikutnya
    NextBlackjackPlayer(tableid);
    
    return 1;
}

// Fungsi untuk reset meja blackjack
ResetBlackjackTable(tableid) {
    BlackjackTable[tableid][table_Active] = false;
    BlackjackTable[tableid][table_State] = BJ_STATE_WAITING;
    BlackjackTable[tableid][table_PlayerCount] = 0;
    BlackjackTable[tableid][table_CurrentPlayer] = 0;
    BlackjackTable[tableid][table_DealerCardCount] = 0;
    BlackjackTable[tableid][table_DealerValue] = 0;
    BlackjackTable[tableid][table_DealerHasAce] = false;
    
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        BlackjackTable[tableid][table_Players][i] = INVALID_PLAYER_ID;
    }
    
    if(BlackjackTable[tableid][table_Timer] != 0) {
        KillTimer(BlackjackTable[tableid][table_Timer]);
        BlackjackTable[tableid][table_Timer] = 0;
    }
}

// Fungsi untuk mengeluarkan pemain dari meja
RemovePlayerFromBlackjack(playerid) {
    new tableid = PlayerTable[playerid];
    if(tableid == -1) return;
    
    // Hapus dari daftar pemain
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        if(BlackjackTable[tableid][table_Players][i] == playerid) {
            BlackjackTable[tableid][table_Players][i] = INVALID_PLAYER_ID;
            BlackjackTable[tableid][table_PlayerCount]--;
            break;
        }
    }
    
    PlayerTable[playerid] = -1;
    BlackjackPlayer[playerid][bj_Playing] = false;
    
    // Jika tidak ada pemain, reset meja
    if(BlackjackTable[tableid][table_PlayerCount] == 0) {
        ResetBlackjackTable(tableid);
    }
    // Jika pemain sedang bermain, cek apakah perlu pindah ke pemain berikutnya
    else if(BlackjackTable[tableid][table_State] == BJ_STATE_PLAYING &&
            BlackjackTable[tableid][table_Players][BlackjackTable[tableid][table_CurrentPlayer]] == playerid) {
        NextBlackjackPlayer(tableid);
    }
}

// Fungsi untuk memulai permainan blackjack
StartBlackjackGame(tableid) {
    BlackjackTable[tableid][table_State] = BJ_STATE_PLAYING;
    BlackjackTable[tableid][table_CurrentPlayer] = 0;
    
    // Reset dealer
    BlackjackTable[tableid][table_DealerCardCount] = 0;
    BlackjackTable[tableid][table_DealerValue] = 0;
    BlackjackTable[tableid][table_DealerHasAce] = false;
    
    // Deal kartu awal
    // 2 kartu untuk setiap pemain
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        new playerid = BlackjackTable[tableid][table_Players][i];
        if(playerid != INVALID_PLAYER_ID && BlackjackPlayer[playerid][bj_Playing]) {
            DealCardToPlayer(playerid);
            DealCardToPlayer(playerid);
        }
    }
    
    // 2 kartu untuk dealer (1 tertutup)
    DealCardToDealer(tableid);
    DealCardToDealer(tableid);
    
    // Tampilkan kartu dealer
    new dealerCard = BlackjackTable[tableid][table_DealerCards][0][card_value];
    new dealerSuit = BlackjackTable[tableid][table_DealerCards][0][card_suit];
    
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        new playerid = BlackjackTable[tableid][table_Players][i];
        if(playerid != INVALID_PLAYER_ID) {
            new string[128];
            format(string, sizeof(string), "Dealer menunjukkan: %s of %s", CardNames[dealerCard-1], CardSuits[dealerSuit]);
            SendClientMessageEx(playerid, -1, string);
        }
    }
    
    // Cari pemain pertama yang aktif
    FindNextBlackjackPlayer(tableid);
}

// Fungsi untuk deal kartu ke pemain
DealCardToPlayer(playerid) {
    new tableid = PlayerTable[playerid];
    if(tableid == -1) return;
    
    // Generate kartu random
    new cardValue = random(13) + 1; // 1-13 (Ace-King)
    new cardSuit = random(4); // 0-3 (Hearts, Diamonds, Clubs, Spades)
    
    // Simpan kartu
    new cardIndex = BlackjackPlayer[playerid][bj_CardCount];
    BlackjackPlayer[playerid][bj_Cards][cardIndex][card_value] = cardValue;
    BlackjackPlayer[playerid][bj_Cards][cardIndex][card_suit] = cardSuit;
    BlackjackPlayer[playerid][bj_CardCount]++;
    
    // Hitung nilai tangan
    if(cardValue == CARD_ACE) {
        BlackjackPlayer[playerid][bj_HasAce] = true;
        BlackjackPlayer[playerid][bj_HandValue] += 11;
    }
    else if(cardValue >= CARD_JACK) {
        BlackjackPlayer[playerid][bj_HandValue] += 10;
    }
    else {
        BlackjackPlayer[playerid][bj_HandValue] += cardValue;
    }
    
    // Jika lebih dari 21 dan punya Ace, kurangi 10
    if(BlackjackPlayer[playerid][bj_HandValue] > 21 && BlackjackPlayer[playerid][bj_HasAce]) {
        BlackjackPlayer[playerid][bj_HandValue] -= 10;
        BlackjackPlayer[playerid][bj_HasAce] = false;
    }
    
    // Cek jika bust
    if(BlackjackPlayer[playerid][bj_HandValue] > 21) {
        BlackjackPlayer[playerid][bj_Busted] = true;
    }
    
    // Beritahu pemain
    new string[128];
    format(string, sizeof(string), "Anda mendapat: %s of %s. Nilai tangan: %d", 
        CardNames[cardValue-1], CardSuits[cardSuit], BlackjackPlayer[playerid][bj_HandValue]);
    SendClientMessageEx(playerid, -1, string);
}

// Fungsi untuk deal kartu ke dealer
DealCardToDealer(tableid) {
    // Generate kartu random
    new cardValue = random(13) + 1; // 1-13 (Ace-King)
    new cardSuit = random(4); // 0-3 (Hearts, Diamonds, Clubs, Spades)
    
    // Simpan kartu
    new cardIndex = BlackjackTable[tableid][table_DealerCardCount];
    BlackjackTable[tableid][table_DealerCards][cardIndex][card_value] = cardValue;
    BlackjackTable[tableid][table_DealerCards][cardIndex][card_suit] = cardSuit;
    BlackjackTable[tableid][table_DealerCardCount]++;
    
    // Hitung nilai tangan
    if(cardValue == CARD_ACE) {
        BlackjackTable[tableid][table_DealerHasAce] = true;
        BlackjackTable[tableid][table_DealerValue] += 11;
    }
    else if(cardValue >= CARD_JACK) {
        BlackjackTable[tableid][table_DealerValue] += 10;
    }
    else {
        BlackjackTable[tableid][table_DealerValue] += cardValue;
    }
    
    // Jika lebih dari 21 dan punya Ace, kurangi 10
    if(BlackjackTable[tableid][table_DealerValue] > 21 && BlackjackTable[tableid][table_DealerHasAce]) {
        BlackjackTable[tableid][table_DealerValue] -= 10;
        BlackjackTable[tableid][table_DealerHasAce] = false;
    }
}

// Fungsi untuk mencari pemain berikutnya
FindNextBlackjackPlayer(tableid) {
    new found = false;
    
    for(new i = BlackjackTable[tableid][table_CurrentPlayer]; i < MAX_PLAYERS_PER_TABLE; i++) {
        new playerid = BlackjackTable[tableid][table_Players][i];
        if(playerid != INVALID_PLAYER_ID && BlackjackPlayer[playerid][bj_Playing] && 
           !BlackjackPlayer[playerid][bj_Standing] && !BlackjackPlayer[playerid][bj_Busted]) {
            BlackjackTable[tableid][table_CurrentPlayer] = i;
            found = true;
            
            // Beritahu pemain
            SendClientMessageEx(playerid, -1, "Giliran Anda. Gunakan /bhit untuk ambil kartu, /bstand untuk berhenti, atau /bdouble untuk double down.");
            break;
        }
    }
    
    if(!found) {
        // Tidak ada pemain aktif, giliran dealer
        BlackjackTable[tableid][table_State] = BJ_STATE_DEALER_TURN;
        DealerTurn(tableid);
    }
}

// Fungsi untuk pindah ke pemain berikutnya
NextBlackjackPlayer(tableid) {
    BlackjackTable[tableid][table_CurrentPlayer]++;
    FindNextBlackjackPlayer(tableid);
}

// Fungsi untuk giliran dealer
DealerTurn(tableid) {
    // Tampilkan kartu dealer yang tersembunyi
    new dealerCard = BlackjackTable[tableid][table_DealerCards][1][card_value];
    new dealerSuit = BlackjackTable[tableid][table_DealerCards][1][card_suit];
    
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
        new playerid = BlackjackTable[tableid][table_Players][i];
        if(playerid != INVALID_PLAYER_ID) {
            new string[128];
            format(string, sizeof(string), "Dealer menunjukkan kartu kedua: %s of %s. Nilai tangan dealer: %d", 
                CardNames[dealerCard-1], CardSuits[dealerSuit], BlackjackTable[tableid][table_DealerValue]);
            SendClientMessageEx(playerid, -1, string);
        }
    }
    
    // Dealer terus ambil kartu sampai 17 atau lebih
    while(BlackjackTable[tableid][table_DealerValue] < 17) {
        DealCardToDealer(tableid);
        
        dealerCard = BlackjackTable[tableid][table_DealerCards][BlackjackTable[tableid][table_DealerCardCount]-1][card_value];
        dealerSuit = BlackjackTable[tableid][table_DealerCards][BlackjackTable[tableid][table_DealerCardCount]-1][card_suit];
        
        for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) {
            new playerid = BlackjackTable[tableid][table_Players][i];
            if(playerid != INVALID_PLAYER_ID) {
                new string[128];
                format(string, sizeof(string), "Dealer mengambil kartu: %s of %s. Nilai tangan dealer: %d", 
                    CardNames[dealerCard-1], CardSuits[dealerSuit], BlackjackTable[tableid][table_DealerValue]);
                SendClientMessageEx(playerid, -1, string);
            }
        }
    }
    
    // Hitung hasil
    CalculateBlackjackResults(tableid);
}

// Fungsi untuk menghitung hasil 
CalculateBlackjackResults(tableid) { 
    BlackjackTable[tableid][table_State] = BJ_STATE_RESULTS; 
    new dealerBusted = (BlackjackTable[tableid][table_DealerValue] > 21); 
    for(new i = 0; i < MAX_PLAYERS_PER_TABLE; i++) { 
        new playerid = BlackjackTable[tableid][table_Players][i]; 
        if(playerid != INVALID_PLAYER_ID && BlackjackPlayer[playerid][bj_Playing]) { 
            new string[128]; 
            // Jika pemain bust, langsung kalah 
            if(BlackjackPlayer[playerid][bj_Busted]) { 
                format(string, sizeof(string), "Anda bust dan kalah. Kehilangan $%d", BlackjackPlayer[playerid][bj_Bet]); 
                SendClientMessageEx(playerid, COLOR_RED, string);
                BlackjackPlayer[playerid][bj_TotalLost] += BlackjackPlayer[playerid][bj_Bet];
            }
            // Jika dealer bust dan pemain tidak bust, pemain menang
            else if(dealerBusted) {
                new winnings = BlackjackPlayer[playerid][bj_Bet] * 2;
                format(string, sizeof(string), "Dealer bust! Anda menang $%d", winnings - BlackjackPlayer[playerid][bj_Bet]);
                SendClientMessageEx(playerid, COLOR_GREEN, string);
                GivePlayerMoneyEx(playerid, winnings);
                BlackjackPlayer[playerid][bj_TotalWon] += winnings - BlackjackPlayer[playerid][bj_Bet];
            }
            // Jika pemain mendapatkan blackjack
            else if(BlackjackPlayer[playerid][bj_Blackjack]) {
                // Periksa jika dealer juga blackjack (seri)
                if(BlackjackTable[tableid][table_DealerBlackjack]) {
                    format(string, sizeof(string), "Seri! Anda dan dealer sama-sama mendapatkan Blackjack. Bet dikembalikan $%d", BlackjackPlayer[playerid][bj_Bet]);
                    SendClientMessageEx(playerid, COLOR_YELLOW, string);
                    GivePlayerMoneyEx(playerid, BlackjackPlayer[playerid][bj_Bet]);
                }
                else {
                    // Blackjack dibayar 3:2
                    new winnings = BlackjackPlayer[playerid][bj_Bet] + (BlackjackPlayer[playerid][bj_Bet] * 3 / 2);
                    format(string, sizeof(string), "Blackjack! Anda menang $%d", winnings - BlackjackPlayer[playerid][bj_Bet]);
                    SendClientMessageEx(playerid, COLOR_GREEN, string);
                    GivePlayerMoneyEx(playerid, winnings);
                    BlackjackPlayer[playerid][bj_TotalWon] += winnings - BlackjackPlayer[playerid][bj_Bet];
                }
            }
            // Bandingkan nilai kartu
            else {
                new playerValue = BlackjackPlayer[playerid][bj_HandValue];
                new dealerValue = BlackjackTable[tableid][table_DealerValue];
                
                // Pemain menang
                if(playerValue > dealerValue) {
                    new winnings = BlackjackPlayer[playerid][bj_Bet] * 2;
                    format(string, sizeof(string), "Anda menang dengan nilai %d vs %d. Mendapatkan $%d", playerValue, dealerValue, winnings - BlackjackPlayer[playerid][bj_Bet]);
                    SendClientMessageEx(playerid, COLOR_GREEN, string);
                    GivePlayerMoneyEx(playerid, winnings);
                    BlackjackPlayer[playerid][bj_TotalWon] += winnings - BlackjackPlayer[playerid][bj_Bet];
                }
                // Seri
                else if(playerValue == dealerValue) {
                    format(string, sizeof(string), "Seri! Nilai kartu sama %d. Bet dikembalikan $%d", playerValue, BlackjackPlayer[playerid][bj_Bet]);
                    SendClientMessageEx(playerid, COLOR_YELLOW, string);
                    GivePlayerMoneyEx(playerid, BlackjackPlayer[playerid][bj_Bet]);
                }
                // Pemain kalah
                else {
                    format(string, sizeof(string), "Anda kalah dengan nilai %d vs %d. Kehilangan $%d", playerValue, dealerValue, BlackjackPlayer[playerid][bj_Bet]);
                    SendClientMessageEx(playerid, COLOR_RED, string);
                    BlackjackPlayer[playerid][bj_TotalLost] += BlackjackPlayer[playerid][bj_Bet];
                }
            }
            
            // Reset status pemain
            BlackjackPlayer[playerid][bj_Playing] = false;
            BlackjackPlayer[playerid][bj_Busted] = false;
            BlackjackPlayer[playerid][bj_Blackjack] = false;
            BlackjackPlayer[playerid][bj_HandValue] = 0;
            BlackjackPlayer[playerid][bj_Cards] = 0;
            
            // Simpan statistik
            SavePlayerBlackjackStats(playerid);
        }
    }
    
    // Jadwalkan permainan baru
    SetTimerEx("StartBlackjackGame", 5000, false, "i", tableid);
    return 1;
}