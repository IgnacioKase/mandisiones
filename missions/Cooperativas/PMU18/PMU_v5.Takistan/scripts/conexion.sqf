["JIP_event", "onPlayerConnected",
{
    {
        if(isPlayer _x)then
        {
            if((getPlayerUID _x) == _uid)then
            {
                if(isObjectHidden _x)then
                {
                    _x enableSimulationGlobal true;
                    _x hideObjectGlobal false;
                };
            };
        };
    }forEach units grupo;
}, "Conexion"] call BIS_fnc_addStackedEventHandler;

["JIP_event", "onPlayerDisconnected",
{
    {
        if(!(isPlayer _x))then
        {
            if(!(isObjectHidden _x))then
            {
                _x enableSimulationGlobal false;
                _x hideObjectGlobal true;
            };
        };
    }forEach units grupo;
}, "Desconexion"] call BIS_fnc_addStackedEventHandler;