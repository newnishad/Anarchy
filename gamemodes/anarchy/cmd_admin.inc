#include <zcmd>
#include <sscanf2>

CMD:gotoid(playerid, params[]) {
    if (!IsPlayerAdmin(playerid)) return 1;
    new id;
    new Float:pX;
    new Float:pY;
    new Float:pZ;
    if (sscanf(params, "i", id)) {
        SendClientMessage(playerid, COLOR_HINT, "Usage: /gotoid (id)");
        return 1;
    }
    GetPlayerPos(id, Float:pX, Float:pY, Float:pZ);
    SetPlayerPos(playerid, pX, pY, pZ);
    return 1;
}

CMD:heal(playerid, params[]) {
    if (!IsPlayerAdmin(playerid)) return 1;
    new id;
    new string[256];
    new Playername[26];
    if (sscanf(params, "i", id)) {
        SendClientMessage(playerid, COLOR_HINT, "Usage: /heal (id)");
        return 1;
    }
    GetPlayerName(id, Playername, sizeof(Playername));
    SetPlayerArmour(id, 100);
    SetPlayerHealth(id, 100);
    SendClientMessage(id, COLOR_HINT, "You are healed by an admin");
    format(string, sizeof(string), "You healed %s", Playername);
    SendClientMessage(playerid, COLOR_HINT, string);
    return 1;
}


CMD:sendtolsi(playerid, params[]) {
    if (!IsPlayerAdmin(playerid)) return 1;
    new id;
    new string[256];
    new Playername[26];
    if (sscanf(params, "i", id)) {
        SendClientMessage(playerid, COLOR_HINT, "Usage: /sendtolsi (id)");
        return 1;
    }
    GetPlayerName(id, Playername, sizeof(Playername));
    SetPlayerPos(playerid, 1641.8926, -2331.9680, 13.5469);
    format(string, sizeof(string), "Teleported %s to LSI", Playername);
    SendClientMessage(playerid, COLOR_HINT, string);
    return 1;
}

CMD:gethere(playerid, params[]) {
    if (!IsPlayerAdmin(playerid)) return 1;
    new id;
    new string[256];
    new Playername[26];
    new Float:pX;
    new Float:pY;
    new Float:pZ;
    if (sscanf(params, "i", id)) {
        SendClientMessage(playerid, COLOR_HINT, "Usage: /gethere (id)");
        return 1;
    }
    GetPlayerPos(playerid, Float:pX, Float:pY, Float:pZ);
    GetPlayerName(id, Playername, sizeof(Playername));
    SetPlayerPos(id, Float:pX + 0.5, Float:pY + 0.5, Float:pZ);
    format(string, sizeof(string), "Teleported %s to you", Playername);
    SendClientMessage(playerid, COLOR_HINT, string);
    return 1;
}

CMD:goto(playerid, params[]) {
    if (!IsPlayerAdmin(playerid)) return 1;
    new string;
    if (sscanf(params, "q", string)) {
        SendClientMessage(playerid, COLOR_HINT, "Usage: /goto (lv/ls/sf/bayside)");
        return 1;
    }
    if (strcmp(params, "ls", true, 2)) {
        SetPlayerPos(playerid, 1529.6659,-1686.4869,13.3828); //ls
    } else if (strcmp(params, "lv", true, 2)) {
        SetPlayerPos(playerid, 1698.8514,1443.5293,10.7819); //lv
    } else if (strcmp(params, "sf", true, 2)) {
        SetPlayerPos(playerid, -1430.4420, -288.1360, 14.1484); //sf
    } else if (strcmp(params, "bayside", true, 7)) {
        SetPlayerPos(playerid, -2256.1287, 2326.4873, 4.8125); //bayside
    }
    return 1;
}