private _pos = [2913.78,5742.62,1];
_camera = "camera" camCreate _pos;
 _camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [2909.46,5802.86,2];
_camera attachTo [a2, [2.5,-0.5,1.5]];
//_camera camPreparePos _pos;
_camera camPrepareFov 0.640;
_camera camCommitPrepared 0;

sleep 3;

_camera camPrepareTarget [2928.11,5745.76,0];
_camera camPrepareFov 0.540;
_camera camCommitPrepared 0.5;

sleep 0.3;

a1 switchMove "AdthPercMstpSrasWrflDnon_r08";






/*_camera = "camera" camCreate (getPos p1);
 _camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget p1;
_camera attachTo [p1, [3.5,1.5,2.2]];
_camera camPrepareFov 0.440;
_camera camCommitPrepared 0;

sleep 3;

_camera camPrepareTarget p2;
_camera camPrepareFov 0.340;
_camera camCommitPrepared 5;

sleep 10;*/


// _camera cameraEffect ["terminate", "back"];

//_camera cameraEffect ["terminate", "back"];
//camDestroy _camera;