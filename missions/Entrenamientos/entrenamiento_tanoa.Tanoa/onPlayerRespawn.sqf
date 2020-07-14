/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

removeAllWeapons player;
removeGoggles player;
removeHeadgear player;
removeVest player;
removeUniform player;
removeAllAssignedItems player;
clearAllItemsFromBackpack player;
removeBackpack player;
player setUnitLoadout(player getVariable["Saved_Loadout",[]]);

[[player, "respawn"], "scripts\db\querys\write_log.sqf"] remoteExec ["BIS_fnc_execVM", 2, false];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/