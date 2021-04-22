/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (!hasInterface) exitWith { };

titleCut ["", "BLACK FADED", 999];

private _pos = [3269.26, 8015.07, 2.4];

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
_camera camPreparePos [3270.4,8010.68, 2];
_camera camPrepareFov 0.540;
_camera camCommitPrepared 25;

sleep 10;

["Misión fallida", false] call BIS_fnc_endMission;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/