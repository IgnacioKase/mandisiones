/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params [["_unit", player], ["_logType", "connected"]];

/*
	TODO: Arreglar, cuando un jugador tiene IA de forma local (o sea es lider de grupo y tiene IA en su grupo)
	este script en el disconnect corre una vez por cada IA y jugador.
	TODO: Agregar tiempo de log real desde aca y no dejar el default de la db
	TODO: Agregar nueva columna, tiempo en mision y loguearlo
	TODO: No repetir logs info, checkear si existe y reemplazar en ese caso. (separar esta logica en otro archivo)
	TODO: Crear funcion para loguear con una sola llamada varias personas
*/

[format ["UNIT: %1, ,LOGTYPE: %2", str _unit, str _logType]] call BIS_fnc_logFormat;

private ["_query"];

private _values = " ";

if (_logType == "connected") then {
	private _roleList = call compile preprocessFileLineNumbers "scripts\db\querys\get_role_list.sqf";

	_query = "INSERT INTO log (`log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`, `role_id`, `mission_time`) VALUES";

	_values = format [
		"((SELECT id from log_type WHERE name = '%1'), '%2', '%3', (SELECT id from player_state WHERE name = '%4'), '%5', (SELECT id from role WHERE code = '%6'), %7);",
		_logType,
		name _unit,
		getPlayerUID _unit,
		_unit call MANDI_fnc_getState,
		missionName,
		[_unit, _roleList] call MANDI_fnc_getRole,
		time
	];
};

if (_logType == "info") then {
	private _unitList = _unit;
	private _roleList = call compile preprocessFileLineNumbers "scripts\db\querys\get_role_list.sqf";
	private ["_newValue"];

	_query = "INSERT INTO log (`log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`, `role_id`, `mission_time`) VALUES";
	
	{
		_newValue = format [
			"((SELECT id from log_type WHERE name = '%1'), '%2', '%3', (SELECT id from player_state WHERE name = '%4'), '%5', (SELECT id from role WHERE code = '%6'), %7)",
			_logType,
			name _x,
			getPlayerUID _x,
			_x call MANDI_fnc_getState,
			missionName,
			[_x, _roleList] call MANDI_fnc_getRole,
			time
		];

		if (_forEachIndex ==  0) then {
			_values = [_values, _newValue] joinString " ";
		} else {
			_values = [_values, _newValue] joinString ",";
		};
	} forEach _unitList;

	_values = _values + ";";
};

if (_logType == "disconnected") then {
	private _uid = _unit select 0;
	private _name = _unit select 1;
	_unit = _unit select 2;

	_query = "INSERT INTO log (`log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`, `mission_time`) VALUES";

	_values = format [
		"((SELECT id from log_type WHERE name = '%1'), '%2', '%3', (SELECT id from player_state WHERE name = '%4'), '%5', %6);",
		_logType,
		_name,
		_uid,
		_unit call MANDI_fnc_getState,
		missionName,
		time
	];
};

_query = [_query, _values] joinString " ";

_query execVM "scripts\db\connect_db.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/