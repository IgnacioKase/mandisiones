/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if(!isServer) exitWith { };

private _fstGroup = [misil, misil_1, misil_2];

{
	private _group = _x;
	private _vehicle = vehicle (leader _x);
	_vehicle enableSimulationGlobal true;
	
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
} forEach _fstGroup;

"scripts\sound_misil.sqf" remoteExec ["execVM", 0];

sleep 5;

"scripts\camara_misil.sqf" remoteExec ["execVM", 0];

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/