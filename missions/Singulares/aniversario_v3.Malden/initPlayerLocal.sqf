/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFile "core\events\initPlayerLocal.sqf";

start_mission addAction ["<t color='#fcba03'>Empezar misión</t>", {  
    params ["_target", "_caller", "_actionId", "_arguments"]; 
    [[], "scripts\start_mission.sqf"] remoteExec ["BIS_fnc_execVM", 2, false];
    hint "Mision ejecutada";
    }, [], 1.5, true, true, "", "true", 4, false, "", "" 
];      

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
