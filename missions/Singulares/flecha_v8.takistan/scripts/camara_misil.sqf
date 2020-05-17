/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

titleCut ["", "BLACK FADED", 999];

sleep 1;

titleCut ["", "BLACK IN", 1];

private _posicion = [5818.19,11393.4,13.229];
private _target = target_1;
private _target_final = [4929.31,12454.9,0];
private _target_final_2 = [4929.92,12454.2,399.998];

_camera = "camera" camCreate _posicion;
_camera cameraEffect ["internal", "back"];

_camera camPrepareTarget _target;
_camera camPreparePos _posicion;
_camera camPrepareFov 0.8;
_camera camSetFocus [200, 200];
_camera camCommitPrepared 0;

sleep 35;

_camera camPrepareTarget _target_final;
_camera camPrepareFov 0.440;
_camera camSetFocus [1, 100];
_camera camCommitPrepared 5;

sleep 30;

_camera camPrepareTarget _target_final_2;
_camera camPrepareFov 0.440;
_camera camSetFocus [1, 100];
_camera camCommitPrepared 20;

sleep 20;

_camera cameraEffect ["terminate", "back"];
camDestroy _camera;
titleCut [" ","BLACK IN",2];

["Misión fallida", false, true] call BIS_fnc_EndMission;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/