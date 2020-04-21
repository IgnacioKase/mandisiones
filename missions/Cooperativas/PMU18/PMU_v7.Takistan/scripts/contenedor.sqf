private _contenedor = _this select 0;
private _jugador = _this select 1;
private _numero = _this select 2;
private _malla = _this select 3 select 0;

if (isObjectHidden _malla)then
{
    _contenedor removeAction _numero;

    private _posicion = getPos _contenedor;
    private _nuevapos = [_posicion select 0, _posicion select 1, (_posicion select 2) + 4.5];
    private _direccion = getDir _contenedor;

    [_malla, _nuevapos] remoteExec ["setPos", 0];
    [_malla, _direccion] remoteExec ["setDir", 0];

    sleep 0.1;

    _malla hideObjectGlobal false;
    _malla enableSimulationGlobal true;
    "Malla armada correctamente" remoteExec ["systemChat", (owner _jugador)];
    _contenedor addAction ["<t color='#FA5858'>Desarmar malla mimética</t>", "scripts\llamada_contenedor.sqf", _malla];
}
else
{
    _contenedor removeAction _numero;

    sleep 0.1;
    _malla hideObjectGlobal true;
    _malla enableSimulationGlobal false;
    "Malla desarmada correctamente" remoteExec ["systemChat", (owner _jugador)];
    _contenedor addAction ["<t color='#58FA82'>Armar malla mimética</t>", "scripts\llamada_contenedor.sqf", _malla];
};