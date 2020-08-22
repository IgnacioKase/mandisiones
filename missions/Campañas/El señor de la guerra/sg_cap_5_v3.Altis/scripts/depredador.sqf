/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (!isServer) exitWith { };

params ["_group", "_chaseTarget"];

private _CHASE_DISTANCE = 200;
private _RECOMPUTE_ATTACK_TIME = 30;

GET_PLAYER = 
{
	params ["_compObj"];

	private _pjs = allPlayers select { ((_x distance2D _compObj) <= _CHASE_DISTANCE) };

	if (count _pjs > 0) then { selectRandom  _pjs } else { objNull };
};

private _target = objNull;

if (!_chaseTarget) exitWith {
	[_group, _target] execVM "scripts\loop_depredador.sqf";
};

while {isNil "_target"} do {
	_target = (leader _group) call GET_PLAYER;
	sleep 5;
};

[_group, _target] execVM "scripts\loop_depredador.sqf";

systemChat str _target;

while {_chaseTarget} do {
	sleep _RECOMPUTE_ATTACK_TIME;
	if (!alive _target) exitWith { };
	[_group, getPos _target] call BIS_fnc_taskAttack;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/