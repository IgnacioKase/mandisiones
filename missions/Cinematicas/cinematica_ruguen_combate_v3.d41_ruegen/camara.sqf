private _pos = [1261.28,3294.67,4.8];

_camera = "camera" camCreate _pos;
_camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [1234.1,3275.52,2];
_camera camPreparePos _pos;
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;

//[1225.78,3284.65,0]