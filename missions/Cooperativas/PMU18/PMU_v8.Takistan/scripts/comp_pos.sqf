///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////

private _termino = false;
private _pos = getPos player;
private _px = _pos select 0;
private _py = _pos select 1;

while {(true)}do
{
    _termino = false;
    _pos = getPos player;
    _px = _pos select 0;
    _py = _pos select 1;
    sleep 0.01;
    if ((_px <= 0)||(_px >= 13000)||(_py <= 0)||(_py >= 13000))then
    {
        systemChat "Saliste de la zona de simulación";
        for [{private _i = 59;}, {_i >= 0}, {_i = _i - 1;}]do
        {
            _pos = getPos player;
            _px = _pos select 0;
            _py = _pos select 1;
            hint format["Tenés %1 segundos para volver al mapa.", _i];
            if ((_px >= 0)&&(_px <= 13000)&&(_py >= 0)&&(_py <= 13000))exitWith
            {
                _termino = true;
            };
            sleep 1;
        };
        if (!(_termino))then
        {
            player setDamage 1;
        };
    };
};

///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////