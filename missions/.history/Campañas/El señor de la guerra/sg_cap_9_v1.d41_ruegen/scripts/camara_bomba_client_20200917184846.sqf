/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

titleCut ["", "BLACK FADED", 999];

private _pos = [3713.39,6095.65,0];

_camera = "camera" camCreate [0, 0, 0];
_camera cameraEffect ["Internal", "back"];

sleep 2;

_camera camPrepareTarget bomba;
_camera camPreparePos _pos;
_camera camPrepareFov 0.540;
_camera camCommitPrepared 0;

sleep 0.2;

titleCut ["", "BLACK IN", 5];

_camera camPrepareTarget bomba;
_camera camPreparePos [13413.3,12322.5,1.5];
_camera camPrepareFov 0.540;
_camera camCommitPrepared 25;

sleep 10;

["Misión completada", true] call BIS_fnc_endMission;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/