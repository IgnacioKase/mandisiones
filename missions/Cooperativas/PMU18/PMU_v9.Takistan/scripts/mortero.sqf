///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////

Azar =
{
    private _signo = 0;
    private _resultado = 0;
    while {_signo == 0} do
    {
        _signo = random [-999, 0, 999];
    };
    if (_signo >= 0)then
    {
        _resultado = random [30, 100, 200];
    }
    else
    {
        _resultado = random [-200, -100, -30];
    };
    _resultado
};

Posicion =
{
    private _pjs = [];
    {
        if ((_x distance2D (_this select 0)) <= (_this select 1))then
        {
            _pjs = _pjs + [_x];
        };
    }forEach allPlayers;
    private _cantidad = count _pjs;
    private _posicion = getPos (_pjs select (floor (random _cantidad)));
    _posicion = [((_posicion select 0) + call Azar), ((_posicion select 1) + call Azar)];
    _posicion;
};

Disparar =
{
    private _recibidos = _this select 0;
    private _procesado = [];
    {
        if (typeName _x isKindOf "OBJECT")then
        {
            _procesado = _procesado + [_x];
        };
    }forEach _recibidos;
    for [{private _i = 0;}, {_i < 6;}, {_i = _i + 1;}]do
    {
        private _tiempo = 0;
        private _cuenta2 = 0;
        {
            _x commandArtilleryFire [([(_x), (_recibidos select ((_cuenta2 * 2) + 1))] call Posicion), getArtilleryAmmo [_x] select 0, 1];
            _cuenta2 = _cuenta2 + 1;
            sleep 0.2;
        }forEach _procesado;
        sleep 12;
    };

    listos = [];
};

listos = [];

{
    private _x2 = _x;
    private _suma = 0;
    private _comparacion = 0;
    switch (typeOf _x2)do
    {
        case "O_Mortar_01_F":
        {
            _comparacion = 3000;
        };

        case "rhssaf_army_m252":
        {
            _comparacion = 3000;
        };

        case "B_MBT_01_arty_F":
        {
            _comparacion = 10000;
        };

        case "rhssaf_army_d30":
        {
            _comparacion = 10000;
        };

        case "LOP_TKA_Static_D30":
        {
            _comparacion = 10000;
        };

        case "rhs_2b14_82mm_msv":
        {
            _comparacion = 3000;
        };
    };

    {
        if ((_x distance2D _x2) <= _comparacion)then
        {
            _suma = _suma + 1;
        };
    }forEach allPlayers;

    if (_suma > 0)then
    {
        private _cuenta = 0;
        private _comptiempo = 0;
        switch (typeOf _x2)do
        {
            case "O_Mortar_01_F":
            {
                _comptiempo = 180;
            };

            case "B_MBT_01_arty_F":
            {
                _comptiempo = 360;
            };

            case "rhssaf_army_d30":
            {
                _comptiempo = 360;
            };

            case "rhssaf_army_m252":
            {
                _comptiempo = 180;
            };
            case "LOP_TKA_Static_D30":
            {
                 _comptiempo = 360;
            };

            case "rhs_2b14_82mm_msv":
            {
                _comptiempo = 180;
            };
        };
        {
            if ((typeName _x) isKindOf (typeName _x2))then
            {
                if (_x == _x2)then
                {
                    if ((time - (freeze select (_cuenta + 1))) >= _comptiempo)then
                    {
                        freeze set [_cuenta, _x2];
                        freeze set [_cuenta + 1, time];
                        publicVariable "freeze";
                        listos = listos + [_x2, _comparacion];
                        //[_x2, _comparacion] call Disparar;
                    };
                };
            };
            _cuenta = _cuenta + 1;
        }forEach freeze;
    };
    sleep 1;
}forEach artilleria;

[listos] call Disparar;

sleep 5;

null = [] execVM "scripts\mortero.sqf";

///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////