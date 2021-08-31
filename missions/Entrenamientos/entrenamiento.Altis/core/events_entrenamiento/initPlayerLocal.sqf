/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

removeGoggles player;
player setVariable["Saved_Loadout", getUnitLoadout player];

call compile preprocessFile "core\events\initPlayerLocal.sqf";
  
private _curatorWhiteList = parseSimpleArray getMissionConfigValue ["CURATOR_WHITELIST", "[]"];

{
  if([_x, profileName, false] call BIS_fnc_inString || [_x, roleDescription player, false] call BIS_fnc_inString) then {
    execVM "core\scripts_entrenamiento\make_curator.sqf";
  };
} forEach _curatorWhiteList;

execVM "core\scripts_entrenamiento\init_campo_correr.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
