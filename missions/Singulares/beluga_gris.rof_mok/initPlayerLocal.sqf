/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFileLineNumbers "core\events\initPlayerLocal.sqf";

private _missionWasPlayed = missionNamespace getVariable ["MANDI_INTRO_WAS_PLAYED", false];

if (!_missionWasPlayed) then {
    player allowDamage false;
};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
