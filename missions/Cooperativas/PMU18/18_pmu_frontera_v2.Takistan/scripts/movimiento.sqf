///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////

Movimiento =
{
    params ["_grupo", "_veh", "_pos"];
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    }forEach _veh;
    {
        _x hideObjectGlobal false;
        _x enableSimulationGlobal true;
    }forEach units _grupo;
    sleep 5;
    _grupo setCombatMode "BLUE";
    _waypoint1 = _grupo addWaypoint [(getMarkerPos (_pos select 0)), 0];
    _pos = _pos - [_pos select 0];
    _waypoint1 setWaypointType "MOVE";
    _waypoint1 setWaypointSpeed "FULL";
    _waypoint1 setWaypointBehaviour "CARELESS";
    {
        _waypoint2 = _grupo addWaypoint [(getMarkerPos _x), 0];
    }forEach _pos;
    0;
};

Posicion =
{
    private _termino = false;
    private _cuenta = 0;
    personas = 1;
    while {(true)}do
    {
        _cuenta = 0;
        {
            private _posicion = getPos _x;
            if ((_posicion distance2D (getMarkerPos "marker_18")) <= 4500) exitWith
            {
                _cuenta = _cuenta + 1;
            };
        }forEach allPlayers;
        if (_cuenta >= personas)then
        {
            _termino = true;
        };
        if (_termino) exitWith{};
    };
true;
};

waitUntil{call Posicion};

[] execVM "scripts\inic_mortero.sqf";

"marker_15" setMarkerAlpha 1;
"marker_16" setMarkerAlpha 1;
"marker_17" setMarkerAlpha 1;

"Se acercan convoys a la zona, direcciones marcadas en el mapa." remoteExec ["hint", 0];

[convoy1, [v1, v2, v3, v4], ["marker_64", "marker_65", "marker_41", "marker_42", "marker_43", "marker_44", "marker_45", "marker_46", "marker_47", "marker_49", "marker_50", "marker_51", "marker_52", "marker_53", "marker_54", "marker_55", "marker_56"]] call Movimiento;

[convoy2, [v5, v6, v7, v8], ["marker_57", "marker_58", "marker_59", "marker_60", "marker_61", "marker_42", "marker_43", "marker_44", "marker_45", "marker_46", "marker_47", "marker_49", "marker_50", "marker_51", "marker_52", "marker_53", "marker_48"]] call Movimiento;

[convoy3, [v9, v10, v11, v12], ["marker_62", "marker_63", "marker_58", "marker_59", "marker_60", "marker_61", "marker_42", "marker_43", "marker_44", "marker_45", "marker_46", "marker_47", "marker_49", "marker_50", "marker_51"]] call Movimiento;

///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////