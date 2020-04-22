/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

setTerrainGrid 40;

[] execVM "scripts\civiles.sqf";

[] execVM "scripts\setBriefing.sqf";

[] execVM "scripts\loop_campo_correr.sqf";

stand addAction ["<t color='#64D66A'>Reiniciar campo correr</t>", "scripts\reset_campo_correr.sqf"];
stand_1 addAction ["<t color='#fcba03'>Iniciar Cronómetro</t>", "scripts\timer.sqf"];
stand_2 addAction ["<t color='#fcba03'>Iniciar Cronómetro</t>", "scripts\timer.sqf"];
stand_3 addAction ["<t color='#fcba03'>Iniciar Cronómetro</t>", "scripts\timer.sqf"];
stand_4 addAction ["<t color='#fcba03'>Iniciar Cronómetro</t>", "scripts\timer.sqf"];

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
