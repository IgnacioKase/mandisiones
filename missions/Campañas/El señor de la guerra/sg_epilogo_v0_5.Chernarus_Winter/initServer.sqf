/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

{
    if (side _x == east && local _x) then {
        removeGoggles _x;
        _x addGoggles "G_AirPurifyingRespirator_02_olive_F";
    };
} forEach allUnits;

call compile preprocessFileLineNumbers "core\events\initServer.sqf";

// [340, 90000, false, false, false, 0.2] execVM "AL_dust_storm\al_duststorm.sqf";

execVM "scripts\spawn_objectives.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/