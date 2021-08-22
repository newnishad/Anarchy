#include <a_samp>
#include <a_mysql>
#include "anarchy/commands.inc"
#include "anarchy/consts.inc"
#include "anarchy/dialogs.inc"

#define host "localhost"
#define dbuser "root"
#define dbpass ""
#define db "anarchy"

main() {
    print("\n----------------------------------");
    print(" Gamemode by hellonishad.com");
    print("----------------------------------\n");
}

public OnGameModeInit() {
    mysql_connect(host, dbuser, dbpass, db);
    // Don't use these lines if it's a filterscript
    SetGameModeText("DM // Derby // Roleplay");
	UsePlayerPedAnims();
    EnableStuntBonusForAll(0);
    // ShowPlayerMarkers(0);
	// ShowNameTags(1);
	// SetWorldTime(17);
	// SetWeather(11);
	// EnableVehicleFriendlyFire();
	// SetNameTagDrawDistance(110.0);
	// DisableInteriorEnterExits();


    AddPlayerClass(0, 1641.8926, -2331.9680, 13.5469, 359.6246, 0, 0, 0, 0, 0, 0); // newbie spawn
    AddStaticVehicle(586, 1609.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1612.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1615.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1618.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1621.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1624.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1627.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1630.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1633.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1636.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike
    AddStaticVehicle(586, 1639.5000, -2327.5688, 13.0670, 359.1262, 32, 1); //newbie spawn bike

    return 1;
}

public OnGameModeExit() {
    return 1;
}

public OnPlayerRequestClass(playerid, classid) {
    SetPlayerColor(playerid,0xFFFFFFFF);
    SetPlayerPos(playerid, 1396.8302, 2950.9377, 20.0990);
    SetPlayerCameraPos(playerid, 1396.8302, 2950.9377, 49.0990);
    SetPlayerCameraLookAt(playerid, 1396.8302, 2950.9377, 49.0990);
    return 1;
}

public OnPlayerConnect(playerid) {
    return 1;
}

public OnPlayerDisconnect(playerid, reason) {
    return 1;
}

public OnPlayerSpawn(playerid) {
    SendClientMessage(playerid, COLOR_HINT, "{FF0000}Welcome to the state of anarchy");
    new string[256];
    new Playername[26];
    GetPlayerName(playerid, Playername, sizeof(Playername));
    format(string, sizeof(string), "Logged in as:{FFFFFF} %s", Playername);
    SendClientMessage(playerid, COLOR_HINT, string);
    return 1;
}

public OnPlayerDeath(playerid, killerid, reason) {
    GameTextForPlayer(playerid, "~r~You are critically injured", 10000, 5);
    return 1;
}

public OnVehicleSpawn(vehicleid) {
    return 1;
}

public OnVehicleDeath(vehicleid, killerid) {
    return 1;
}

public OnPlayerText(playerid, text[]) {
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[]) {
    if (strcmp("/mycommand", cmdtext, true, 10) == 0) {
        SendClientMessage(playerid, COLOR_HINT, "Fuck off");
        // Do something here
        return 1;
    }
    return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) {
    return 1;
}

public OnPlayerExitVehicle(playerid, vehicleid) {
    return 1;
}

public OnPlayerStateChange(playerid, newstate, oldstate) {
    return 1;
}

public OnPlayerEnterCheckpoint(playerid) {
    return 1;
}

public OnPlayerLeaveCheckpoint(playerid) {
    return 1;
}

public OnPlayerEnterRaceCheckpoint(playerid) {
    return 1;
}

public OnPlayerLeaveRaceCheckpoint(playerid) {
    return 1;
}

public OnRconCommand(cmd[]) {
    return 1;
}

public OnPlayerRequestSpawn(playerid) {
    return 1;
}

public OnObjectMoved(objectid) {
    return 1;
}

public OnPlayerObjectMoved(playerid, objectid) {
    return 1;
}

public OnPlayerPickUpPickup(playerid, pickupid) {
    return 1;
}

public OnVehicleMod(playerid, vehicleid, componentid) {
    return 1;
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid) {
    return 1;
}

public OnVehicleRespray(playerid, vehicleid, color1, color2) {
    return 1;
}

public OnPlayerSelectedMenuRow(playerid, row) {
    return 1;
}

public OnPlayerExitedMenu(playerid) {
    return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid) {
    return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
    return 1;
}

public OnRconLoginAttempt(ip[], password[], success) {
    return 1;
}

public OnPlayerUpdate(playerid) {
    return 1;
}

public OnPlayerStreamIn(playerid, forplayerid) {
    return 1;
}

public OnPlayerStreamOut(playerid, forplayerid) {
    return 1;
}

public OnVehicleStreamIn(vehicleid, forplayerid) {
    return 1;
}

public OnVehicleStreamOut(vehicleid, forplayerid) {
    return 1;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    switch (dialogid) {
        case Dialog_changename:  {
            if (!response) return 1;
            if (strlen(inputtext) < 3 || strlen(inputtext) > 10){
                SendClientMessage(playerid, COLOR_HINT, "Name length must be between 3-10");
                return 1;
            }
            SetPlayerName(playerid, inputtext);
            SendClientMessage(playerid, COLOR_HINT, "Your name is changed");
            return 1;
        }
    }
    return 1;
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source) {
    return 1;
}



