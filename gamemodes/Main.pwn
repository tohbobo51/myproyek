/*
     /\  \         /\  \         /\  \         /\  \         /\  \         /\__\         /\  \    
    /::\  \       /::\  \        \:\  \       /::\  \       /::\  \       /::|  |       /::\  \   
   /:/\:\  \     /:/\:\  \        \:\  \     /:/\:\  \     /:/\:\  \     /:|:|  |      /:/\:\  \  
  /::\~\:\  \   /::\~\:\  \       /::\  \   /::\~\:\  \   /::\~\:\  \   /:/|:|  |__   /::\~\:\  \ 
 /:/\:\ \:\__\ /:/\:\ \:\__\     /:/\:\__\ /:/\:\ \:\__\ /:/\:\ \:\__\ /:/ |:| /\__\ /:/\:\ \:\__\
 \/__\:\/:/  / \:\~\:\ \/__/    /:/  \/__/ \:\~\:\ \/__/ \/_|::\/:/  / \/__|:|/:/  / \/__\:\/:/  /
      \::/  /   \:\ \:\__\     /:/  /       \:\ \:\__\      |:|::/  /      |:/:/  /       \::/  / 
      /:/  /     \:\ \/__/     \/__/         \:\ \/__/      |:|\/__/       |::/  /        /:/  /  
     /:/  /       \:\__\                      \:\__\        |:|  |         /:/  /        /:/  /   
     \/__/         \/__/                       \/__/         \|__|         \/__/         \/__/    
*/

/*
UPDATE TANGGAL 17/02/2025

- Fixed Door Family Bisa Di Masukin Semua Orang
	Note:admin capek narikin 1 1 ke dalam interior
- Fixed Garasi Spawn Polisi Nyasar
- Change Weapon Slot Family 5 > 15
- Change Saat Menggunakan Marijuana Mendapatkan Armor + 40% dan stress -25%
- Add Heli Untuk Kepolisian
- Remove anticheat type code (Andro Ke Kick Mulu)
- Fixed Stuck Android (Beta Test)
- Change Progress bar
- Mengurangi Include Agar Cpu Usage Tidak Terlalu Banyak

UPDATE TANGGAL 18/02/2025

- Fixed /sm (perperangan)
- Menambahkan Kembali Cut Scane Saat Spawn Di Bandara
- Change Spawn Pos Saat Spawn Di Bandara
- Remove Actor Starterpack (Bandara)
- Change System Iklan Jadi Bisa Di Akses Semua Warga (Tidak Khusus Vip Lagi)


add uranium password
add all password crafting senjata
add command buat mengganti password crafting senjata for admin
add command buat mengganti password uranium for admin
add command tackle for police 
 - cara menggunakan nya kalian cukup /tackle aktif/off kalian tinggal menonjok orang yang mau kalian tackle
add command buat mengganti password kelolah marijuana for admin
add kelolah marijuana password
add fam type di /families or famlist
add fam type di /famedit
add fam type di /famcreate
change textdraw nama server
change /gun drop itu tidak bisa di akses oleh Polisi
 - dikerenakan nanti ada kejadian yang tidak di ingin kan
add /tac [0-20] polisi freq 1 - 21 dan tidak bisa di akses kecuali faction tersebut dan faction medic,pemerintah,setcraftpass,pedagang,bengkel itu di ganti ke atas freq radio 21 contoh nya kemarin radio kamu 2 bisa di tambah menjadi 22
change penerimaan sinyal ems itu sekarang sudah ada nama yang kirim sinyal saat di acc
change color text saat ads/yellow page
dapat mengganti case phone
remove vehicle starterpack
add new mati daya phone
add command /famonline

20/03/2025
fixed type fam in famedit
fixed type fam in /families
memindahkan tempat crafting senjata
memindahkan tempat crafting kevlar
menambahkan password pada crafting kevlar
menambahkan command /setkevlarpass for admin 
	untuk mengganti password crafting kevlar
add table kevlar password pada database
fixed bug case handphone
fixed accept sinyal ems
fixed mdt polisi di bagian trace
fixed /famonline
add red money pada crafting senjata

21/03/2025
- fixed inputtext whatsapp (tidak bisa menggunakan text contoh : 'iya' ` ,), sekaarng sudah bisa dna ke save ke db
- add command /mute : mute/unmute player (fungsi : ketika ada orang yang mic nya mantul dan triak triak)
- change pos char selection
- change command /ahide for admin level 6-7
- add system otomatis remove weapon ketikan di bawah level 15
- update Anticheat
- fixed android crash saat ganti baju
- remove apply animation saat ganti baju
- add anti bunny hopping
- add command /garkotlist for admin level 4
- add command /doorlist for admin level 4
- add greenzone di carnaval

- Change ui inventory
- Change system move item
- Add Ui Saat Membuka Menu Warung
- Add Ui Saat Membuka Menu Electronic
- Add HOTKEY Keylistener
- Fixed database
- optimized scripts (timer) 
- Lupa

- Add key Emot list Key (L)
- Change Nerf Gas Menjadi 2 Setiap Di Kelola
- Fixed Anticheat
- Fixed Crafting Hacking Card
- Buff Harga Pancingan 2500$
- Buff Harga Umpan 30$
- Add Pancingan Di Market
- Add Umpan Di Market
- Add Senter Di Electronic
- Add System Geledah Untuk Badside, Jadi Ketika Dia Ambil Uang Dan Geledah Itu Target Nya Wajib /e angtang Biar Bisa Karena Banyak Yang Abuse
- Add Dialog Persetujuan Ambil Uang Paksa Ke Target
- Add Textdraw Sks
- Fixed Item Drop, Jadi Sampah,Penyu,Hiu,Kayu,Kayu Potongan,Ayam Hidup,Ayam Potongan,Bulu,Boxmats,Pancingan,Umpan,Batu Kotor,Batu Bersih,Petrol,Pure Oil,Gas Tidak Dapat Di Drop
- Fixed Kelola Jabatan (Bengkel)
- Fixed Kick (Bengkel)
- Add Command /setpaycheck for admin level 5
- Change System Paycheck (Jadi Kalau Sekarang Ambil Nya Di BalaiKota) Dan Sudah Tidak Masuk Otomatis Ke Bank
- Change Dialog Style in Disnaker Menu
- Add System Buy Component Only Ws Dengan Harga 8$/1 Component
- Add Command /setcomponent for admin level 5
- Add System Lebel Otomatis Ke Update Saat Kita setcomponent Atau buycomponent
- Fixed Key M Saat Membuka hp inventory gk ke close
- Fixed Saat Ada Panggilan Masuk inventory gk ke close
- Fixed Key i/f2 Saat Membuka inventory dan hp gk ke close
- Mengurangi Argo Taxi $100 > $50
- Pengurangan Exp Faction Setiap Jam Nya Kan 3k exp sekarang menjadi 1k exp
- Buf Harga Besi $15 > $19
- Fixed Mematikan Phone Di Dalam Kendaraan
- Remove Map Pulau
- Fixed Keybind Z Gak Bisa Switch Voice Mode
- Add System Pajak (Jadi Setiap 3 jam x)
- Remove Tollkit Di Warung
- Menyalakan selalu notif twitter

- Add Animation Saat Ems Treatment
- Fixed buycomponent
- Change New Hbe
- Remove Hbe Lama
- Change Ui Inventory/Grounds
- Add command for workshop /wsa Untuk Announcement (Command nya berfungsi jika dia berada di sekitar workshop)
- Fixed Family Saat Mati Gak Bisa Di Geledah
- Add Command /222 Only Mekanik

- Change Ammo De PD 100 > 300
- Change Key Pemanggilan Signal Ems Otot n > alt
- Change Ammo MP5 150 > 300
- Change Ammo SG 100 > 200
- Add Rompi Swat 300
- Fixed Spawn Heli
- Change Pindahin Aduty PD
- Add 2 check point penjara
- Fixed Destroy Flare
- Fixed Checkpoint Carsteal
- Add Sita Senjata Buat Polisi
- Fixed Checkpoint Penembakan Tidak Hilang
- Add Notif Pencabutan,Kelolah,Jual Kanabis Dan Marijuana To Polisi
- Change System Pajak (Jadi Setiap 5 jam x)

- fixed contact gak ke save
- fixed coordinate penjara polisi
- fixed flare polisi (bisa keliatan sama warga flare yang di map)
- fixed carfting clip
- change location crafting clip
- add password saat ingin mengakses clip
- add command /setclippass for admin 5
- change dialog share contact
- Add SpeedCam
- Fixed Marjun Terlalu Banyak Mendapatkan armor (40 > 15)

29/03/2025
- Add pay logs saat penjual hasil kerja job di **database**
- Add pay logs saat penjual hasil kerja job di **admin logs ingame**
- Remove Crafting Clip Di Bagian Crafting Snejata (Soal Nya Ganti Tempat)
- SKILL WEAPON SOS SET > 1 JADI SOS NYA CUMAN 1 TANGAN
- Fixed Penjara Polisi
- Add Command togspeedtrap for poisi (buat show/hide speedtrap logs)
- Add Map Ganton
- Add Map Stasium
- Add Map Willow
- Add Putar Boombox Di Hp

- Add dialog Saat Penjualan Di Pasar

- Fixed Sqli (tester)
- Fixed Give Item Inventory

*/

#define CGEN_MEMORY 30000
#pragma dynamic 500000

#define YSI_NO_HEAP_MALLOC

/* Includes */
#include <a_samp>

#if defined MAX_PLAYERS
 #undef MAX_PLAYERS
#endif
#define MAX_PLAYERS 150

#include <YSI_Data/y_iterate>		   //By Y_Less from YSI
#include <YSI_Coding\y_timers>        //By Y_Less from YSI
#include <YSI_Server\y_colours>      //By Y_Less from YSI

#include <memory>
#include <map-zones>

#include <a_mysql>
#include <a_zones>
#include <streamer>
#include <sscanf2> 
#include <gvar>
#include <easyDialog> 
#include <Pawn.CMD>
#include <FiTimestamp>
#include <EVF2>

#define AC_USE_CONFIG_FILES true

#include <nex-ac>                   //BY Nexus
#include <nex-ac_id.lang> 

#include <strlib>                   //by Slice
#include <sampvoice>
#include <selection>
#include <garageblock>
#include <sampvoice>
#include <cb>

#include <textdraw-streamer>
#include <progress2>
#include <noclass>

new Count = -1;
new countTimer;
new showCD[MAX_PLAYERS];
new CountText[5][5] =
{
	"~r~1",
	"~y~2",
	"~y~3",
	"~y~4",
	"~y~5"
};

new //up_days,
	//up_hours,
	// up_minutes = 7,
	// up_seconds,
	WorldTime = 7,
	WorldWeather = 1;

new MySQL: g_SQL;

enum
{
	NOTIFICATION_ERROR,
	NOTIFICATION_SUKSES,
	NOTIFICATION_WARNING,
	NOTIFICATION_INFO,
	NOTIFICATION_SYNTAX
};

enum 
{
	DEFAULT_XP = 5
};

/* Player Enums*/
enum E_PLAYERS
{
	pID,
	pUCP[22],
	pExtraChar,
	pChar,
	pName[MAX_PLAYER_NAME],
	pAdminname[MAX_PLAYER_NAME],
	pIP[16],
	pVerifyCode,
	pPassword[65],
	pSalt[17],
	pAdmin,
	pLevel,
	pLevelUp,
	pVip,
	pVipNameCustom[256],
	pVipTime,
	pRegDate[50],
	pLastLogin[50],
	pLastSpawn,
	pMoney,
	pRedMoney,
	STREAMER_TAG_3D_TEXT_LABEL:pMaskLabel,
	STREAMER_TAG_3D_TEXT_LABEL:pLabelDuty,
	pBankMoney,
	pSaldoGopay,
	pTargetGopay,
	pJumlahGopay,
	pBankRek,
	Smartphone,
	pPhone[32],
	pContact,
	pCall,
	pHours,
	pMinutes,
	pSeconds,
	pPaycheck,
	pSkin,
	pFacSkin,
	pGender,
	pUniform,
	pUsingUniform,
	pAge[50],
	pOrigin[32],
	pTinggiBadan,
	pBeratBadan,
	pInDoor,
	pInHouse,
	pInRusun,
	pInBiz,
	pInWs,
	pInFamily,
	Float: pPosX,
	Float: pPosY,
	Float: pPosZ,
	Float: pPosA,
	pInt,
	pWorld,
	Float:pHealth,
    Float:pArmour,
	pHunger,
	pThirst,
	pHungerTime,
	pThirstTime,
	pStress,
	pStressTime,
	pInjured,
	pInjuredTime,
	pOnDuty,
	pFaction,
	pFactionRank,
	pTazer,
	pTaserGun,
	pLastShot,
	pShotTime,
	pStunned,
	pFamily,
	pFamilyRank,
	pJail,
	pJailTime,
	pJailReason[126],
	pJailBy[MAX_PLAYER_NAME],
	pArrest,
	pArrestTime,
	pWarn,
	pJob,
	pMask,
	pMaskID,
	pMaskOn,
	pHelmet,
	pGuns[13],
    pAmmo[13],
	pWeapon,
	Cache:Cache_ID,
	bool: IsLoggedIn,
	LoginAttempts,
	pSpawned,
	pAdminDuty,
	pAdminHide,

	pPajakTime,

	//the star
	pTheStars,
	pTheStarsTime,

	pFreezeTimer,
	pFreeze,
	pSPY,
	pTogPM,
	pTogGlobal,
	pTogWT,
	Text3D:pAdoTag,
	bool:pAdoActive,
	
	pFlare,
	bool:pFlareActive,
	pFlareIcon,

	// //skate
	// bool:pSkateActive,
	// pSkate,

	pTrackCar,
	pTrackHoused,
	pCuffed,
	toySelected,
	bool:PurchasedToy,
	pEditingItem,
	pEditingAmmount,
	pProductModify,
	pCurrSeconds,
	pCurrMinutes,
	pCurrHours,
	pSpec,
	playerSpectated,
	pFriskOffer,
	pDragged,
	pDraggedBy,
	pDragTimer,
	pHelmetOn,
	pSeatBelt,
	pReportTime,
	pAskTime,
	pActivity,
	pActivityStatus,
	pActivityTime,
	Float: ActivityTime,
	Float: NotifyTime,
	pLoadingBar,
	pTimerLoading,
	//Jobs
	pSideJob,
	pSideJobTime,
	pSweeperTime,
	pBusTime,
	pMowerTime,
	pVehicleFaction,
	
	pMenuType,
	pMechVeh,
	pMechColor1,
	pMechColor2,
	pMechTimer,
	pMechSkill,
	pMechExp,

	EditingSAMPAHID,
	EditingPOMID,
	EditingATMID,
	EditingROBERID,
	EditingLADANGID,
	EditingUraniumID,
	EditingDeerID,
	bool: pOnBusJob,
	pTransfer,
	pTransferRek,
	pTransferName[128],
	gEditID,
	gEdit,
	pHead,
 	pPerut,
 	pLHand,
 	pRHand,
 	pLFoot,
 	pRFoot,
 	pDutyTimer,
	pPark,
	pACWarns,
	pACTime,
	pJetpack,
	pArmorTime,
	pLastUpdate,
	pBus,
	pSweeper,
	pMower,
	pSpeedTime,
	pLoopAnim,
	SelectBandara,
	SelectPelabuhan,
	SelectRusun,
	SelectRumah,
	SelectLastExit,
	pSelectItem,
	pSelectItemDrop,
	pSelectItemDelay,
	pListItem,
	pBizListItem,
	pListItemGudang,
	pBagasiTake,
	pVehListItem,
	pStorageGudang,
	pGiveInv,
	pAmountInv,
	pPmin,
	pPsec,
	pBsec,
	pCSmin,
	pCSsec,
	pDipanggilan,
	pTargetAirdrop[10],
	pNamaAirdrop[32],
	pNomorAirdrop[32],
	pNominal,
	pRekening,
	pTargetFamily[10],
	pOnBadai,
	pGSec,
	pDutyPD,
	pDutyPemerintah,
	pDutyEms,
	pDutyBengkel,
	pDutyPedagang,
	pDutyGojek,

	// Mechanic Minigame
	pMinigameActive,
	pMinigameType,
	pMinigameTimer,
	pMinigameWheel,
	Float:pMinigameProgress,
	Float:pMinigameIndicatorPos,
	Float:pMinigameTargetMin,
	Float:pMinigameTargetMax,
	pMinigameDirection,
	pDutyTrans,
	pDutyKargo,
	pRespawnVehJob,
	pTimerRespawn,
	pTimerSpawnKanabis,
	pEditingPenumpang,
	pSignalTime,
	pEarphone,
	pRadio,
	pAsapRokok,
	pHisapRokok,
	pMancing,
	Float: pBeratItem,
	Float: pRusunCapacity,
	Float: pGudangCapacity,
	pJerigenUse,
	bool:pActionActive,
	pHasGudangID,
	pGudangRentTime,
	pOwnedRusun,
	Ktp,
	LastSpawn,
	Spawned,
	pRobSec,
	pRobMin,
	pPaycheckTime,
	pSimA,
	pSimB,
	pSimC,
	pSimATime,
	pSimBTime,
	pSimCTime,
	pGunLic,
	pGunLicTime,
	pHuntingLic,
	pHuntingLicTime,
	pStorageSelect,
	DownloadWhatsapp,
	DownloadSpotify,
	DownloadGojek,
	DownloadTwitter,
	EngineOn,
	pSpeedLimit,
	GarkotVehList,
	ClickSpawn,
	pInviteRusun,
	pInviteHouse,
	pInviteAccept,
	pKompensasi,
	pGoodMood,
	pOwnedHouse,
	pOpenBackpackTimer,
	pDealerVeh,
	pTempName[MAX_PLAYER_NAME],
	pTempValue,
	pTempVehID,
	pTempVehJobID,
	pTempSQLFactMemberID,
	pTempSQLFactRank,
	pTempSQLFamMemberID,
	pTempSQLFamRank,
	pTempText[320],
	pTempPlayerID,
	pTempCallNumber,
	pSKS,
	pSKSTime,
	pSKSNameDoc[128],
	pSKSRankDoc[128],
	pSKSReason[128],
	pSKCK,
	pSKCKTime,
	pSKCKNamePol[128],
	pSKCKRankPol[128],
	pSKCKReason[128],
	pBPJS,
	pBPJSTime,
	pBPJSLevel[128],
	pSKWB,
	pSKWBTime,
	pCarSeller,
    pCarOffered,
    pCarValue,
	pTogAutoEngine,
	phoneShown,
	pCaller,
	pDurringKarung,
	pTarget,
	pVehAudioPlay,
	hsAudioPlay,
	pHotlineTime,
	pTraceTime,
	TwitterName[128],
	TwitterPassword[128],
	Twitter,
	bool: pTurningEngine,
	bool: UsingDoor,
	bool: CurrentlyReadWA,
	bool: CurrentlyReadYellow,
	bool: CurrentlyReadTwitter,

	bool: EMSDuringReviving,

	pTrashmaster,
	pTrashmasterDelay,
	pLastVehicle,
	pDeliveryTime,
	pForkliftTime,

	/*handshup system*/
	bool:pHandsUp,
	bool:pMati,


	/* Dragging */
	pDragOffer,
	pFriendHouseID,

	pFixmeTime,
	pTempOlah,
	pClaimStarterpack,

	bEditID,
	bEdit,

	pEditSlotID,

	/* Taxi Stuffs */
	pTaxiDuty,
	pTaxiOrder,
	pTaxiPlayer,
	pTaxiFee,
	pTaxiRunDistance,
	Float:tPos[3],
	
	//saving
	aReceivedReports,
	aDutyTimer,
	pFashionItem,

	//notsave
	bool: AirdropPermission,
	bool:phoneAirplaneMode,
	bool:phoneDurringConversation,
	bool:phoneIncomingCall,
	phoneCallingWithPlayerID,
	phoneCallingTime,
	phoneCallRingtone[128],

	pFactDutyTimer,
	Float:pMapSettings,
	pMapRender,
	pSuspectTimer,
	bool: menuShowed,
	playerClickSpawn,
	pTogSpy,
	OnlineTimer,
    PlayTime,
    PlayTimer,
	PlaySessionStart,
	bool: ToggleFPS,
	Timer:DokterLokalTimer,

	pCheckpoint,
	pXmasTime,
	pTogAC,
	pStyleNotif,
	
	pShowFooter,
	pFooterTimer,

	//Afk System
	Float:pAFKPos[6],
	pAFK,
	pAFKTime,
	pAFKCode,

	pEditTextObject,
	pHUDMode,
	bool: pNameTagShown,
	bool: pNtagShown,

	bool: pFlashShown,
	bool: pFlashOn,

	pCallCop,
	pCallCopTime,
	pCallCopLocation,
	pCallCopReason,

	//smugler
    pSmugglerFind,
    pSmugglerPick,

	phoneTimerID,

	phoneWallpaper,
	phonecase,
	pNotifTwitter,
	pPhoneOff,
	pNotifAC,
	Timer:pLoadingPhone,
	pJobVehicle,
	pShareContact,
	pVehicleSlotPlus,
	pHouseSlotPlus,
	pCarImmun,
	pEnterCar,
	pEnterCarTick,
	pJustSpawn,
	pWHProtect,
	pOpenPhone,
	pDelayYellowPage,
	pDelayTwitter
};
new AccountData[MAX_PLAYERS][E_PLAYERS];
new selectItemWarung[MAX_PLAYERS];

enum
{
	DIALOG_MAKE_CHAR,
	DIALOG_CHARLIST,
	DIALOG_VERIFYCODE,
	DIALOG_UNUSED,
    DIALOG_LOGIN,
    DIALOG_REGISTER,
    DIALOG_AGE,
	DIALOG_ORIGIN,
	DIALOG_TINGGIBADAN,
	DIALOG_BERATBADAN,
	DIALOG_GENDER,
	DIALOG_TOY,
	DIALOG_TOYEDIT,
	DIALOG_TOYEDIT_ANDROID,
	DIALOG_TOYPOSISI,
	DIALOG_TOYPOSISIBUY,
	DIALOG_TOYVIP,
	DIALOG_TOYPOSX,
	DIALOG_TOYPOSY,
	DIALOG_TOYPOSZ,
	DIALOG_TOYPOSRX,
	DIALOG_TOYPOSRY,
	DIALOG_TOYPOSRZ,
	DIALOG_TOYPOSSX,
	DIALOG_TOYPOSSY,
	DIALOG_TOYPOSSZ,
	DIALOG_HELP,
	DIALOG_EDITBONE,
	DIALOG_REPORTS,
	DIALOG_REPORTSREPLY,
	DIALOG_ASKS,
	DIALOG_ASKSREPLY,
	DIALOG_HEALTH,
	DIALOG_TDM,
	DIALOG_DISNAKER,
	DIALOG_MEMBERI,
	DIALOG_SETAMOUNT,
	DIALOG_MODIF,
	DIALOG_MODIF_VELG,
	DIALOG_MODIF_SPOILER,
	DIALOG_MODIF_HOODS,
	DIALOG_MODIF_VENTS,
	DIALOG_MODIF_LIGHTS,
	DIALOG_MODIF_EXHAUSTS,
	DIALOG_MODIF_FRONT_BUMPERS,
	DIALOG_MODIF_REAR_BUMPERS,
	DIALOG_MODIF_ROOFS,
	DIALOG_MODIF_SIDE_SKIRTS,
	DIALOG_MODIF_BULLBARS,
	DIALOG_MODIF_NEON,
	
	DIALOG_STREAMER_CONFIG,
	DANN_RENTAL,
	DANN_UNRENT,
	DANN_ASURANSI,
	DANN_BUYALATSTEAL,
	DANN_PILIHSPAWN,
	DANN_PICKUPVEH,
	DANN_DYNHELP,

	//dialogmixer
	// DIALOG_MIXER,

	DIALOG_RUSUN,
	DIALOG_RUSUN_OWNED,
	DIALOG_RUSUN_BRANKAS,
	DIALOG_RUSUN_INVITE,
	DIALOG_RUSUN_INVITECONF,
	DIALOG_RUSUN_BROPTION,
	DIALOG_RUSUN_MENU,
	DIALOG_RUSUNOWNED,
	DIALOG_RUSUNOPENSTORAGE,
	DIALOG_RUSUNITEM,

	DIALOG_RUSUNVAULT_DEPOSIT,
	DIALOG_RUSUNVAULT_WITHDRAW,
	DIALOG_RUSUNVAULT_IN,
	DIALOG_RUSUNVAULT_OUT,
	
	DIALOG_KAYU_START,
	DIALOG_SUSU_START,
	DIALOG_MINYAK_START,
	DIALOG_AYAM_START,
	DIALOG_MOWER_START,
	DIALOG_STEAL_SHOP,
	DIALOG_IKEA_MENU,
	DIALOG_IKEA_BESI,
	DIALOG_IKEA_BERLIAN,
	DIALOG_IKEA_EMAS,
	DIALOG_IKEA_TEMBAGA,
	DIALOG_IKEA_AYAMKEMAS,
	DIALOG_IKEA_KAYUKEMAS,
	DIALOG_IKEA_GAS,
	DIALOG_IKEA_PAKAIAN,

	DIALOG_FARMER_OLAH,
	DIALOG_LOUNGES_MASAK,
	DIALOG_HUNTING_SELL,
	DIALOG_BAGASISTORAGE,

	DIALOG_GUDANG,
	DIALOG_GUDANGSTOP,
	DIALOG_GUDANGOPTION,
	DIALOG_GUDANGOWNED,
	DIALOG_GUDANGITEM,
	DIALOG_GUDANGDEPOSIT,
	DIALOG_GUDANGWITHDRAW,

	LokasiGps,
	LokasiUmum,
	LokasiPekerjaan,
	LokasiHobi,
	LokasiPertokoan,
	DialogWarung,
	BeliNasduk,
	BeliAqua,
	BeliUmpan,
	DialogGadget,
	DANN_BOOMBOX,
	DANN_BOOMBOX1,
	DialogSpotify,
	DialogSpotify1,
	DialogFish,
	DialogCargo,
	DialogSpawn,
	DialogDropItem,
	DialogTransfer,
	DialogTransfer1,
	DialogBankConfirm,
	DialogElist,
	// -----------
	DialogShowroom,
	DialogAsuransi,
	// -------------
	DialogKontak,
	DialogOpenContact,
	DialogContact,
	DialogTelepon,
	DialogContactMenu,
	DialogGarasiKota,
	DialogMyVeh,
	DialogTrackMyVeh,
	DialogBagasi,
	// -----------
	DialogToyEdit,

	DIALOG_CRAFTING,
	DIALOG_CRAFT_CLIP,
	DIALOG_CRAFTINGCONF,
	DIALOG_FAMILY_PANEL,
	DIALOG_FAMSTAKE_REDMONEY,
	DIALOG_FAMSTAKE_MONEY,
	DIALOG_FAMGARAGE_OUT,
	DIALOG_BLACKMARKET,
	
	DIALOG_DEPOSIT_POLICE,
	DIALOG_WITHDRAW_POLICE,

	DIALOG_POLVAULT,
	DIALOG_POLVAULT_DEPOSIT,
	DIALOG_POLVAULT_WITHDRAW,
	DIALOG_POLVAULT_IN,
	DIALOG_POLVAULT_OUT,

	DIALOG_POLICE_PANEL,
	DIALOG_POLICE_BOSDESK,
	DIALOG_POLICESETRANK,
	DIALOG_POLICEKICKMEMBER,
	DIALOG_RANK_SET_POLISI,
	DIALOG_POLICE_INVITE,
	DIALOG_POLICE_GARAGE,
	DIALOG_POLICE_GARAGE_BUY,
	DIALOG_POLICE_GARAGE_DEL,
	DIALOG_POLICE_HELI_GARAGE,
	DIALOG_POLICE_HELI_BUY,
	DIALOG_POLICE_HELI_GARAGE_OUT,
	DIALOG_POLICE_GARAGE_OUT,
	DIALOG_POLICE_IMPOUND,
	DIALOG_POLICE_TAKE_IMPOUND,
	DIALOG_FEDERAL_GARAGE,
	DIALOG_FEDERAL_GARAGE_BUY,
	DIALOG_FEDERAL_GARAGE_OUT,
	DIALOG_PDM,
	DIALOG_PDM_VEHICLE,
	DIALOG_PDM_VEHICLE_IMPOUND,
	DIALOG_PDM_OBJECT,
	DIALOG_ADD_HKRIMINAL,
	DIALOG_REMOVE_HKRIMINAL,
	
