/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _stage = getMissionConfigValue ["ESCENARIO", 0] == 1;

if(!_stage) exitWith { };

params [["_state", false]];

private _escenario = [escenario_1, escenario_2, escenario_3];

{
	[_x, _state] call MANDI_fnc_displayObject;
} forEach _escenario;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/