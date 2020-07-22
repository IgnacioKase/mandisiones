private _pos = [3622.49,13145.7,1.6];
_camera = "camera" camCreate _pos;
 _camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [3619.45,13159.5,1];
_camera camPreparePos _pos;
_camera camPrepareFov 0.840;
_camera camCommitPrepared 0;



_camera camPrepareTarget [3619.45,13159.5,1];
_camera camPreparePos [3621.5,13152.7,1.6];
_camera camPrepareFov 0.840;
_camera camCommitPrepared 15;




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