	DIALOG_EMS_PANEL,
	DIALOG_EMS_GARAGE,
	DIALOG_EMS_GARAGE_BUY,
	DIALOG_EMS_GARAGE_TAKEOUT,
	DIALOG_EMS_GARAGE_DELETE,
	DIALOG_EMSBRANKAS,
	DIALOG_EMSBKCONFIRM,
	DIALOG_EMS_BOSDESK,
	DIALOG_EMS_INVITE,
	DIALOG_EMS_LOCKER,
	DIALOG_EMS_CLOTHES,
	DIALOG_EMSSETRANK,
	DIALOG_EMSKICKMEMBER,
	DIALOG_RANK_SET_EMS,
	DIALOG_DEPOSIT_EMS,
	DIALOG_WITHDRAW_EMS,

	DIALOG_EMSVAULT,
	DIALOG_EMSVAULT_DEPOSIT,
	DIALOG_EMSVAULT_WITHDRAW,
	DIALOG_EMSVAULT_IN,
	DIALOG_EMSVAULT_OUT,
	// ------------------ PEMERINTAH
	DIALOG_PEMERINTAH_LOCKER,
	DIALOG_PEMERINTAH_LOCKERMALE,
	DIALOG_PEMERINTAH_LOCKERFEMALE,
	DIALOG_PEMERINTAH_PANEL,
	DIALOG_PEMERINTAH_BOSDESK,
	DIALOG_PEMERSETRANK,
	DIALOG_PEMERKICKMEMBER,
	DIALOG_RANK_SET_PEMERINTAH,
	DIALOG_PEMERINTAH_INVITE,
	DIALOG_PEMERINTAH_DEPOSIT,
	DIALOG_PEMERINTAH_WITHDRAW,
	DIALOG_PEMER_GARAGE,
	DIALOG_PEMER_GARAGE_BUY,
	DIALOG_PEMER_GARAGE_TAKEOUT,
	DIALOG_PEMER_GARAGE_DELETE,
	
	DIALOG_PEMERVAULT,
	DIALOG_PEMERVAULT_DEPOSIT,
	DIALOG_PEMERVAULT_WITHDRAW,
	DIALOG_PEMERVAULT_IN,
	DIALOG_PEMERVAULT_OUT,

	DIALOG_PEDSETRANK,
	DIALOG_PEDKICKMEMBER,
	DIALOG_RANK_SET_PEDAGANG,
	DIALOG_LOCKERPEDAGANG,
	DIALOG_PEDAGANG_GARAGE,
	DIALOG_PEDAGANG_GARAGE_BUY,
	DIALOG_PEDAGANG_GARAGE_TAKEOUT,
	DIALOG_PEDAGANG_GARAGE_DELETE,

	DIALOG_BENGKEL_PANEL,
	DIALOG_BENGKEL_LOCKER,
	DIALOG_BENGKEL_CLOTHES,
	DIALOG_BENGKEL_GARAGE,
	DIALOG_MODIF_COLOROPTION,
	DIALOG_MODIF_WARNA1,
	DIALOG_MODIF_WARNA2,
	DIALOG_MODIF_PAINTJOB,
	DIALOG_BENGKELBUYVEH,
	DIALOG_BENGKELTAKEVEH,
	DIALOG_BENGKEL_BRANKASOPTION,
	DIALOG_BENGKEL_BRANKASITEM,
	DIALOG_BENGKEL_BRANKASCONF,
	DIALOG_BENGKEL_BRANKASREPAIRKIT,
	DIALOG_BENGKEL_BRANKASTOOLSKIT,
	DIALOG_BENGKEL_BOSDESK,
	DIALOG_BENGKEL_INVITE,
	DIALOG_BENGKELSETRANK,
	DIALOG_BENGKELKICKMEMBER,
	DIALOG_RANK_SET_BENGKEL,
	DIALOG_BENGKELDELCAR,
	DIALOG_DEPOSIT_BENGKEL,
	DIALOG_WITHDRAW_BENGKEL,

	DIALOG_BENGVAULT,
	DIALOG_BENGVAULT_DEPOSIT,
	DIALOG_BENGVAULT_WITHDRAW,
	DIALOG_BENGVAULT_IN,
	DIALOG_BENGVAULT_OUT,

	DIALOG_BOSDESK_GOJEK,
	DIALOG_DEPOSIT_GOJEK,
	DIALOG_WITHDRAW_GOJEK,
	DIALOG_RANK_SET_GOJEK,
	DIALOG_GOJEK_INVITECONF,
	DIALOG_GOJEK_LOCKER,

	DIALOG_GOJEK_GARAGE,
	DIALOG_GOJEK_GARAGE_BUY,
	DIALOG_GOJEK_GARAGE_TAKEOUT,
	DIALOG_GOJEK_GARAGE_DELETE,

	DIALOG_GOJVAULT,
	DIALOG_GOJVAULT_DEPOSIT,
	DIALOG_GOJVAULT_WITHDRAW,		
	DIALOG_GOJVAULT_IN,	
	DIALOG_GOJVAULT_OUT,

	DIALOG_PAYGOJEK,
	DIALOG_PAYGOJEKAMOUNT,
	DIALOG_TOPUPGOJEK,
	DIALOG_PESANGORIDE,
	DIALOG_PESANGORIDECONF,
	DIALOG_PESANGOCAR,
	DIALOG_PESANGOCARPENUMPANG,
	DIALOG_PESANGOCARCONF,
	DIALOG_GOPAYWITHDRAW,
	
	DIALOG_GOFOOD_PESAN,
	DIALOG_PESAN_NASIGORENG,
	DIALOG_PESAN_BAKSO,
	DIALOG_PESAN_NASIPECEL,
	DIALOG_PESAN_BUBUR,
	DIALOG_PESAN_SUSU,
	DIALOG_PESAN_ESTEH,
	DIALOG_PESAN_KOPI,
	DIALOG_PESAN_CHOCOMATCH,
	DIALOG_PESAN_NOTES,
	
	DIALOG_ITEM_PICKUP,

	DIALOG_FAMSVAULT,
	DIALOG_FAMSVAULT_DEPOSIT,
	DIALOG_FAMSVAULT_WITHDRAW,
	DIALOG_FAMSRM_VAULT,
	DIALOG_FAMSRM_DEPOSIT,
	DIALOG_FAMSRM_WITHDRAW,
	DIALOG_FAMSVAULT_IN,
	DIALOG_FAMSVAULT_OUT,
	DIALOG_FAMSBRANKAS,
	DIALOG_FAMS_WEAPON,
	DIALOG_FAMILIESSETRANK,
	DIALOG_FAMILIESKICKMEMBER,
	DIALOG_RANK_SET_FAMILIES,

	DIALOG_VEHICLE_MENU,
	DIALOG_VHOLSTER,
	DIALOG_VHOLSTER_WITHDRAW,
	DIALOG_GIVEKEY_SELECT,
	DIALOG_KEYLIST_SELECT,
	DIALOG_KEYREVOKEALL_SELECT,

	DIALOG_SPORTSTORE,

	/* Trans Dialog */
	DIALOG_TRANSORDER,
	DIALOG_TRANS_LOCKER,
	DIALOG_TRANS_DESK,
	DIALOG_TRANSSETRANK,
	DIALOG_TRANSKICKMEMBER,
	DIALOG_RANK_SET_TRANS,
	DIALOG_TRANS_INVITECONF,
	DIALOG_DEPOSIT_TRANS,
	DIALOG_WITHDRAW_TRANS,
	DIALOG_TRANS_GARAGE,
	DIALOG_TRANS_GARAGE_TAKEOUT,
	DIALOG_TRANS_GARAGE_BUY,
	DIALOG_TRANS_GARAGE_DELETE,

	DIALOG_TRANSVAULT,
	DIALOG_TRANSVAULT_DEPOSIT,
	DIALOG_TRANSVAULT_WITHDRAW,
	DIALOG_TRANSVAULT_IN,
	DIALOG_TRANSVAULT_OUT,

	/*Bagasi Dialog*/
	DIALOG_BAGASI,
	DIALOG_BAGASI_DEPOSIT,
	DIALOG_BAGASI_IN,
	DIALOG_BAGASI_WITHDRAW,
	DIALOG_BAGASI_OUT,

	/*Event Dialog*/
	DIALOG_EVENT_SETTING,
	DIALOG_EVENT_REDSKIN,
	DIALOG_EVENT_REDWEAP1,
	DIALOG_EVENT_REDWEAP2,
	DIALOG_EVENT_REDWEAP3,

	DIALOG_EVENT_BLUESKIN,
	DIALOG_EVENT_BLUEWEAP1,
	DIALOG_EVENT_BLUEWEAP2,
	DIALOG_EVENT_BLUEWEAP3,

	DIALOG_EVENT_WWID,
	DIALOG_EVENT_INTID,
	DIALOG_EVENT_TIME,
	DIALOG_EVENT_TARGETSCORE,
	DIALOG_EVENT_PARTICIPRIZE,
	DIALOG_EVENT_PRIZE,
	DIALOG_EVENT_HEALTH,
	DIALOG_EVENT_ARMOUR,

	/* Dialog Aridrop */
	DIALOG_AIRDROP,
	DIALOG_AIRDROPDISPLAY,
	DIALOG_AIRDROP_CONF,
	DIALOG_ADD_CONTACT,
	DIALOG_ADD_CONTACTNUMB,
	DIALOG_EDIT_CONTACTNAME,
	DIALOG_EDIT_CONTACTNUMBER,

	/* Dialog Garasi Umum */
	DIALOG_GARKOT_OUT,

	/* Dialog Gudang */
	DIALOG_GUDANG_BUY,
	DIALOG_GUDANG_OPTION,
	DIALOG_GUDANGVAULT,
	DIALOG_GUDANGVAULT_DEPOSIT,
	DIALOG_GUDANGVAULT_WITHDRAW,
	DIALOG_GUDANGVAULT_IN,
	DIALOG_GUDANGVAULT_OUT,

	/* Score Board Admin Menu */
	DIALOG_CLICKPLAYER,
	DIALOG_BANNEDTIME,
	DIALOG_BANNEDREASON,

	/* Dialog Asuransi */
	DIALOG_ASURANSI_LS,
	DIALOG_ASURANSI_LV,

	/* Dialog Fact Garage */
	DIALOG_FACTION_GARAGE_MENU,
	DIALOG_FACTION_GARAGE1,
	DIALOG_FACTION_GARAGE2,
	DIALOG_FACTION_GARAGE3,
	DIALOG_FACTION_GARAGE4,
	DIALOG_FACTION_GARAGE5,
	DIALOG_FACTION_GARAGE6,

	/* Dialog warung */
	DIALOG_WARUNG,
	DIALOG_WARUNG_ELEKTRONIK, 
	DIALOG_BUY_NASIUDUK,
	DIALOG_BUY_AIRMINERAL, 
	DIALOG_BUY_UMPAN,

	/* Petani Dialog */
	DIALOG_BUY_SEEDS,
	DIALOG_BIBIT_PADI,
	DIALOG_BIBIT_TEBU,
	DIALOG_BIBIT_CABE,

	/* Dialog House Keys */
	DIALOG_HKEYS, 
	DIALOG_HKEYS_ADD,
	DIALOG_HKEYS_REMOVE,
	DIALOG_HOUSEGARAGE_OUT,
	DIALOG_HOUSEHELIPAD_OUT,
	DIALOG_HOUSE_BRANKAS,
	DIALOG_HOUSE_INVITE,
	DIALOG_HOUSE_INVITECONF,
	DIALOG_HOUSEVAULT,
	DIALOG_HOUSEVAULT_DEPOSIT,
	DIALOG_HOUSEVAULT_WITHDRAW,
	DIALOG_HOUSEVAULT_IN,
	DIALOG_HOUSEVAULT_OUT,
	DIALOG_WEAPON_CHEST,

	DIALOG_FIXMEACC,
	DIALOG_ADMIN_HELP,
	DIALOG_DYNAMIC_HELP,

	DIALOG_SWEEPER_START,
	DIALOG_DELIVERY_START,
	DIALOG_FORKLIFT_START,
	DIALOG_RECYCLER_START,
	DIALOG_TRASHMASTER_START,

	/* Dialog Clothes */
	DIALOG_CLOTHES,
	DIALOG_CLOTHES_DELETE,

	/* Atms Dialog */
	DIALOG_ATM_WITHDRAW,
	DIALOG_ATM_DEPOSIT,
	DIALOG_ATM_TRANSFER,
	DIALOG_ATM_TRANSFER1,

	/* Carsteal Dialog */
	DIALOG_CARSTEAL_SHOP,

	/*Whatsapp Dialog*/
	DIALOG_WHATSAPP_CHAT,
	DIALOG_WHATSAPP_CHAT_EMPTY,
	DIALOG_WHATSAPP_SEND,
	DIALOG_GIVEKEY_RADIAL,
	DIALOG_WARGA_MENU,
	DIALOG_WARGA_PAY,
	DIALOG_WARGA_DOCS,
	DIALOG_PANEL_CITIZEN,
	DIALOG_TRADE_REQUEST,
	DIALOG_TRADE_MENU,
	DIALOG_TRADE_CASH,
	DIALOG_TRADE_ITEM_SELECT,
	DIALOG_TRADE_ITEM_QTY,
	DIALOG_ADMIN_QPANEL_TARGET,
	DIALOG_ADMIN_QPANEL_MENU,

	/*Yellow Pages*/
	DIALOG_YELLOW_PAGE,
	DIALOG_YELLOW_PAGE_MENU,
	DIALOG_YELLOW_PAGE_EMPTY,
	DIALOG_YELLOW_PAGE_SEND,
	DIALOG_YELLOW_CALL,

	/*Tweets Dialog*/
	DIALOG_TWITTER_SIGN,
	DIALOG_TWITTER_SIGNPASSWORD,
	DIALOG_TWITTER_LOGIN,
	DIALOG_TWITTER_LOGINPASSWORD,
	DIALOG_TWITTER_POST,
	DIALOG_TWITTER_POST_EMPTY,
	DIALOG_TWITTER_POST_SEND,

	/*Invoice Dialog*/
	DIALOG_INVOICE_NAME,
    DIALOG_INVOICE_COST,
    DIALOG_PAY_INVOICE,

	/*Player dialog*/
	DIALOG_PLAYER_MENU,
	DIALOG_PLAYER_DOKUMENT,

	DIALOG_SELECT_SPAWN,
	DIALOG_SELECT_SPAWNEXPIRED,

	DIALOG_SHOWROOM_MENU,
	DIALOG_SHOWROOM_SELL,

	DIALOG_WEAPONSHOP,
	DIALOG_VIP_NAME,
	DIALOG_SELLFISH_ILEGAL,
	DIALOG_DISPLAYBANNED,
	DIALOG_RADIO_FREQ,
	DIALOG_VOICEMODE,
	DIALOG_VOICEKEYS,
	DIALOG_INVENTORY,
	DIALOG_CHANGE_PASSWORD,
	DIALOG_MYV_MENU,
	DIALOG_VEHICLE_DETAIL,
	DIALOG_UPGRADE,
	DIALOG_MODSHOP,
}

new AksesorisHat[87] =
{
	18953, 18954, 19554, 18960, 18974, 19067, 19068, 19069, 18891, 18892, 18893, 18894, 18895, 18896, 18897, 18898, 18899, 18900, 18908,
	18940, 18939, 18941, 18942, 18943, 19160, 18636, 18926, 18927, 18928, 18929, 18930, 18931, 18932, 18933, 18934, 18935, 18952, 18976, 18977, 
	18979, 19077, 19517, 19161, 19162, 2054, 18961, 18964, 18965, 18966, 19558, 18955, 18956, 18957, 18958, 18959, 18638, 19520, 18947, 18948, 
	19064,19065, 19066, 18975, 19516, 18639, 18645, 18962, 19095, 19096, 19099, 19100, 19487, 19136, 19330, 19331, 19137, 19528, 19093,
	3002, 3000, 3100, 3105, 3104, 3101, 3102, 3103, 3002,
};

new BackpackToys[7] = 
{
	11745, 19559, 1550, 3026, 371, 1210, 11738,
};

new GlassesToys[33] = 
{
	19138, 19139, 19140, 19006, 19007, 19008, 19009, 19010, 19011, 19012, 19013, 19014, 19015, 19016, 19017, 19018,
	19019, 19020, 19021, 19022, 19023, 19024, 19025, 19026, 19027, 19028, 19029, 19030, 19031, 19032, 19033, 19034, 19035,
};

new AksesorisToys[38] = 
{
	19515, 19142, 19621, 19623, 
	19584, 19591, 19592, 2226, 19878, 
	19038, 19036, 19163, 18919, 18912, 
	18913, 18914, 18915, 18916, 18917, 
	18918, 18911, 18920, 11704, 19037, 
	19317, 19318, 336, 339, 325, 19625,
	19801, 19163, 19904, 2226, 2487, 2614,
	11712, 18635,
};

new ClothesSkinMale[177] = 
{
	1, 2, 3, 4, 5, 6, 7, 8, 14, 15, 16, 17, 18, 19, 21, 22, 23, 24, 25, 26, 27, 28, 29,
	30, 32, 33, 34, 35, 36, 37, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 58, 59, 60, 61,
	62, 66, 67, 68, 71, 72, 73, 78, 79, 80, 81, 82, 83, 84, 86, 94, 95, 96, 97, 98, 100,
	101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116,
	117, 118, 120, 122, 123, 124, 125, 126, 127, 128, 132, 133, 134, 135, 136, 137, 142, 
	143, 144, 146, 147, 149, 153, 154, 156, 158, 159, 160, 161, 162, 168, 170, 173, 174,
	175, 176, 177, 179, 180, 182, 183, 184, 185, 186, 187, 200, 202, 203, 204, 206,
	208, 209, 210, 212, 213, 217, 220, 221, 222, 223, 229, 230, 234, 235, 236, 239, 240,
	241, 242, 247, 248, 249, 250, 252, 253, 254, 255, 258, 259, 260, 261, 262, 264, 269,
	270, 271, 272, 273, 289, 290, 291, 292, 293, 296, 297, 299
};

new ClothesSkinFemale[60] = 
{
	9, 10, 11, 12, 13, 31, 38, 39, 40, 41, 53, 54, 55, 56, 63, 64, 65, 69, 75, 76, 77, 87,
	88, 89, 90, 91, 93, 129, 130, 131, 138, 139, 140, 145, 148, 151, 152, 157, 169, 178, 191,
	193, 192, 195, 196, 197, 198, 199, 205, 207, 211, 214, 216, 219, 224, 225, 226, 233, 237, 
	251
};

stock const Float: SpawnPelabuhan[][] = {
	{2744.2397,-2449.5349,13.6950,271.9706},
	{2744.3171,-2457.2017,13.6950,268.3150},
	{2738.2039,-2454.5254,13.6950,269.7540}
};

stock const Float: SpawnBandara[][] = {
	{1694.7468, -2332.3428, 13.5469, 0.0377},
	{1698.4928, -2329.6863, 13.5469, 49.2119}
};

stock const Float: SpawnVenturas[][] = {
	{1677.6498, 1447.7649, 10.7757, 271.1616},
	{1674.8794, 1444.2119, 10.7890, 270.9187}
};

new //vehLastPlayerID[MAX_VEHICLES],
    vehLastEntered[MAX_VEHICLES],
    lastVehicleID[MAX_PLAYERS],
    vehLastExited[MAX_VEHICLES];
    //Float:vehLastHealth[MAX_VEHICLES];

new g_PlayerSpectating[MAX_PLAYERS];
new bool:gPoliceAlertCP[MAX_PLAYERS]; 
// new bool:pFailedMixerJob[MAX_PLAYERS];


stock AC_TogglePlayerSpectating(playerid, toggle){

	g_PlayerSpectating[playerid] = toggle;
	SetPVarInt(playerid, "SpectateGuard", 1);
	return TogglePlayerSpectating(playerid, toggle);
}

#if defined _ALS_TogglePlayerSpectating
	#undef TogglePlayerSpectating
#else
	#define _ALS_TogglePlayerSpectating
#endif
#define TogglePlayerSpectating AC_TogglePlayerSpectating


stock vAC_PutPlayerInVehicle(playerid, vehicleid, seatid)
{
	AccountData[playerid][pCarImmun] = 1;
	SetTimerEx("internal_resetImmun", 3000, false, "d", playerid);
	return PutPlayerInVehicle(playerid, vehicleid, seatid);
}

#if defined _ALS_PutPlayerInVehicle
  #undef PutPlayerInVehicle
#else
	#define _ALS_PutPlayerInVehicle
#endif

#define PutPlayerInVehicle vAC_PutPlayerInVehicle

stock DisableRemoteVehicleColEx(playerid, disable) {
	if(disable) {
		SetPVarInt(playerid, "NoCol", 1);
	}
	else {
		DeletePVar(playerid, "NoCol");
	}
	return DisableRemoteVehicleCollisions(playerid, disable);
}


stock Float:GetVehicleSpeed(vehicleid)
{
    new
        Float:x,
        Float:y,
        Float:z,
        Float:speed;
        
    GetVehicleVelocity(vehicleid, x, y, z);
    speed = VectorSize(x, y, z);
    
    return floatmul(speed, 195.12); 
}

stock SetVehicleSpeed(vehicleid, Float:speed, bool:kmh = true)
{
	new Float:vPos[4];
	GetVehicleVelocity(vehicleid,vPos[0],vPos[1],vPos[2]);
    GetVehicleZAngle(vehicleid, vPos[3]);
    speed = (kmh ? (speed / 136.666667) : (speed / 85.4166672));
    return SetVehicleVelocity(vehicleid, speed * floatsin(-vPos[3], degrees), speed * floatcos(-vPos[3], degrees), (vPos[2]-0.005));
}

#include "Modules/utils/utils_defines.pwn"
#include "Modules/utils/utils_vehiclevars.pwn"
#include "Modules/utils/utils_enums.pwn"
#include "Modules/utils/utils_variable.pwn"
#include "Modules/utils/utils_colours.pwn"
#include "Modules/utils/utils_textdraws.pwn"
#include "Modules/voucher/voucher_functions.pwn"

#include "Modules/systems/Pickup.pwn"
#include "Modules/systems/JobVehicles.pwn"
#include "Modules/systems/systems_tax.pwn"
#include "Modules/systems/Waypoint.inc"
#include "Modules/CharSelection/Textdraw2.pwn"
#include "Modules/CharSelection/Function2.pwn"

/*Paintball*/
// #include "Modules/systems/Paintball.pwn"

/*Blackjack*/
//#include "Modules/systems/Blackjack.pwn"

/*Clothes System*/
#include "Modules/toys/toys.pwn"
#include "Modules/toys/toys_helmet.pwn"
#include "Modules/clothes/clothes_functions.pwn"

#include "Modules/fuel_system/fuel_functions.pwn"
#include "Modules/PlayerStuff/player_slot.pwn"
#include "Modules/Gym/gym_functions.pwn"

#include "Modules/Dynamic/Dynamic_SpeedCam/core.pwn"
#include "Modules/Dynamic/Dynamic_SpeedCam/funcs.pwn"
#include "Modules/Dynamic/Dynamic_SpeedCam/cmd.pwn"
#include "Modules/Dynamic/Dynamic_Button/button_functions.pwn"
#include "Modules/Dynamic/Dynamic_Actor/ui_dynactor.pwn"
#include "Modules/Dynamic/Dynamic_Pasar/dyn_pasar.pwn"
#include "Modules/Dynamic/Dynamic_Robbery/robbery_functions.pwn"
#include "Modules/area/area.pwn"
#include "Modules/Dynamic/Dynamic_Hunting/hunting_functions.pwn"
#include "Modules/Dynamic/Dynamic_Ladang/ui_dynkanabis.pwn"
#include "Modules/Dynamic/Dynamic_Ladang/kanabis_olah.pwn"
#include "Modules/Dynamic/Dynamic_Object/object_funcs.pwn"

#include "Modules/Dynamic/Dynamic_Business/dyn_business.pwn"

#include "Modules/Dynamic/Dynamic_GarasiKota/Header.pwn"
#include "Modules/Dynamic/Dynamic_GarasiKota/Function.pwn"
#include "Modules/Dynamic/Dynamic_GarasiKota/Commands.pwn"


#include "Modules/Dynamic/Dynamic_Atm/ui_atm.pwn"
#include "Modules/Dynamic/Dynamic_Garbage/dynamic_garbage.pwn"
#include "Modules/Dynamic/Dynamic_Door/dynamic_doors.pwn"
#include "Modules/Dynamic/Dynamic_Gudang/gudang_functions.pwn"
#include "Modules/Dynamic/Dynamic_Label/label_functions.pwn"

// Map Icon
#include "Modules/Dynamic/Dynamic_IconMap/Header.pwn"
#include "Modules/Dynamic/Dynamic_IconMap/Function.pwn"
#include "Modules/Dynamic/Dynamic_IconMap/Commands.pwn"

#include "Modules/Dynamic/Dynamic_Machine/dynamic_slot.pwn"
#include "Modules/Dynamic/Dynamic_ObjectText/objecttext.pwn"
#include "Modules/Dynamic/Dynamic_Uranium/uranium_funcs.pwn"

#include "Modules/Dynamic/Dynamic_Workshop/Header.inc"
#include "Modules/Dynamic/Dynamic_Workshop/Function.inc"
#include "Modules/Dynamic/Dynamic_Workshop/Command.inc"
#include "Modules/Dynamic/Dynamic_Workshop/component_buy.inc"

#include "Modules/Dynamic/Dynamic_Gate/dynamic_gatev2.pwn"

//smugler
#include "Modules/jobs/Smugler.pwn"

#include "Modules/jobs/farmer/petani_functions.pwn"

#include "Modules/inventory/inventory_functions.pwn"
#include "Modules/inventory/inventory_new.pwn"
#include "Modules/inventory/inventory_drop.pwn"

#include "Modules/Dynamic/Dynamic_Warung/warung_functions.pwn"

#include "Modules/voice/radiosystem.pwn"

#include "Modules/animations/ui_animations.pwn"
#include "Modules/animations/AnimationList.pwn"
// ------------------------------------------
#include "Modules/user-interface/notifikasi/GreyNotify.pwn"
#include "Modules/user-interface/notifikasi/box_func.pwn"
#include "Modules/user-interface/ui_shortkeys.pwn"
#include "Modules/user-interface/ui_smoking.pwn"

#include "Modules/Dynamic/Dynamic_Rusun/rusun_functions.pwn"
#include "Modules/Dynamic/Dynamic_House/dyn_house.pwn"

#include "Modules/PlayerStuff/PlayerAFK.pwn"
#include "Modules/PlayerStuff/IdleAnimation.pwn"
#include "Modules/PlayerStuff/NameTag.pwn"

/*Families System*/
#include "Modules/FractionPlayer/FAMILIES/families_functions.pwn"
// #include "Modules/FractionPlayer/FAMILIES/families_myfam.pwn"
// #include "Modules/FractionPlayer/FAMILIES/families_garage.inc"

#include "Modules/jobs/miner/minerv2_functions.pwn"
#include "Modules/jobs/lumberjack/lumber_functions.pwn"
#include "Modules/jobs/bus/bus_funcs.pwn"
#include "Modules/jobs/chicken factory/butcher_functions.pwn"
#include "Modules/jobs/milker/milker_functions.pwn"
#include "Modules/jobs/oilman/oilman_function.pwn"
#include "Modules/jobs/fisherman/nelayan_funcs.pwn"
#include "Modules/jobs/delivery/deliveryside_functions.pwn"
#include "Modules/jobs/mowingjob/mowerside_functions.pwn"
#include "Modules/jobs/sweeper/sweeper_functions.pwn"
#include "Modules/jobs/forklift/forkliftside_functions.pwn"
#include "Modules/jobs/tailor/tailorv2_functions.pwn"
#include "Modules/jobs/tailor/tailor_forward.pwn"
#include "Modules/jobs/hauling/kargo_func.pwn"
// #include "Modules/jobs/RicycleJob/ricycle_functions.inc"
#include "Modules/jobs/RicycleJob/recycler_functions.pwn"
#include "Modules/jobs/trashmaster/trashmaster_functions.pwn"
#include "Modules/jobs/electrican/electric_funcs.pwn"
// #include "Modules/jobs/taxi/taxi_functions.inc"
// #include "Modules/jobs/mixer/mixer_callback.pwn"
#include "Modules/Dynamic/Dynamic_Rental/dyn_rental.pwn"

