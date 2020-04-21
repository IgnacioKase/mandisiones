Posicion =
{
    private _termino = false;
    while {(true)}do
    {
        {
            private _posicion = getPos _x;
            if ((_posicion distance2D (getMarkerPos "marker_9")) <= 5) exitWith
            {
                _termino = true;
            }
        }forEach allPlayers;
        if (_termino) exitWith{};
    };
true;
};

[cmd, "Bienvenidos, reclutas!"] remoteExec ["globalChat", 0];

sleep 4;

[cmd, "Pasen a la sala de briefing."] remoteExec ["globalChat", 0];

waitUntil{call Posicion};

[cmd, "BRIEFING_POINT_LEFT", "ASIS"] call BIS_fnc_ambientAnim;

sleep 2;

[cmd, "Buen día."] remoteExec ["globalChat", 0];

sleep 1;

[cmd, "Su primera misión será brindar apoyo a dos escuadras de EE.UU."] remoteExec ["globalChat", 0];

sleep 8;

[cmd, "Se encuentran en un pueblo cercano; llamado: .Como esta marcado en la pantalla."] remoteExec ["globalChat", 0];

sleep 15;

[cmd, "Estan siendo atacados por el ISIS, atrincherados en la ciudad."] remoteExec ["globalChat", 0];

sleep 10;

[cmd, "Pueden equiparse lo que consideren necesario, tienen un arsenal a sus 6."] remoteExec ["globalChat", 0];

sleep 10;

[cmd, "Además pueden usar cualquier vehículo que se encuentre aquí fuera. Exceptuando los camiones."] remoteExec ["globalChat", 0];

sleep 10;

[cmd, "Buena suerte."] remoteExec ["globalChat", 0];