/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_time"];

if (isServer && !isDedicated)
waitUntil { time > _time };

if (!MANDI_BOMBA_DESACTIVADA) then {
	execVM "scripts\detonate_bomb.sqf";	
};

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/