/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_obj"];

_obj addAction ["<t color='#4aba7b'>Tomar</t>", { 
   params ["_target", "_caller", "_actionId", "_arguments"]; 
   // _target hideObjectGlobal true;
   // _target enableSimulationGlobal false;
   [_target, false] remoteExec ["MANDI_fnc_displayObject", 2];
   hint "Inteligencia tomada";
   _target call MIV_fnc_log;
}, nil , 1.5, true, true, "", "true", 5, false, "", ""];[]

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/