#include "Modules/Dynamic/Dynamic_Garbage/rongsokan_functions.pwn"
#include "Modules/PlayerSmartphone/phonenew_funcs.pwn"
#include "Modules/PlayerSmartphone/phonenew_contact.pwn"
#include "Modules/PlayerSmartphone/phonenew_message.pwn"
#include "Modules/PlayerSmartphone/phonenew_vehicles.pwn"
#include "Modules/PlayerSmartphone/phonenew_yellowpages.pwn"
#include "Modules/PlayerSmartphone/phonenew_twitter.pwn"

#include "Modules/vehiclemod/modshop.pwn"
#include "Modules/vehicles/vehicles_functions.pwn"
#include "Modules/vehicles/vehicles_cmds.pwn"
#include "Modules/vehicles/GarageSystemWTD.pwn"

#include "Modules/weapons/weapons_functions.pwn"


#include "Modules/FractionPlayer/stuff_goodside.pwn"

#include "Modules/toko-olahraga/business_olahraga.pwn"

/* Factions */
#include "Modules/FractionPlayer/FactionMenu.pwn"
#include "Modules/FractionPlayer/Pemerintah/pemerintah_functions.pwn"
#include "Modules/FractionPlayer/Bengkel/bengkel_brankas.pwn"
#include "Modules/FractionPlayer/Bengkel/bengkel_functions.pwn"
#include "Modules/FractionPlayer/Pedagang/lounges_brankas.pwn"
#include "Modules/FractionPlayer/Pedagang/lounges_vars.pwn"
#include "Modules/FractionPlayer/Pedagang/lounges_functions.pwn"
#include "Modules/FractionPlayer/EMS/ems_brankas.pwn"
#include "Modules/FractionPlayer/EMS/ems.pwn"
// #include "Modules/FractionPlayer/EMS/medic_funcs.pwn"
#include "Modules/FractionPlayer/Police/sapd_functions.pwn"
#include "Modules/FractionPlayer/Police/callsign.pwn"
#include "Modules/FractionPlayer/Police/MDCFunctions.pwn"
// #include "Modules/FractionPlayer/Police/detect_plates.pwn"
#include "Modules/FractionPlayer/Police/Charges.pwn"
// #include "Modules/FractionPlayer/Police/sapd_taser.pwn"
// #include "Modules/FractionPlayer/Police/sapd_spike.pwn"
#include "Modules/FractionPlayer/trans/trans_functions.pwn"
#include "Modules/FractionPlayer/trans/trans_stuffs.pwn"
// #include "Modules/FractionPlayer/Gojek/cmds_gojek.pwn"
// #include "Modules/FractionPlayer/Gojek/gojek_functions.pwn"

#include "Modules/reports/systems_ask.pwn"
#include "Modules/reports/systems_reports.pwn"

#include "Modules/events/admin_events.inc"
#include "commands/cmds_hooks.pwn"
#include "Modules/systems/systems_dialogs.pwn"
// #include "Modules/systems/systems_spawn.inc" Dimatikan sementara
#include "Modules/systems/systems_functions.pwn"
#include "Modules/systems/systems_native.pwn"
// #include "Modules/systems/systems_anticheat.inc"
// #include "Modules/systems/systems_anticheat.inc"
#include "Modules/systems/systems_anticheatv2.pwn"
// #include "Modules/systems/systems_position.inc"
// #include "Modules/systems/skate.pwn"
// #include "Modules/systems/antiremcs_dan.inc"

#include "Modules/toll/toll_functions.pwn"

// #include "Modules/PlayerSpawn/spawn_functions.inc" Dimatikan sementara
#include "Modules/jobs/Disnaker/disnaker_functions.pwn"

// #include "commands\boxing_funcs.inc"
#include "commands\management.pwn"
#include "commands\pengurus.pwn"
#include "commands\cmds_faction.pwn"
#include "commands\cmds_player.pwn"
#include "commands\cmds_admin.pwn"
#include "commands\earthquake.pwn"
#include "commands\NoClip.pwn"

#include "Modules/carsteal/carsteal_functions.pwn"
#include "Modules/PlayerStuff/player_toystd.pwn"
// #include "Modules/mapping/mapping_server.inc"

// #include "Modules/events/xmas.inc"
//#include "Modules/events/events.inc"

#include "Modules/showroom/showroom_functions.pwn"
#include "Modules/PlayerStuff/player_actions.pwn"
#include "Modules/PlayerStuff/player_asuransi.pwn"
#include "Modules/PlayerStuff/player_fishingactivity.pwn"
#include "Modules/damages/damagelog_functions.pwn"

#include "Modules/tags/core.pwn"
#include "Modules/tags/cmd.pwn"
#include "Modules/tags/funcs.pwn"
#include "Modules/tags/impl.pwn"

// #include "commands\DISCORD.pwn"

#include "Modules/PlayerCrafting/crafting_functions.inc"
#include "Modules/PlayerCrafting/kevlar_craft_function.inc"
#include "Modules/PlayerCrafting/clip_craft_functions.inc"
// ----------------------------------------
#include "Modules/streamer/streamer.pwn"
#include "Modules/invoices/invoices.pwn"
#include "Modules/blacklist/blacklist_functions.pwn"
#include "Modules/timers/timer_task.pwn"
// #include "Modules/timers/timer_ptask_anticheat.inc"
#include "Modules/timers/timer_ptask_jail.pwn"
#include "Modules/timers/timer_ptask_update.pwn"
#include "Modules/playermarker/playermark.pwn"
#include "Modules/task/player_task.pwn"
#include "Modules/task/server_task.pwn"

forward OnGameModeInitEx();
forward OnGameModeExitEx();

main() 
{

}

stock DatabaseConnection()
{
    // Connect to MySQL database
    g_SQL = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASSWORD, MYSQL_DATABASE);

    // Check connection
    if (g_SQL == MYSQL_INVALID_HANDLE || mysql_errno(g_SQL) != 0)
    {
        print("Aeterna Roleplay: Connection to MySQL FAILED! Shutting down...");
        SendRconCommand("exit");
        return 0;
    }

    print("Aeterna Roleplay: Successfully connected to MySQL.");
    return 1;
}

public OnGameModeInit()
{
	/*Data*/
	DisableCrashDetectLongCall();
	DisableCrashDetectAddr0();

	SetTimer("Timer_CheckPajakAll", 1000, true); // 1000 ms = 1 detik

	DatabaseConnection();
	ShowNameTags(false);
	EnableTirePopping(0);
	CreateTextDraw();
	// StreamerConfig();
	// LoadMap();`
	LoadWarungArea();
	LoadArea();
	LoadGangZone();
	LoadServerPickup();	
	ManualVehicleEngineAndLights();
	EnableStuntBonusForAll(0);
	AllowInteriorWeapons(1);
	DisableInteriorEnterExits();
	LimitPlayerMarkerRadius(15.0);
	ShowPlayerMarkers(PLAYER_MARKERS_MODE_OFF);
	SetWorldTime(WorldTime);
	SetWeather(WorldWeather);

	SetGameModeText(sprintf("%s", TEXT_GAMEMODE));
	SendRconCommand(sprintf("weburl %s", TEXT_WEBURL));
	SendRconCommand(sprintf("language %s", TEXT_LANGUAGE));
	SendRconCommand("mapname San Andreas");
	BlockGarages(.text="Tutup");

	/* Load From Database */
	mysql_tquery(g_SQL, "SELECT * FROM `business`", "Business_Load");
	mysql_tquery(g_SQL, "SELECT * FROM `brankas_ems`", "LoadBrankasEms");
	mysql_tquery(g_SQL, "SELECT * FROM `brankas_bengkel`", "LoadBrankasBengkel");
	mysql_tquery(g_SQL, "SELECT * FROM `brankas_lounges`", "LoadBrankasLounges");
	mysql_tquery(g_SQL, "SELECT * FROM `buttons`", "LoadButtons");
	mysql_tquery(g_SQL, "SELECT * FROM `doors`", "LoadDoors");
	mysql_tquery(g_SQL, "SELECT * FROM `families`", "Families_Load");
	// mysql_tquery(g_SQL, "SELECT * FROM `families_garage`", "LoadFamiliesGarkot");
	mysql_tquery(g_SQL, "SELECT * FROM `house`", "LoadRumah");
	mysql_tquery(g_SQL, "SELECT * FROM `gate`", "LoadGate");
	mysql_tquery(g_SQL, "SELECT * FROM `actors`", "Actor_Load");
	mysql_tquery(g_SQL, "SELECT * FROM `bike_rentals`", "Rental_Load");
	mysql_tquery(g_SQL, "SELECT * FROM `public_garage`", "LoadPublicGarage");
	mysql_tquery(g_SQL, "SELECT * FROM `gudang`", "LoadGudang");
	mysql_tquery(g_SQL, "SELECT * FROM `warung`", "LoadWarung");
	mysql_tquery(g_SQL, "SELECT * FROM `pasar`", "LoadPasar");
	mysql_tquery(g_SQL, "SELECT * FROM `robbery`", "LoadDynamicRobbery");
	mysql_tquery(g_SQL, "SELECT * FROM `atms`", "LoadATM");
	mysql_tquery(g_SQL, "SELECT * FROM `trash`", "LoadTrash");
	mysql_tquery(g_SQL, "SELECT * FROM `stuffs`", "LoadBrankasGoodside");
	mysql_tquery(g_SQL, "SELECT * FROM `ladang`", "LoadKanabis");
	mysql_tquery(g_SQL, "SELECT * FROM `icons`", "Icons_Load", "");
	mysql_tquery(g_SQL, "SELECT * FROM `label_fivem`", "LoadLabel");
	mysql_tquery(g_SQL, "SELECT * FROM `dynamic_rusun`", "Rusun_Load");
	mysql_tquery(g_SQL, "SELECT * FROM `hunting`", "LoadDeer");
	mysql_tquery(g_SQL, "SELECT * FROM `weeds`", "Weed_Load");
	mysql_tquery(g_SQL, "SELECT * FROM `voucher`", "LoadVoucher");
	mysql_tquery(g_SQL, "SELECT * FROM `objects`", "LoadDynamicObject");
	mysql_tquery(g_SQL, "SELECT * FROM `slotmachine`", "LoadSlotMachine");
	mysql_tquery(g_SQL, "SELECT * FROM `objecttext`", "ObjectText_Load");
	mysql_tquery(g_SQL, "SELECT * FROM `uranium`", "Load_Uranium");
	mysql_tquery(g_SQL, "SELECT * FROM `workshop`", "Workshop_Load");
	mysql_tquery(g_SQL, "SELECT * FROM `tags` ORDER BY `tagId` ASC LIMIT "#MAX_DYNAMIC_TAGS";", "Tags_Load");
	LoadCraftingPasswords();
	LoadUraniumPassword();
	LoadMarijuanaPassword();
	LoadKevlarPassword();
	LoadComponent();
	LoadClipPassword();

	for (new i; i < sizeof(ColorList); i++) {
        format(color_string, sizeof(color_string), "%s{%06x}%03d %s", color_string, ColorList[i] >>> 8, i, ((i+1) % 16 == 0) ? ("\n") : (""));
    }

	for (new i; i < sizeof(ColorListPagar); i++) {
        format(color_listitem, sizeof(color_listitem), "%s{%06x}%d - ##########\n", color_listitem, ColorListPagar[i] >>> 8, i + 1);
    }

	for (new i; i < sizeof(ColorListPagar2); i++) {
        format(color_listitem, sizeof(color_listitem), "%s{%06x}%d - ##########\n", color_listitem, ColorListPagar2[i] >>> 8, i + 1);
    }

    for (new i; i < sizeof(FontNames); i++) {
        format(object_font, sizeof(object_font), "%s%s\n", object_font, FontNames[i]);
    }
	
	for(new i = 0; i < sizeof(BarrierInfo);i ++)
	{
		new
		Float:X = BarrierInfo[i][brPos_X],
		Float:Y = BarrierInfo[i][brPos_Y];

		ShiftCords(0, X, Y, BarrierInfo[i][brPos_A]+90.0, 3.5);
		CreateDynamicObject(966,BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z],0.00000000,0.00000000,BarrierInfo[i][brPos_A]);
		if(!BarrierInfo[i][brOpen])
		{
			gBarrier[i] = CreateDynamicObject(968,BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z]+0.8,0.00000000,90.00000000,BarrierInfo[i][brPos_A]+180);
			MoveObject(gBarrier[i],BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z]+0.7,BARRIER_SPEED,0.0,0.0,BarrierInfo[i][brPos_A]+180);
			MoveObject(gBarrier[i],BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z]+0.75,BARRIER_SPEED,0.0,90.0,BarrierInfo[i][brPos_A]+180);
		}
		else gBarrier[i] = CreateDynamicObject(968,BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z]+0.8,0.00000000,20.00000000,BarrierInfo[i][brPos_A]+180);
	}

	/* Mprice Stuffs*/
	OldTembagaPrice = TembagaPrice;
	OldBesiPrice = BesiPrice;
	OldEmasPrice = EmasPrice;
	OldBerlianPrice = BerlianPrice;
	OldMaterialPrice = MaterialPrice;
	OldAlumuniumPrice = AlumuniumPrice;
	OldKaretPrice = KaretPrice;
	OldKacaPrice = KacaPrice;
	OldBajaPrice = BajaPrice;
	OldAyamKemasPrice = AyamKemasPrice;
	OldSusuOlahPrice = SusuOlahPrice;
	OldPakaianPrice = PakaianPrice;
	OldKayuKemasPrice = KayuKemasPrice;
	OldGasPrice = GasPrice;
	
	SetTimer("WeatherRotator", 1800000, true);
	CallLocalFunction("OnGameModeInitEx", "");

	OpenVote = 0;
    VoteYes = 0;
    VoteNo = 0;
    VoteTime = 0;
    VoteText[0] = EOS;
	PantaiArea = CreateDynamicRectangle(345.3125, -2094.787811279297, 415.3125, -2007.7878112792969);
	return 1;
} 

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
	#if defined DEBUG_MODE
	    printf("[debug] OnPlayerInteriorChange(PID : %d New-Int : %d Old-Int : %d)", playerid, newinteriorid, oldinteriorid);
	#endif

	CancelEdit(playerid);

	foreach(new i : Player) if (AccountData[i][pSpec] != INVALID_PLAYER_ID && AccountData[i][pSpec] == playerid)
	{
		SetPlayerInterior(i, GetPlayerInterior(playerid));
		SetPlayerVirtualWorld(i, GetPlayerVirtualWorld(playerid));
	}

	return 1;
}

function OnWeaponHackProtect(playerid) {
	AccountData[playerid][pWHProtect] = 0;
}

stock SetWeaponHackProtect(playerid) {

	if(!AccountData[playerid][pWHProtect]) {
		AccountData[playerid][pWHProtect] = 1;
		SetTimerEx("OnWeaponHackProtect", 5000, false, "d", playerid);
	}
	return 1;
}

stock OnFakespawnCheck(playerid) {

	if(AccountData[playerid][pID] == -1) {
		SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on "YELLOW"%s (%d) "LIGHTGREY"(Fake Spawn)", GetName(playerid), playerid);
		SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"LIGHTGREY" Anda ditendang karena diduga Fake Spawn!");
		KickEx(playerid);
		return 1;
	}

	if(!AccountData[playerid][IsLoggedIn]) {
		SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on "YELLOW"%s (%d) "LIGHTGREY"(Fake Spawn)", GetName(playerid), playerid);
		SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"LIGHTGREY" Anda ditendang karena diduga Fake Spawn!");
		KickEx(playerid);
		return 1;
	}

	if(!AccountData[playerid][pSpawned]) {
		SendAdminMessage(X11_RED, "[AntiCheat]: "LIGHTGREY"Cheat detected on "YELLOW"%s (%d) "LIGHTGREY"(Fake Spawn)", GetName(playerid), playerid);
		SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"LIGHTGREY" Anda ditendang karena diduga Fake Spawn!");
		KickEx(playerid);
		return 1;
	}
	return 0;
}

public OnPlayerRequestSpawn(playerid)
{
    if (!AccountData[playerid][IsLoggedIn])
    {
		GameTextForPlayer(playerid, "~r~Stay in your world bastard!", 2000, 4);
		SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"LIGHTGREY" Anda ditendang karena diduga Fake Spawn!");
        KickEx(playerid);
    }
    return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	if(SQL_IsCharacterLogged(playerid) && AccountData[playerid][pAdmin] > 0)
	{
		if(!IsPlayerConnected(clickedplayerid)) return 0;
		if(clickedplayerid == playerid) return 0;

		new title[127];
		format(title, sizeof(title), ""TTR"Aeterna Roleplay "WHITE"- %s(%d)", ReturnName(clickedplayerid), clickedplayerid);
		ShowPlayerDialog(playerid, DIALOG_CLICKPLAYER, DIALOG_STYLE_LIST, title, 
		""TTR"Menu Admin\n\
		\nSpectator Pemain\
		\n"GRAY"Tarik Pemain\
		\nTeleport Ke Pemain\
		\n"GRAY"Banned Pemain\
		\nKick Pemain\
		\n"GRAY"Stats Pemain", "Pilih", "Batal");
		ClickPlayerID[playerid] = clickedplayerid;
	}
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	SetCameraData(playerid);

	if(!AccountData[playerid][IsLoggedIn])
	{		
		new query[268];
		mysql_format(g_SQL, query, sizeof(query), "SELECT * FROM `playerucp` WHERE `ucp` = '%e' LIMIT 1", AccountData[playerid][pUCP]);
		mysql_pquery(g_SQL, query, "CheckPlayerUCP", "id", playerid, g_RaceCheck[playerid]);
		SetPlayerColor(playerid, X11_GRAY);
	}
	return 1;
}

public OnGameModeExit()
{
	#if defined DEBUG_MODE
	    printf("[debug] OnGameModeExit()");
	#endif

    SaveAll();
	
	foreach(new playerid : Player)
	{
		TerminateConnection(playerid);
		SavePlayerPlayTime(playerid);
	}

	CallLocalFunction("OnGameModeExitEx", "");
	mysql_close(g_SQL);
	return 1;
}

forward OnPlayerCarJacking(playerid);
public OnPlayerCarJacking(playerid)
{
	new Float:playerPos[3];
	GetPlayerPos(playerid, playerPos[0], playerPos[1], playerPos[2]);
	AccountData[playerid][pWorld] = GetPlayerVirtualWorld(playerid);
	
	SetPlayerPos(playerid, playerPos[0], playerPos[1], playerPos[2] + 9.0);
	TogglePlayerControllable(playerid, false);
	GameTextForPlayer(playerid, "No Jacking!", 5500, 4);
	SetPlayerVirtualWorld(playerid, (playerid+1));
	SetTimerEx("OnPlayerCarJackingUpdate", 5500, false, "d", playerid);
	return 1;	
}

forward OnPlayerCarJackingUpdate(playerid);
public OnPlayerCarJackingUpdate(playerid)
{
	TogglePlayerControllable(playerid, true);
	SetPlayerVirtualWorld(playerid, AccountData[playerid][pWorld]);
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	OnFakespawnCheck(playerid);
	if(!ispassenger)
	{
		new driverid = GetVehicleDriver(vehicleid);
		if(driverid != INVALID_PLAYER_ID && IsPlayerInVehicle(driverid, vehicleid) && !IsVehicleEmpty(vehicleid) && IsPlayerChangeSeat[playerid] == false)
		{
			SetTimerEx("OnPlayerCarJacking", 250, false, "d", playerid);
		}
		new vehicle_near = GetNearestVehicle(playerid);
		if((vehicle_near = Vehicle_ReturnID(vehicleid)) != RETURN_INVALID_VEHICLE_ID)
		{
			if(PlayerVehicle[vehicle_near][pVehFaction] == FACTION_POLISI)
			{
				if(AccountData[playerid][pFaction] != FACTION_POLISI && AccountData[playerid][pFaction] != FACTION_BENGKEL)
				{
					RemovePlayerFromVehicle(playerid);
					new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(playerid, slx, sly, slz);
					SetPlayerPos(playerid, slx, sly, slz);
					ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini milik faction Polisi!");
				}
			}
			else if(PlayerVehicle[vehicle_near][pVehFaction] == FACTION_PEMERINTAH)
			{
				if(AccountData[playerid][pFaction] != FACTION_PEMERINTAH && AccountData[playerid][pFaction] != FACTION_BENGKEL)
				{
					RemovePlayerFromVehicle(playerid);
					new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(playerid, slx, sly, slz);
					SetPlayerPos(playerid, slx, sly, slz);
					ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini milik faction Pemerintah!");
				}
			}
			else if(PlayerVehicle[vehicle_near][pVehFaction] == FACTION_EMS)
			{
				if(AccountData[playerid][pFaction] != FACTION_EMS && AccountData[playerid][pFaction] != FACTION_BENGKEL)
				{
					RemovePlayerFromVehicle(playerid);
					new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(playerid, slx, sly, slz);
					SetPlayerPos(playerid, slx, sly, slz);
					ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini milik faction EMS!");
				}
			}
			else if(PlayerVehicle[vehicle_near][pVehFaction] == FACTION_TRANS)
			{
				if(AccountData[playerid][pFaction] != FACTION_TRANS && AccountData[playerid][pFaction] != FACTION_BENGKEL && AccountData[playerid][pFaction] != FACTION_POLISI)
				{
					RemovePlayerFromVehicle(playerid);
					new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(playerid, slx, sly, slz);
					SetPlayerPos(playerid, slx, sly, slz);
					ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini milik faction Transportasi!");
				}
			}
			else if(PlayerVehicle[vehicle_near][pVehFaction] == FACTION_BENGKEL)
			{
				if(AccountData[playerid][pFaction] != FACTION_POLISI && AccountData[playerid][pFaction] != FACTION_BENGKEL)
				{
					RemovePlayerFromVehicle(playerid);
					new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(playerid, slx, sly, slz);
					SetPlayerPos(playerid, slx, sly, slz);
					ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini milik faction Bengkel!");
				}
			}
			else if(PlayerVehicle[vehicle_near][pVehFaction] == FACTION_PEDAGANG)
			{
				if(AccountData[playerid][pFaction] != FACTION_PEDAGANG && AccountData[playerid][pFaction] != FACTION_BENGKEL)
				{
					RemovePlayerFromVehicle(playerid);
					new Float:slx, Float:sly, Float:slz;
					GetPlayerPos(playerid, slx, sly, slz);
					SetPlayerPos(playerid, slx, sly, slz);
					ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini milik faction Pedagang!");
				}
			}
		}
	}
	return 1;
}

forward TrackSuspect(suspectid, policeid);
public TrackSuspect(suspectid, policeid)
{
	new Float:x, Float:y, Float:z;
	GetPlayerPos(suspectid, x, y, z);

	SetPlayerRaceCheckpoint(policeid, 1, x, y, z, 0.0, 0.0, 0.0, 5.0);
	Info(policeid, "Tracking Suspect Updated!");
	pMapCP[policeid] = true;
	return 1;
}

public OnPlayerText(playerid, text[])
{
	if(!AccountData[playerid][IsLoggedIn] || !AccountData[playerid][pSpawned])
		return 0;

	if(AccountData[playerid][pAdmin] > 0 && AccountData[playerid][pAdminDuty])
	{
		if(strlen(text) > 64)
		{
			SendNearbyMessage(playerid, 15.0, -1, "Admin "RED"%s"WHITE": (( %.64s...", AccountData[playerid][pAdminname], text);
			SendNearbyMessage(playerid, 15.0, -1, "...%s ))", text[64]);
		}
		else 
		{
			SendNearbyMessage(playerid, 15.0, -1, "Admin "RED"%s"WHITE": (( %s ))", AccountData[playerid][pAdminname], text);
		}
	}
	return 0;
}

public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags)
{
	if (result != -1 && !AccountData[playerid][IsLoggedIn])
	{
		SendClientMessage(playerid, -1, ""RED"[AntiCheat]"ARWIN1" Anda ditendang dari server karena menggunakan CMD dalam keadaan tidak login!");
		return KickEx(playerid);
	}
	
    if (result == -1)
    {
		if(AccountData[playerid][pStyleNotif] == 1) //TD
		{
			ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Perintah '/%s' tidak diketahui, '/help' untuk info lanjut!", cmd));
		}
		else
		{
			ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Perintah "YELLOW"'/%s'"WHITE" tidak diketahui, "YELLOW"'/help'"WHITE" untuk info lanjut!", cmd));
		}
		return 0;
    }
	return 1;
}

public OnPlayerCommandReceived(playerid, cmd[], params[], flags)
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	MaxShowItemBox[playerid] = 0;
	g_RaceCheck[playerid] ++;
	ResetVariables(playerid);
	ReturnIP(playerid);
	CreatePlayerTextDraws(playerid);
	// OnLoadMixerProperty(playerid);
	Player_ToggleTelportAntiCheat(playerid, false);
	Player_ToggleAntiHealthHack(playerid, false);
	Player_ToggleDisableAntiCheat(playerid, false);
	EnableAntiCheatForPlayer(playerid, 11, true);
	EnableAntiCheatForPlayer(playerid, 19, true);
	EnableAntiCheatForPlayer(playerid, 4, true);
	EnableAntiCheatForPlayer(playerid, 15, false);
	EnableAntiCheatForPlayer(playerid, 16, false);
	EnableAntiCheatForPlayer(playerid, 17, false);
	PhoneHideAll(playerid);

	AccountData[playerid][PlaySessionStart] = gettime();

	// if(pFailedMixerJob[playerid]) // Jika pemain sebelumnya gagal dalam job mixer
    // {
    //     ShowTDN(playerid, NOTIFICATION_WARNING, "Anda gagal menjadi supir mixer!");
    //     pFailedMixerJob[playerid] = false; // Reset status setelah menampilkan notifikasi
    // }

	if(g_RestartServer || g_AsuransiTime) {
		TextDrawShowForPlayer(playerid, gServerTextdraws[0]);
	}

	GetPlayerName(playerid, AccountData[playerid][pUCP], MAX_PLAYER_NAME + 1);

    if(AccountData[playerid][pHead] < 0) return AccountData[playerid][pHead] = 20;
    if(AccountData[playerid][pPerut] < 0) return AccountData[playerid][pPerut] = 20;
    if(AccountData[playerid][pRFoot] < 0) return AccountData[playerid][pRFoot] = 20;
    if(AccountData[playerid][pLFoot] < 0) return AccountData[playerid][pLFoot] = 20;
    if(AccountData[playerid][pLHand] < 0) return AccountData[playerid][pLHand] = 20;
    if(AccountData[playerid][pRHand] < 0) return AccountData[playerid][pRHand] = 20;
	return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
	if(IsPlayerInAnyVehicle(playerid))
	{
		RemovePlayerFromVehicle(playerid);
	}

	if(Timer_IsRunning(AccountData[playerid][DokterLokalTimer]))
		stop AccountData[playerid][DokterLokalTimer];
		
	KillTimer(AccountData[playerid][pDutyTimer]);
	RemoveDrag(playerid);
	CheckDrag(playerid);
	Report_Clear(playerid);
	Ask_Clear(playerid);

	g_RaceCheck[playerid] ++;
	
	if (AccountData[playerid][IsLoggedIn])
	{
		UpdatePlayerData(playerid);
		UnloadPlayerVehicle(playerid);
		SavePlayerPlayTime(playerid);

		if (AccountData[playerid][pJobVehicle] != 0)
		{
			DestroyJobVehicle(playerid);
			AccountData[playerid][pJobVehicle] = 0;
		}
	}


	if(IsValidDynamic3DTextLabel(AccountData[playerid][pAdoTag])) DestroyDynamic3DTextLabel(AccountData[playerid][pAdoTag]);
	if(IsValidDynamic3DTextLabel(AccountData[playerid][pMaskLabel])) DestroyDynamic3DTextLabel(AccountData[playerid][pMaskLabel]);

    if(AccountData[playerid][pAdminDuty] == 1)
	if(IsValidDynamic3DTextLabel(AccountData[playerid][pLabelDuty]))
		DestroyDynamic3DTextLabel(AccountData[playerid][pLabelDuty]);

	new reasontext[526], frmxt[255], Float:pX, Float:pY, Float:pZ;
	GetPlayerPos(playerid, pX, pY, pZ);

	switch(reason)
	{
	    case 0: format(reasontext, sizeof(reasontext), "Timeout/Crash");
	    case 1: format(reasontext, sizeof(reasontext), "Quit");
		case 2: format(reasontext, sizeof(reasontext), "Kicked/Banned");
	}

	if(DestroyDynamic3DTextLabel(labelDisconnect[playerid])) 
		labelDisconnect[playerid] = STREAMER_TAG_3D_TEXT_LABEL: INVALID_STREAMER_ID;

	format(frmxt, sizeof(frmxt), "Player ["YELLOW"%d"WHITE"]"YELLOW" %s | %s"WHITE" Telah keluar dari server.\nReason: "RED"%s", playerid, AccountData[playerid][pName], AccountData[playerid][pUCP], reasontext);
	labelDisconnect[playerid] = CreateDynamic3DTextLabel(frmxt, -1, pX, pY, pZ, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), -1, 15.0, -1, 0);
	labelDisconnectTimer[playerid] = SetTimerEx("DestroyLabelOut", 30000, false, "i", playerid);
	
	if(AccountData[playerid][phoneDurringConversation])
	{
		CutCallingLine(playerid);
	}
	TerminateConnection(playerid);
	WeaponRemoved[playerid] = false;
	return 1;
}	


