/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFile "core\events\initPlayerLocal.sqf";

if(getPlayerUID player == "76561198091139370") then {
    [player, curatorModule_1] remoteExec ["assignCurator", 2];
};

if(getPlayerUID player == "76561198026915573") then {
    [player, curatorModule_2] remoteExec ["assignCurator", 2];
};

player linkItem "tf_anprc152_1";
player linkItem "ItemGPS";

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
