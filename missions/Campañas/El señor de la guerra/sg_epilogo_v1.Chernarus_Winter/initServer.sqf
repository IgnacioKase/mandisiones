/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFileLineNumbers "core\events\initServer.sqf";

[340, 90000, false, false, false, 0.2] execVM "AL_dust_storm\al_duststorm.sqf";

execVM "scripts\spawn_objectives.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/