function UseItemInInventory(playerid, slot)
{
    new string[128];
    strunpack(string, InventoryData[playerid][slot][invItem]);

    if(slot == -1) 
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada item di slot tersebut!");
        return 1;
    }
    strunpack(string, InventoryData[playerid][slot][invItem]);

    if (InventoryData[playerid][slot][invQuantity] <= 0) 
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada item di slot tersebut!");
        return 1;
    }

    if (!PlayerHasItem(playerid, string))
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada item di slot tersebut!");
        return 1;
    }

    if(ItemCantUse(string))
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Item tersebut tidak bisa digunakan!");
        return 1;
    }

    OnPlayerUseItem(playerid, slot, string);
    return 1;

}

stock Float:GetPlayerSpeed(playerid, bool:kmh = false)
{
    new 
        Float:Vx,
        Float:Vy,
        Float:Vz,
        Float:rtn;

    if(IsPlayerInAnyVehicle(playerid)) {
        GetVehicleVelocity(GetPlayerVehicleID(playerid), Vx, Vy, Vz);
    } else {
        GetPlayerVelocity(playerid, Vx, Vy, Vz);        
    }

    rtn = floatsqroot(floatabs(floatpower(Vx + Vy + Vz, 2)));
    return kmh ? (rtn * 100 * 1.61) : (rtn * 100);
}

// forward OnPlayerKeyPress(playerid, key);
// public OnPlayerKeyPress(playerid, key) {

// 	new player = playerid;

// 	if(AccountData[playerid][pSpawned]) {

// 		if(key == 77) { // Key M


// 			if(!PlayerHasItem(playerid, "Smartphone"))
// 			{
// 				return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Smartphone!");
// 			}
// 			Toggle_AllTextdraws(playerid, false);
// 			PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
// 			ShowPlayerRadial1(playerid, false);
// 			Inventory_Close(playerid);
// 			RadioTextdrawToggle(player, false);
// 			Phone(playerid, true);
// 			SelectTextDraw(playerid, COLOR_WHITE);
// 			if(!IsPlayerInAnyVehicle(playerid)) {
// 				SetPlayerAttachedObject(playerid, 9, 18867, 6, 0.1070, 0.0230, 0.0920, -87.4999, -12.0999, 163.8000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
// 				ApplyAnimation(playerid, "CASINO", "CARDS_LOOP", 4.1, 0, 0, 0, 1, 0, 1);
// 			}
// 		}
// 		else if(key == 113 || key == 73) { // Key F2

// 			if (AccountData[player][ActivityTime] != 0) 
// 				return ShowTDN(player, NOTIFICATION_WARNING, "Tidak dapat membuka inventory saat actvitity berjalan!");

// 			AccountData[playerid][pStorageSelect] = 0;
// 			Inventory_Show(playerid);
// 			RadioTextdrawToggle(player, false);
// 			PhoneHideAll(playerid);
// 			PlayerPlaySound(playerid, 1039, 0.0, 0.0, 0.0);
// 		}
// 		else if(key == 90)
// 		{
// 			new voiceMode = GetPVarInt(playerid, "VoiceMode");

// 			// Cycle voice mode: 1 -> 2 -> 3 -> 1
// 			voiceMode++;
// 			if(voiceMode > 3) voiceMode = 1;

// 			SetPVarInt(playerid, "VoiceMode", voiceMode);

// 			switch(voiceMode)
// 			{
// 				case 1:
// 				{
// 					PlayerTextDrawSetString(playerid, ATRP_VoiceTD[playerid][0], "VOICE: ~b~NORMAL");
// 					CallRemoteFunction("UpdatePlayerVoiceDistance", "ddf", playerid, voiceMode, 15.0);
// 				}
// 				case 2:
// 				{
// 					PlayerTextDrawSetString(playerid, ATRP_VoiceTD[playerid][0], "VOICE: ~r~TERIAK");
// 					CallRemoteFunction("UpdatePlayerVoiceDistance", "ddf", playerid, voiceMode, 30.0);
// 				}
// 				case 3:
// 				{
// 					PlayerTextDrawSetString(playerid, ATRP_VoiceTD[playerid][0], "VOICE: ~g~BERBISIK");
// 					CallRemoteFunction("UpdatePlayerVoiceDistance", "ddf", playerid, voiceMode, 8.0);
// 				}
// 			}

// 			PlayerTextDrawShow(playerid, ATRP_VoiceTD[playerid][0]);
// 		}
// 		else if(key == 75) { // Key K
// 			new vehid = GetNearestVehicle(playerid), Float:X, Float:Y, Float:Z;
// 			if(vehid == INVALID_VEHICLE_ID) return 0;
// 			GetVehiclePos(vehid, X, Y, Z);

// 			new index = RETURN_INVALID_VEHICLE_ID;
// 			if((index = Vehicle_GetID(vehid)) != -1) {
// 				if(PlayerVehicle[index][pVehOwnerID] != AccountData[playerid][pID]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
				
// 				PlayerVehicle[index][pVehLocked] = !(PlayerVehicle[index][pVehLocked]);

// 				PlayerPlayNearbySound(playerid, SOUND_LOCK_CAR_DOOR);
// 				LockVehicle(PlayerVehicle[index][pVehPhysic], PlayerVehicle[index][pVehLocked]);
// 				ToggleVehicleLights(PlayerVehicle[index][pVehPhysic], PlayerVehicle[index][pVehLocked]);
// 				// ShowPlayerFooter(playerid, sprintf("~w~%s %s", GetVehicleName(PlayerVehicle[index][pVehPhysic]), PlayerVehicle[index][pVehLocked] ? ("~r~Terkunci") : ("~g~Terbuka")), 4000);
// 				GameTextForPlayer(playerid, sprintf("~y~%s~n~%s", GetVehicleName(PlayerVehicle[index][pVehPhysic]), PlayerVehicle[index][pVehLocked] ? ("~r~Terkunci") : ("~g~Terbuka")), 4000, 4);
// 				if(!IsPlayerInAnyVehicle(player)) {
// 					SetPlayerFace(playerid, X, Y);
// 					ApplyAnimationEx(playerid, "ped", "gang_gunstand", 4.1, 0, 0, 0, 0, 500, 0);
// 				}
// 			}

// 			if(AccountData[playerid][pJobVehicle] != 0)
// 			{
// 				if (vehid == JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle])
// 				{
// 					JobVehicle[AccountData[playerid][pJobVehicle]][Locked] = !(JobVehicle[AccountData[playerid][pJobVehicle]][Locked]);

// 					PlayerPlayNearbySound(playerid, SOUND_LOCK_CAR_DOOR);
// 					LockVehicle(JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle], JobVehicle[AccountData[playerid][pJobVehicle]][Locked]);
// 					ToggleVehicleLights(JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle], JobVehicle[AccountData[playerid][pJobVehicle]][Locked]);
// 					// ShowPlayerFooter(playerid, sprintf("~w~%s %s", GetVehicleName(JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle]), JobVehicle[AccountData[playerid][pJobVehicle]][Locked] ? ("~r~Terkunci") : ("~g~Terbuka")), 4000);
// 					GameTextForPlayer(playerid, sprintf("~y~%s~n~%s", GetVehicleName(JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle]), JobVehicle[AccountData[playerid][pJobVehicle]][Locked] ? ("~r~Terkunci") : ("~g~Terbuka")), 4000, 4);
// 					if(!IsPlayerInAnyVehicle(player)) {
// 						SetPlayerFace(playerid, X, Y);
// 						ApplyAnimationEx(playerid, "ped", "gang_gunstand", 4.1, 0, 0, 0, 0, 500, 0);
// 					}
// 				}
// 				return 1;
// 			}
// 		}
// 		else if(key == 82) // Key R
// 		{
// 			if (!PlayerHasItem(player, "Radio")) return ShowTDN(player, NOTIFICATION_ERROR, "Anda tidak memiliki Radio!");
// 			if (IsPlayerInWater(player)) return ShowTDN(player, NOTIFICATION_ERROR, "Anda tidak dapat membuka Radio saat berada di air!");

// 			switch(GetPVarInt(player, "RadioValue"))
// 			{
// 				case false:
// 				{
// 					SetPVarInt(player, "RadioValue", true);
// 					SendRPMeAboveHead(player, "Membuka radio miliknya", X11_PLUM1);
// 					if (!IsPlayerInAnyVehicle(player))
// 					{
// 						ApplyAnimationEx(player, "ped", "Jetpack_Idle", 4.1, 0, 0, 0, 1, 0, 1);
// 						SetPlayerAttachedObject(player, 9, 19942, 5, 0.043000, 0.022999, -0.006000, -112.000022, -34.900020, -8.500002, 1.000000, 1.000000, 1.000000);
						
// 					}
// 					RadioTextdrawToggle(player, true);
// 					Inventory_Close(playerid);
// 					PhoneHideAll(playerid);
// 					SelectTextDraw(player, COLOR_CLIENT);
// 				}
// 				case true:
// 				{
// 					SetPVarInt(player, "RadioValue", false);
// 					SendRPMeAboveHead(player, "Menutup radio miliknya", X11_PLUM1);
// 					if(!IsPlayerInAnyVehicle(player))
// 					{
// 						ClearAnimations(player);
// 						ApplyAnimation(player, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
// 						SetPlayerSpecialAction(player, SPECIAL_ACTION_NONE);
// 					}

// 					RemovePlayerAttachedObject(player, 9);
					
// 					RadioTextdrawToggle(player, false);
// 					CancelSelectTextDraw(player);
// 				}
// 			}
// 		}
// 		else if(key == 49) // Angka 1
// 		{
// 			UseItemInInventory(player, 0);
// 		}
// 		else if(key == 50) // Angka 2
// 		{
// 			if(!IsPlayerInAnyVehicle(player)) {
// 				UseItemInInventory(player, 1);
// 			}
// 		}
// 		else if(key == 51) // Angka 3
// 		{
// 			UseItemInInventory(player, 2);
// 		}
// 		else if(key == 52) // Angka 4
// 		{
// 			UseItemInInventory(player, 3);
// 		}
// 		if(key == 53) { // Angka 5
// 			UseItemInInventory(player, 4);
// 		}
// 		else if(key == 88) { // Key X
// 			if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && !GetPVarInt(playerid, "DurringGym")) {
// 				if(!AccountData[playerid][pFreeze] && AccountData[playerid][pLoopAnim])
// 				{
// 					ClearAnimations(playerid, 1);
// 					StopLoopingAnim(playerid);
// 					SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
// 					TogglePlayerControllable(playerid, 1);
// 					RemovePlayerAttachedObject(playerid, 9);
// 					ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);

// 					AccountData[playerid][pLoopAnim] = false;
// 				}
// 				if(!GetPVarInt(playerid, "Handsup")) {
// 					ApplyAnimationEx(playerid, "ROB_BANK", "SHP_HandsUp_Scr", 4.1, 0, 0, 0, 1, 0, 1);
// 					SetPVarInt(playerid, "Handsup", 1);
// 				}
// 			}
// 		}
// 		else if(key == 74) {
// 			if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) {
// 				if(!GetPVarInt(playerid, "Pointing")) {

// 					if(GetPlayerSpeed(playerid) == 0) {
// 						ApplyAnimationEx(playerid, "ped", "gang_gunstand", 4.1, 1, 0, 0, 1, 1);
// 					}
// 					else {
// 						ApplyAnimationEx(playerid, "TEC", "TEC_FIRE", 4.0, 1, 0, 0, 1, 1);
// 					}
// 					SetPVarInt(playerid, "Pointing", 1);
// 				}
// 			}
// 		}
// 	}
// 	if(key == 76) // L
// 	{ 
// 		ShowAnimationList(playerid);
// 	}
// 	return 1;
// }

// forward OnPlayerKeyRelease(playerid, key);
// public OnPlayerKeyRelease(playerid, key) {
// 	if(key == 74) {
// 		if(GetPVarInt(playerid, "Pointing")) {
// 			DeletePVar(playerid, "Pointing");

// 			if(!IsPlayerInAnyVehicle(playerid)) {
// 				ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
// 			}
// 		}
// 	}
// 	else if(key == 88) {
// 		if(GetPVarInt(playerid, "Handsup")) {
// 			DeletePVar(playerid, "Handsup");

// 			if(!IsPlayerInAnyVehicle(playerid)) {
// 				ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
// 				AccountData[playerid][pHandsUp] = true;
// 			}
// 		}
// 	}
// 	return 1;
// }

public OnPlayerSpawn(playerid)
{
	PlayerTextDrawShow(playerid, AMMOTD[playerid]);
	if(AccountData[playerid][pGender] == 0)
	{
		TogglePlayerControllable(playerid,0);
		SetPlayerHealth(playerid, 100.0);
		SetPlayerArmour(playerid, 0.0);
		SetPlayerCameraPos(playerid, 584.769, -2183.039, 131.617);
		SetPlayerCameraLookAt(playerid, 582.755, -2178.958, 129.546);
		InterpolateCameraPos(playerid, 584.769, -2183.039, 131.617, 584.769, -2183.039, 131.617, 20000, CAMERA_MOVE);
		SetPlayerVirtualWorld(playerid, 3);
		ShowPlayerDialog(playerid, DIALOG_AGE, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Tanggal Lahir", "Mohon masukkan tanggal lahir sesuai format hh/bb/tttt cth: (25/09/2001)", "Input", "");
	}
	else
	{
		if(!AccountData[playerid][pSpawned])
		{
			AccountData[playerid][pSpawned] = 1;
			SetCameraBehindPlayer(playerid);
			Streamer_ToggleIdleUpdate(playerid, true);
			StopAudioStreamForPlayer(playerid);
			
			GivePlayerMoney(playerid, AccountData[playerid][pMoney]);
			SetPlayerScore(playerid, AccountData[playerid][pLevel]);
			SetPlayerHealth(playerid, AccountData[playerid][pHealth]);
			SetPlayerArmour(playerid, AccountData[playerid][pArmour]);
			SetPlayerInterior(playerid, AccountData[playerid][pInt]);
			SetPlayerVirtualWorld(playerid, AccountData[playerid][pWorld]);
			PreloadAnimations(playerid);

			TogglePlayerControllable(playerid, false);
			static Float:X, Float:Y, Float:Z;
			GetPlayerPos(playerid, X, Y, Z);
			ShowPlayerFooter(playerid, "~y~MEMUAT OBJECT", 7000);
			AccountData[playerid][pFreeze] = 1;
			AccountData[playerid][pFreezeTimer] = SetTimerEx("SetPlayerToUnfreeze", 7000, false, "iffff", playerid, X, Y, Z); //defer SetPlayerToUnfreeze[time](playerid);
			Player_ToggleTelportAntiCheat(playerid, true);

			SetPlayerSkillLevel(playerid, WEAPONSKILL_DESERT_EAGLE, 999);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_SHOTGUN, 999);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_SAWNOFF_SHOTGUN, 1);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_SPAS12_SHOTGUN, 999);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_MP5, 999);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_AK47, 999);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_M4, 999);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_SNIPERRIFLE, 999);

			SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL, 0);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_MICRO_UZI, 0);
			SetPlayerSkillLevel(playerid, WEAPONSKILL_PISTOL_SILENCED, 0);

			SendClientMessageEx(playerid, -1, ""TTR"[Server]: "WHITE"Selamat datang "YELLOW"%s.", ReturnName(playerid));
			SendClientMessageEx(playerid, -1, ""TTR"[Server]: "WHITE"Today is "YELLOW"%s", ReturnTime());
			(playerid, -1, ""TTR"[Server]: "WHITE"Server memerlukan waktu "YELLOW"%d milisecond"WHITE" untuk memuat char anda.", GetPlayerPing(playerid));
			SendClientMessage(playerid, -1, ""TTR"[Server]: "WHITE"Jika anda punya pertanyaan gunakan "RED"/ask"WHITE", untuk keperluan lainnya anda dapat menggunakan "RED"/help");
			SendClientMessage(playerid, -1, ""TTR"[Server]: "WHITE"Discord kita yaitu: "TTR"discord.gg/aeterna");
			SendClientMessage(playerid, -1, ""TTR"[Server]: "WHITE"Selamat bermain dan memulai cerita di "TTR"Aeterna Roleplay");

			new vQuery[300];
			mysql_format(g_SQL, vQuery, sizeof(vQuery), "SELECT * FROM `player_vehicles` WHERE `PVeh_OwnerID` = '%d' ORDER BY `id` ASC", AccountData[playerid][pID]);
			mysql_tquery(g_SQL, vQuery, "Vehicle_Load", "d", playerid);

			if(VoucherData[0][voucherExists] && AccountData[playerid][pKompensasi] < 1)
			{
				SendClientMessageEx(playerid, -1, "[i] Anda memiliki kompensasi yang belum di claim! gunakan "YELLOW"'/klaimkompensasi'"WHITE" untuk mengambil kompensasi");
			}
			if(AccountData[playerid][pDutyPD] || AccountData[playerid][pDutyPemerintah] || AccountData[playerid][pDutyEms] 
				|| AccountData[playerid][pDutyBengkel] || AccountData[playerid][pDutyTrans] || AccountData[playerid][pDutyPedagang])
			{
				AccountData[playerid][pDutyTimer] = SetTimerEx("FactDutyHour", 1000, true, "d", playerid);
			}
		}

		if(IsPlayerInEvent(playerid))
		 	return 0;
		
		Streamer_ToggleIdleUpdate(playerid, true);
		PreloadAnimations(playerid);
		if(AccountData[playerid][pUsingUniform])
		{
			SetPlayerSkin(playerid, AccountData[playerid][pUniform]);
		}
		else
		{
			SetPlayerSkin(playerid, AccountData[playerid][pSkin]);
		}

		if(AccountData[playerid][pInjured] == 1 && AccountData[playerid][pInjuredTime] != 0)
		{
			TogglePlayerControllable(playerid, false);
			SetPlayerPos(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
			SetPlayerFacingAngle(playerid, AccountData[playerid][pPosA]);
			SetPlayerInterior(playerid, AccountData[playerid][pInt]);
			SetPlayerVirtualWorld(playerid, AccountData[playerid][pWorld]);
		}

		if(AccountData[playerid][pAdminDuty] > 0)
		{
			SetPlayerColor(playerid, X11_DARKRED);
		}
		SetTimerEx("TimersSpawn", 5000, false, "d", playerid);
		AccountData[playerid][pJustSpawn] = 1;
	}
	return 1;
}

function OnExpireTimeSpawn(playerid) {
	AccountData[playerid][pJustSpawn] = 0;
}

forward TimersSpawn(playerid);
public TimersSpawn(playerid)
{
	if(!AccountData[playerid][pSpawned])
		return 0;

	if(AccountData[playerid][pJail] > 0)
	{
		SpawnPlayerInJail(playerid);
	}
	if(AccountData[playerid][pArrestTime] > 0)
	{
		SetPlayerArrest(playerid, AccountData[playerid][pArrest]);
	}
	
	TogglePlayerControllable(playerid, 1);
	SetPlayerInterior(playerid, AccountData[playerid][pInt]);
	SetPlayerVirtualWorld(playerid, AccountData[playerid][pWorld]);
	AttachPlayerToys(playerid);
	SetWeapons(playerid);
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if(!AccountData[playerid][pSpawned])
		return 0;

	foreach(new i : Player) if (IsPlayerConnected(i))
	{
		if(AccountData[i][pAdmin] > 0 && AccountData[i][pTheStars] > 0)
		{
			SendDeathMessageToPlayer(i, killerid, playerid, reason);
			return 1;
		}
	}
	new reasontext[596];
	switch(reason)
	{
		case 0: reasontext = "Tangan Kosong";
		case 1: reasontext = "Brass Knuckles";
		case 2: reasontext = "Golf Club";
		case 3: reasontext = "Nite Stick";
		case 4: reasontext = "Knife";
		case 5: reasontext = "Basebal Bat";
		case 6: reasontext = "Shovel";
		case 7: reasontext = "Pool Cue";
		case 8: reasontext = "Katana";
		case 9: reasontext = "Chain Shaw";
		case 14: reasontext = "Cane";
		case 18: reasontext = "Molotov";
		case 22: reasontext = "Colt 45";
		case 23: reasontext = "SLC";
		case 24: reasontext = "Desert Eagle";
		case 25: reasontext = "Shotgun";
		case 26: reasontext = "Sawnoff Shotgun";
		case 27: reasontext = "Combat Shotgun";
		case 28: reasontext = "Micro SMG/Uzi";
		case 29: reasontext = "MP5";
		case 30: reasontext = "AK-47";
		case 31: reasontext = "M4";
		case 32: reasontext = "Tec-9";
		case 33: reasontext = "Coutry Rifle";
		case 38: reasontext = "Mini Gun";
		case 49: reasontext = "Tertabrak Kendaraan";
		case 50: reasontext = "Helicopter Blades";
		case 51: reasontext = "Explode";
		case 53: reasontext = "Drowned";
		case 54: reasontext = "Splat";
		case 255: reasontext = "Suicide";
	}
	SetPlayerArmedWeapon(playerid, 0);
	return 1;
}

public OnPlayerEditAttachedObject(playerid, response, index, modelid, boneid, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ )
{
	new weaponid = EditingWeapon[playerid];
	if(response)
	{
		if(weaponid)
		{
			new enum_index = weaponid - 22, weaponname[18], string[340];
 
            GetWeaponName(weaponid, weaponname, sizeof(weaponname));
           
            WeaponSettings[playerid][enum_index][Position][0] = fOffsetX;
            WeaponSettings[playerid][enum_index][Position][1] = fOffsetY;
            WeaponSettings[playerid][enum_index][Position][2] = fOffsetZ;
            WeaponSettings[playerid][enum_index][Position][3] = fRotX;
            WeaponSettings[playerid][enum_index][Position][4] = fRotY;
            WeaponSettings[playerid][enum_index][Position][5] = fRotZ;
 
            RemovePlayerAttachedObject(playerid, GetWeaponObjectSlot(weaponid));
            SetPlayerAttachedObject(playerid, GetWeaponObjectSlot(weaponid), GetWeaponModel(weaponid), WeaponSettings[playerid][enum_index][Bone], fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, 1.0, 1.0, 1.0);
 
			ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil merubah posisi letak %s", weaponname));
           
			EditingWeapon[playerid] = 0;
            mysql_format(g_SQL, string, sizeof(string), "INSERT INTO weaponsettings (Owner, WeaponID, PosX, PosY, PosZ, RotX, RotY, RotZ) VALUES ('%d', %d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f) ON DUPLICATE KEY UPDATE PosX = VALUES(PosX), PosY = VALUES(PosY), PosZ = VALUES(PosZ), RotX = VALUES(RotX), RotY = VALUES(RotY), RotZ = VALUES(RotZ)", AccountData[playerid][pID], weaponid, fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ);
            mysql_tquery(g_SQL, string);
		}

		if(AccountData[playerid][toySelected] != -1)
		{
			new id = AccountData[playerid][toySelected];
			pToys[playerid][id][toy_x] = fOffsetX;
			pToys[playerid][id][toy_y] = fOffsetY;
			pToys[playerid][id][toy_z] = fOffsetZ;
			pToys[playerid][id][toy_rx] = fRotX;
			pToys[playerid][id][toy_ry] = fRotY;
			pToys[playerid][id][toy_rz] = fRotZ;
			pToys[playerid][id][toy_sx] = fScaleX;
			pToys[playerid][id][toy_sy] = fScaleY;
			pToys[playerid][id][toy_sz] = fScaleZ;
			
			MySQL_SavePlayerToys(playerid);
			ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menyimpan kordinat baru.");
			AccountData[playerid][toySelected] = -1;
		}
	}
	else
	{
		if(EditingWeapon[playerid])
		{
			new enum_index = weaponid - 22;
			SetPlayerAttachedObject(playerid, GetWeaponObjectSlot(weaponid), GetWeaponModel(weaponid), WeaponSettings[playerid][enum_index][Bone], fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, 1.0, 1.0, 1.0);
			EditingWeapon[playerid] = 0;
		}

		if(AccountData[playerid][toySelected] != -1)
		{
			new id = AccountData[playerid][toySelected];
			SetPlayerAttachedObject(playerid,
				id,
				modelid,
				boneid,
				pToys[playerid][id][toy_x],
				pToys[playerid][id][toy_y],
				pToys[playerid][id][toy_z],
				pToys[playerid][id][toy_rx],
				pToys[playerid][id][toy_ry],
				pToys[playerid][id][toy_rz],
				pToys[playerid][id][toy_sx],
				pToys[playerid][id][toy_sy],
				pToys[playerid][id][toy_sz]);
			AccountData[playerid][toySelected] = -1;
		}
	}
	SetPVarInt(playerid, "UpdatedToy", 1);
	return 1;
}

