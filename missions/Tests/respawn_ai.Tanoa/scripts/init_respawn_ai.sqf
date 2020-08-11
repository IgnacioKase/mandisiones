/*******************************************************************************
                             Realizado por |ArgA|MandI
*******************************************************************************/

params ["_trigger"];

private _unitList = allUnits select { _x inArea _trigger };

private _unitRespawnList = [];

{
	_x params ["_unit"];
	_unitPos = getPosVisual _unit;
	_unitDir = getDirVisual _unit;
	_unitType = typeOf _unit;
	_unitRespawnList pushBack [_unit, _unitPos, _unitDir ,_unitType];
} forEach _unitList;

MANDI_UNIT_RESPAWN_LIST = _unitRespawnList;

/*******************************************************************************
                             Realizado por |ArgA|MandI
*******************************************************************************/