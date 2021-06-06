/*
 * This function loads the saved equipment loadout from the User's profile data.
 *
 * Arguments:
 * 0: the player on which to load the equipment loadout
 * 1: the key to associate the loadout with
 *
 * Return Value:
 * NONE
 *
 * Example:
 *   [this] call VSKS_fnc_loadLoadout;
 *
 * Public: [No]
 */

if !(hasInterface) exitWith {};
params [
    "_player",
    "_saveKey"
];

_player setUnitLoadout (profileNamespace getVariable "_saveKey");
systemChat "Loadout retrieved!"