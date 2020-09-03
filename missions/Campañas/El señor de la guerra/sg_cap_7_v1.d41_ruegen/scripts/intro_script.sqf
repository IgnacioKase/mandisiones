/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

waitUntil { time > 0 };

titleCut ["", "BLACK FADED", 999];

_camera = "camera" camCreate (getPos player);
_camera cameraEffect ["Internal", "back"];

sleep 2;

_camera camPrepareTarget c2;
_camera attachTo [c2, [30,40,2]];
_camera camPrepareFov 0.440;
_camera camCommitPrepared 0;

titleCut ["", "BLACK IN", 5];

waitUntil { damage c4 > 0.5 };

sleep 0.5;

titleCut ["", "BLACK OUT", 0.1];
sleep 0.15;
titleCut ["","BLACK IN", 0.1];
sleep 0.15;

titleCut ["", "BLACK OUT", 0.1];
sleep 0.15;
titleCut ["","BLACK IN", 0.1];
sleep 2;

waitUntil { damage c2 > 0.5};

sleep 0.5;

titleCut ["", "BLACK OUT", 0.1];
sleep 0.15;
titleCut ["","BLACK IN", 0.1];
sleep 0.15;

titleCut ["", "BLACK OUT", 0.1];
sleep 0.15;
titleCut ["","BLACK IN", 0.1];
sleep 0.15;
titleCut ["","BLACK IN", 0.1];

sleep 5;

titleCut ["", "BLACK FADED", 999];
_camera cameraEffect ["terminate", "back"];
camDestroy _camera;

sleep 20;

player switchMove "Acts_UnconsciousStandUp_part1";

titleCut [" ","BLACK IN",2];

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 5;

sleep 60;

"marker_4" setMarkerAlphaLocal 1;
"marker_5" setMarkerAlphaLocal 1;
"marker_7" setMarkerAlphaLocal 1;
"marker_9" setMarkerAlphaLocal 1;

OTAN sideChat "Arga, estan atacando la base. Necesitamos su ayuda.";
sleep 10;
OTAN sideChat "Les enviamos la posición de los accidentes a sus GPS, busquen equipo y dirijanse a la base.";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/