player disableAI "MOVE";
systemChat format ["isLocal 1: %1", local player];

{
	_x disableAI "MOVE";
	systemChat format ["isLocal 2: %1", local _x];
} forEach allUnits;