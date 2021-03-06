private ["_pad","_getToMarker","_cargoGrp","_vehicle"];
_mkr=(_this select 0); _mPos=getMarkerPos _mkr;
_veh=(_this select 1);
_counter=(_this select 2);

_debug=false;
_vehicle = _veh select 0;
_grp = _veh select 2;
_cargoGrp= _veh select 3;
//_pos = [_mkr,false] call SHK_pos;

// Modificado por Ignacio
//_pos set [0, ((_pos select 0) + random [300,450,600])];
//_pos set [1, ((_pos select 1) + random [300,450,600])];

//Modificado por Vultur
_dir_atk= _mPos getDir _vehicle;
_minDist = 300;
_Place=(_minDist + random 300);
_pos = [_mPos, _Place, _dir_atk] call BIS_fnc_relPos;
/////////////////////////////////////////////////////////////////////////////////

_pad = createVehicle ["Land_HelipadEmpty_F", _pos, [], 0, "NONE"];
if (_debug) then {0= [_mkr,_counter,"Unload Pad",(getpos _pad)] call EOS_debug;};

{_x allowFleeing 0} forEach units _grp;
{_x allowFleeing 0} forEach units _cargoGrp;

_wp1 = _grp addWaypoint [_pos, 0];
_wp1 setWaypointSpeed "FULL";
_wp1 setWaypointType "UNLOAD";
_wp1 setWaypointStatements ["true", "(vehicle this) LAND 'GET IN';"];

 waituntil {_vehicle distance _pad < 30};
_cargoGrp leaveVehicle _vehicle;

waitUntil{sleep 0.2; {_x in _vehicle} count units _cargoGrp == 0};
if (_debug) then {hint "Transport unloaded";};
//Modificado por Vultur
//0 = [_cargoGrp,_mkr] call eos_fnc_taskpatrol;
_getToMarker = _cargoGrp addWaypoint [_mPos, 0];
_getToMarker setWaypointType "SAD";
_getToMarker setWaypointSpeed "LIMITED";
_getToMarker setWaypointBehaviour "COMBAT";
_getToMarker setWaypointFormation (["STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "DIAMOND", "LINE"] call BIS_fnc_selectRandom);
_getToMarker setWaypointCompletionRadius 15;

_dir_atk=random 360;
_Place= 2300;
_newpos = [_Pos, _Place, _dir_atk] call BIS_fnc_relPos;
_wp2 = _grp addWaypoint [_newpos, 0];
/////////////////////////////////////////////////////////////////////////////////
//_wp2 = _grp addWaypoint [[0,0,0], 0];
_wp2 setWaypointSpeed "FULL";
_wp2 setWaypointType "MOVE";
_wp2 setWaypointStatements ["true", "{deleteVehicle _x} forEach crew (vehicle this) + [vehicle this];"];

deletevehicle _pad;
