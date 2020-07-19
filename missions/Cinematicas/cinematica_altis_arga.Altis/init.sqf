/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _disableGroupIA = getMissionConfigValue ["DESACTIVAR_IA_DE_GRUPO", 1];
private _disableBluforIA = getMissionConfigValue ["DESACTIVAR_TODO_BLUFOR", 0];
setTerrainGrid 25;

[] execVM "scripts\setBriefing.sqf";

execVM "scripts\init_vcom_driving.sqf";


/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
