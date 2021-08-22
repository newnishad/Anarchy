#include <zcmd>
#include <sscanf2>
#include "anarchy/consts.inc"
#include "anarchy/dialogs.inc"
#include "anarchy/cmd_admin.inc"

CMD:setskin(playerid, params[]) {
    new skinid;
    if (sscanf(params, "i", skinid)) return SendClientMessage(playerid, COLOR_HINT, "Usage: /setskin (skinid)");
    SetPlayerSkin(playerid, skinid);
    return 1;
}

CMD:veh(playerid, params[]) {
    new vid;
    new Float:pX;
    new Float:pY;
    new Float:pZ;
    new Float:pA;
    if (sscanf(params, "i", vid)) return SendClientMessage(playerid, COLOR_HINT, "Usage: /veh (vehicle_id)");
    GetPlayerPos(playerid, Float:pX, Float:pY, Float:pZ);
    GetPlayerFacingAngle(playerid, Float:pA);
    CreateVehicle(vid, Float:pX, Float:pY, Float:pZ, Float:pA, 1, 1, 1, 0);
    return 1;
}

CMD:login(playerid, params[]) {
    new string[256];
    new Playername[26];
    GetPlayerName(playerid, Playername, sizeof(Playername));
    format(string, sizeof(string), "Hello,{FFFFFF} %s", Playername);
    ShowPlayerDialog(playerid, Dialog_help, DIALOG_STYLE_PASSWORD, string, "Enter your password", "Login", "Cancel");
    return 1;
}

CMD:changename(playerid, params[]) {
    ShowPlayerDialog(playerid, Dialog_changename, DIALOG_STYLE_INPUT, "Change name", "Enter a new name", "Confirm", "Cancel");
    return 1;
}