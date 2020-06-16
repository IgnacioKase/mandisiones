call compile preprocessFileLineNumbers "oo_extdb3.sqf";

sleep 2;

private _extdb3 = "new" call OO_EXTDB3;
["setIniSectionDatabase", "Database"] call _extdb3;
["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
private _query = "SELECT * FROM test LIMIT 10;";
_result = ["executeQuery", _query] call _extdb3;

[format ["SELECT: %1", str _result]] call BIS_fnc_logFormat;