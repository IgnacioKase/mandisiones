_camera = "camera" camCreate [5416.65,20321,1];
 _camera cameraEffect ["Internal", "back"];

 showCinemaBorder false;

_camera camPrepareTarget [5421.75,20342.8,1.2];
_camera camPreparePos [5416.82,20321,1.2];
_camera camPrepareFov 0.840;
_camera camCommitPrepared 0;



_camera camPrepareTarget [5421.75,20342.8,0];
_camera camPreparePos [5416.82,20321,1.47];
_camera camPrepareFov 0.560;
_camera camCommitPrepared 5;


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