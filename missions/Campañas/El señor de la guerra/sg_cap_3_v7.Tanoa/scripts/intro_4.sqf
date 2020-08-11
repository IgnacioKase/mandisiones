/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _pos = [655.253,14938, 25.5];
private _posTarget = [691.653,14985, 25.5];
private _posDeCrew = [676.308, 14954.3, 25];

titleCut ["", "BLACK FADED", 999];

_camera = "camera" camCreate _pos;
_camera cameraEffect ["Internal", "back"];

_camera camPrepareTarget [679.769, 14955.7, 25];
_camera camPreparePos _posDeCrew;
_camera camPrepareFov 0.640;
_camera camCommitPrepared 0;

sleep 3;

intro_idle_crew switchMove "Acts_JetsCrewaidF_idle_m";
intro_idle_crew_2 switchMove "Acts_JetsShooterIdle_stillpose_m";

intro_shoot switchMove "Acts_JetsMarshallingEnginesOn_in"; sleep 1.366;
titleCut ["", "BLACK IN", 5]; sleep 1;
intro_shoot playMove "Acts_JetsMarshallingEnginesOn_loop"; sleep 2.533;

_camera camPrepareTarget intro_plane;
_camera camPreparePos [665.729,14913.9,25];
_camera camPrepareFov 0.840;
_camera camCommitPrepared 0;

intro_shoot playMove "Acts_JetsMarshallingEnginesOn_out"; sleep 0.866;
intro_shoot switchMove "Acts_JetsShooterShootingReady_in_m"; sleep 0.766;
intro_shoot playMove "Acts_JetsShooterShootingReady_loop_m"; sleep 3.501;

_camera camPrepareTarget _posTarget;
_camera camPreparePos _pos;
_camera camPrepareFov 0.840;
_camera camCommitPrepared 0;

sleep 3;

intro_shoot playMove "Acts_JetsShooterShootingReady_pointing_m"; sleep 4.166;

_camera camPrepareTarget _posTarget;
_camera camPreparePos _pos;
_camera camPrepareFov 0.840;
_camera camCommitPrepared 0;

intro_plane limitSpeed 500;

[piloto, true] remoteExec ["MANDI_fnc_displayObject", 2, false];

[intro_plane, 63.074] call BIS_fnc_AircraftCatapultLaunch;
intro_plane flyInHeightASL [200, 200, 200];
intro_plane forceSpeed 200;
intro_plane doMove (markerPos "marker_plane_target");

intro_shoot playMove "Acts_JetsCrewaidLCrouchThumbup_in_m"; sleep  1.366;

_camera camPrepareTarget intro_plane;
_camera camPreparePos _pos;
_camera camPrepareFov 0.340;
_camera camCommitPrepared 5;

intro_shoot switchMove "Acts_JetsCrewaidLCrouchThumbup_loop_m"; sleep 5.701;
camDestroy _camera;

[intro_shoot, false] remoteExec ["MANDI_fnc_displayObject", 2, false];
[intro_idle_crew, false] remoteExec ["MANDI_fnc_displayObject", 2, false];
[intro_idle_crew_2, false] remoteExec ["MANDI_fnc_displayObject", 2, false];

execVM "scripts\intro_3.sqf";

sleep 20;

[intro_plane, false] remoteExec ["MANDI_fnc_displayObject", 2, false];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/