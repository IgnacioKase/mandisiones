/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (markerAlpha "vehicles_yaguar" == 1 || markerAlpha "vehicles_condor" == 1) exitWith { };

"vehicles_yaguar" setMarkerAlpha 1;
"vehicles_condor" setMarkerAlpha 1;

[[], "scripts\show_vehicles_message.sqf"] remoteExec ["BIS_fnc_execVM", 0];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/