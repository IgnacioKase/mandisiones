/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

titleCut ["", "BLACK FADED", 999];

private _author = getMissionConfigValue ["author", "ArgA"];
private _name = name player;

private _posicion = [8068.94, 9830.67, 4.85626 ];
private _target = [8070.38,9830.71,4.646];
private _posicion_final =[8068.11, 9830.57, 5.4448];

["<t size='1.3' color='#00B3FF'>Entrenamiento<t font = 'PuristaSemiBold' size='1.0' color='#FFFFFF'><br/>CLAN ARGA</t></t><br/><t size='0.9' color='#cccccc' font='PuristaSemiBold'>by "+_author+"</t>",0,0.3,4,2,0.0] spawn bis_fnc_dynamictext;
sleep 5;

titleCut ["", "BLACK IN", 5];


_camera = "camera" camCreate _posicion;
_camera cameraEffect ["internal", "back"];

_camera camPrepareTarget _target;
_camera camPreparePos _posicion;
_camera camPrepareFov 0.8;
_camera camSetFocus [200, 200];
_camera camCommitPrepared 0;

sleep 2;

_camera camPrepareTarget _target;
_camera camPreparePos _posicion_final;
_camera camPrepareFov 0.440;
_camera camSetFocus [1, 100];
_camera camCommitPrepared 5;

sleep 2;

titleCut ["", "BLACK OUT", 0.2];
sleep 0.25;
titleCut ["","BLACK IN", 0.2];
sleep 0.25;

titleCut ["", "BLACK OUT", 0.2];
sleep 0.25;
titleCut ["","BLACK IN", 0.2];
sleep 0.25;
titleCut ["", "BLACK OUT", 0.2];
titleCut ["", "BLACK FADED", 999];
sleep 2;

_camera cameraEffect ["terminate", "back"];
camDestroy _camera;
titleCut [" ","BLACK IN",2];

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 5;

null=[
 [
   ["Bienvenido,","align = 'center' size = '.8' font='PuristaBold'"],
   [format ["  %1 ", _name],"align = 'center' size = '.8'","#aaaaaa"],
   ["","<br/>"],
   ["Campo de Entrenamiento Clan ArgA","align = 'center' size = '0.5'"]
 ]
] spawn BIS_fnc_typeText2;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/