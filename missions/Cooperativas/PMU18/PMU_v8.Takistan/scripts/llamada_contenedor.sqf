///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////

Ocultar =
{
    private _malla_private = _this select 0;
    private _contenedor_privado = _this select 1;

    if (isObjectHidden _malla_private)then
    {
        private _posicion = getPos _contenedor_privado;
        private _nuevapos = [_posicion select 0, _posicion select 1, (_posicion select 2) + 4.5];
        private _direccion = getDir _contenedor_privado;

        [_malla_private, _nuevapos] remoteExec ["setPos", 0];
        [_malla_private, _direccion] remoteExec ["setDir", 0];

        sleep 0.1;

        _malla_private hideObjectGlobal false;
        _malla_private enableSimulationGlobal true;

        systemChat "Malla armada correctamente";
        //"Malla armada correctamente" remoteExec ["systemChat", 0];
    }
    else
    {
        _malla_private hideObjectGlobal true;
        _malla_private enableSimulationGlobal false;

        systemChat "Malla desarmada correctamente";
        //"Malla desarmada correctamente" remoteExec ["systemChat", 0];
    };
};

[_this select 0, _this select 1] call Ocultar;

///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////