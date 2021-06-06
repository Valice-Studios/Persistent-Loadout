/*
 * This function saves the current equipment loadout to the User's profile data.
 *
 * Arguments:
 * 0: the player from which to save the equipment loadout
 * 1: the loadout to save
 * 2: the key to associate the loadout with
 *
 * Return Value:
 * NONE
 *
 * Example:
 *   [this] call VSKS_fnc_saveLoadout;
 *
 * Public: [No]
 */

if !(hasInterface) exitWith {};
params [
    "_player",
    "_loadout",
    "_saveKey"
];

profileNamespace setVariable ["_saveKey", _loadout];
systemChat "Loadout saved!";