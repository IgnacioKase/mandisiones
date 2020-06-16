call compile preprocessFileLineNumbers "oo_extdb3.sqf";

sleep 2;

private _extdb3 = "new" call OO_EXTDB3;
[format ["database: %1", str _extdb3]] call BIS_fnc_logFormat;
["setIniSectionDatabase", "Database"] call _extdb3;


_dll = "isDllEnabled" call _extdb3;
[format ["dll: %1", str _dll]] call BIS_fnc_logFormat;

["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
[format ["connection: %1", str _result]] call BIS_fnc_logFormat;
private _query = "SELECT * FROM test LIMIT 10;";
_result = ["executeQuery", _query] call _extdb3;

[format ["SELECT: %1", str _result]] call BIS_fnc_logFormat;