public OnPlayerEditDynamicObject(playerid, STREAMER_TAG_OBJECT: objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz)
{
	if(AccountData[playerid][EditingDeerID] != -1 && Iter_Contains(Hunt, AccountData[playerid][EditingDeerID]))
	{
		if(response == EDIT_RESPONSE_FINAL)
	    {
	        new etid = AccountData[playerid][EditingDeerID];
	        HuntData[etid][DeerPOS][0] = x;
	        HuntData[etid][DeerPOS][1] = y;
	        HuntData[etid][DeerPOS][2] = z;
	        HuntData[etid][DeerROT][0] = rx;
	        HuntData[etid][DeerROT][1] = ry;
	        HuntData[etid][DeerROT][2] = rz;

	        SetDynamicObjectPos(objectid, HuntData[etid][DeerPOS][0], HuntData[etid][DeerPOS][1], HuntData[etid][DeerPOS][2]);
	        SetDynamicObjectRot(objectid, HuntData[etid][DeerROT][0], HuntData[etid][DeerROT][1], HuntData[etid][DeerROT][2]);

			Streamer_SetFloatData(STREAMER_TYPE_3D_TEXT_LABEL, HuntData[etid][DeerLabel], E_STREAMER_X, HuntData[etid][DeerPOS][0]);
			Streamer_SetFloatData(STREAMER_TYPE_3D_TEXT_LABEL, HuntData[etid][DeerLabel], E_STREAMER_Y, HuntData[etid][DeerPOS][1]);
			Streamer_SetFloatData(STREAMER_TYPE_3D_TEXT_LABEL, HuntData[etid][DeerLabel], E_STREAMER_Z, HuntData[etid][DeerPOS][2] + 1.1);

		    HuntSave(etid);
	        AccountData[playerid][EditingDeerID] = -1;
	    }
	    if(response == EDIT_RESPONSE_CANCEL)
	    {
	        new etid = AccountData[playerid][EditingDeerID];
	        SetDynamicObjectPos(objectid, HuntData[etid][DeerPOS][0], HuntData[etid][DeerPOS][1], HuntData[etid][DeerPOS][2]);
	        SetDynamicObjectRot(objectid, HuntData[etid][DeerROT][0], HuntData[etid][DeerROT][1], HuntData[etid][DeerROT][2]);
	        AccountData[playerid][EditingDeerID] = -1;
	    }
	}
	else if(AccountData[playerid][EditingLADANGID] != -1 && Iter_Contains(Ladang, AccountData[playerid][EditingLADANGID]))
	{
		if(response == EDIT_RESPONSE_FINAL)
	    {
	        new etid = AccountData[playerid][EditingLADANGID];
	        LadangData[etid][kanabisX] = x;
	        LadangData[etid][kanabisY] = y;
	        LadangData[etid][kanabisZ] = z;
	        LadangData[etid][kanabisRX] = rx;
	        LadangData[etid][kanabisRY] = ry;
	        LadangData[etid][kanabisRZ] = rz;

	        SetDynamicObjectPos(objectid, LadangData[etid][kanabisX], LadangData[etid][kanabisY], LadangData[etid][kanabisZ]);
	        SetDynamicObjectRot(objectid, LadangData[etid][kanabisRX], LadangData[etid][kanabisRY], LadangData[etid][kanabisRZ]);

		    Ladang_Save(etid);
	        AccountData[playerid][EditingLADANGID] = -1;
	    }

	    if(response == EDIT_RESPONSE_CANCEL)
	    {
	        new etid = AccountData[playerid][EditingLADANGID];
	        SetDynamicObjectPos(objectid, LadangData[etid][kanabisX], LadangData[etid][kanabisY], LadangData[etid][kanabisZ]);
	        SetDynamicObjectRot(objectid, LadangData[etid][kanabisRX], LadangData[etid][kanabisRY], LadangData[etid][kanabisRZ]);
	        AccountData[playerid][EditingLADANGID] = -1;
	    }
	}
	else if(AccountData[playerid][EditingATMID] != -1 && Iter_Contains(ATMS, AccountData[playerid][EditingATMID]))
	{
		if(response == EDIT_RESPONSE_FINAL)
	    {
	        new etid = AccountData[playerid][EditingATMID];
	        AtmData[etid][atmX] = x;
	        AtmData[etid][atmY] = y;
	        AtmData[etid][atmZ] = z;
	        AtmData[etid][atmRX] = rx;
	        AtmData[etid][atmRY] = ry;
	        AtmData[etid][atmRZ] = rz;

	        SetDynamicObjectPos(objectid, AtmData[etid][atmX], AtmData[etid][atmY], AtmData[etid][atmZ]);
	        SetDynamicObjectRot(objectid, AtmData[etid][atmRX], AtmData[etid][atmRY], AtmData[etid][atmRZ]);

		  	Atm_Refresh(etid);
		    Atm_Save(etid);
	        AccountData[playerid][EditingATMID] = -1;
	    }

	    if(response == EDIT_RESPONSE_CANCEL)
	    {
	        new etid = AccountData[playerid][EditingATMID];
	        SetDynamicObjectPos(objectid, AtmData[etid][atmX], AtmData[etid][atmY], AtmData[etid][atmZ]);
	        SetDynamicObjectRot(objectid, AtmData[etid][atmRX], AtmData[etid][atmRY], AtmData[etid][atmRZ]);
	        AccountData[playerid][EditingATMID] = -1;
	    }
	}
	return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
	if(pMapCP[playerid])
	{
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda berhasil sampai ke lokasi tujuan");
		DisablePlayerRaceCheckpoint(playerid);
		pMapCP[playerid] = false;
	}
	if(AccountData[playerid][pTrackCar] == 1)
	{
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda berhasil sampai ke lokasi tujuan");
		AccountData[playerid][pTrackCar] = 0;
		DisablePlayerRaceCheckpoint(playerid);
	}
	if(AccountData[playerid][pTrackHoused] == 1)
	{
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda berhasil sampai ke lokasi tujuan");
		AccountData[playerid][pTrackHoused] = 0;
		DisablePlayerRaceCheckpoint(playerid);
	}
	if (gPoliceAlertCP[playerid])
	{
		DisablePlayerRaceCheckpoint(playerid);
		gPoliceAlertCP[playerid] = false;
		ShowTDN(playerid, NOTIFICATION_INFO, "Checkpoint alert berhasil dijangkau dan dihapus.");
	}

	// if(!IsPlayerConnected(playerid)) return 1;
    // if(jobs::mixer[playerid][mixerDuty][1])
    // {
    //     DisablePlayerCheckpoint(playerid);
    //     DisablePlayerRaceCheckpoint(playerid);
        
    //     PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "MENUMPAHKAN");
    //     ShowProgressBar(playerid);

    //     jobs::mixer[playerid][mixerDuty][1] = false;

    //     if(jobs::mixer[playerid][mixerTimer] != -1)
    //     {
    //         KillTimer(jobs::mixer[playerid][mixerTimer]);
    //     }

    //     jobs::mixer[playerid][mixerTimer] = SetTimerEx("CorLokasi", 1000, true, "i", playerid);
    // }

    // if(jobs::mixer[playerid][mixerDuty][2])
    // {
    //     if(IsPlayerInAnyVehicle(playerid))
    //     {
    //         new vehicleid = GetPlayerVehicleID(playerid);
    //         if(IsValidVehicle(vehicleid))
    //         {
    //             RemovePlayerFromVehicle(playerid);
    //             DestroyVehicle(vehicleid);
    //         }

    //         GivePlayerMoneyEx(playerid, 2500);
    //         jobs::mixer[playerid][mixerDuty][2] = false;

    //         // Hapus checkpoint setelah pekerjaan selesai
    //         DisablePlayerCheckpoint(playerid);
    //         DisablePlayerRaceCheckpoint(playerid);

    //         jobs_mixer_reset_enum(playerid);
    //     }
    // }
	return 1;
}

Dialog:DeathRespawnConf(playerid, response, listitem, inputtext[])
{
	if(!response) return 1;
	if(!IsPlayerInjured(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang Pingsan!");

	SetPlayerHealthEx(playerid, 100.0);
	AccountData[playerid][pHunger] = 100;
	AccountData[playerid][pThirst] = 100;
	AccountData[playerid][pStress] = 0;
	AccountData[playerid][pInjured] = 0;
	AccountData[playerid][pInjuredTime] = 0;
	Inventory_Clear(playerid);
	ResetPlayerWeaponsEx(playerid);
	
	ShowTDN(playerid, NOTIFICATION_INFO, "Kamu koma dan dilarikan ke Rumah Sakit");

	SetPlayerPositionEx(playerid, 1126.2239, -1352.7131, 19.9672, 85.2996, 5000);
	SetPlayerVirtualWorldEx(playerid, 0);
	SetPlayerInteriorEx(playerid, 0);

	foreach(new pid : Player) {
		if(AccountData[pid][pFaction] == FACTION_EMS && AccountData[pid][pDutyEms]) {
			SendClientMessageEx(pid, -1, ""YELLOW"[Koma]"WHITE_E" %s telah terbangun di ruang koma", ReturnName(playerid));
		}
	}

	AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], "KOMA", 0);
	return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	/* Custom Ammo System */
	if (PRESSED(KEY_FIRE) || PRESSED(KEY_HANDBRAKE))
	{
		new weaponid;

		if((weaponid = GetPlayerWeaponEx(playerid)) != 0 && AccountData[playerid][pAmmo][g_aWeaponSlots[weaponid]] <= 0 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) 
		{
			TogglePlayerControllable(playerid, 0);
			SetPlayerArmedWeapon(playerid, 0);
			TogglePlayerControllable(playerid, 1);
			SetCameraBehindPlayer(playerid);

			ShowPlayerFooter(playerid, "Tidak ada peluru pada senjata ini!", 3000, true);
		}
	}
	/* Senter */
	if(PRESSED(KEY_CTRL_BACK) && AccountData[playerid][pFlashShown] && !IsPlayerInAnyVehicle(playerid))
	{
		switch(AccountData[playerid][pFlashOn])
		{
			case false:
            {
				if (!IsPlayerPlayingAnimation(playerid, "ped", "phone_talk"))
				{
					ApplyAnimationEx(playerid, "ped", "phone_talk", 1.1, 1, 1, 1, 1, 1, 1);
				}
				
                AccountData[playerid][pFlashOn] = true;
                SetPlayerAttachedObject(playerid, 5, 19295, 1,  0.068000, 0.606000, 0.000000,  0.000000, -4.500000, 12.299996,  1.000000, 1.000000, 1.020000); // Light Objects
                ShowPlayerFooter(playerid, "~w~Senter ~g~Nyala", 3000);
            }
            case true:
            {
                AccountData[playerid][pFlashOn] = false;
                RemovePlayerAttachedObject(playerid, 5);
                ShowPlayerFooter(playerid, "~w~Senter ~r~Mati", 3000);
            }
		}
	}
	if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && IsPlayerNearWorkshop(playerid))
	{
		if(!AccountData[playerid][IsLoggedIn]) return 0;
	
		new id = IsPlayerNearWorkshop(playerid);
		if(id > -1)
		{
			if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pemilik atau pekerja di Workshop ini!");
			
			ShowWorkshopMenu(playerid, id);
		}
	}
	/* Greenzone */
	if (newkeys & KEY_FIRE && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT &&
		(IsPlayerInDynamicArea(playerid, AreaData[BandaraGreenZone]) || IsPlayerInDynamicArea(playerid, AreaData[CarnavalGreenZone])))
	{
		ClearAnimations(playerid, 1);
		SetPlayerArmedWeapon(playerid, 0);

		SetPVarInt(playerid, "GreenzoneWarning", GetPVarInt(playerid, "GreenzoneWarning") + 1);
		Info(playerid, "Anda tidak dapat memukul / menembak di Area Greenzone. "RED"%d/5"WHITE" anda akan ditendang dari server.", GetPVarInt(playerid, "GreenzoneWarning"));

		if (GetPVarInt(playerid, "GreenzoneWarning") == 5)
		{
			ShowTDN(playerid, NOTIFICATION_ERROR, "Anda telah ditendang dari server karena mendapatkan "RED"5"WHITE" peringatan Greenzone!");
			DeletePVar(playerid, "GreenzoneWarning");
			KickEx(playerid);
		}
	}
	// Newbie punch lock: require 24h playtime
	if (newkeys & KEY_FIRE && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
	{
		new total = AccountData[playerid][PlayTime] + AccountData[playerid][PlayTimer];
		if((total < 86400 || GetPVarInt(playerid, "NewbieLockUntil") > gettime()) && !AccountData[playerid][pAdminDuty] && !GetPVarInt(playerid, "NewbieBypass"))
		{
			ClearAnimations(playerid, 1);
			SetPlayerArmedWeapon(playerid, 0);
			ShowPlayerFooter(playerid, "Anda warga baru. Tunggu 24 jam bermain untuk menyerang.", 3000, true);
			ShowNewbieTextdraw(playerid);
			if(GetPlayerWeapon(playerid) == 0)
			{
				SetPVarInt(playerid, "NewbiePunchWarning", GetPVarInt(playerid, "NewbiePunchWarning") + 1);
				Info(playerid, "Anda warga baru. "RED"%d/5"WHITE" pukulan akan menyebabkan ditendang.", GetPVarInt(playerid, "NewbiePunchWarning"));
				if (GetPVarInt(playerid, "NewbiePunchWarning") >= 5)
				{
					ShowTDN(playerid, NOTIFICATION_ERROR, "Anda telah ditendang dari server karena mencoba memukul sebanyak "RED"5"WHITE" kali saat status Warga Baru!");
					DeletePVar(playerid, "NewbiePunchWarning");
					KickEx(playerid);
				}
			}
			return 1;
		}
	}
	if((newkeys & KEY_JUMP) && !IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && !IsPlayerInEvent(playerid) && !DurringHunting[playerid] && !AccountData[playerid][pAdminDuty])
	{
		PlayerPressedJump[playerid] ++;
		SetTimerEx("PressJumpReset", 3000, false, "d", playerid); // Makes it where if they dont spam the jump key, they wont fall

		if(PlayerPressedJump[playerid] >= 3)
		{
			new Float: POS[3];
			GetPlayerPos(playerid, POS[0], POS[1], POS[2]);
			SetPlayerPos(playerid, POS[0], POS[1], POS[2] - 0.2);
			ApplyAnimationEx(playerid, "PED", "FALL_collapse", 4.1, 0, 1, 0, 0, 0, 1); // applies the fallover animation
			PlayerPlayNearbySound(playerid, 1163);
			PlayerPressedJump[playerid] = 0;
		}
	}

	/* Voting Systemm */
	if(newkeys & KEY_JUMP && !(oldkeys & KEY_JUMP) && !AccountData[playerid][pInjured])
	{
		if(AccountData[playerid][pRFoot] < 50 || AccountData[playerid][pLFoot] < 50)
		{
			ApplyAnimation(playerid, "GYMNASIUM", "gym_jog_falloff", 4.1, 0, 1, 1, 0, 0);
		}
	}

	// if(newkeys & KEY_YES && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
	// {
	// 	if(IsPlayerInRangeOfPoint(playerid, 2.5, 1673.7780, -2326.5752, 13.5469))
	// 	{
	// 		if(AccountData[playerid][pClaimStarterpack]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah mengambil staterpack sebelumnya!");

	// 		AccountData[playerid][pClaimStarterpack] = true;
	// 		Inventory_Add(playerid, "Backpack", 3026);
	// 		ShowItemBox(playerid, "Received 1x", "Backpack", 3026);
			
	// 		VehicleStaterpack_Create(playerid, 468, FACTION_NONE, 1675.6842, -2323.6116, 13.3828, 86.2631, random(255), random(255), 60000);
	// 		ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengambil staterpack, silahkan open backpack anda!");
	// 	}
	// }

	if(newkeys & KEY_YES && OpenVote == 1 && !PlayerVoting[playerid] && !AccountData[playerid][ActivityTime])
	{

		ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda Setuju untuk Voting yang sedang berjalan");

		PlayerVoting[playerid] = true;
		VoteYes += 1;
		SendClientMessageToAllEx(-1, ""YELLOW"VOTE:"WHITE" %s // Yes: "GREEN"%d"WHITE" // No: "RED"%d", VoteText, VoteYes, VoteNo);
		SendClientMessageToAllEx(-1, "~> Gunakan "GREEN"Y"WHITE" untuk Yes & "RED"N"WHITE" untuk Tidak");
	}

	if(newkeys & KEY_NO && OpenVote == 1 && !PlayerVoting[playerid] && !AccountData[playerid][ActivityTime])
	{

		ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda Tidak Setuju untuk Voting yang sedang berjalan");

		PlayerVoting[playerid] = true;
		VoteNo += 1;
		SendClientMessageToAllEx(-1, ""YELLOW"VOTE:"WHITE" %s // Yes: "GREEN"%d"WHITE" // No: "RED"%d", VoteText, VoteYes, VoteNo);
		SendClientMessageToAllEx(-1, "~> Gunakan "GREEN"Y"WHITE" untuk Yes & "RED"N"WHITE" untuk Tidak");
	}

	/* Anti Bike Hopping */
	if(PRESSED(KEY_ACTION))
	{
		static vehicleid;

		if(IsPlayerInAnyVehicle(playerid) && ((vehicleid = GetPlayerVehicleID(playerid)) != INVALID_VEHICLE_ID))
		{
			if(GetVehicleModel(vehicleid) == 509 || GetVehicleModel(vehicleid) == 481 || GetVehicleModel(vehicleid) == 510)
			{
				new Float:x, Float:y, Float:z;
				GetPlayerPos(playerid, x, y, z);
				SetPlayerPos(playerid, x, y, z);

				ApplyAnimationEx(playerid, "PED", "BIKE_fall_off", 4.1, 0, 1, 1, 1, 0, 1);
			}
		}
	}

	if(newkeys & KEY_JUMP && !(oldkeys & KEY_JUMP) && GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_CUFFED && !AccountData[playerid][pInjured])
	{
		ApplyAnimation(playerid, "GYMNASIUM", "gym_jog_falloff", 4.1, 0, 1, 1, 0, 0);
	}
	if(newkeys & KEY_YES && AccountData[playerid][pInjured])
	{
		Dialog_Show(playerid, DeathRespawnConf, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Konfirmasi Koma",
		"Apakah anda benar benar yakin ingin melakukan tindakan ini?\n"RED"NOTE: Tindakan ini dapat menghilangkan semua barang di tas termasuk uang cash", "Iya", "Tidak");
	}
	if(newkeys & KEY_SECONDARY_ATTACK && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
		foreach(new famid : Families)
		{
			if(IsPlayerInRangeOfPoint(playerid, 2.5, FamData[famid][famExtPos][0], FamData[famid][famExtPos][1], FamData[famid][famExtPos][2]))
			{
				if(FamData[famid][famIntPos][0] == 0.0 && FamData[famid][famIntPos][1] == 0.0 && FamData[famid][famIntPos][2] == 0.0)
					return ShowTDN(playerid, NOTIFICATION_ERROR, "Interior ini masih kosong!");

				OnFakespawnCheck(playerid);
				
				// if(AccountData[playerid][pFaction] == FACTION_NONE)
				// 	if(AccountData[playerid][pFamily] == -1)
				// 		return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu tidak memiliki Akses untuk masuk kedalam sini!");
				
				AccountData[playerid][UsingDoor] = true;
				Player_ToggleTelportAntiCheat(playerid, false);
				SetPlayerPositionEx(playerid, FamData[famid][famIntPos][0], FamData[famid][famIntPos][1], FamData[famid][famIntPos][2], FamData[famid][famIntPos][3], 5000);

				SetPlayerInterior(playerid, FamData[famid][famInterior]);
				SetPlayerVirtualWorld(playerid, famid);
				SetCameraBehindPlayer(playerid);
				SetPlayerWeather(playerid, 0);
				AccountData[playerid][pInFamily] = famid;
			}
			new infamily = AccountData[playerid][pInFamily];
			if(AccountData[playerid][pInFamily] != -1 && IsPlayerInRangeOfPoint(playerid, 2.5, FamData[infamily][famIntPos][0], FamData[infamily][famIntPos][1],FamData[infamily][famIntPos][2]))
			{
				AccountData[playerid][pInFamily] = -1;
				AccountData[playerid][UsingDoor] = true;
				Player_ToggleTelportAntiCheat(playerid, false);
				SetPlayerPositionEx(playerid, FamData[infamily][famExtPos][0], FamData[infamily][famExtPos][1], FamData[infamily][famExtPos][2], FamData[infamily][famExtPos][3], 5000);

				SetPlayerInterior(playerid, 0);
				SetPlayerVirtualWorld(playerid, 0);
				SetCameraBehindPlayer(playerid);
				SetPlayerWeather(playerid, WorldWeather);
				Player_ToggleTelportAntiCheat(playerid, true);
			}
		}
	}
	if((newkeys & KEY_NO) && aOfferID[playerid] == INVALID_PLAYER_ID)
	{
		if (AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuka radial saat actvitity berjalan!");
	
		ShowPlayerRadial1(playerid, true);
		//Toggle_AllTextdraws(playerid, false);
	}
	if(newkeys & KEY_LOOK_BEHIND)
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT) return 0;

		new vehid = GetNearestVehicleToPlayer(playerid, 3.0, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!");

		foreach(new iter : PvtVehicles)
		{
			if(PlayerVehicle[iter][pVehExists])
			{
				if(PlayerVehicle[iter][pVehPhysic] == vehid)
				{
					if(PlayerVehicle[iter][pVehOwnerID] != AccountData[playerid][pID]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini bukan milik anda!");
					
					PlayerPlaySound(playerid, 1147, 0.0, 0.0, 0.0);
					PlayerVehicle[iter][pVehLocked] = !(PlayerVehicle[iter][pVehLocked]);

					PlayerPlayNearbySound(playerid, SOUND_LOCK_CAR_DOOR);
					LockVehicle(PlayerVehicle[iter][pVehPhysic], PlayerVehicle[iter][pVehLocked]);
					ToggleVehicleLights(PlayerVehicle[iter][pVehPhysic], PlayerVehicle[iter][pVehLocked]);
					GameTextForPlayer(playerid, sprintf("~w~%s %s", GetVehicleName(PlayerVehicle[iter][pVehPhysic]), PlayerVehicle[iter][pVehLocked] ? ("~r~Locked") : ("~g~Unlocked")), 4000, 4);
					return 1;
				}
			}
		}

		if(AccountData[playerid][pJobVehicle] != 0)
		{
			if (vehid == JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle])
			{
				PlayerPlaySound(playerid, 1147, 0.0, 0.0, 0.0);
				JobVehicle[AccountData[playerid][pJobVehicle]][Locked] = !(JobVehicle[AccountData[playerid][pJobVehicle]][Locked]);

				PlayerPlayNearbySound(playerid, SOUND_LOCK_CAR_DOOR);
				LockVehicle(JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle], JobVehicle[AccountData[playerid][pJobVehicle]][Locked]);
				ToggleVehicleLights(JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle], JobVehicle[AccountData[playerid][pJobVehicle]][Locked]);
				GameTextForPlayer(playerid, sprintf("~w~%s %s", GetVehicleName(JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle]), JobVehicle[AccountData[playerid][pJobVehicle]][Locked] ? ("~r~Locked") : ("~g~Unlocked")), 4000, 4);
			}
			return 1;
		}

		if(PlayerElectricJob[playerid][ElectricVehicle] == vehid)
		{
			PlayerPlaySound(playerid, 1147, 0.0, 0.0, 0.0);
			PlayerElectricJob[playerid][ElectricLocked] = !(PlayerElectricJob[playerid][ElectricLocked]);

			PlayerPlayNearbySound(playerid, SOUND_LOCK_CAR_DOOR);
			LockVehicle(PlayerElectricJob[playerid][ElectricVehicle], PlayerElectricJob[playerid][ElectricLocked]);
			ToggleVehicleLights(PlayerElectricJob[playerid][ElectricVehicle], PlayerElectricJob[playerid][ElectricLocked]);
			GameTextForPlayer(playerid, sprintf("~w~%s %s", GetVehicleName(PlayerElectricJob[playerid][ElectricVehicle]), PlayerElectricJob[playerid][ElectricLocked] ? ("~r~Locked") : ("~g~Unlocked")), 4000, 4);
			return 1;
		}
	}
	if(newkeys & KEY_CTRL_BACK && IsPlayerInjured(playerid))
	{
		SetPlayerInterior(playerid, 0);
		SetPlayerVirtualWorld(playerid, 0);
	}
	if(newkeys & KEY_WALK && AccountData[playerid][pInjured])
	{
		if(SignalExists[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah mengirim signal, tunggu hingga EMS merespon!");
		
		SignalExists[playerid] = true;
		SignalTimer[playerid] = 120;
		GetPlayerPos(playerid, SignalPos[playerid][0], SignalPos[playerid][1], SignalPos[playerid][2]);
		ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim sinyal kepada EMS!");
		foreach(new i : Player) if (AccountData[i][pSpawned] && AccountData[i][pFaction] == FACTION_EMS) if (AccountData[i][pDutyEms])
		{
			SendClientMessageEx(i, -1, ""RED"[Emergency Signal]"WHITE" Signal "YELLOW"[ID: %d]"WHITE" diterima dari daerah "YELLOW"%s.", playerid, GetLocation(SignalPos[playerid][0], SignalPos[playerid][1], SignalPos[playerid][2]));
			Syntax(i, "Gunakan "YELLOW"'/acceptsinyal [signal id]'"WHITE" untuk merespon");
		}
	}
	//-----[ Toll System ]-----	
	if(newkeys & KEY_CROUCH)
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			new forcount = MuchNumber(sizeof(BarrierInfo));
			for(new i = 0; i < forcount;i ++)
			{
				if(i < sizeof(BarrierInfo))
				{
					if(IsPlayerInRangeOfPoint(playerid,8.0,BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z]))
					{
						if(BarrierInfo[i][brOrg] == TEAM_NONE)
						{
							if(!BarrierInfo[i][brOpen])
							{
								if(AccountData[playerid][pMoney] < 50 && !IsVehicleFaction(GetPlayerVehicleID(playerid)))
								{
									ShowTDN(playerid, NOTIFICATION_INFO, "Anda membutuhkan "YELLOW"$50"WHITE" untuk membayar Toll");
								}
								else if(IsVehicleFaction(GetPlayerVehicleID(playerid)))
								{
									MoveDynamicObject(gBarrier[i],BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z]+0.7,BARRIER_SPEED,0.0,0.0,BarrierInfo[i][brPos_A]+180);
									SetTimerEx("BarrierClose",5000,0,"i",i);
									BarrierInfo[i][brOpen] = true;
									ShowTDN(playerid, NOTIFICATION_INFO, "Hati hati dijalan, Pintu akan tertutup selama 5 detik");
									if(BarrierInfo[i][brForBarrierID] != -1)
									{
										new barrierid = BarrierInfo[i][brForBarrierID];
										MoveDynamicObject(gBarrier[barrierid],BarrierInfo[barrierid][brPos_X],BarrierInfo[barrierid][brPos_Y],BarrierInfo[barrierid][brPos_Z]+0.7,BARRIER_SPEED,0.0,0.0,BarrierInfo[barrierid][brPos_A]+180);
										BarrierInfo[barrierid][brOpen] = true;
									}
								}
								else
								{
									MoveDynamicObject(gBarrier[i],BarrierInfo[i][brPos_X],BarrierInfo[i][brPos_Y],BarrierInfo[i][brPos_Z]+0.7,BARRIER_SPEED,0.0,0.0,BarrierInfo[i][brPos_A]+180);
									SetTimerEx("BarrierClose",5000,0,"i",i);
									BarrierInfo[i][brOpen] = true;
									ShowTDN(playerid, NOTIFICATION_INFO, "Hati hati dijalan, Pintu akan tertutup selama 5 detik");
									ShowItemBox(playerid, "Removed $50", "Uang", 1212);
									TakePlayerMoneyEx(playerid, 50);
									if(BarrierInfo[i][brForBarrierID] != -1)
									{
										new barrierid = BarrierInfo[i][brForBarrierID];
										MoveDynamicObject(gBarrier[barrierid],BarrierInfo[barrierid][brPos_X],BarrierInfo[barrierid][brPos_Y],BarrierInfo[barrierid][brPos_Z]+0.7,BARRIER_SPEED,0.0,0.0,BarrierInfo[barrierid][brPos_A]+180);
										BarrierInfo[barrierid][brOpen] = true;
									}
								}
							}
						}
						else ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat membuka toll ini!");
						break;
					}
				}
			}
		}
	}
	return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
	new vehicleid = GetPlayerVehicleID(playerid);
	if((oldstate == PLAYER_STATE_ONFOOT && newstate == PLAYER_STATE_DRIVER) && AccountData[playerid][pTogAutoEngine])
	{
		if(!GetEngineStatus(vehicleid))
		{
			if(IsEngineVehicle(vehicleid) && !IsADealerVehicle(playerid, vehicleid))
			{
				AccountData[playerid][pTurningEngine] = true;
				SetTimerEx("EngineStatus", 2500, false, "id", playerid, vehicleid);
				SendRPMeAboveHead(playerid, "Mencoba menghidupkan mesin kendaraan", X11_PLUM1);
			}
		}
	}
	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
    {
        isTackleMode[playerid] = false;
    }
	if(newstate == PLAYER_STATE_WASTED && AccountData[playerid][pJail] < 1)
    {	
		if(IsPlayerInEvent(playerid))
			return 1;

		SetPlayerArmedWeapon(playerid, 0);
		ResetPlayer(playerid);

		if(!AccountData[playerid][pInjured] && !IsPlayerInEvent(playerid))
		{
			AccountData[playerid][pInjured] = 1;
			AccountData[playerid][pInjuredTime] = 1800;
			
			AccountData[playerid][pInt] = GetPlayerInterior(playerid);
			AccountData[playerid][pWorld] = GetPlayerVirtualWorld(playerid);

			GetPlayerPos(playerid, AccountData[playerid][pPosX], AccountData[playerid][pPosY], AccountData[playerid][pPosZ]);
			GetPlayerFacingAngle(playerid, AccountData[playerid][pPosA]);
		}
	}
	//Spec Player
	if(newstate == PLAYER_STATE_ONFOOT)
	{
		if(AccountData[playerid][playerSpectated] != 0)
		{
			foreach(new ii : Player)
			{
				if(AccountData[ii][pSpec] == playerid)
				{
					PlayerSpectatePlayer(ii, playerid);
					SendClientMessageEx(ii, -1, ""PINK1"SPEC:"WHITE" %s(%d) sekarang berjalan kaki.", AccountData[playerid][pName], playerid);
				}
			}
		}
	}
	if(newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER)
    {
		OnFakespawnCheck(playerid);

		if(AccountData[playerid][pInjured] == 1)
        {
            //RemoveFromVehicle(playerid);
			RemovePlayerFromVehicle(playerid);
            SetPlayerHealthEx(playerid, 99999);
        }
		foreach (new ii : Player) if(AccountData[ii][pSpec] == playerid) 
		{
            PlayerSpectateVehicle(ii, GetPlayerVehicleID(playerid));
        }
	}

	new vehicle_index = -1;
	if((vehicle_index = Vehicle_ReturnID(vehicleid)) != -1)
	{
		if((newstate == PLAYER_STATE_DRIVER || newstate == PLAYER_STATE_PASSENGER) && PlayerVehicle[vehicle_index][vehAudio])
		{
			PlayVehicleAudio(playerid, vehicle_index);
		}
	}
	
	if((oldstate == PLAYER_STATE_DRIVER || oldstate == PLAYER_STATE_PASSENGER) && AccountData[playerid][pVehAudioPlay])
	{
		StopAudioStreamForPlayer(playerid);
		AccountData[playerid][pVehAudioPlay] = 0;
	}
	if(oldstate == PLAYER_STATE_DRIVER)
    {	
		if(GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_CARRY || GetPlayerSpecialAction(playerid) == SPECIAL_ACTION_CUFFED)
            return RemovePlayerFromVehicle(playerid);/*RemoveFromVehicle(playerid);*/
		
		for(new txd; txd < 17; txd ++)
		{
			PlayerTextDrawHide(playerid, VehicleTextdraws[playerid][txd]);
		}
	}
	else if(newstate == PLAYER_STATE_DRIVER)
    {	
		static pviterid = -1;

		if((pviterid = Vehicle_Nearest2(playerid)) != -1)
		{
			if(IsABike(PlayerVehicle[pviterid][pVehPhysic]) || GetVehicleModel(PlayerVehicle[pviterid][pVehPhysic]) == 424)
			{
				if(PlayerVehicle[pviterid][pVehLocked])
				{
					RemovePlayerFromVehicle(playerid);
					ClearAnimations(playerid, 1);
					ShowTDN(playerid, NOTIFICATION_ERROR, "Kendaraan ini terkunci!");
					return 1;
				}
			}
		}
		if(!IsEngineVehicle(vehicleid))
        {
            SwitchVehicleEngine(vehicleid, true);
        }
		
		for(new txd; txd < 17; txd ++)
		{
			PlayerTextDrawShow(playerid, VehicleTextdraws[playerid][txd]);
		}
		new Float:health;
        GetVehicleHealth(GetPlayerVehicleID(playerid), health);
        VehicleHealthSecurityData[GetPlayerVehicleID(playerid)] = health;
        VehicleHealthSecurity[GetPlayerVehicleID(playerid)] = true;
		
		if(AccountData[playerid][playerSpectated] != 0)
  		{
			foreach(new ii : Player)
			{
    			if(AccountData[ii][pSpec] == playerid)
			    {
        			PlayerSpectateVehicle(ii, vehicleid);
					SendClientMessageEx(ii, -1, ""YELLOW"SPEC:"WHITE" %s(%d) sekarang mengendarai %s(%d).", AccountData[playerid][pName], playerid, GetVehicleModelName(GetVehicleModel(vehicleid)), vehicleid);
				}
			}
		}
		SetPVarInt(playerid, "LastVehicleID", vehicleid);
	}
	return 1;
}

