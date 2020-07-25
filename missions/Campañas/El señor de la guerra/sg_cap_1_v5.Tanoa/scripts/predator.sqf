/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_trigger", "_group"];

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

private _playerTarget = _trigger call GET_PLAYER;

{
	_x enableSimulationGlobal true;
	_x hideObjectGlobal false;
	_x doTarget _playerTarget;
} forEach units _group;

[[_trigger], "scripts\sound_predator.sqf"] remoteExec ["BIS_fnc_execVM", 0];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/