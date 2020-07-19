private _pos = [1225.78,3284.65,10];
/*
{
	if(!isPlayer _x)then{
		_x enableSimulationGlobal true;
	};
	
} forEach allUnits;
*/
_camera = "camera" camCreate _pos;
_camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [1254.26,3242.29,1];
_camera camPreparePos _pos;
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;

//[1225.78,3284.65,0]

if(getPlayerUID player ==)