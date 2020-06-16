	call compile preprocessFileLineNumbers "oo_extdb3.sqf";

	sleep 2;

private _extdb3 = "new" call OO_EXTDB3;
// ["setIniSectionDatabase", "Database"] call _extdb3;
// ["setDatabaseName", "arga-log"] call _extdb3;
// ["setSqlCustomIniFile", "test.ini"] call _extdb3;
["setQueryType", "SQL_CUSTOM"] call _extdb3;
_connection = "connect" call _extdb3;
private _query = ["getAll", []];
_result = ["executeQuery", _query] call _extdb3;

[format ["GET ALL: %1", _result]] call BIS_fnc_logFormat;

private _query = "INSERT INTO `arga-log`.`log` (`type`, `mission_name`, `rol`, `unit_status`) VALUES ('prueba desde dentro', 'prueba desde la mision', 'prueba rol ', 'vivo');";
_result = ["executeQuery", _query] call _extdb3;
[format ["INSERT: %1", _result]] call BIS_fnc_logFormat;

private _query = "SELECT * FROM log LIMIT 10;";
_result = ["executeQuery", _query] call _extdb3;
[format ["SELEC: %1", _result]] call BIS_fnc_logFormat;

