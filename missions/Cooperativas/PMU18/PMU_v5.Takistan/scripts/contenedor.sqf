_contenedor = _this select 0;
_numero = _this select 1;
malla = _this select 2;
accion = _this select 3;


_contenedor removeAction _numero;

if (accion)then
{
    private _posicion = getPos _contenedor;
    private _nuevapos = [_posicion select 0, _posicion select 1, (_posicion select 2) + 4.5];
    private _direccion = getDir _contenedor;

    [malla, _nuevapos] remoteExec ["setPos", 0];
    [malla, _direccion] remoteExec ["setDir", 0];

    malla hideObjectGlobal false;
    malla enableSimulationGlobal true;

    _contenedor addAction ["<t color='#FA5858'>Desrmar malla mimética</t>", {[[(_this select 0), (_this select 2), malla, !(accion)], "scripts\contenedor.sqf"] remoteExec ["execVM", 2]; systemChat "Malla desarmada correctamente"}];
}
else
{
    malla hideObjectGlobal true;
    malla enableSimulationGlobal false;

    _contenedor addAction ["<t color='#58FA82'>Armar malla mimética</t>", {[[(_this select 0), (_this select 2), malla, !(accion)], "scripts\contenedor.sqf"] remoteExec ["execVM", 2]; systemChat "Malla armada correctamente"}];
};