/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_unit", player], ["_roleList", []]];

private _role = "";

_role = _unit getVariable ["MANDI_ROL", ""]; 

if (_role == "" && !isNil "_unit") then { 
    private ["_code", "_roleName", "_description"];  
    {  
        _code = _x select 0;  
        _roleName = _x select 1;  
        _description = ((toLower roleDescription _unit) splitString "@") select 0;
        if (!isNil "_description") then {
            _description = _description call MANDI_fnc_trim;
            if (_description == _roleName) then {  
                _role = _code;  
            };
        };
    } forEach _roleList;  
};
  
if (_role == "") then {  
    _role = "desconocido";  
};  

_role;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

/*
    [
        ["rol", codigo],
        ["rol", codigo],
        ["rol", codigo],
        ["rol", codigo],
        ["rol", codigo],
        ["rol", codigo],
    ]

*/


