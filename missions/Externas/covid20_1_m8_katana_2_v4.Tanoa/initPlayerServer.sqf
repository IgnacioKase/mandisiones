/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_playerUnit", "_didJIP"];

waitUntil { time > 0 };

sleep 5;

if (isDedicated) then {
    [[_playerUnit]] call compile preprocessFileLineNumbers "scripts\db\querys\write_alternative_role.sqf";
    [_playerUnit, "connected"] execVM "scripts\db\querys\write_log.sqf";
};

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/