/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_allStands", []]];

private _rol = false;

{
	_rol = _x getVariable ["MANDI_STAND_ROL", false];
	if (_rol != false) then {
		[_x, _rol] call MANDI_fnc_setStand;
	};
} forEach _allStands;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/