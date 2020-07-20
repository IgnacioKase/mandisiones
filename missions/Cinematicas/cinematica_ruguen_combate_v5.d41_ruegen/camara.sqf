private _pos = [1253.41,3239.97,1];
private _pos2 = [1251.59,3238.72,1];

_camera = "camera" camCreate _pos;
_camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [1241.32,3235.88,0];
_camera camPreparePos _pos;
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;


_camera camPrepareTarget [1243.32,3235.58,0];
_camera camPreparePos _pos2;
_camera camPrepareFov 0.440;
_camera camCommitPrepared 10;
