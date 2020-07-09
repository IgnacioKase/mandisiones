private ["_chaser", "_chased", "_radius", "_debug", "_refresh","_pospos","_marker"];
_chaser = (_this select 0);
_chased = (_this select 1);
_radius = (_this select 2);
_debug = (_this select 3);
_refresh = (_this select 4);
while {true}
	do {
			_chaser addWaypoint [getPos leader _chased, _radius, 1];
			_chaser setCurrentWaypoint [_chaser, 1];
			if (_debug > 0) then {
				//Marker = createVehicle ["Sign_Arrow_F", position leader _chased, [], 0, "FLY"];
				_pospos = getpos (leader _chaser);
				//deletemarker _marker;
				_nazwa=format["grp_%1",_chaser];
				_marker = createmarker [_nazwa, [0,0]];
				_marker setmarkerpos _pospos;
				_marker setmarkershape "ICON";
				_marker setmarkertype "mil_objective";
				_marker setmarkercolor "ColorRed";
				_marker setmarkersize [1,1];
				_marker setmarkertext _nazwa;
				//hint "Rastreando...";
				}
			else {
				};
			sleep _refresh;
			//deleteVehicle Marker;
			deleteWaypoint [_chaser, 1];
		};