{
	private _group = (group _x);
	{
		_x disableAI "move";
		_x setUnitPos "middle";
	} forEach units _group;     
} forEach allPlayers;

addMissionEventHandler ["HandleDisconnect", {
	params ["_unit", "_id", "_uid", "_name"];
	_unit action ["SwitchWeapon", _unit, _unit, 100];
	_unit playMove "Stand";
	_unit disableAI "PATH";
	removeAllItems _unit;
	false;
}];