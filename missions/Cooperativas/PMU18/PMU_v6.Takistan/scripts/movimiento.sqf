Movimiento =
{
    params ["_grupo", "_veh", "_pos1", "_pos2", "_pos3", "_pos4"];
    _grupo setCombatMode "BLUE";
    _waypoint1 = _grupo addWaypoint [_pos1, 0];
    _waypoint1 setWaypointType "MOVE";
    _waypoint1 setWaypointSpeed "FULL";
    _waypoint1 setWaypointBehaviour "CARELESS";
    _waypoint2 = _grupo addWaypoint [_pos2, 0];
    _waypoint3 = _grupo addWaypoint [_pos3, 0];
    _waypoint4 = _grupo addWaypoint [_pos4, 0];
    _veh setVehicleAmmo 0;
    _veh lockDriver true;
    _veh lockCargo true;
    _veh disableAI "AUTOTARGET";
    _veh disableAI "TARGET";
    _veh disableAI "ANIM";
    _veh limitSpeed 30;
    _conductor = driver _veh;
    _artillero = gunner _veh;
    _comandante = commander _veh;
    _tripulacion = [_conductor ,_artillero ,_comandante];
    {removeAllWeapons _x;_x setUnitAbility 0;} forEach _tripulacion;
    0;
};

[camion1, ural1, (getMarkerPos "marker_3"), (getMarkerPos "marker_4"), (getMarkerPos "marker_5"), (getMarkerPos "marker_6")] call Movimiento;

[camion2, ural2, (getMarkerPos "marker_3"), (getMarkerPos "marker_4"), (getMarkerPos "marker_5"), (getMarkerPos "marker_7")] call Movimiento;