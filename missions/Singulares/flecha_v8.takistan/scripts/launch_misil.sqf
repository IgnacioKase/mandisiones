/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

if(!isServer) exitWith { };

private _fstGroup = [misil, misil_1, misil_2];

{
	if( side _x == independent) then {
		_x hideObjectGlobal true;
		_x enableSimulationGlobal false;
	}
} forEach allUnits;

sleep 1;

{
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _x;
} forEach _fstGroup;

{
	(vehicle (leader _x)) enableSimulationGlobal true;
} forEach _fstGroup;

sleep 2;

ENABLE_DIST = false;

"scripts\client_misil.sqf" remoteExec ["execVM", 0];

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/