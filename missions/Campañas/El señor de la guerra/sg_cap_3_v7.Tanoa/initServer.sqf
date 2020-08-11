/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFile "core\events\initServer.sqf";

waitUntil { time > 0 };

MANDI_CHANGE_OBJECTIVE_SHOWN = false;

publicVariable "MANDI_CHANGE_OBJECTIVE_SHOWN";

execVM "scripts\contra_ataque.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/