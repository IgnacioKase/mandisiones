
params ["_group"];

private _time = random [240, 360, 540];

sleep _time;

private _isGroupAlive = ! (false in ((units _group) apply { alive _x }));

if (!_isGroupAlive) exitWith {};


[_group, ["effect_predator", 300]] remoteExec ["say3D", 0];