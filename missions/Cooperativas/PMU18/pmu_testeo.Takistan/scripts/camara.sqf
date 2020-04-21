for[{private _i = 10;}, {_i >=0;}, {_i = _i -1;}]do
{
    sleep 1;
    hint format["Cámara en  %1 seg.", _i];
};

_camera = "camera" camCreate [8210.78,2150.79,1];
_camera cameraEffect ["internal", "back"];

_camera camPrepareTarget camara;
_camera camPreparePos [8210.78,2150.79,1];
_camera camPrepareFov 0.8;
_camera camCommitPrepared 0;

sleep 5;

titleCut [" ","BLACK OUT",2];
_camera cameraEffect ["terminate", "back"];
camDestroy _camera;
titleCut [" ","BLACK IN",2];

hint "Cámara finalizada";