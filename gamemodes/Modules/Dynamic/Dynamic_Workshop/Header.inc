#define MAX_WORKSHOP			100
#define MAX_WORKSHOP_EMPLOYE	5
#define MAX_WORKSHOP_INT		7000
#define MAX_WORKSHOP_MAT		10000

enum e_workshop
{
	wsID,
	wsName[32],
	wsOwner[MAX_PLAYER_NAME + 1],
	wsOwnerID,
	wsComponent,
	wsMoney,
	STREAMER_TAG_3D_TEXT_LABEL: wsLabel,
	STREAMER_TAG_PICKUP: wsPickup,
	Float:wsPos[3],
	wsStatus
};
new WorkshopData[MAX_WORKSHOP][e_workshop],
	wsEmploy[MAX_WORKSHOP][5][MAX_PLAYER_NAME + 1],
	Iterator:Workshop<MAX_WORKSHOP>;