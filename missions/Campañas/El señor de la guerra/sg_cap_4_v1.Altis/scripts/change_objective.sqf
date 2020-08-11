/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (!isServer || MANDI_CHANGE_OBJECTIVE_SHOWN) exitWith { };

MANDI_CHANGE_OBJECTIVE_SHOWN = true;

publicVariable "MANDI_CHANGE_OBJECTIVE_SHOWN";

sleep 300;

[[], "scripts\change_objective_client.sqf"] remoteExec ["BIS_fnc_execVM", 0, true];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/