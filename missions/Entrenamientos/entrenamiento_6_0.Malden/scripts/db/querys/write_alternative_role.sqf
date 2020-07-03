/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

private ["_query", "_description", "_newValue"];
private _values =  " ";
_query = "INSERT INTO role_alternative_name (`name`) VALUES";

{
	_description = roleDescription _x;  
	
	if (_description != "") then {
		_description = (roleDescription _x splitString "@") select 0;
		_newValue = format ["('%1')", _description];
			if (_forEachIndex ==  0) then {
			_values = [_values, _newValue] joinString " ";
		} else {
			_values = [_values, _newValue] joinString ",";
		};
	};	
} forEach allPlayers;

_values = _values + ";";

_query = [_query, _values] joinString " ";

_query execVM "scripts\db\connect_db.sqf";


/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

