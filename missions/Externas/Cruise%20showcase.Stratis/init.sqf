execVM "CruiseMissile.sqf";

{
    group _x setBehaviour "SAFE";
    group _x setSpeedMode "LIMITED";
}forEach allUnits;