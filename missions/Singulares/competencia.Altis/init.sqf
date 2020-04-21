/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

setTerrainGrid 40;

[] execVM "scripts\civiles.sqf";

[] execVM "scripts\setBriefing.sqf";

[] execVM "scripts\loop_campo_correr.sqf";

stand addAction ["<t color='#64D66A'>Reiniciar campo correr</t>", "scripts\reset_campo_correr.sqf"];

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
