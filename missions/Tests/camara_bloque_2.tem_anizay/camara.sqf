_camera = "camera" camCreate (getPos target);
 _camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget target;
_camera attachTo [target, [-5,-1,3]];
_camera camPrepareFov 0.440;
_camera camCommitPrepared 0;

sleep 5;

_camera camPrepareTarget target_2;
_camera camPrepareFov 0.7;
_camera camCommitPrepared 2;

sleep 3;


// _camera cameraEffect ["terminate", "back"];

_camera cameraEffect ["terminate", "back"];
camDestroy _camera;