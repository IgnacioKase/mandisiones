/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

// Llamamos a la db
call compile preprocessFileLineNumbers "scripts\db\source\oo_extdb3.sqf";

//sleep 2;

private _extdb3 = "new" call OO_EXTDB3;
["setIniSectionDatabase", "Database"] call _extdb3;
["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
[format ["connection: %1", str _result]] call BIS_fnc_logFormat;
/////////////////////

private ["_query", "_values", "_description"];

{
	_query = "INSERT INTO role_alternative_name (`name`) VALUES";

	_description = (roleDescription _x splitString "@") select 0;  
	_values = format ["('%1');", _description];
	_query = [_query, _values] joinString " ";

	[format ["QUERY: %1", str _query]] call BIS_fnc_logFormat;

	_result = ["executeQuery", _query] call _extdb3;

	[format ["INSERT ALT: %1", str _result]] call BIS_fnc_logFormat;
	
} forEach allPlayers;



/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/