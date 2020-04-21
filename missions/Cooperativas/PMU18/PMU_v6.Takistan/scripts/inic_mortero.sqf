freeze = [];

private _contador = 0;

artilleria = [];
{
    if ((typeOf _x  == "O_Mortar_01_F") || (typeOf _x == "rhssaf_army_d30")  || (typeOf _x == "B_MBT_01_arty_F") || (typeOf _x == "rhssaf_army_m252"))then
    {
        artilleria = artilleria + [_x];
        freeze = freeze + [_x, -10000];
        _contador = _contador + 1;
    };
} forEach vehicles;

null = [] execVM "scripts\mortero.sqf";