public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{
	
	OnFakespawnCheck(playerid);

	new total = AccountData[playerid][PlayTime] + AccountData[playerid][PlayTimer];
	if((total < 86400 || GetPVarInt(playerid, "NewbieLockUntil") > gettime()) && !AccountData[playerid][pAdminDuty] && !GetPVarInt(playerid, "NewbieBypass") && !IsPlayerInEvent(playerid))
	{
		SetPlayerArmedWeapon(playerid, 0);
		return 1;
	}

	switch(weaponid){ case 0..18, 39..54: return 1;} //invalid weapons

	if((weaponid = GetPlayerWeaponEx(playerid)) != 0 && AccountData[playerid][pAmmo][g_aWeaponSlots[weaponid]] <= 0 && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && !IsPlayerInEvent(playerid)) 
	{
		TogglePlayerControllable(playerid, 0);
		SetPlayerArmedWeapon(playerid, 0);
		TogglePlayerControllable(playerid, 1);
		SetCameraBehindPlayer(playerid);

		ShowPlayerFooter(playerid, "Tidak ada peluru pada senjata ini!", 3000, true);
	}

    if(weaponid == GetWeapon(playerid) && (weaponid >= 22 && weaponid <= 38) && !IsPlayerInEvent(playerid))
    {
		new slot = g_aWeaponSlots[weaponid];
		if(AccountData[playerid][pAmmo][slot]) {
			
			AccountData[playerid][pAmmo][slot]--;
			PlayerTextDrawSetString(playerid, AMMOTD[playerid], sprintf("%d", AccountData[playerid][pAmmo][g_aWeaponSlots[weaponid]]));

			if(AccountData[playerid][pAmmo][slot] <= 0) {
				AccountData[playerid][pAmmo][slot] = 0;
				SetPlayerArmedWeapon(playerid, 0);
				Info(playerid, "Peluru pada senjata "RED"(%s) "WHITE"sudah habis.", ReturnWeaponName(weaponid));	
			}
		}	
	}

	if(PlayerHasTazer(playerid) && AccountData[playerid][pFaction] == FACTION_POLISI)
	{
		SetPlayerArmedWeapon(playerid, 0);
		PlayerPlayNearbySound(playerid, 6003);
	}
	if(!PlayerTaserOn[playerid] && !IsPlayerInEvent(playerid) && !IsPlayerHunting(playerid)) {

		if(AccountData[playerid][pGuns][g_aWeaponSlots[weaponid]] != weaponid) {
			SendAdminMessage(X11_RED, "[Anticheat]: "YELLOW"%s "LIGHTGREY"is possible using weapon hack (%s)", GetName(playerid), ReturnWeaponName(weaponid));
			defer AC_SetWeaponBack[1000](playerid);
			ac_weapon_h[playerid]++;

			if(ac_weapon_h[playerid] >= 3) 
			{
				ac_weapon_h[playerid] = 0;
				SendClientMessageEx(playerid, X11_YELLOW, "(AntiCheat) "GREY"You have been kicked from the server because of using some suspicious programs (Weapon Hack)");
				KickEx(playerid);
			}
		}
	}
	return 1;
}

stock GivePlayerHealth(playerid,Float:Health)
{
	new Float:health; GetPlayerHealth(playerid,health);
	SetPlayerHealth(playerid,health+Health);
}

/*public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	new
        Float: vehicleHealth,
        playerVehicleId = GetPlayerVehicleID(playerid);

    new Float:health = GetPlayerHealth(playerid, health);
    GetVehicleHealth(playerVehicleId, vehicleHealth);
    if(AccountData[playerid][pSeatBelt] == 0 || AccountData[playerid][pHelmetOn] == 0)
    {
    	if(GetVehicleSpeed(vehicleid) <= 20)
    	{
    		new asakit = RandomEx(0, 1);
    		new bsakit = RandomEx(0, 1);
    		new csakit = RandomEx(0, 1);
    		AccountData[playerid][pLFoot] -= csakit;
    		AccountData[playerid][pLHand] -= bsakit;
    		AccountData[playerid][pRFoot] -= csakit;
    		AccountData[playerid][pRHand] -= bsakit;
    		AccountData[playerid][pHead] -= asakit;
    		GivePlayerHealth(playerid, -1);
    		return 1;
    	}
    	if(GetVehicleSpeed(vehicleid) <= 50)
    	{
    		new asakit = RandomEx(0, 2);
    		new bsakit = RandomEx(0, 2);
    		new csakit = RandomEx(0, 2);
    		new dsakit = RandomEx(0, 2);
    		AccountData[playerid][pLFoot] -= dsakit;
    		AccountData[playerid][pLHand] -= bsakit;
    		AccountData[playerid][pRFoot] -= csakit;
    		AccountData[playerid][pRHand] -= dsakit;
    		AccountData[playerid][pHead] -= asakit;
    		GivePlayerHealth(playerid, -2);
    		return 1;
    	}
    	if(GetVehicleSpeed(vehicleid) <= 90)
    	{
    		new asakit = RandomEx(0, 3);
    		new bsakit = RandomEx(0, 3);
    		new csakit = RandomEx(0, 3);
    		new dsakit = RandomEx(0, 3);
    		AccountData[playerid][pLFoot] -= csakit;
    		AccountData[playerid][pLHand] -= csakit;
    		AccountData[playerid][pRFoot] -= dsakit;
    		AccountData[playerid][pRHand] -= bsakit;
    		AccountData[playerid][pHead] -= asakit;
    		GivePlayerHealth(playerid, -5);
    		return 1;
    	}
    	return 1;
    }
    if(AccountData[playerid][pSeatBelt] == 1 || AccountData[playerid][pHelmetOn] == 1)
    {
    	if(GetVehicleSpeed(vehicleid) <= 20)
    	{
    		new asakit = RandomEx(0, 1);
    		new bsakit = RandomEx(0, 1);
    		new csakit = RandomEx(0, 1);
    		AccountData[playerid][pLFoot] -= csakit;
    		AccountData[playerid][pLHand] -= bsakit;
    		AccountData[playerid][pRFoot] -= csakit;
    		AccountData[playerid][pRHand] -= bsakit;
    		AccountData[playerid][pHead] -= asakit;
    		GivePlayerHealth(playerid, -1);
    		return 1;
    	}
    	if(GetVehicleSpeed(vehicleid) <= 50)
    	{
    		new asakit = RandomEx(0, 1);
    		new bsakit = RandomEx(0, 1);
    		new csakit = RandomEx(0, 1);
    		new dsakit = RandomEx(0, 1);
    		AccountData[playerid][pLFoot] -= dsakit;
    		AccountData[playerid][pLHand] -= bsakit;
    		AccountData[playerid][pRFoot] -= csakit;
    		AccountData[playerid][pRHand] -= dsakit;
    		AccountData[playerid][pHead] -= asakit;
    		GivePlayerHealth(playerid, -1);
    		return 1;
    	}
    	if(GetVehicleSpeed(vehicleid) <= 90)
    	{
    		new asakit = RandomEx(0, 1);
    		new bsakit = RandomEx(0, 1);
    		new csakit = RandomEx(0, 1);
    		new dsakit = RandomEx(0, 1);
    		AccountData[playerid][pLFoot] -= csakit;
    		AccountData[playerid][pLHand] -= csakit;
    		AccountData[playerid][pRFoot] -= dsakit;
    		AccountData[playerid][pRHand] -= bsakit;
    		AccountData[playerid][pHead] -= asakit;
    		GivePlayerHealth(playerid, -3);
    		return 1;
    	}
    }
    return 1;
}*/

public OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{
	OnFakespawnCheck(playerid);

	if(damagedid != INVALID_PLAYER_ID && weaponid == WEAPON_CHAINSAW) {
        TogglePlayerControllable(playerid, 0);
        SetPlayerArmedWeapon(playerid, 0);
        TogglePlayerControllable(playerid, 1);
        SetCameraBehindPlayer(playerid);

        SetPVarInt(playerid, "ChainsawWarning", GetPVarInt(playerid, "ChainsawWarning")+1);

        if(GetPVarInt(playerid, "ChainsawWarning") == 3) {
			SendClientMessageToAllEx(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena Abusing Chainsaw!", ReturnName(playerid), playerid);
            DeletePVar(playerid, "ChainsawWarning");
            KickEx(playerid);
        }
    }
	else if(damagedid != INVALID_PLAYER_ID)
	{
		AccountData[damagedid][pLastShot] = playerid;
		AccountData[damagedid][pShotTime] = gettime();
		if(AccountData[playerid][pFaction] == FACTION_POLISI && PlayerHasTazer(playerid) && !AccountData[damagedid][pStunned])
		{
			if(GetPlayerState(damagedid) != PLAYER_STATE_ONFOOT)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut harus keadaan onfoot untuk dilumpuhkan!");
			
			if(GetPlayerDistanceFromPlayer(playerid, damagedid) > 5.0)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu harus lebih dekat untuk melumpuhkan pemain tersebut!");
			
			AccountData[damagedid][pStunned] = 10;
			TogglePlayerControllable(damagedid, 0);
			
			ApplyAnimation(damagedid, "CRACK", "crckdeth4", 4.0, 0, 0, 0, 1, 0, 1);
			ShowTDN(damagedid, NOTIFICATION_ERROR, "Kamu terkena stun gun / taser!");
		}
	}
	return 1;
}

public OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid, bodypart)
{
	if(!IsPlayerInEvent(playerid))
	{
		new sakit = RandomEx(1, 4);
		new asakit = RandomEx(1, 5);
		new bsakit = RandomEx(1, 7);
		new csakit = RandomEx(1, 4);
		if(issuerid != INVALID_PLAYER_ID && GetPlayerWeapon(issuerid) && bodypart == 9)
		{
			AccountData[playerid][pHead] -= 20;
		}
		if(issuerid != INVALID_PLAYER_ID && GetPlayerWeapon(issuerid) && bodypart == 3)
		{
			AccountData[playerid][pPerut] -= sakit;
		}
		if(issuerid != INVALID_PLAYER_ID && GetPlayerWeapon(issuerid) && bodypart == 6)
		{
			AccountData[playerid][pRHand] -= bsakit;
		}
		if(issuerid != INVALID_PLAYER_ID && GetPlayerWeapon(issuerid) && bodypart == 5)
		{
			AccountData[playerid][pLHand] -= asakit;
		}
		if(issuerid != INVALID_PLAYER_ID && GetPlayerWeapon(issuerid) && bodypart == 8)
		{
			AccountData[playerid][pRFoot] -= csakit;
		}
		if(issuerid != INVALID_PLAYER_ID && GetPlayerWeapon(issuerid) && bodypart == 7)
		{
			AccountData[playerid][pLFoot] -= bsakit;	
		}
	}
	if (issuerid != INVALID_PLAYER_ID && bodypart == 3 && weaponid >= 22 && weaponid <= 45)
	{
		static Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);

		foreach (new i : Player)
		{
			if (IsPlayerConnected(i) && SQL_IsCharacterLogged(i))
			{
				if (AccountData[i][pFaction] == FACTION_POLISI && AccountData[i][pDutyPD])
				{
					SendClientMessageEx(i, X11_ORANGE1, "[WAR ALERT]"WHITE" Terdeteksi penembakan di daerah %s.", GetLocation(x, y, z));
					SetPlayerRaceCheckpoint(i, 1, x, y, z, 0.0, 0.0, 0.0, 10.0);
					gPoliceAlertCP[i] = true; // Tandai checkpoint aktif
				}
			}
		}
	}
    return 1;
}

public OnPlayerUpdate(playerid)
{
	if(!AccountData[playerid][pSpawned]) 
		return 0;

	static s_Keys, s_UpDown, s_LeftRight;
    GetPlayerKeys( playerid, s_Keys, s_UpDown, s_LeftRight );

    if ( AccountData[playerid][pFreeze] && ( s_Keys || s_UpDown || s_LeftRight ) )
        return 0;

	CheckPlayerInSpike(playerid);
    return 1;
}

FUNC:: VehicleUpdate()
{
	for(new i = 1; i != MAX_VEHICLES; i ++) if (IsEngineVehicle(i) && GetEngineStatus(i))
	{
		if (GetFuel(i) > 0)
		{
			VehicleCore[i][vCoreFuel] --;
			if (GetFuel(i) <= 0)
			{
				SwitchVehicleEngine(i, false);
				VehicleCore[i][vCoreFuel] = 0;
			}
		}
	}

	foreach(new idx : PvtVehicles)
	{
		static oilWarn[MAX_VEHICLES];
		static tireWarn[MAX_VEHICLES];
		static pullWarn[MAX_VEHICLES];

		new vehid = PlayerVehicle[idx][pVehPhysic];
		if(vehid == INVALID_VEHICLE_ID || !IsValidVehicle(vehid)) continue;
		if(!IsEngineVehicle(vehid) || !GetEngineStatus(vehid)) continue;

		new Float:speed = GetVehicleSpeed(vehid);
		if(speed < 5.0) continue;

		new Float:oilDec = 0.25 + (speed / 250.0);
		PlayerVehicle[idx][pVehOilLife] -= oilDec;
		if(PlayerVehicle[idx][pVehOilLife] < 0.0) PlayerVehicle[idx][pVehOilLife] = 0.0;

		new Float:tireDec = 0.20 + (speed / 300.0);
		PlayerVehicle[idx][pVehTireWear][0] -= tireDec * 1.25;
		PlayerVehicle[idx][pVehTireWear][1] -= tireDec * 1.25;
		PlayerVehicle[idx][pVehTireWear][2] -= tireDec;
		PlayerVehicle[idx][pVehTireWear][3] -= tireDec;

		for(new t = 0; t < 4; t++) if(PlayerVehicle[idx][pVehTireWear][t] < 0.0) PlayerVehicle[idx][pVehTireWear][t] = 0.0;

		new panels, doors, lights, tires;
		GetVehicleDamageStatus(vehid, panels, doors, lights, tires);
		new bool:changed = false;
		for(new t = 0; t < 4; t++)
		{
			if(PlayerVehicle[idx][pVehTireWear][t] <= 0.0 && (((tires >> t) & 1) == 0))
			{
				tires |= (1 << t);
				changed = true;
			}
		}
		if(changed) UpdateVehicleDamageStatus(vehid, panels, doors, lights, tires);

		new driverid = GetVehicleDriver(vehid);
		if(driverid != INVALID_PLAYER_ID)
		{
			new now = gettime();

			if(PlayerVehicle[idx][pVehOilLife] <= 15.0)
			{
				if(now - oilWarn[vehid] >= 120)
				{
					ShowTDN(driverid, NOTIFICATION_WARNING, (PlayerVehicle[idx][pVehOilLife] <= 0.0) ? ("Oli mesin habis, mesin mulai rusak. Segera ganti oli di bengkel!") : ("Oli mesin hampir habis, segera ganti oli di bengkel!"));
					oilWarn[vehid] = now;
				}
			}

			if(PlayerVehicle[idx][pVehTireWear][0] <= 20.0 || PlayerVehicle[idx][pVehTireWear][1] <= 20.0 || PlayerVehicle[idx][pVehTireWear][2] <= 20.0 || PlayerVehicle[idx][pVehTireWear][3] <= 20.0)
			{
				if(now - tireWarn[vehid] >= 120)
				{
					ShowTDN(driverid, NOTIFICATION_WARNING, "Ban kendaraan mulai aus, segera ganti ban di bengkel!");
					tireWarn[vehid] = now;
				}
			}

			if((PlayerVehicle[idx][pVehTireWear][0] <= 20.0 || PlayerVehicle[idx][pVehTireWear][1] <= 20.0) && speed >= 30.0)
			{
				new Float:diff = PlayerVehicle[idx][pVehTireWear][1] - PlayerVehicle[idx][pVehTireWear][0];
				if(diff < 0.0) diff *= -1;
				if(diff >= 25.0 && now - pullWarn[vehid] >= 10)
				{
					new Float:a;
					GetVehicleZAngle(vehid, a);
					if(PlayerVehicle[idx][pVehTireWear][0] < PlayerVehicle[idx][pVehTireWear][1]) a -= 2.0;
					else a += 2.0;
					SetVehicleZAngle(vehid, a);
					pullWarn[vehid] = now;
				}
			}
		}

		if(PlayerVehicle[idx][pVehOilLife] <= 0.0)
		{
			new Float:vHealth;
			GetVehicleHealth(vehid, vHealth);
			vHealth -= 20.0;
			if(vHealth < 0.0) vHealth = 0.0;
			SetValidVehicleHealth(vehid, vHealth);
			if(vHealth < 350.0) SwitchVehicleEngine(vehid, false);
		}
	}
	return 1;
}

timer Vehicle_UpdatePosition[2000](vehicleid)
{
	new
		Float:x,
		Float:y,
		Float:z,
		Float:a
	;

	GetVehiclePos(vehicleid, x, y, z);
	GetVehicleZAngle(vehicleid, a);

	SetVehiclePos(vehicleid, x, y, z);
	SetVehicleZAngle(vehicleid, a);
	return 1;
}

public OnVehicleDamageStatusUpdate(vehicleid, playerid)
{
	new vehicle_index; // Index = Vehicle id ingame, vehicleid = Index DB
    vehicle_index = Vehicle_ReturnID(vehicleid);
    if(vehicle_index != -1)
    {
		new panels, doors, lights, tires;
		GetVehicleDamageStatus(PlayerVehicle[vehicle_index][pVehPhysic], panels, doors, lights, tires);
		if(PlayerVehicle[vehicle_index][pVehBodyUpgrade] == 3 && PlayerVehicle[vehicle_index][pVehBodyRepair] > 0)
		{
			panels = doors = lights = tires = 0;
            UpdateVehicleDamageStatus(PlayerVehicle[vehicle_index][pVehPhysic], panels, doors, lights, tires);
			PlayerVehicle[vehicle_index][pVehBodyRepair] -= 50.0;
		}
		else if(PlayerVehicle[vehicle_index][pVehBodyRepair] <= 0)
		{
			PlayerVehicle[vehicle_index][pVehBodyRepair] = 0;
		}
	}

	// if(playerid == INVALID_PLAYER_ID) return 1;
    // if(GetPlayerJob(playerid) == JOB_DRIVER_MIXERS && IsValidVehicle(vehicleid))
    // {
    //     if(jobs::mixer[playerid][mixerSlump] > 0)
    //     {
    //         new rand = RandomEx(2, 4);
    //         jobs::mixer[playerid][mixerSlump] -= rand;

    //         if(jobs::mixer[playerid][mixerSlump] < 0)
    //             jobs::mixer[playerid][mixerSlump] = 0;

    //         new Float:progressvalue = float(jobs::mixer[playerid][mixerSlump]) * 61.0 / 100.0;
    //         if(progressvalue < 0.0) progressvalue = 0.0;
    //         if(progressvalue > 61.0) progressvalue = 61.0;

    //         PlayerTextDrawTextSize(playerid, jobs::PBMixer[playerid], progressvalue, 13.0);
    //         PlayerTextDrawShow(playerid, jobs::PBMixer[playerid]);
    //     }
    // }
	return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
	return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	new Float: vhealth;

	AntiCheatGetVehicleHealth(vehicleid, vhealth);
	SetVehicleHealth(vehicleid, vhealth);
	return 1;
}

public OnVehicleSpawn(vehicleid)
{
	defer Vehicle_UpdatePosition(vehicleid);

	for (new vid = 1; vid < sizeof(JobVehicle); vid ++) if (JobVehicle[vid][Vehicle] != INVALID_VEHICLE_ID)
	{
		if (vehicleid == JobVehicle[vid][Vehicle])
		{
			foreach(new i : Player)
			{
				if (AccountData[i][pJobVehicle] == JobVehicle[vid][Vehicle])
				{
					if (AccountData[i][pJobVehicle] != 0)
					{
						DestroyJobVehicle(i);
						AccountData[i][pJobVehicle] = 0;
						break;
					}
				}
			}
		}
	}

	foreach(new i : PvtVehicles) if (vehicleid == PlayerVehicle[i][pVehPhysic] && IsValidVehicle(PlayerVehicle[i][pVehPhysic]))
	{
		if (PlayerVehicle[i][pVehRental] == -1)
		{
			PlayerVehicle[i][pVehInsuranced] = true;
			
			foreach(new pid : Player) if(PlayerVehicle[i][pVehOwnerID] == AccountData[pid][pID])
			{
				Syntax(pid, "Kendaraan anda rusak dan sudah dikirimkan ke Asuransi!");
			}
			
			for (new slot = 0; slot < MAX_VEHICLE_OBJECT; slot ++) if (VehicleObjects[i][slot][vehObjectExists])
			{
				if (VehicleObjects[i][slot][vehObject] != INVALID_STREAMER_ID)
					DestroyDynamicObject(VehicleObjects[i][slot][vehObject]);
				
				VehicleObjects[i][slot][vehObject] = INVALID_STREAMER_ID;
			}

			if (IsValidVehicle(PlayerVehicle[i][pVehPhysic]))
				DestroyVehicle(PlayerVehicle[i][pVehPhysic]);
			
			PlayerVehicle[i][pVehPhysic] = INVALID_VEHICLE_ID;
		}
		else
		{
			PlayerVehicle[i][pVehRental] = -1;
			PlayerVehicle[i][pVehRentTime] = 0;
			PlayerVehicle[i][pVehExists] = false;

			foreach(new pid : Player) if(PlayerVehicle[i][pVehOwnerID] == AccountData[pid][pID])
			{
				Info(pid, "Kendaaraanmu rental anda telah hancur. Anda dikenakan denda sebesar "GREEN"%s!", FormatMoney(PlayerVehicle[i][pVehPrice]/2));
				TakePlayerMoneyEx(pid, (PlayerVehicle[i][pVehPrice]/2));
			}

			if(IsValidVehicle(PlayerVehicle[i][pVehPhysic])) 
			{
				DestroyVehicle(PlayerVehicle[i][pVehPhysic]);
				PlayerVehicle[i][pVehPhysic] = INVALID_VEHICLE_ID;
			}

			new cQuery[200];
			mysql_format(g_SQL, cQuery, sizeof(cQuery), "DELETE FROM `player_vehicles` WHERE `id` = '%d'", PlayerVehicle[i][pVehID]);
			mysql_tquery(g_SQL, cQuery);

			Vehicle_ResetVariable(i);
			Iter_Remove(PvtVehicles, i);
		}
	}
	//ini untuk menghapus kendaraan yang dispawn oleh admin
	if(VehicleCore[vehicleid][vehAdmin])
	{
		DestroyVehicle(VehicleCore[vehicleid][vehAdminPhysic]);
		VehicleCore[vehicleid][vehAdminPhysic] = INVALID_VEHICLE_ID;
		VehicleCore[vehicleid][vehAdmin] = false;
	}
	return 1;
}

public OnVehicleSirenStateChange(playerid, vehicleid, newstate)
{
	if(newstate)
	{
		SwitchVehicleLight(vehicleid, true);
		vehicleid = GetPlayerVehicleID(playerid);
		
		foreach(new i : PvtVehicles)
		{
			if(vehicleid == PlayerVehicle[i][pVehPhysic])
			{
				if(PlayerVehicle[i][pVehFaction] != FACTION_POLISI && PlayerVehicle[i][pVehFaction] != FACTION_EMS) 
					return 0;

				gToggleELM[vehicleid] = true;
				gELMTimer[vehicleid] = SetTimerEx("ToggleELM", 80, true, "d", vehicleid);
			}
		}
	}
	else 
	{
		static panels, doors, lights, tires;

		gToggleELM[vehicleid] = false;
		KillTimer(gELMTimer[vehicleid]);

		GetVehicleDamageStatus(vehicleid, panels, doors, lights, tires);
		UpdateVehicleDamageStatus(vehicleid, panels, doors, 0, tires);
	}
	return 1;
}

