///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////

(_this select 0) removeAction (_this select 2);

{
    if (_x == (_this select 0))then
    {
        if (((((getPos(_x)) distance (getMarkerPos ("reabastecer")) )< 8) || (((getPos(_x)) distance (getMarkerPos ("reabastecer2")) )< 8)))then
        {
            for [{private _c = 5;}, {_c >= 0}, {_c = _c - 1;}]do
            {
                hint format ["Tiempo restante:  %1",_c];
                sleep 1;
            };
            _x setVehicleAmmo 1;
            _x setDamage 0;
            _x setVehicleAmmoDef 1;
            _x setAmmoCargo 1;
            _x setFuel 1;
            _x removeAction 0;
            hint "Reabastecimiento completado";
        };
    };
}forEach vehicles;

(_this select 0) addAction ["<t color='#5882FA'>Reabastecer</t>", "scripts\reabastecer.sqf"];

///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////