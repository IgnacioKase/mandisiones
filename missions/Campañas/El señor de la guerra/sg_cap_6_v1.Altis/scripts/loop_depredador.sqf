/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_group", ["_target", objNull]];

private ["_isGroupAlive"];

private _START_SOUND_DISTANCE = 300;
private _SOUND_DISTANCE = 1200;
// private _INTERVAL_TIME = [240, 360, 540];
private _INTERVAL_TIME = [1, 3, 5];
private _CHECK_IN_DISTANCE_TIME = 5;


while { true } do {
	systemChat str _group;
	systemChat str _target;
	_isGroupAlive = (true in ((units _group) apply { alive _x }));

	if (!_isGroupAlive) exitWith {};

	if(! isNil "_target") then{
		waitUntil {
			sleep _CHECK_IN_DISTANCE_TIME;
			_isGroupAlive = (true in ((units _group) apply { alive _x }));
			if (!_isGroupAlive) exitWith {};
			(leader _group) distance _target <= _START_SOUND_DISTANCE;
		};
	};

	systemChat "sonido";
	[(leader _group), ["effect_predator", _SOUND_DISTANCE]] remoteExec ["say3D", 0];

	sleep random _INTERVAL_TIME;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/