hook OnVehicleCreated(vehicleid)
{
	TrunkVehEntered[vehicleid] = INVALID_PLAYER_ID;
	VehicleCore[vehicleid][vehKillerID] = INVALID_PLAYER_ID;
	return 1;
}

hook OnVehicleDestroyed(vehicleid)
{
	new index = -1;

	if((index = Vehicle_GetID(vehicleid)) != -1)
	{
		if(PlayerVehicle[index][vehSirenOn])
		{
			PlayerVehicle[index][vehSirenOn] = false;
			if(IsValidDynamicObject(PlayerVehicle[index][vehSirenObject]))
			{
				DestroyDynamicObject(PlayerVehicle[index][vehSirenObject]);
				PlayerVehicle[index][vehSirenObject] = INVALID_STREAMER_ID;
			}
		}

		if(IsBagasiOpened[PlayerVehicle[index][pVehPhysic]])
		{
			IsBagasiOpened[PlayerVehicle[index][pVehPhysic]] = false;
		}

		if(TrunkVehEntered[PlayerVehicle[index][pVehPhysic]] != INVALID_PLAYER_ID)
		{
			new Float:x, Float:y, Float:z;
			GetVehicleBoot(vehicleid, x, y, z);
			PlayerSpectateVehicle(TrunkVehEntered[PlayerVehicle[index][pVehPhysic]], INVALID_VEHICLE_ID);

			SetSpawnInfo(TrunkVehEntered[PlayerVehicle[index][pVehPhysic]], 0, AccountData[TrunkVehEntered[PlayerVehicle[index][pVehPhysic]]][pSkin], x, y, z, 0.0, 0, 0, 0, 0, 0, 0);
			TogglePlayerSpectating(TrunkVehEntered[PlayerVehicle[index][pVehPhysic]], false);
			SetPVarInt(TrunkVehEntered[PlayerVehicle[index][pVehPhysic]], "PlayerInTrunk", 0);
			AccountData[TrunkVehEntered[PlayerVehicle[index][pVehPhysic]]][pTempVehID] = INVALID_VEHICLE_ID;
			TrunkVehEntered[PlayerVehicle[index][pVehPhysic]] = INVALID_PLAYER_ID;
		}

		for (new slot = 0; slot < MAX_VEHICLE_OBJECT; slot ++) if (VehicleObjects[index][slot][vehObjectExists])
		{
			if (VehicleObjects[index][slot][vehObject] != INVALID_STREAMER_ID)
				DestroyDynamicObject(VehicleObjects[index][slot][vehObject]);
			
			VehicleObjects[index][slot][vehObject] = INVALID_STREAMER_ID;
		}
		
		PlayerVehicle[index][pVehPhysic] = INVALID_VEHICLE_ID;
	}

	if(gToggleELM[vehicleid])
	{
		gToggleELM[vehicleid] = false;
		KillTimer(gELMTimer[vehicleid]);
	}
	VehicleCore[vehicleid][vehKillerID] = INVALID_PLAYER_ID;
	return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
	if(AccountData[playerid][pTogAutoEngine] && !IsABicycle(vehicleid))
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			if(GetEngineStatus(vehicleid)) 
			{
				AccountData[playerid][pTempVehID] = vehicleid;
				SetTimerEx("EngineTurnOff", 1500, false, "dd", playerid, vehicleid);
			}
		}
	}
	return 1;
}

forward EngineTurnOff(playerid, vehicleid);
public EngineTurnOff(playerid, vehicleid)
{
	if(AccountData[playerid][pTempVehID] == vehicleid)
	{
		SwitchVehicleEngine(vehicleid, false);
		SendRPMeAboveHead(playerid, "Mesin mati", X11_LIGHTGREEN);	
	
		AccountData[playerid][pTempVehID] = INVALID_VEHICLE_ID;
	}
	return 1;
}

