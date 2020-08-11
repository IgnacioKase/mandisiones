/*******************************************************************************
                             Realizado por |ArgA|MandI
*******************************************************************************/

params ["_trigger"];

if (!isServer || isNil "MANDI_UNIT_RESPAWN_LIST") exitWith { };

private _newList = [];

{
	_x params ["_unit","_unitPos","_unitDir","_unitType"];

	_unit try { 
		deleteVehicle _this;
	} catch {
		systemChat "vehicle does not exist";
	};
	{deleteVehicle _x;} forEach (nearestObjects [_unitPos,["GroundWeaponHolder","WeaponHolderSimulated"],5]);
	private _unitNew = createVehicle [_unitType, _unitPos, [], 0, "CAN_COLLIDE"];
	_unitNew setPos _unitPos;
	_unitNew setDir _unitDir;
	_unitNew disableAI "PATH";
	_newList pushBack [_unitNew,_unitPos,_unitDir,_unitType];
} forEach MANDI_UNIT_RESPAWN_LIST;

MANDI_UNIT_RESPAWN_LIST = _newList;

/*******************************************************************************
                             Realizado por |ArgA|MandI
*******************************************************************************/