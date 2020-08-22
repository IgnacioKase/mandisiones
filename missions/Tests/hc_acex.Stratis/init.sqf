/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private ["_units", "_location"];

while { true } do {
	_units = allUnits select { local _x };
	_location = if(!isServer) then { player } else { "SERVER" };
	["HC ACEX TEST: ", _location, count _units] call MIV_fnc_log;
	sleep 5;
};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/