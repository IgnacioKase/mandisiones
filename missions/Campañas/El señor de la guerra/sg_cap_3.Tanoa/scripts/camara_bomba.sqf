/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

titleCut ["", "BLACK FADED", 999];

[target_arga_bomb, true] remoteExec ["MANDI_fnc_displayObject", 2, false];

[0, 350] remoteExec ["setWindDir ", 2, false];

{
	[_x, false] remoteExec ["MANDI_fnc_displayObject", 2, false];
} forEach allPlayers;

private _pos = [13410,12315.1,1.8];
private _posGranade = [13415.2,12325.7,0.2];

_camera = "camera" camCreate [0, 0, 0];
_camera cameraEffect ["Internal", "back"];

"SmokeShellYellow" createVehicle _posGranade;

//bomba say3D ["beep", 50];
playSound "beep";

sleep 2;

// playSound "tos";

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

sleep 5;

target_arga_bomb say3D ["tos", 20000];

sleep 5;

[target_arga_bomb, false] remoteExec ["MANDI_fnc_displayObject", 2, false];

["Misión completada", true] call BIS_fnc_endMission;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/