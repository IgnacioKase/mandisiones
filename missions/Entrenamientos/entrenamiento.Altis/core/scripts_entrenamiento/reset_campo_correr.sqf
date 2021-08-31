/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
private _hasRunField = getMissionConfigValue ["CAMPO_CORRER", 0] == 1;

if(!_hasRunField) exitWith { };

MANDI_REPETIR_CAMPO = [
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true,
    true
];

publicVariable "MANDI_REPETIR_CAMPO";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/