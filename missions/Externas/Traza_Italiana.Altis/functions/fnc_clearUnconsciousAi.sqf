/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

params ["_side"];
private _count = 0;

{
	if(_x getVariable "ACE_isUnconscious" isEqualTo true && !isPlayer _x && (side _x == _side)) then {
		_x setDamage 1;
		_count = _count + 1;
	};
}forEach allUnits;

if (isServer && hasInterface) then {
	systemChat format ["Unidades eliminadas: %1", _count];
};

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/