private _pos = [1255.3,3241.01,0.6];

_camera = "camera" camCreate _pos;
_camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [1238.22,3313.61,0.8];
_camera camPreparePos _pos;
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;

//