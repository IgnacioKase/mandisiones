/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
private _curatorWhiteList = parseSimpleArray getMissionConfigValue ["CURATOR_WHITELIST", "[]"];
private _loadout = player getVariable["Saved_Loadout",[]];
if (count _loadout != 0) then {
    removeAllWeapons player;
    removeGoggles player;
    removeHeadgear player;
    removeVest player;
    removeUniform player;
    removeAllAssignedItems player;
    clearAllItemsFromBackpack player;
    removeBackpack player;
    player setUnitLoadout(_loadout);
    {
        if([_x, profileName, false] call BIS_fnc_inString || [_x, roleDescription player, false] call BIS_fnc_inString) then {
            execVM "scripts\make_curator.sqf";
        };
    } forEach _curatorWhiteList;
};




/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/