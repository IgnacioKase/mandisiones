private _pos = [2913.39,5742.02,1.5];
_camera = "camera" camCreate _pos;
 _camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [2916.33,5759.62,1.5];
_camera camPreparePos _pos;
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;






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