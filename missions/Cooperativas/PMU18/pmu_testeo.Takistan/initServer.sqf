[] execVM "scripts\del_terrain.sqf";

{
    if (!(isPlayer  _x))then
    {
        _x setSkill ["aimingAccuracy",0.10];
        _x setSkill ["aimingShake",0.70];
        _x setSkill ["aimingSpeed",0.75];
        _x setSkill ["spotDistance",0.70];
        _x setSkill ["spotTime",0.50];
        _x setSkill ["courage",1.00];
        _x setSkill ["reloadSpeed",1.00];
        _x setSkill ["commanding",0.50];
    }
}forEach allUnits;