public OnPlayerClickMap(playerid, Float:fX, Float:fY, Float:fZ)
{
   	if((AccountData[playerid][pAdmin] >= 1 || AccountData[playerid][pTheStars] >= 1) && AccountData[playerid][pAdminDuty] == 1)
    {
        new vehicleid = GetPlayerVehicleID(playerid);
        if(vehicleid > 0 && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
        {
            SetVehiclePos(vehicleid, fX, fY, fZ+10);
        }
        else
        {
            SetPlayerPosFindZ(playerid, fX, fY, 999.0);
            SetPlayerVirtualWorld(playerid, 0);
            SetPlayerInterior(playerid, 0);
        }
    }

	if(AccountData[playerid][pAdmin] >= 1 || AccountData[playerid][pTheStars] >= 1)
	{
		new vehicleid = GetPlayerVehicleID(playerid);
		if(vehicleid > 0 && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
		{
			SetPVarFloat(playerid, "tpX", fX);
			SetPVarFloat(playerid, "tpY", fY);
			SetPVarFloat(playerid, "tpZ", fZ + 5.0);
		}
		else 
		{
			SetPVarFloat(playerid, "tpX", fX);
			SetPVarFloat(playerid, "tpY", fY);
			SetPVarFloat(playerid, "tpZ", fZ);
		}
	}
    return 1;
}

Dialog:MENU_DOKUMEN_INVOICE(playerid, response, listitem, inputtext[])
{
	if (!response)
	{
		return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
	}

	switch(listitem)
	{
		case 0:
		{
			PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
			ShowPlayerInvoice(playerid);
		}
		case 1:
		{
			PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
			Dialog_Show(playerid, DOKUMENT_MENU, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Dokument",
			""TTR"Identitas:\
			\n\nLihat KTP\
			\n"GRAY"Tunjukan KTP\
			\nLihat SIM\
			\n"GRAY"Tunjukan SIM\
			\nLihat SKWB\
			\n"GRAY"Tunjukan SKWB\
			\n\n"TTR"Dokument:\
			\n\nLihat BPJS\
			\n"GRAY"Perlihatkan BPJS\
			\nLihat SKCK\
			\n"GRAY"Perlihatkan SKCK\
			\nLihat SKS\
			\n"GRAY"Perlihatkan SKS", "Pilih", "Batal");
		}
	}
	return 1;
}

Dialog:DOKUMENT_MENU(playerid, response, listitem, inputtext[])
{
	if (!response)
	{
		return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
	}

	switch(listitem)
	{
		case 1: // lihat ktp
		{
			if(!AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki KTP!");
			ShowKTPTD(playerid);
		}
		case 2: // Tunjukan KTP
		{
			if(!AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki KTP!");
			foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
			{
				if(IsPlayerNearPlayer(playerid, i, 3.0))
				{
					ShowMyKTPTD(playerid, i);
				}
			}
		}
		case 3: // Lihat SIM
		{
			DisplayLicensi(playerid, playerid);
		}
		case 4: // Tunjukan SIM
		{
			foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
			{
				if(IsPlayerNearPlayer(playerid, i, 3.0))
				{
					DisplayLicensi(i, playerid);
				}
			}
		}
		case 5: // Lihat SKWB
		{
			if (!AccountData[playerid][pSKWB]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKWB!");

			DisplaySKWB(playerid, playerid);
		}
		case 6: // tunjukan SKWB
		{
			if(!AccountData[playerid][pSKWB]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKWB!");
			
			foreach(new i : Player) if (IsPlayerConnected(i))
			{
				if(IsPlayerNearPlayer(playerid, i, 3.0))
				{
					DisplaySKWB(playerid, i);
				}
			}
		}

		case 8: //lihat bpjs
		{
			if(!AccountData[playerid][pBPJS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki BPJS/Expired!");
			DisplayBPJS(playerid, playerid);
		}
		case 9: //tunjukan bpjs
		{
			if(!AccountData[playerid][pBPJS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki BPJS/Expired!");
			foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
			{   
				if(IsPlayerNearPlayer(playerid, i, 3.0))
				{
					DisplayBPJS(i, playerid);
				}
			}
		}
		case 10: //lihat skck
		{
			if(!AccountData[playerid][pSKCK]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKCK/Expired!");
			DisplaySKCK(playerid, playerid);
		}
		case 11: //tunjuk skck
		{
			if(!AccountData[playerid][pSKCK]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki SKCK/Expired!");
			foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
			{   
				if(IsPlayerNearPlayer(playerid, i, 3.0))
				{
					DisplaySKCK(i, playerid);
				}
			}
		}
		case 12: //lihat sks
		{
			if(!AccountData[playerid][pSKS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Surat Keterangan Sehat/Expired!");
			DisplaySKS2(playerid, playerid);
		}
		case 13: //tunjuk sks
		{
			if(!AccountData[playerid][pSKS]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Surat Keterangan Sehat/Expired!");
			foreach(new i : Player) if (IsPlayerConnected(i)) if (i != playerid)
			{   
				if(IsPlayerNearPlayer(playerid, i, 3.0))
				{
					DisplaySKS2(i, playerid);
				}
			}
		}
	}
	return 1;
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	// Radial Menu 1
	if (clickedid == RadialTD1[3]) // Close Radial 1
	{
		OnFakespawnCheck(playerid);

		PlayerPlaySound(playerid, 21001, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);
	}

	if (clickedid == RadialTD1[2]) // Kendaraan
	{
		OnFakespawnCheck(playerid);

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);
		new vehid = GetNearestVehicleToPlayer(playerid, 3.5, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!"), CancelSelectTextDraw(playerid);
		
		static string[256];
		NearestVehicleID[playerid] = vehid;
		format(string, sizeof(string), "Kunci\
		\n"GRAY"Lampu\
		\nHood buka/tutup\
		\n"GRAY"Trunk buka/tutup\
		\nBagasi\
		\n"GRAY"Holster\
		\nMasuk ke dalam bagasi\
		\n"GRAY"Berikan Kunci\
		\n"GRAY"Cek Pemegang Kunci\
		\nCabut Holder\
		\nCek Kondisi");
		
		ShowPlayerDialog(playerid, DIALOG_VEHICLE_MENU, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Vehicle Menu",
		string, "Pilih", "Batal");
	}

	if (clickedid == RadialTD1[6]) // Dokument
	{
		OnFakespawnCheck(playerid);

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);
		Dialog_Show(playerid, MENU_DOKUMEN_INVOICE, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Invoice & Dokument",
		""GRAY"Invoice\
		\nDokument", "Pilih", "Batal");
	}
	if (clickedid == RadialTD1[8]) // Interaction Panel
	{
		new frmtx[300], count = 0;

		foreach(new i : Player) if (i != playerid) if (IsPlayerNearPlayer(playerid, i, 2.5))
		{
			format(frmtx, sizeof(frmtx), "%sCitizen ID: %d\n", frmtx, i);
			NearestPlayer[playerid][count++] = i;
		}
		
		if (count == 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada orang disekitar anda!"), ShowPlayerRadial1(playerid, false);
		
		ShowPlayerRadial1(playerid, false);
		if (count > 1) {
			Dialog_Show(playerid, DIALOG_PANEL_CITIZEN, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Pilih Pemain", frmtx, "Pilih", "Batal");
		} else {
			AccountData[playerid][pTarget] = NearestPlayer[playerid][0];
			ShowWargaMenu(playerid);
		}
	}
	if (clickedid == RadialTD1[4]) // Inventory
	{
		OnFakespawnCheck(playerid);

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);

		if(AccountData[playerid][ActivityTime] != 0)
		{
			CancelSelectTextDraw(playerid);
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang melakukan sesuatu, tunggu sampai progress selesai!");
		}
		
		AccountData[playerid][pStorageSelect] = 0;

		Inventory_Show(playerid);
		PlayerPlaySound(playerid, 1039, 0.0, 0.0, 0.0);
	}

	if (clickedid == RadialTD1[7]) // Clothes
	{
		OnFakespawnCheck(playerid);

		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);
		callcmd::fashion(playerid);
	}
	if (clickedid == RadialTD1[5]) // Smartphone
	{
		if(!PlayerHasItem(playerid, "Smartphone"))
		{
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Smartphone!");
		}

		OnFakespawnCheck(playerid);
		Toggle_AllTextdraws(playerid, false);
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPlayerRadial1(playerid, false);
        Phone(playerid, true);
        SelectTextDraw(playerid, COLOR_WHITE);
        if(!IsPlayerInAnyVehicle(playerid)) {
            SetPlayerAttachedObject(playerid, 9, 18867, 6, 0.1070, 0.0230, 0.0920, -87.4999, -12.0999, 163.8000, 1.0000, 1.0000, 1.0000, 0xFFFFFFFF, 0xFFFFFFFF);
            ApplyAnimation(playerid, "CASINO", "CARDS_LOOP", 4.1, 0, 0, 0, 1, 0, 1);
        }
	}
	return 1;
}

public ClickDynamicPlayerTextdraw(playerid, PlayerText: playertextid)
{
	// Panel sistem
	/*if(playertextid ==  SmartphonePanel[playerid])// smartphone
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);
		return ShowingSmartphone(playerid);
	}
	if(playertextid == IdentPanel[playerid])// Identitas
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);
		ShowPlayerDialog(playerid, DIALOG_PLAYER_MENU, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Identitas",
		"Lihat KTP\
		\n"GRAY"Tunjukan KTP\
		\nLihat SIM\
		\n"GRAY"Tunjukan SIM\
		\nTunjukan SKWB", "Pilih", "Batal");
		CancelSelectTextDraw(playerid);
	}
	if(playertextid == VehiclePanel[playerid])
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);
		new vehid = GetNearestVehicleToPlayer(playerid, 3.5, false);
		if(vehid == INVALID_VEHICLE_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada kendaraan apapun di sekitar!"), CancelSelectTextDraw(playerid);
		
		static string[256];
		NearestVehicleID[playerid] = vehid;
		format(string, sizeof(string), "Kunci\
		\n"GRAY"Lampu\
		\nHood buka/tutup\
		\n"GRAY"Trunk buka/tutup\
		\nBagasi\
		\n"GRAY"Holster\
		\nMasuk ke dalam bagasi\
		\n"GRAY"Berikan Kunci\
		\n"GRAY"Cek Pemegang Kunci\
		\nCabut Holder\
		\nCek Kondisi");
		
		ShowPlayerDialog(playerid, DIALOG_VEHICLE_MENU, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Vehicle Menu",
		string, "Pilih", "Batal");
		CancelSelectTextDraw(playerid);
	}
	if(playertextid == InvoicesPanel[playerid])// Invoice
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);
		ShowPlayerInvoice(playerid);
		return CancelSelectTextDraw(playerid);
	}
	if(playertextid == DocumentPanel[playerid])// Dokumen
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);
		ShowPlayerDialog(playerid, DIALOG_PLAYER_DOKUMENT, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Dokumen Pribadi",
		"Lihat BPJS\
		\n"GRAY"Perlihatkan BPJS\
		\nLihat SKCK\
		\n"GRAY"Perlihatkan SKCK\
		\nLihat SKS\
		\n"GRAY"Perlihatkan SKS", "Pilih", "Batal");
		return CancelSelectTextDraw(playerid);
	}
	if(playertextid == FashionPanel[playerid])// Pakaian
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);
		callcmd::fashion(playerid);
		CancelSelectTextDraw(playerid);
	}
	if(playertextid == InventoryPanel[playerid])// Inventory
	{
		PlayerPlaySound(playerid, 21000, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);

		if(AccountData[playerid][ActivityTime] != 0)
		{
			CancelSelectTextDraw(playerid);
			return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, tunggu sampai progress selesai!");
		}
		
		Inventory_Show(playerid);
		PlayerPlaySound(playerid, 1039, 0.0, 0.0, 0.0);
		return 1;
	}
	if(playertextid == ClosePanel[playerid])// Close Panel
	{
		PlayerPlaySound(playerid, 21001, 0.0, 0.0, 0.0);
		ShowPanel(playerid, false);
		CancelSelectTextDraw(playerid);
	}*/
	//job mixer
	// if(playertextid == jobs::Pmixer[playerid][5])
	// {
	// 	jobs::mixer_select_case(playerid, 1);
	// }
	// if(playertextid == jobs::Pmixer[playerid][6])
	// {
	// 	jobs::mixer_select_case(playerid, 2);
	// }
	// if(playertextid == jobs::Pmixer[playerid][7])
	// {
	// 	jobs::mixer_select_case(playerid, 3);
	// }
	// if(playertextid == jobs::Pmixer[playerid][8])
	// {
	// 	jobs::mixer_select_case(playerid, 4);
	// }
	// if(playertextid == jobs::Pmixer[playerid][9])
	// {
	// 	jobs::mixer_select_case(playerid, 5);
	// }
	// if(playertextid == jobs::Pmixer[playerid][10])//confirm
	// {
	// 	jobs::mixer_confirm(playerid);
	// }
	/* Clothes Sistem */
	if(playertextid == P_MENUCLOTHES[playerid][6]) // Pakaian
	{
		static Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);
		SetPlayerCameraPos(playerid, x + 0.2, y + 1.4, z + 0.8);
		SetPlayerCameraLookAt(playerid, x, y - 1.0, z + 0.2);
		for(new pdip; pdip < 12; pdip++)
		{
			PlayerTextDrawHide(playerid, P_MENUCLOTHES[playerid][pdip]);
		}

		for(new txd; txd < 16; txd++)
		{
			PlayerTextDrawShow(playerid, P_CLOTHESSELECT[playerid][txd]);
		}
		BuyClothes[playerid] = 1;
		CSelect[playerid] = 0;

		SetPlayerSkin(playerid, (AccountData[playerid][pGender] == 1) ? ClothesSkinMale[CSelect[playerid]] : ClothesSkinFemale[CSelect[playerid]]);

		static minsty[128];
		format(minsty, sizeof minsty, "%02d/%d", CSelect[playerid] + 1, ((AccountData[playerid][pGender] == 1) ? sizeof(ClothesSkinMale) : sizeof(ClothesSkinFemale)));
		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);

		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][8], "PAKAIAN");
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
		SelectTextDraw(playerid, 0x72D172FF);
	}
	if(playertextid == P_MENUCLOTHES[playerid][7]) // Topi Dan Helmet
	{
		static Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);
		SetPlayerCameraPos(playerid, x + 0.2, y + 1.4, z + 1.0);
		SetPlayerCameraLookAt(playerid, x, y - 1.0, z + 0.5);

		for(new txid; txid < 12; txid++)
		{
			PlayerTextDrawHide(playerid, P_MENUCLOTHES[playerid][txid]);
		}
		
		for(new txd; txd < 16; txd++)
		{
			PlayerTextDrawShow(playerid, P_CLOTHESSELECT[playerid][txd]);
		}
		BuyTopi[playerid] = 1;
		SelectAcc[playerid] = 0;

		RemovePlayerAttachedObject(playerid, 0);
		SetPlayerAttachedObject(playerid, 9, AksesorisHat[SelectAcc[playerid]], 2, 0.356, 0.005, -0.004, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0);

		static minsty[128];
		format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(AksesorisHat));
		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);

		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][8], "TOPI/HELM");
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
		SelectTextDraw(playerid, 0x72D172FF);
	}
	if(playertextid == P_MENUCLOTHES[playerid][8]) // Kacamata Toys
	{
		static Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);
		SetPlayerCameraPos(playerid, x + 0.2, y + 1.4, z + 1.0);
		SetPlayerCameraLookAt(playerid, x, y - 1.0, z + 0.5);

		for(new txid; txid < 12; txid++)
		{
			PlayerTextDrawHide(playerid, P_MENUCLOTHES[playerid][txid]);
		}
		
		for(new txd; txd < 16; txd++)
		{
			PlayerTextDrawShow(playerid, P_CLOTHESSELECT[playerid][txd]);
		}
		BuyGlasses[playerid] = 1;
		SelectAcc[playerid] = 0;

		RemovePlayerAttachedObject(playerid, 1);
		SetPlayerAttachedObject(playerid, 9, GlassesToys[SelectAcc[playerid]], 2, 0.35, 0.24, -0.19, 0.0, 90.5, 86.0, 1.0, 1.0, 1.0);

		static minsty[128];
		format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(GlassesToys));
		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);

		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][8], "KACAMATA");
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
		SelectTextDraw(playerid, COLOR_GREY);
	}
	if(playertextid == P_MENUCLOTHES[playerid][9]) // Aksesoris
	{
		static Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);
		SetPlayerCameraPos(playerid, x + 0.2, y + 1.6, z + 0.5);
		SetPlayerCameraLookAt(playerid, x, y - 1.0, z);
		
		for(new pdip; pdip < 12; pdip++)
		{
			PlayerTextDrawHide(playerid, P_MENUCLOTHES[playerid][pdip]);
		}

		for(new txd; txd < 16; txd++)
		{
			PlayerTextDrawShow(playerid, P_CLOTHESSELECT[playerid][txd]);
		}
		BuyTAksesoris[playerid] = 1;
		SelectAcc[playerid] = 0;

		RemovePlayerAttachedObject(playerid, 2);
		SetPlayerAttachedObject(playerid, 9, AksesorisToys[SelectAcc[playerid]], 2, -0.392, 0.362, 0.000, 0.000, 0.000, 0.0000, 1.000, 1.000, 1.000);

		static minsty[128];
		format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(AksesorisToys));
		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		
		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][8], "AKSESORIS");
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
		SelectTextDraw(playerid, 0x72D172FF);
	}
	if(playertextid == P_MENUCLOTHES[playerid][10]) // Tas / Backpack
	{
		static Float:x, Float:y, Float:z;
		GetPlayerPos(playerid, x, y, z);
		SetPlayerCameraPos(playerid, x + 0.2, y + 1.6, z + 0.5);
		SetPlayerCameraLookAt(playerid, x, y - 1.0, z);

		for(new pdip; pdip < 12; pdip++)
		{
			PlayerTextDrawHide(playerid, P_MENUCLOTHES[playerid][pdip]);
		}

		for(new txd; txd < 16; txd++)
		{
			PlayerTextDrawShow(playerid, P_CLOTHESSELECT[playerid][txd]);
		}
		BuyBackpack[playerid] = 1;
		SelectAcc[playerid] = 0;

		RemovePlayerAttachedObject(playerid, 3);
		SetPlayerAttachedObject(playerid, 9, BackpackToys[SelectAcc[playerid]], 2, -0.392, 0.362, 0.000, 0.000, 0.000, 0.0000, 1.000, 1.000, 1.000);

		static minsty[128];
		format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(BackpackToys));
		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);

		PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][8], "TAS/KOPER");
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
		SelectTextDraw(playerid, 0x72D172FF);
	}
	if(playertextid == P_MENUCLOTHES[playerid][11]) // Batal
	{
		ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan pilihan");
		SetCameraBehindPlayer(playerid);
		TogglePlayerControllable(playerid, 1);
		for(new txd; txd < 12; txd ++)
		{
			PlayerTextDrawHide(playerid, P_MENUCLOTHES[playerid][txd]);
		}
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
		CancelSelectTextDraw(playerid);
	}
	if(playertextid == P_CLOTHESSELECT[playerid][14]) // Kembali
	{
		if(BuyClothes[playerid] == 1)
		{
			for(new txd; txd < 16; txd ++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			SetPlayerCameraFacingStore(playerid);
			BuyClothes[playerid] = 0;
			CSelect[playerid] = 0;
			if(AccountData[playerid][pUsingUniform])
			{
				SetPlayerSkin(playerid, AccountData[playerid][pUniform]);
			}
			else 
			{
				SetPlayerSkin(playerid, AccountData[playerid][pSkin]);
			}
		}

		if(BuyTopi[playerid] == 1)
		{
			for(new txd; txd < 16; txd ++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			SetPlayerCameraFacingStore(playerid);
			BuyTopi[playerid] = 0;
			SelectAcc[playerid] = 0;
			AttachPlayerToys(playerid);
			RemovePlayerAttachedObject(playerid, 9);
		}

		if(BuyGlasses[playerid] == 1)
		{
			for(new txd; txd < 16; txd ++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			SetPlayerCameraFacingStore(playerid);
			BuyGlasses[playerid] = 0;
			SelectAcc[playerid] = 0;
			AttachPlayerToys(playerid);
			RemovePlayerAttachedObject(playerid, 9);
		}

		if(BuyTAksesoris[playerid] == 1)
		{
			for(new txd; txd < 16; txd ++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			SetPlayerCameraFacingStore(playerid);
			BuyTAksesoris[playerid] = 0;
			SelectAcc[playerid] = 0;
			AttachPlayerToys(playerid);
			RemovePlayerAttachedObject(playerid, 9);
		}

		if(BuyBackpack[playerid] == 1)
		{
			for(new txd; txd < 16; txd ++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			SetPlayerCameraFacingStore(playerid);
			BuyBackpack[playerid] = 0;
			SelectAcc[playerid] = 0;
			AttachPlayerToys(playerid);
			RemovePlayerAttachedObject(playerid, 9);
		}
	}
	if(playertextid == P_CLOTHESSELECT[playerid][12]) // Next Cloth
	{
		if(BuyClothes[playerid] == 1)
		{
			if(CSelect[playerid] == ((AccountData[playerid][pGender] == 1) ? sizeof(ClothesSkinMale) - 1 : sizeof(ClothesSkinFemale) - 1))
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else CSelect[playerid] ++;
			SetPlayerSkin(playerid, (AccountData[playerid][pGender] == 1) ? ClothesSkinMale[CSelect[playerid]] : ClothesSkinFemale[CSelect[playerid]]);
		
			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", CSelect[playerid] + 1, ((AccountData[playerid][pGender] == 1) ? sizeof(ClothesSkinMale) : sizeof(ClothesSkinFemale)));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyTopi[playerid] == 1)
		{
			if(SelectAcc[playerid] == sizeof(AksesorisHat) - 1)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] ++;

			SetPlayerAttachedObject(playerid, 9, AksesorisHat[SelectAcc[playerid]], 2, 0.269, 0.000, 0.000, 0.000, 0.000, 0.000, 1.000, 1.000, 1.000);
			
			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(AksesorisHat));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyGlasses[playerid] == 1)
		{
			if(SelectAcc[playerid] == sizeof(GlassesToys) - 1)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] ++;

			SetPlayerAttachedObject(playerid, 9, GlassesToys[SelectAcc[playerid]], 2, 0.35, 0.24, -0.19, 0.0, 90.5, 86.0, 1.0, 1.0, 1.0);

			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(GlassesToys));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyTAksesoris[playerid] == 1)
		{
			if(SelectAcc[playerid] == sizeof(AksesorisToys) - 1)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] ++;

			SetPlayerAttachedObject(playerid, 9, AksesorisToys[SelectAcc[playerid]], 2, -0.392, 0.362, 0.000, 0.000, 0.000, 0.0000, 1.000, 1.000, 1.000);

			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(AksesorisToys));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyBackpack[playerid] == 1)
		{
			if(SelectAcc[playerid] == sizeof(BackpackToys) - 1)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] ++;

			SetPlayerAttachedObject(playerid, 9, BackpackToys[SelectAcc[playerid]], 2, -0.392, 0.362, 0.000, 0.000, 0.000, 0.0000, 1.000, 1.000, 1.000);

			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(BackpackToys));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
	}
	if(playertextid == P_CLOTHESSELECT[playerid][11]) // Prev Cloth
	{
		if(BuyClothes[playerid] == 1)
		{
			if(CSelect[playerid] == 0)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else CSelect[playerid] --;
			SetPlayerSkin(playerid, (AccountData[playerid][pGender] == 1) ? ClothesSkinMale[CSelect[playerid]] : ClothesSkinFemale[CSelect[playerid]]);

			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", CSelect[playerid] + 1, ((AccountData[playerid][pGender] == 1) ? sizeof(ClothesSkinMale) : sizeof(ClothesSkinFemale)));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyTopi[playerid] == 1)
		{
			if(SelectAcc[playerid] == 0)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] --;

			SetPlayerAttachedObject(playerid, 9, AksesorisHat[SelectAcc[playerid]], 2, 0.269, 0.000, 0.000, 0.000, 0.000, 0.000, 1.000, 1.000, 1.000);
			
			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(AksesorisHat));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyGlasses[playerid] == 1)
		{
			if(SelectAcc[playerid] == 0)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] --;

			SetPlayerAttachedObject(playerid, 9, GlassesToys[SelectAcc[playerid]], 2, 0.35, 0.24, -0.19, 0.0, 90.5, 86.0, 1.0, 1.0, 1.0);

			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(GlassesToys));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyTAksesoris[playerid] == 1)
		{
			if(SelectAcc[playerid] == 0)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] --;

			SetPlayerAttachedObject(playerid, 9, AksesorisToys[SelectAcc[playerid]], 2, -0.392, 0.362, 0.000, 0.000, 0.000, 0.0000, 1.000, 1.000, 1.000);

			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(AksesorisToys));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}

		if(BuyBackpack[playerid] == 1)
		{
			if(SelectAcc[playerid] == 0)
			{
				PlayerPlaySound(playerid, 4203, 0, 0, 0);
				return 0;
			}
			else SelectAcc[playerid] --;

			SetPlayerAttachedObject(playerid, 9, BackpackToys[SelectAcc[playerid]], 2, -0.392, 0.362, 0.000, 0.000, 0.000, 0.0000, 1.000, 1.000, 1.000);

			static minsty[128];
			format(minsty, sizeof minsty, "%02d/%d", SelectAcc[playerid] + 1, sizeof(BackpackToys));
			PlayerTextDrawSetString(playerid, P_CLOTHESSELECT[playerid][15], minsty);
		}
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
	}
	if(playertextid == P_CLOTHESSELECT[playerid][9]) // Rot Kiri
	{
		static Float:x, Float:y, Float:z, Float:angle;
		GetPlayerPos(playerid, x, y, z);
		GetPlayerFacingAngle(playerid, angle);

		SetPlayerPos(playerid, x, y, z);
		SetPlayerFacingAngle(playerid, angle - 15.0);
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
	}
	if(playertextid == P_CLOTHESSELECT[playerid][10]) // Rot Kanana
	{
		static Float:x, Float:y, Float:z, Float:angle;
		GetPlayerPos(playerid, x, y, z);
		GetPlayerFacingAngle(playerid, angle);

		SetPlayerPos(playerid, x, y, z);
		SetPlayerFacingAngle(playerid, angle + 15.0);
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
	}
	if(playertextid == P_CLOTHESSELECT[playerid][13]) // Beli Clothes
	{
		if(BuyClothes[playerid] == 1)
		{
			new price = 200;

			if(AccountData[playerid][pMoney] < price) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang tidak cukup! (Price: $200)");
			TakePlayerMoneyEx(playerid, price);
			ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda membeli baju seharga ~g~$200");
			
			AccountData[playerid][pSkin] = GetPlayerSkin(playerid);
			for(new tx; tx < 16; tx++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][tx]);
			}
			BuyClothes[playerid] = 0;
			SetPlayerSkin(playerid, AccountData[playerid][pSkin]);
			CancelSelectTextDraw(playerid);
			SetCameraBehindPlayer(playerid);
			TogglePlayerControllable(playerid, 1);
		}

		if(BuyTopi[playerid] == 1)
		{
			AccountData[playerid][toySelected] = 0;

			new price = 80;
			if(AccountData[playerid][pMoney] < price) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang kamu tidak cukup! (Price: $80)");
			TakePlayerMoneyEx(playerid, price);
			pToys[playerid][AccountData[playerid][toySelected]][toy_model] = AksesorisHat[SelectAcc[playerid]];
			pToys[playerid][AccountData[playerid][toySelected]][toy_status] = 1;
			pToys[playerid][AccountData[playerid][toySelected]][toy_x] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_y] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_z] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rx] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_ry] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rz] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sx] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sy] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sz] = 1.0;
			
			ShowPlayerDialog(playerid, DIALOG_TOYPOSISIBUY, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay"WHITE"- Ubah Tulang(Bone)", 
			"Spine\
			\n"GRAY"Head\
			\nLeft Upper Arm\
			\n"GRAY"Right Upper Arm\
			\nLeft Hand\
			\n"GRAY"Right Hand\
			\nLeft Thigh\
			\n"GRAY"Right Thigh\
			\nLeft Foot\
			\n"GRAY"Right Foot\
			\nRight Calf\
			\n"GRAY"Left Calf\
			\nLeft Forearm\
			\n"GRAY"Right Forearm\
			\nLeft Clavicle\
			\n"GRAY"Right Clavicle\
			\nNeck\
			\n"GRAY"Jaw", "Select", "Cancel");

			SetCameraBehindPlayer(playerid);
			TogglePlayerControllable(playerid, 1);
			ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda membeli Topi seharga ~g~$80");
			for(new txd; txd < 16; txd++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			BuyTopi[playerid] = 0;
			RemovePlayerAttachedObject(playerid, 9);
			CancelSelectTextDraw(playerid);
		}

		if(BuyGlasses[playerid] == 1)
		{
			AccountData[playerid][toySelected] = 1;

			new price = 50;
			if(AccountData[playerid][pMoney] < price) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang kamu tidak cukup! (Price: $50)");
			TakePlayerMoneyEx(playerid, price);
			pToys[playerid][AccountData[playerid][toySelected]][toy_model] = GlassesToys[SelectAcc[playerid]];
			pToys[playerid][AccountData[playerid][toySelected]][toy_status] = 1;
			pToys[playerid][AccountData[playerid][toySelected]][toy_x] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_y] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_z] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rx] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_ry] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rz] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sx] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sy] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sz] = 1.0;
			
			ShowPlayerDialog(playerid, DIALOG_TOYPOSISIBUY, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay"WHITE"- Ubah Tulang(Bone)", 
			"Spine\
			\n"GRAY"Head\
			\nLeft Upper Arm\
			\n"GRAY"Right Upper Arm\
			\nLeft Hand\
			\n"GRAY"Right Hand\
			\nLeft Thigh\
			\n"GRAY"Right Thigh\
			\nLeft Foot\
			\n"GRAY"Right Foot\
			\nRight Calf\
			\n"GRAY"Left Calf\
			\nLeft Forearm\
			\n"GRAY"Right Forearm\
			\nLeft Clavicle\
			\n"GRAY"Right Clavicle\
			\nNeck\
			\n"GRAY"Jaw", "Select", "Cancel");

			SetCameraBehindPlayer(playerid);
			TogglePlayerControllable(playerid, 1);
			ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda membeli Kacamata seharga ~g~$50");
			for(new txd; txd < 16; txd++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			BuyGlasses[playerid] = 0;
			RemovePlayerAttachedObject(playerid, 9);
			CancelSelectTextDraw(playerid);
		}

		if(BuyTAksesoris[playerid] == 1)
		{
			AccountData[playerid][toySelected] = 2;

			new price = 100;
			if(AccountData[playerid][pMoney] < price) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang kamu tidak cukup! (Price: $100)");
			TakePlayerMoneyEx(playerid, price);
			pToys[playerid][AccountData[playerid][toySelected]][toy_model] = AksesorisToys[SelectAcc[playerid]];
			pToys[playerid][AccountData[playerid][toySelected]][toy_status] = 1;
			pToys[playerid][AccountData[playerid][toySelected]][toy_x] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_y] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_z] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rx] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_ry] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rz] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sx] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sy] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sz] = 1.0;
			
			ShowPlayerDialog(playerid, DIALOG_TOYPOSISIBUY, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay"WHITE"- Ubah Tulang(Bone)", 
			"Spine\
			\n"GRAY"Head\
			\nLeft Upper Arm\
			\n"GRAY"Right Upper Arm\
			\nLeft Hand\
			\n"GRAY"Right Hand\
			\nLeft Thigh\
			\n"GRAY"Right Thigh\
			\nLeft Foot\
			\n"GRAY"Right Foot\
			\nRight Calf\
			\n"GRAY"Left Calf\
			\nLeft Forearm\
			\n"GRAY"Right Forearm\
			\nLeft Clavicle\
			\n"GRAY"Right Clavicle\
			\nNeck\
			\n"GRAY"Jaw", "Select", "Cancel");

			SetCameraBehindPlayer(playerid);
			TogglePlayerControllable(playerid, 1);
			ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda membeli Aksesoris seharga ~g~$100");
			for(new txd; txd < 16; txd++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			BuyTAksesoris[playerid] = 0;
			RemovePlayerAttachedObject(playerid, 9);
			CancelSelectTextDraw(playerid);
		}

		if(BuyBackpack[playerid] == 1)
		{
			AccountData[playerid][toySelected] = 3;

			new price = 100;
			if(AccountData[playerid][pMoney] < price) return ShowTDN(playerid, NOTIFICATION_ERROR, "Uang kamu tidak cukup! (Price: 100)");
			TakePlayerMoneyEx(playerid, price);
			pToys[playerid][AccountData[playerid][toySelected]][toy_model] = BackpackToys[SelectAcc[playerid]];
			pToys[playerid][AccountData[playerid][toySelected]][toy_status] = 1;
			pToys[playerid][AccountData[playerid][toySelected]][toy_x] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_y] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_z] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rx] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_ry] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_rz] = 0.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sx] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sy] = 1.0;
			pToys[playerid][AccountData[playerid][toySelected]][toy_sz] = 1.0;
			
			ShowPlayerDialog(playerid, DIALOG_TOYPOSISIBUY, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay"WHITE"- Ubah Tulang(Bone)", 
			"Spine\
			\n"GRAY"Head\
			\nLeft Upper Arm\
			\n"GRAY"Right Upper Arm\
			\nLeft Hand\
			\n"GRAY"Right Hand\
			\nLeft Thigh\
			\n"GRAY"Right Thigh\
			\nLeft Foot\
			\n"GRAY"Right Foot\
			\nRight Calf\
			\n"GRAY"Left Calf\
			\nLeft Forearm\
			\n"GRAY"Right Forearm\
			\nLeft Clavicle\
			\n"GRAY"Right Clavicle\
			\nNeck\
			\n"GRAY"Jaw", "Select", "Cancel");

			SetCameraBehindPlayer(playerid);
			TogglePlayerControllable(playerid, 1);
			ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda membeli Tas seharga ~g~$100");
			for(new txd; txd < 16; txd++)
			{
				PlayerTextDrawHide(playerid, P_CLOTHESSELECT[playerid][txd]);
			}
			BuyBackpack[playerid] = 0;
			RemovePlayerAttachedObject(playerid, 9);
			CancelSelectTextDraw(playerid);
		}
		PlayerPlaySound(playerid, 1053, 0, 0, 0);
	}
	// Inventory
	if(playertextid == InventoryTD[playerid][8])
	{
		Inventory_Close(playerid);
	}
	// for(new x; x < MAX_INVENTORY; x ++)
	// {
	// 	if(playertextid == PrevMod[playerid][x])
	// 	{
	// 		if(InventoryData[playerid][x][invExists])
	// 		{
	// 			if(AccountData[playerid][pSelectItem] > -1)
	// 			{
	// 				PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][AccountData[playerid][pSelectItem]], 0);
	// 				PlayerTextDrawShow(playerid, PrevMod[playerid][AccountData[playerid][pSelectItem]]);
	// 			}

	// 			AccountData[playerid][pSelectItem] = x;
	// 			PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][AccountData[playerid][pSelectItem]], 0);
	// 			PlayerTextDrawShow(playerid, PrevMod[playerid][AccountData[playerid][pSelectItem]]);
	// 			PlayerPlaySound(playerid, 1052, 0, 0, 0);
	// 		}
	// 		else 
	// 		{
	// 			if (AccountData[playerid][pSelectItem] > -1)
	// 			{
	// 				if (AccountData[playerid][pSelectItemDelay] > gettime())
	// 					return ShowTDN(playerid, NOTIFICATION_WARNING, "Tunggu sebentar untuk memindahkan sesuatu!");

	// 				SwapInventoryItems(playerid, AccountData[playerid][pSelectItem], x);
	// 				PlayerPlaySound(playerid, 1052, 0, 0, 0);
	// 				AccountData[playerid][pSelectItem] = -1;
	// 			}
	// 			else
	// 			{
	// 				ShowTDN(playerid, NOTIFICATION_WARNING, "Tidak ada item di slot tersebut!");
	// 			}
	// 			PlayerPlaySound(playerid, 1145, 0, 0, 0);
	// 		}
	// 	}
	// }

	for(new x = 0; x < MAX_INVENTORY; x ++)
	{
		if(playertextid == BoxInv[playerid][x])
		{
			new item_warung = selectItemWarung[playerid];

			if(item_warung == -1) {

				if(InventoryData[playerid][x][invExists])
				{	
					if(AccountData[playerid][pSelectItem] != -1)
					{
						PlayerTextDrawColor(playerid, BoxInv[playerid][AccountData[playerid][pSelectItem]], 50);
						PlayerTextDrawShow(playerid, BoxInv[playerid][AccountData[playerid][pSelectItem]]);

						new selectedid = AccountData[playerid][pSelectItem];
						
						if(gettime() < AccountData[playerid][pSelectItemDelay]) 
						{
							return ShowTDN(playerid, NOTIFICATION_ERROR, "Tunggu untuk swap/memilih Item.");
						}

						PlayerTextDrawColor(playerid, BoxInv[playerid][x], 50);
						PlayerTextDrawColor(playerid, BoxInv[playerid][selectedid], 50);

						SwapInventoryItems(playerid, selectedid, x);
						AccountData[playerid][pSelectItem] = -1;

						Inventory_UpdateSlot(playerid, selectedid);
						Inventory_UpdateSlot(playerid, x);
						AccountData[playerid][pSelectItemDelay] = gettime() + 2;
						
					}
					else {
						AccountData[playerid][pSelectItem] = x;
						PlayerTextDrawShow(playerid, BoxInv[playerid][x]);
					}

					AccountData[playerid][pSelectItemDrop] = -1;

					if(AccountData[playerid][pSelectItemDrop] != -1)
					{
						PlayerTextDrawColor(playerid, BoxInv2[playerid][AccountData[playerid][pSelectItem]], 50);
						PlayerTextDrawShow(playerid, BoxInv2[playerid][AccountData[playerid][pSelectItem]]);
					}

					PlayerPlaySound(playerid, 1052, 0, 0, 0);

				}
				else 
				{
					if(AccountData[playerid][pSelectItemDrop] == -1) {

						if(AccountData[playerid][pSelectItem] != -1 && InventoryData[playerid][AccountData[playerid][pSelectItem]][invExists])
						{
							new name[128], selectedid = AccountData[playerid][pSelectItem];
							strunpack(name, InventoryData[playerid][selectedid][invItem]);
							new model = InventoryData[playerid][selectedid][invModel];
							new amount = InventoryData[playerid][selectedid][invQuantity];

							if(gettime() < AccountData[playerid][pSelectItemDelay]) 
							{
								return ShowTDN(playerid, NOTIFICATION_ERROR, "Tunggu untuk memindahkan/memilih Item.");
							}

							PlayerTextDrawColor(playerid, BoxInv[playerid][selectedid], 50);
							PlayerTextDrawShow(playerid, BoxInv[playerid][selectedid]);

							Inventory_RemoveID(playerid, selectedid);
							Inventory_AddID(playerid, InventoryData[playerid][selectedid][invID], name, model, amount, x);
							PlayerTextDrawColor(playerid, BoxInv[playerid][x], 50);
							PlayerTextDrawColor(playerid, BoxInv[playerid][selectedid], 50);
							Inventory_Close(playerid);

							AccountData[playerid][pStorageSelect] = 0;
							Inventory_Show(playerid);
							AccountData[playerid][pSelectItemDelay] = gettime() + 2;
							PlayerPlaySound(playerid, 1052, 0, 0, 0);
							AccountData[playerid][pSelectItem] = AccountData[playerid][pSelectItemDrop] = -1;
						}
						else {
							ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada item di slot tersebut!");
							PlayerPlaySound(playerid, 1145, 0, 0, 0);
						}
					}
					else {
						
						if(AccountData[playerid][pStorageSelect] == 0) 
						{
							if(!AccountData[playerid][pAmountInv]) {
								return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memasukkan Jumlah Item!");
							}
							new id = ListedDrop[playerid][AccountData[playerid][pSelectItemDrop]],
								amount = AccountData[playerid][pAmountInv],
								invid = -1;

							if(id != -1) 
							{
								if (AccountData[playerid][pSelectItemDelay] > gettime())
									return ShowTDN(playerid, NOTIFICATION_ERROR, "Tunggu sebentar untuk memindahkan sesuatu!");

								if(!DroppedItems[id][droppedModel]) {
									return ShowTDN(playerid, NOTIFICATION_ERROR, "Item yang dipilih tidak lagi tersedia.");
								}

								if(DroppedItems[id][droppedQuantity] < amount)
									return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah barang tidak cukup.");		


								invid = Inventory_Add(playerid, DroppedItems[id][droppedItem], DroppedItems[id][droppedModel],  amount);
								
								if(invid != -1) 
								{
									RemoveDroppedItem(id, amount);

									Inventory_Close(playerid);

									AccountData[playerid][pSelectItem] = -1;
									AccountData[playerid][pSelectItemDrop] = -1;
									AccountData[playerid][pStorageSelect] = 0;
									ShowTDN(playerid, NOTIFICATION_SUKSES, "Item berhasil ditambahkan!");
								}
							}
						}
					}
				}
			}
			else {
				if (AccountData[playerid][pAmountInv] < 1)
					return Warning(playerid, "Anda belum memasukkan jumlah yang akan Anda beli.");
						
				if(AccountData[playerid][pMoney] < WarungItemPrice[playerid][item_warung] * AccountData[playerid][pAmountInv]) 
				{
					ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak punya cukup uang.");
					return 1;
				}

				if(!strcmp(WarungItemName[playerid][item_warung], "Rokok")) {

					if (AccountData[playerid][pAmountInv] > 1)
						return Warning(playerid, "Anda hanya dapat membeli rokok 1 bungkus yg berisi 12 batang.");

					GivePlayerMoneyEx(playerid, -WarungItemPrice[playerid][item_warung]);
					Inventory_Add(playerid, "Rokok", 19896, 12);
					ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda telah rokok.");
					Inventory_Close(playerid);
					selectItemWarung[playerid] = -1;
					return 1;
				}

				if(!strcmp(WarungItemName[playerid][item_warung], "Helmet")) {

					if(AccountData[playerid][pHelmet] == 1)
						return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki helmet.");

					AccountData[playerid][pHelmet] = 1;
					ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda telah membeli helm.");
					Inventory_Close(playerid);
					GivePlayerMoneyEx(playerid, -WarungItemPrice[playerid][item_warung] * AccountData[playerid][pAmountInv]);
					selectItemWarung[playerid] = -1;
					return 1;

				}

				new itemid = Inventory_Add(playerid, WarungItemName[playerid][item_warung], ItemModel(WarungItemName[playerid][item_warung]), AccountData[playerid][pAmountInv]); 
				if(itemid != -1) {

					GivePlayerMoneyEx(playerid, -WarungItemPrice[playerid][item_warung] * AccountData[playerid][pAmountInv]);
					selectItemWarung[playerid] = -1;

					Inventory_Close(playerid);
					ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Anda telah membeli %s.", WarungItemName[playerid][item_warung]));
				}
			}
		}
	}
	for(new x = 0; x < MAX_INVENTORY2; x ++)
	{
		if (playertextid == BoxInv2[playerid][x])
		{
			switch (AccountData[playerid][pStorageSelect])
			{
				case 0:
			    {
		            if(AccountData[playerid][pSelectItem] != -1)
					{
						new name[48];
						strunpack(name, InventoryData[playerid][AccountData[playerid][pSelectItem]][invItem]);

						if (TrashNearest(playerid) != -1)
						{
							if (AccountData[playerid][pAmountInv] < 1)
								return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memasukkan jumlah yang akan anda buang.");	
							
							Inventory_Remove(playerid, name, AccountData[playerid][pAmountInv]);
							ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);

						}
						else
						{
							if (AccountData[playerid][pAmountInv] < 1)
								return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memasukkan jumlah yang akan anda buang.");

							if (Inventory_Count(playerid, name) < AccountData[playerid][pAmountInv])
								return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak punya cukup barang yang anda pilih.");

							if(InventoryData[playerid][AccountData[playerid][pSelectItem]][invExists]) {
								DropPlayerItem(playerid, AccountData[playerid][pSelectItem], AccountData[playerid][pAmountInv]);

								AccountData[playerid][pSelectItem] = -1;
								AccountData[playerid][pSelectItemDrop] = -1;
								Inventory_Close(playerid);
							}
						}
					}
					else {
						AccountData[playerid][pSelectItemDrop] = x;
					}
				}
				case 1:
				{
					selectItemWarung[playerid] = x;
					AccountData[playerid][pSelectItem] = -1;

					PlayerPlaySound(playerid, 1052, 0, 0, 0);
				}
			}
		}
	}
	if(playertextid == InventoryTD[playerid][9])
	{
		if(AccountData[playerid][pSelectItem] < 0 && AccountData[playerid][pSelectItemDrop] < 0 && selectItemWarung[playerid] < 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih item!");
		ShowPlayerDialog(playerid, DIALOG_SETAMOUNT, DIALOG_STYLE_INPUT, ""TTR"Aeterna Roleplay "WHITE"- Set Amount",
		"Mohon masukkan berapa jumlah item yang akan diberikan:", "Set", "Batal");
	}
	if(playertextid == InventoryTD[playerid][22])
	{
		new
			itemid = AccountData[playerid][pSelectItem],
			string[64];

		if(AccountData[playerid][pSelectItem] == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih barang!");
		strunpack(string, InventoryData[playerid][itemid][invItem]);
			
		if(ItemCantUse(string)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Item tersebut tidak bisa digunakan!");
		OnPlayerUseItem(playerid, itemid, string);
	}
	if(playertextid == InventoryTD[playerid][10])
	{
		if(AccountData[playerid][pSelectItem] == -1)
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih barang!");
		
		if(AccountData[playerid][pAmountInv] == 0)
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum input jumlah yang akan diberikan!");
		
		new frmxt[355], string[512];
		strunpack(string, InventoryData[playerid][AccountData[playerid][pSelectItem]][invItem]);
		
		if(!strcmp(string, "Sampah Makanan"))
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat memberikan sampah kepada orang lain!");

		if(!strcmp(string, "GAS"))
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat memberikan GAS kepada orang lain!");
		
		if(!strcmp(string, "Boombox"))
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat memberikan Boombox kepada orang lain!");
		
		new count = 0;
		foreach(new i : Player)
		{
			if(i != playerid && IsPlayerNearPlayer(playerid, i, 2.5))
			{
				format(frmxt, sizeof(frmxt), "%sCitizen ID: %d\n", frmxt, i);
				NearestPlayer[playerid][count++] = i;
			}
		}
		
		if(count == 0)
		{
			PlayerPlaySound(playerid, 5206, 0.0, 0.0, 0.0);
			Inventory_Close(playerid);
			return ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, ""TTR"Aeterna Roleplay "WHITE"- Give Item",
			"Tidak ada player yang dekat dengan anda!", "Tutup", "");
		}
		ShowPlayerDialog(playerid, DIALOG_MEMBERI, DIALOG_STYLE_LIST, ""TTR"Aeterna Roleplay "WHITE"- Give Item", frmxt, "Pilih", "Close");
	}
	/*if(playertextid == InventoryTD[playerid][27])
	{
		if(AccountData[playerid][pSelectItem] < 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih barang!");
		if(AccountData[playerid][pAmountInv] == 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum menentukan jumlah barang!");
		if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang melakukan sesuatu, tunggu hingga progress selesai!");
		
		new itemid = AccountData[playerid][pSelectItem],
			amount = AccountData[playerid][pAmountInv],
			model = InventoryData[playerid][AccountData[playerid][pSelectItem]][invModel],
			string[ 256 ];
		
		strunpack(string, InventoryData[playerid][itemid][invItem]);
		
		new trash_nearest = TrashNearest(playerid);
		if(trash_nearest != -1)
		{
			if(amount < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah tidak valid!");
			if(amount > InventoryData[playerid][AccountData[playerid][pSelectItem]][invQuantity]) return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Anda tidak memiliki %s sebanyak itu!", string));
			Inventory_Remove(playerid, string, amount);
			Inventory_Close(playerid);
			ShowItemBox(playerid, sprintf("Removed %dx", amount), string, model);
			ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);

			SendRPMeAboveHead(playerid, sprintf("Membuang %d %s miliknya ke tong sampah", amount, string), X11_PLUM1);
		}
		else if(IsPeleburanArea(playerid))
		{
			if(AccountData[playerid][pFaction] != FACTION_POLISI) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota kepolisian!");
			if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");
			if(amount < 1 || amount > InventoryData[playerid][AccountData[playerid][pSelectItem]][invQuantity]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah tidak valid!");

			Inventory_Remove(playerid, string, amount);
			Inventory_Close(playerid);
			ShowItemBox(playerid, sprintf("Removed %dx", amount), string, model);
			ApplyAnimation(playerid, "GRENADE", "WEAPON_throwu", 4.1, 0, 0, 0, 0, 0, 1);
			
			SendRPMeAboveHead(playerid, sprintf("Melempar %d %s ke tempat peleburan", amount, string), X11_PLUM1);
		}
		else
		{
			if(!strcmp(string, "Sampah Makanan"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang sampah sembarangan!");
				return 1;
			}
			else if(!strcmp(string, "Hiu"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Penyu"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Kayu"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Kayu Potongan"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Ayam Hidup"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Ayam Potongan"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Bulu"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Boxmats"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Pancingan"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Umpan"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Batu Kotor"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Batu Bersih"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Petrol"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}
			else if(!strcmp(string, "Pure Oil"))
			{
				ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuang item ini!");
				return 1;
			}

			if(amount < 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah input tidak valid!");
			if(amount > InventoryData[playerid][itemid][invQuantity]) return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Anda tidak memiliki %s sebanyak itu!", string));
			
			if(!strcmp(string, "Radio", true))
			{
				if(ToggleRadio[playerid] || RadioMicOn[playerid])
				{
					ToggleRadio[playerid] = false;
					RadioMicOn[playerid] = false;
					CallRemoteFunction("UpdatePlayerVoiceMicToggle", "dd", playerid, false);
					CallRemoteFunction("UpdatePlayerVoiceRadioToggle", "dd", playerid, false);
					CallRemoteFunction("AssignFreqToFSVoice", "ddd", playerid, true, 0);
					PlayerTextDrawSetString(playerid, ATRP_RadioTD[playerid][7], "0");
				}
			}
			DropPlayerItem(playerid, itemid, amount);
		}
	}*/
	return 1;
}

RemovePlayerWeapon(playerid, weaponid)
{
	// Reset the player's weapons.
	ResetPlayerWeapons(playerid);
	// Set the armed slot to zero.
	SetPlayerArmedWeapon(playerid, 0);
	// Set the weapon in the slot to zero.
	AccountData[playerid][pGuns][g_aWeaponSlots[weaponid]] = 0;
	AccountData[playerid][pACTime] = gettime() + 2;
	// Set the player's weapons.
	SetWeapons(playerid);
	return 1;
}

// stock SendMoneyLog(playerid, targetid, amount)
// {
//     new senderName[MAX_PLAYER_NAME], targetName[MAX_PLAYER_NAME], message[256];
//     GetPlayerName(playerid, senderName, sizeof(senderName));
//     GetPlayerName(targetid, targetName, sizeof(targetName));

//     format(message, sizeof(message), "{ \"content\": \"💰 **%s** membayar **%s** sebesar **$%d**\" }", senderName, targetName, amount);

//     HTTP(0, HTTP_POST, DISCORD_WEBHOOK, message, "OnHttpResponse"); // Hanya 5 parameter
//     return 1;
// }

// stock LogConnect(playerid)
// {
//     new playerName[MAX_PLAYER_NAME], message[256];
//     GetPlayerName(playerid, playerName, sizeof(playerName));

//     format(message, sizeof(message), "{ \"content\": \"✅ **%s** telah terhubung ke server!\" }", playerName);

//     HTTP(0, HTTP_POST, DISCORD_WEBHOOK, "Content-Type: application/json", message, "OnHttpResponse");
//     return 1;
// }

// forward OnHttpResponse(index, response_code, data[]);
// public OnHttpResponse(index, response_code, data[])
// {
//     printf("HTTP Response: %d - %s", response_code, data);
// }
