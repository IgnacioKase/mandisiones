///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////

freeze = [];

private _contador = 0;

artilleria = [];
{
    if ((typeOf _x  == "O_Mortar_01_F") || (typeOf _x == "rhssaf_army_d30")  || (typeOf _x == "B_MBT_01_arty_F") || (typeOf _x == "rhssaf_army_m252") || (typeOf _x == "LOP_TKA_Static_D30") || (typeOf _x == "rhs_2b14_82mm_msv"))then
    {
        artilleria = artilleria + [_x];
        freeze = freeze + [_x, -10000];
        _contador = _contador + 1;
    };
} forEach vehicles;

null = [] execVM "scripts\mortero.sqf";

///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////