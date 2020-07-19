_camera = "camera" camCreate (getPos p1);
 _camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget p1;
_camera attachTo [p1, [-1,3.5,1.4]];
_camera camPrepareFov 0.4;
_camera camCommitPrepared 0;