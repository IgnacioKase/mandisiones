params ["_group", "_chaseTarget"];

GET_TARGET = 
{
	A1;
};

GET_PLAYER = 
{
	params ["_compObj"];

	private _pjs = [];
	{
		if ((_x distance2D _compObj) <= 1500) then {
			_pjs = _pjs + [_x];
		};
	}forEach allPlayers;

	private _player = objNull;

	if (count _pjs > 0) then {
		_player = selectRandom  _pjs;
	};

	_player;
};

execVM "scripts\loop_depredador.sqf";

if (_chaseTarget) then {
	private _target = call GET_TARGET;
	[_group, getPos _target] call BIS_fnc_taskAttack;
};


