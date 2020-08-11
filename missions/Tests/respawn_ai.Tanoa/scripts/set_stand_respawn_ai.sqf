/*******************************************************************************
                             Realizado por |ArgA|MandI
*******************************************************************************/

respawn_stand addAction ["<t color='#fcba03'>Reiniciar campo</t>", {  
	params ["_target", "_caller", "_actionId", "_arguments"]; 
	[[cqb], "scripts\respawn_ai.sqf"] remoteExec ["BIS_fnc_execVM", 2, false];
	}, [], 1.5, true, true, "", "true", 4, false, "", "" 
];

/*******************************************************************************
                             Realizado por |ArgA|MandI
*******************************************************************************/