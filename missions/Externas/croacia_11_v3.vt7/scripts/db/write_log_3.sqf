/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_unit", player], ["_logType", "connected"]];

[format ["UNIT: %1, \nLOGTYPE: %2", str _unit, str _logType]] call BIS_fnc_logFormat;

// Llamamos a la db
call compile preprocessFileLineNumbers "scripts\db\source\oo_extdb3.sqf";

private _extdb3 = "new" call OO_EXTDB3;
["setIniSectionDatabase", "Database"] call _extdb3;
["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
[format ["connection: %1", str _result]] call BIS_fnc_logFormat;
/////////////////////

private ["_query", "_values"];

if (_logType == "connected") then {
	//private _roleList = call compile preprocessFileLineNumbers "scripts\db\querys\get_role_list.sqf";

	_query = "INSERT INTO log (`log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`) VALUES";

	_values = format [
		"((SELECT id from log_type WHERE name = '%1'), '%2', '%3', (SELECT id from player_state WHERE name = '%4'), '%5');",
		_logType,
		name _unit,
		getPlayerUID _unit,
		_unit call MANDI_fnc_getState,
		missionName
	];
} else {
	private _uid = _unit select 0;
	private _name = _unit select 1;
	_unit = _unit select 2;

	_query = "INSERT INTO log (`log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`) VALUES";

	_values = format [
		"((SELECT id from log_type WHERE name = '%1'), '%2', '%3', (SELECT id from player_state WHERE name = '%4'), '%5');",
		_logType,
		_name,
		_uid,
		_unit call MANDI_fnc_getState,
		missionName
	];
};

_query = [_query, _values] joinString " ";

[format ["QUERY: %1", str _query]] call BIS_fnc_logFormat;

_result = ["executeQuery", _query] call _extdb3;

[format ["SELECT: %1", str _result]] call BIS_fnc_logFormat;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/