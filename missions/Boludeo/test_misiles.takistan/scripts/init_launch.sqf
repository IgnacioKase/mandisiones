/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if(!isServer) exitWith { };

private _fstGroup = [misil, misil_1, misil_2];

{
	private _group = _x;
	{
		_x hideObjectGlobal true;
		_x enableSimulationGlobal false;
	} forEach units _group;
	
} forEach _fstGroup;

comandante addAction ["<t color='#fcba03'>Interrogar</t>", {  
    params ["_target", "_caller", "_actionId", "_arguments"];  
    "scripts\launch_misil.sqf" remoteExec ["execVM", 2];
    }, [], 1.5, true, true, "", "true", 4, false, "", "" 
];

MANDI_FIRE = false;
publicVariable "MANDI_FIRE";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/