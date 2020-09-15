/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _hasRunField = getMissionConfigValue ["CAMPO_CORRER", 0] == 1;

if(!_hasRunField) exitWith { };

stand_campo_correr addAction ["<t color='#64D66A'>Reiniciar campo correr</t>", "core\scripts_entrenamiento\reset_campo_correr.sqf"];

execVM "core\scripts_entrenamiento\loop_campo_correr.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/