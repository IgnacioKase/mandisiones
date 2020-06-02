/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (!isServer) exitWith { };

isPlayingTrumpet = false;
isPlayingAnthem = false;
publicVariable "isPlayingAnthem";
publicVariable "isPlayingTrumpet";

private _allFlags = ["Flag_White_F"] call MANDI_fnc_getObjects_server;

private _allStands = ["TODO"] call MANDI_fnc_getObjects_server;

[[_allFlags], "scripts\handle_flags.sqf"] remoteExec ["BIS_fnc_execVM", 0];


[[_allStands], "scripts\handle_stands.sqf"] remoteExec ["BIS_fnc_execVM", 0];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/