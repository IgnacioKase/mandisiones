/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params [["_unit", player], ["_logType", "connected"]];

[format ["UNIT: %1, ,LOGTYPE: %2", str _unit, str _logType]] call BIS_fnc_logFormat;

/*
	TODO: Arreglar, cuando un jugador tiene IA de forma local (o sea es lider de grupo y tiene IA en su grupo)
	este script en el disconnect corre una vez por cada IA y jugador.
	TODO: Agregar tiempo de log real desde aca y no dejar el default de la db
	TODO: Crear funcion para loguear con una sola llamada varias personas
*/

//Aca transformar _unit a una lista si no lo es
//[ ["_uid", "_name", "_unit"] ]

private _roleList = call compile preprocessFileLineNumbers "scripts\db\querys\get_role_list.sqf";
private ["_role", "_query", "_valuesQuery", "_values", "_role", "_state", "_id"];
private _querys = [];

{
	_x params ["_uid", "_name", "_unit"];

	_query = if (typeName _role == "SCALAR") then { " INTO log (`id`, `log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`, `role_alternative_name_id`, `mission_time`, `server_name`) VALUES" } else { " INTO log (`id`, `log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`, `role_id`, `mission_time`, `server_name`) VALUES" };
	_valuesQuery = if (typeName _role == "SCALAR") then { "%1, ((SELECT id from log_type WHERE name = '%2'), '%3', '%4', (SELECT id from player_state WHERE name = '%5'), '%6', %7, %8, '%9');" } else { "%1, ((SELECT id from log_type WHERE name = '%2'), '%3', '%4', (SELECT id from player_state WHERE name = '%5'), '%6', (SELECT id from role WHERE code = '%7'), %8, '%9');" };
	_query = if (_logType == "info") then { "REPLACE" + _query } else { "INSERT" + _query };
	
	//Checkear que hacer con estos parametros cuando no hay unidad
	_role = [_unit, _roleList] call MANDI_fnc_getRole;
	_state = _unit call MANDI_fnc_getState;

	_id = _uid call compile preprocessFileLineNumbers "scripts\db\querys\get_info_log_id.sqf";

	_values = format [
		_valuesQuery,
		_id,
		_logType,
		_name,
		_uid,
		_state,
		missionName,
		_role,
		time,
		serverName
	];

	_querys append ([_query, _values] joinString " ");

} forEach _unitList;

{
	_x call compile preprocessFileLineNumbers "scripts\db\connect_db.sqf";
} forEach _querys;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/