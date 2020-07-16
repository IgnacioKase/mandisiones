{
	if(side _x == west) then{
		_x disableAI "MOVE";
		_x disableAI "PATH";
	};
} forEach allUnits;

sleep 2;

{
	if(side _x == west) then{
		_x enableAI "MOVE";
		_x enableAI "PATH";
	};
} forEach allUnits;

sleep 0.5;

private _pos1 = [11386.7,12355.5,1.2];
private _pos2 = [11384.4,12356.6,1.2];
private _posTarget = [11368.6,12328.9,1.2];


_camera = "camera" camCreate _pos1;
_camera cameraEffect ["Internal", "back"];

showCinemaBorder false;

_camera camPrepareTarget _posTarget;
_camera camPreparePos _pos1;
_camera camPrepareFov 0.4;
_camera camCommitPrepared 0;


_camera camPrepareTarget _posTarget;
_camera camPreparePos _pos2;
_camera camPrepareFov 0.4;
_camera camCommitPrepared 5;

sleep 1.5;

{
	_x allowDamage true;
} forEach allUnits;