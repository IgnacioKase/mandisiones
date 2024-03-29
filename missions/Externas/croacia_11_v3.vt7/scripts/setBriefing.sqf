﻿/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
private _mode = getMissionConfigValue ["CARACTER", "No oficial"];
private _time = getMissionConfigValue ["HORARIO", ""];
private _date = getMissionConfigValue ["FECHA", ""];
private _weather = getMissionConfigValue ["CLIMA", ""];
private _location = getMissionConfigValue ["UBICACION", ""];
private _situation = getMissionConfigValue ["SITUACION", "test"];
private _mision = getMissionConfigValue ["MISION", ""];
private _intelligence = getMissionConfigValue ["EXTRACTO_INTELIGENCIA", ""];
private _objectives = getMissionConfigValue ["OBJETIVOS", []];
private _loadout = getMissionConfigValue ["RECURSOS", []];
private _enemyForces = getMissionConfigValue ["ENEMIGOS", []];
private _author = getMissionConfigValue ["author", "ArgA"];

private _info = [
    "Caracter: " + _mode,
    "Horario: " + _time,
    "Fecha: " + _date,
    "Clima: " + _weather,
    "Ubicación: " + _location
];

private _params = [
    parseSimpleArray _loadout, 
    parseSimpleArray _enemyForces, 
    parseSimpleArray _objectives, 
    parseSimpleArray _mision, 
    parseSimpleArray _intelligence,
    parseSimpleArray _situation,
    _info,
    _author
];

_params call MANDI_fnc_setBriefing;

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/