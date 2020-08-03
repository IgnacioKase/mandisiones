/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (!isServer) exitWith { };

params ["_group", "_chaseTarget"];

private _CHASE_DISTANCE = 1500;
private _RECOMPUTE_ATTACK_TIME = 30;

GET_PLAYER = 
{
	params ["_compObj"];

	private _pjs = allPlayers select { ((_x distance2D _compObj) <= _CHASE_DISTANCE) };

	if (count _pjs > 0) then { selectRandom  _pjs } else { objNull };
};

private _target = objNull;

if (_chaseTarget) then {
	_target = (leader _group) call GET_PLAYER;
};

[_group, _target] execVM "scripts\loop_depredador.sqf";

private ["_isGroupAlive"];

while {_chaseTarget} do {
	sleep _RECOMPUTE_ATTACK_TIME;
	_isGroupAlive = (true in ((units _group) apply { alive _x }));
	if (!alive _target || !_isGroupAlive) exitWith { };
	[_group, getPos _target] call BIS_fnc_taskAttack;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/