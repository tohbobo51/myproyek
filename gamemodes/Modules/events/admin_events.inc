
new
	eventJoin[MAX_PLAYERS] = {0, ...},
	eventTeams[MAX_PLAYERS] = {0, ...},
	eventWaitingSpawn[MAX_PLAYERS] = {0, ...},
	eventCheckpoint[MAX_PLAYERS] = {0, ...},
	Text:eventTextdraws[8],
	eventMessageText[4][128],
	Timer:haupdate[MAX_PLAYERS],
  	eventScore_DM[MAX_PLAYERS] = {0, ...}
;

#include "Modules/events/enumerations.inc"
#include "Modules/events/function.inc"
#include "Modules/events/callback.inc"
#include "Modules/events/command.inc"
#include "Modules/events/dialog.inc"