/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (!isServer) exitWith { };

isPlayingTrumpet = false;
isPlayingAnthem = false;
publicVariable "isPlayingAnthem";
publicVariable "isPlayingTrumpet";

private _allFlags = ["Flag_White_F"] call MANDI_fnc_getObjects_server;

[[_allFlags], "core\scripts_entrenamiento\handle_flags.sqf"] remoteExec ["BIS_fnc_execVM", 0, true];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/