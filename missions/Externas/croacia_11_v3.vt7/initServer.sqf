/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

private _customSkillsIA = getMissionConfigValue ["DIFICULTAD_IA_PERSONALIZADA", 1];
private _aimingAccuracy = getMissionConfigValue ["AIMING_ACCURACY", 0.10];
private _aimingShake = getMissionConfigValue ["AIMING_SHAKE", 0.80];
private _aimingSpeed = getMissionConfigValue ["AIMING_SPEED", 0.2];
private _spotDistance = getMissionConfigValue ["SPOT_DISTANCE", 0.3];
private _spotTime = getMissionConfigValue ["SPOT_TIME", 0.4];
private _courage = getMissionConfigValue ["COURAGE", 0.25];
private _reloadSpeed = getMissionConfigValue ["RELOAD_SPEED", 0.20];
private _commanding = getMissionConfigValue ["COMMANDING", 0.75];

[] execVM "scripts\del_terrain.sqf";
if (_customSkillsIA == 1) then {
    {
        if (!(isPlayer  _x)) then
        {
            _x setSkill ["aimingAccuracy", _aimingAccuracy];
            _x setSkill ["aimingShake", _aimingShake];
            _x setSkill ["aimingSpeed", _aimingSpeed];
            _x setSkill ["spotDistance", _spotDistance];
            _x setSkill ["spotTime", _spotTime];
            _x setSkill ["courage", _courage];
            _x setSkill ["reloadSpeed", _reloadSpeed];
            _x setSkill ["commanding", _commanding];
        }
    }forEach allUnits;
};

addMissionEventHandler ["HandleDisconnect", {
    params ["_unit", "_id", "_uid", "_name"];
    [[_uid, _name, _unit], "disconnected"] execVM "scripts\db\querys\write_log.sqf";
    true;
}];

addMissionEventHandler ["MPEnded", {
    [format ["ALLPLAYERS: %1", str allPlayers]] call BIS_fnc_logFormat;
}];

sleep 60;

execVM "scripts\db\querys\write_alternative_role.sqf";
/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
