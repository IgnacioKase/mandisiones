/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_playerUnit", "_didJIP"];

["Antes del waitUntil: %1"] call BIS_fnc_logFormat;

waitUntil { !isPlayer _playerUnit };

["Despues del waitUntil: %1"] call BIS_fnc_logFormat;

sleep 5;

[_playerUnit, "connected"] execVM "scripts\db\querys\write_log.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/