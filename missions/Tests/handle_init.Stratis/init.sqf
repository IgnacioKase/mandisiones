{
	_x disableAI "MOVE";
	_x action ["SwitchWeapon", _x, _x, 100];
	_x setUnitPos "middle";
} forEach allUnits;