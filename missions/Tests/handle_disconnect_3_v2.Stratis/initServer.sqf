{
	_x disableAI "MOVE";
	systemChat format ["isLocal: %1", local _x];
} forEach allUnits;