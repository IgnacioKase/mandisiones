/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFile "core\events\initPlayerLocal.sqf";

execVM "scripts\intoxicated.sqf";
execVM "scripts\deactivate_bomb.sqf";

player linkitem "ItemGPS";

while {true} do {
    "colorCorrections" ppEffectEnable true;
    "colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1.8, 1.8, 0.3, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
    "colorCorrections" ppEffectCommit 0;  
    sleep 1;
}


/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
