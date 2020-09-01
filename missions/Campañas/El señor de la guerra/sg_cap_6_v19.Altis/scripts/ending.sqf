/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
/*
*/
titleCut ["", "BLACK FADED", 999];

removeGoggles player;

private _pos = [14871,16424.3, 25];

_camera = "camera" camCreate (getPos player);
_camera cameraEffect ["Internal", "back"];

sleep 2;

_camera camPrepareTarget _pos;
_camera attachTo [c130ending, [0,40,2]];
_camera camPrepareFov 0.440;
_camera camCommitPrepared 0;

titleCut ["", "BLACK IN", 5];

sleep 10;

["Misión completada", true] call BIS_fnc_endMission;


/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/