// markerDir "test"; Da la direccion del marker
// markerDir _mkr
if (!isServer) exitWith {};
private ["_fGroup","_cargoType","_vehType","_CHside","_mkrAgl","_initialLaunch","_pause","_eosZone","_hints","_waves","_aGroup","_side","_actCond","_enemyFaction","_mAH","_mAN","_distance","_grp","_cGroup","_bGroup","_CHType","_time","_timeout","_faction","_angle","_minDist"];

_mkr=(_this select 0);_mPos=markerpos(_this select 0);_mkrX=getMarkerSize _mkr select 0;_mkrY=getMarkerSize _mkr select 1;_mkrAgl=markerDir _mkr;
_infantry=(_this select 1);_PApatrols=_infantry select 0;_PAgroupSize=_infantry select 1;
_LVeh=(_this select 2);_LVehGroups=_LVeh select 0;_LVgroupSize=_LVeh select 1;
_AVeh=(_this select 3);_AVehGroups=_AVeh select 0;
_SVeh=(_this select 4);_CHGroups=_SVeh select 0;_fSize=_SVeh select 1;
_settings=(_this select 5);_faction=_settings select 0;_mA=_settings select 1;_side=_settings select 2;
_heightLimit=if (count _settings > 4) then {_settings select 4} else {false};
_debug=if (count _settings > 5) then {_settings select 5} else {false};
_basSettings=(_this select 6);
_pause=_basSettings select 0;
_waves=_basSettings select 1;
_timeout=_basSettings select 2;
_eosZone=_basSettings select 3;
_hints=_basSettings select 4;
// Vultur /////////////////////////////////////////////////////
_angleArray=(_this select 7);
_angle = _angleArray select 0;
///////////////////////////////////////////////////////////////
//_initialLaunch= if (count _this > 7) then {_this select 7} else {false};
_initialLaunch= if (count _this > 8) then {_this select 8} else {false};

_Placement=(_mkrX + 500);

	if (_mA==0) then {_mAH = 1;_mAN = 0.5;};
	if (_mA==1) then {_mAH = 0;_mAN = 0;};
	if (_mA==2) then {_mAH = 0.5;_mAN = 0.5;};

	if (_side==EAST) then {_enemyFaction="east";};
	if (_side==WEST) then {_enemyFaction="west";};
	if (_side==INDEPENDENT) then {_enemyFaction="GUER";};
	if (_side==CIVILIAN) then {_enemyFaction="civ";};

	if ismultiplayer then {
		if (_heightLimit) then{
			_actCond="{vehicle _x in thisList && isplayer _x && ((getPosATL _x) select 2) < 5} count playableunits > 0";
		} else	{
			_actCond="{vehicle _x in thisList && isplayer _x} count playableunits > 0";
		};
	} else {
		if (_heightLimit) then {
			_actCond="{vehicle _x in thisList && isplayer _x && ((getPosATL _x) select 2) < 5} count allUnits > 0";
		}else {
			_actCond="{vehicle _x in thisList && isplayer _x} count allUnits > 0";
		};
	};

	_basActivated = createTrigger ["EmptyDetector",_mPos];
	_basActivated setTriggerArea [_mkrX,_mkrY,_mkrAgl,FALSE];
	_basActivated setTriggerActivation ["ANY","PRESENT",true];
	_basActivated setTriggerStatements [_actCond,"",""];

	_mkr setmarkercolor bastionColor;
	_mkr setmarkeralpha _mAN;

	waituntil {triggeractivated _basActivated};
	_mkr setmarkercolor bastionColor;
	_mkr setmarkeralpha _mAH;

	_bastActive = createTrigger ["EmptyDetector",_mPos];
	_bastActive setTriggerArea [_mkrX,_mkrY,_mkrAgl,FALSE];
	_bastActive setTriggerActivation ["any","PRESENT",true];
	_bastActive setTriggerTimeout [1, 1, 1, true];
	_bastActive setTriggerStatements [_actCond,"",""];

	_bastClear = createTrigger ["EmptyDetector",_mPos];
	_bastClear setTriggerArea [(_mkrX+(_Placement*0.3)),(_mkrY+(_Placement*0.3)),_mkrAgl,FALSE];
	_bastClear setTriggerActivation [_enemyFaction,"NOT PRESENT",true];
	_bastClear setTriggerStatements ["this","",""];

	// PAUSE IF REQUESTED
	if (_pause > 0 and !_initialLaunch) then {
		for "_counter" from 1 to _pause do {
			if (_hints) then {
				hint format ["Attack ETA : %1",(_pause - _counter)];
			};
			sleep 1;
		};
	};

	// SPAWN PATROLS
	_aGroup=[];
	for "_counter" from 1 to _PApatrols do {
		//_pos = [_mPos, _Placement, random 360] call BIS_fnc_relPos;

		// Vultur /////////////////////////////////////////////////////
		_dir_atk=_mkrAgl+(random _angle)-_angle/2;
		//hint format["%1",random _angle];
		_minDist = 1000;
		_Place=(_mkrX + _minDist + random 200);

		_pos = [_mPos, _Place, _dir_atk] call BIS_fnc_relPos;

		// Vultur /////////////////////////////////////////////////////
		//PLAYER SIDECHAT (format ["_mkrX: %1, _Place: %2",_mkrX,_Place]);
		//PLAYER SIDECHAT (format ["nro %1: %2",_counter,surfaceiswater _pos]);
		//hint format["%1",surfaceiswater _pos];
		while {(surfaceiswater _pos)} do {
			_dir_atk=_mkrAgl+(random _angle)-_angle/2;
			_pos = [_mPos, _Place, _dir_atk] call BIS_fnc_relPos;
			//PLAYER SIDECHAT (format ["%1",surfaceiswater _pos]);
		};
		for "_counter" from 0 to 20 do {
		_newpos = [_pos,0,50,5,1,20,0] call BIS_fnc_findSafePos;
			if ((_pos distance _newpos) < 55)
				exitWith {
				_pos = _newpos;
			};
		};
		/////////////////////////////////////////////////////////////////

		_grp=[_pos,_PAgroupSize,_faction,_side] call EOS_fnc_spawngroup;
		_aGroup set [count _aGroup,_grp];
		if (_debug) then {
			PLAYER SIDECHAT (format ["Spawned Patrol: %1",_counter]);
			0= [_mkr,_counter,"patrol",getpos (leader _grp)] call EOS_debug;
		};
	};

	//SPAWN LIGHT VEHICLES
	_bGrp=[];
	for "_counter" from 1 to _LVehGroups do {
		//_newpos = [_mPos, (_Placement +200), random 360] call BIS_fnc_relPos;
		// Vultur /////////////////////////////////////////////////////
		_dir_atk=_mkrAgl+(random _angle)-_angle/2;
		//hint format["%1",random _angle];
		_minDist = 1800;
		_Place=(_mkrX + _minDist + random 200);
		_newpos = [_mPos, _Place, _dir_atk] call BIS_fnc_relPos;

		while {(surfaceiswater _pos)} do {
			_dir_atk=_mkrAgl+(random _angle)-_angle/2;
			_pos = [_mPos, _Place, _dir_atk] call BIS_fnc_relPos;
			//PLAYER SIDECHAT (format ["%1",surfaceiswater _pos]);
		};
		_vehType=7;_cargoType=9;
		///////////////////////////////////////////////////////////////
		/*if (surfaceiswater _newpos) then {
			_vehType=8;_cargoType=10;
		}else{
			_vehType=7;_cargoType=9;
		};*/

		_bGroup=[_newpos,_side,_faction,_vehType]call EOS_fnc_spawnvehicle;

		if ((_LVgroupSize select 0) > 0) then{
			0=[(_bGroup select 0),_LVgroupSize,(_bGroup select 2),_faction,_cargoType] call eos_fnc_setcargo;
		};

		0 = [(_bGroup select 2),"LIGskill"] call eos_fnc_grouphandlers;
		_bGrp set [count _bGrp,_bGroup];
		if (_debug) then {
			player sidechat format ["Light Vehicle:%1 - r%2",_counter,_LVehGroups];
			0= [_mkr,_counter,"Light Veh",(getpos leader (_bGroup select 2))] call EOS_debug;
		};
	};

	//SPAWN ARMOURED VEHICLES
	_cGrp=[];
	for "_counter" from 1 to _AVehGroups do {

		//_newpos = [_mPos, _Placement, random 360] call BIS_fnc_relPos;
		// Vultur /////////////////////////////////////////////////////
		_dir_atk=_mkrAgl+(random _angle)-_angle/2;
		//hint format["%1",random _angle];
		_minDist = 1800;

		_Place=(_mkrX + _minDist + random 400);

		_newpos = [_mPos, _Place, _dir_atk] call BIS_fnc_relPos;

		///////////////////////////////////////////////////////////////
		if (surfaceiswater _newpos) then {_vehType=8;}else{_vehType=2;};
		_cGroup=[_newpos,_side,_faction,_vehType]call EOS_fnc_spawnvehicle;

			0=[(_cGroup select 2),"ARMskill"] call eos_fnc_grouphandlers;
		_cGrp set [count _cGrp,_cGroup];
		if (_debug) then {
			player sidechat format ["Armoured:%1 - r%2",_counter,_AVehGroups];
			0= [_mkr,_counter,"Armour",(getpos leader (_cGroup select 2))] call EOS_debug;
		};
	};
	createCenter _side;
	//SPAWN HELICOPTERS
	_fGrp=[];
	for "_counter" from 1 to _CHGroups do {
		_side = EOS_FACCION;
		if ((_fSize select 0) > 0) then {
			_vehType=4;
		} else {
			_vehType=3;
		};
		//_newpos = [(markerpos _mkr), 1500, random 360] call BIS_fnc_relPos;
		// Vultur /////////////////////////////////////////////////////
		_dir_atk=_mkrAgl+(random _angle)-_angle/2;
		//hint format["%1",random _angle];
		_minDist = 400;
		_Place=(_mkrX + _minDist + random 600);
		//PLAYER SIDECHAT (format ["_mPos: %1, _Place: %2, _dir_atk: %3, _minDist: %4",_mPos,_Place,_dir_atk,_minDist]);
		_newpos = [_mPos, _Place, _dir_atk] call BIS_fnc_relPos;

		///////////////////////////////////////////////////////////////
		_fGroup=[_newpos,_side,_faction,_vehType,"fly"] call EOS_fnc_spawnvehicle;
		_CHside=_side;
		_fGrp set [count _fGrp,_fGroup];
		if ((_fSize select 0) > 0) then {
			_cargoGrp = createGroup _side;
			systemChat format ["%1, %2", _cargoGrp, _side];
			0=[(_fGroup select 0),_fSize,_cargoGrp,_faction,9] call eos_fnc_setcargo;
			//0=[(_fGroup select 0),_fSize,_cargoGrp,_faction,9] call eos_fnc_setcargo;
			0=[_cargoGrp,"INFskill"] call eos_fnc_grouphandlers;
			_fGroup set [count _fGroup,_cargoGrp];
			null = [_mkr,_fGroup,_counter] execvm "eos\functions\TransportUnload_fnc.sqf";
		} else {
			_wp1 = (_fGroup select 2) addWaypoint [(markerpos _mkr), 0];
			_wp1 setWaypointSpeed "FULL";
			_wp1 setWaypointType "SAD";
		};
		if (_debug) then {
				player sidechat format ["Chopper:%1",_counter];
				0= [_mkr,_counter,"Chopper",(getpos leader (_fGroup select 2))] call EOS_debug;
		};
	};

	// ADD WAYPOINTS
	{
		_getToMarker = _x addWaypoint [_mPos, 0];
		_getToMarker setWaypointType "SAD";
		_getToMarker setWaypointSpeed "LIMITED";
		//_getToMarker setWaypointBehaviour "COMBAT";
		//_getToMarker setWaypointSpeed (["LIMITED", "LIMITED", "NORMAL", "NORMAL", "NORMAL"] call BIS_fnc_selectRandom); //, "FULL"
		//_getToMarker setWaypointBehaviour (["AWARE", "COMBAT", "COMBAT", "COMBAT", "COMBAT", "COMBAT", "COMBAT"] call BIS_fnc_selectRandom);
		_getToMarker setWaypointBehaviour "COMBAT";
		_getToMarker setWaypointFormation (["STAG COLUMN", "WEDGE", "ECH LEFT", "ECH RIGHT", "VEE", "DIAMOND", "LINE"] call BIS_fnc_selectRandom);
		_getToMarker setWaypointCompletionRadius 15;
	}foreach _aGroup;

	{
		_getToMarker = (_x select 2) addWaypoint [_mPos, 0];
		_getToMarker setWaypointType "SAD";
		//_getToMarker setWaypointSpeed "NORMAL";
			_getToMarker setWaypointSpeed "LIMITED";
		//_getToMarker setWaypointBehaviour "AWARE";
		_getToMarker setWaypointBehaviour "COMBAT";
		_getToMarker setWaypointFormation "NO CHANGE";
	}foreach _cGrp;

	{
		_pos = [_mPos, (_mkrX + 50), random 360] call BIS_fnc_relPos;
		_getToMarker = (_x select 2) addWaypoint [_pos, 0];
		_getToMarker setWaypointType "UNLOAD";
		_getToMarker setWaypointSpeed "LIMITED";
		_getToMarker setWaypointBehaviour "COMBAT";
		_getToMarker setWaypointFormation "NO CHANGE";
		_wp = (_x select 2) addWaypoint [_mPos, 1];
		_wp setWaypointType "SAD";
		_wp setWaypointSpeed "LIMITED";
		_wp setWaypointBehaviour "COMBAT";
		_wp setWaypointFormation "NO CHANGE";
	}foreach _bGrp;


	waituntil {triggeractivated _bastActive};

	for "_counter" from 1 to _timeout do {
		if (_hints) then  {
			if (_waves > 1) then {
				hint format ["Next wave ETA : %1",(_timeout - _counter)];
			};
		};
		sleep 1;
		if (!triggeractivated _bastActive || getmarkercolor _mkr == "colorblack") exitwith {
			if (_debug) then {hint "Zone lost. You must re-capture it";};
			_mkr setmarkercolor hostileColor;
			_mkr setmarkeralpha _mAN;

			if (_eosZone) then {
				null = [_mkr,[_PApatrols,_PAgroupSize],[_PApatrols,_PAgroupSize],[_LVehGroups,_LVgroupSize],[_AVehGroups,0,0,0],[_faction,_mA,350,_CHside]] execVM "eos\core\EOS_Core.sqf";
			};
			_waves=0;
		};
	};

	_waves=(_waves - 1);

	if (triggeractivated _bastActive and triggeractivated _bastClear and (_waves < 1) ) then {
			if (_hints) then  {hint "Waves complete";};
			_mkr setmarkercolor VictoryColor;
			_mkr setmarkeralpha _mAN;
	}else{
		if (_waves >= 1) then {
			if (_hints) then  {hint "Reinforcements inbound";};
			null = [_mkr,[_PApatrols,_PAgroupSize],[_LVehGroups,_LVgroupSize],[_AVehGroups],[_CHGroups,_fSize],_settings,[_pause,_waves,_timeout,_eosZone,_hints],_angleArray,true] execVM "eos\core\b_core.sqf";
		};
	};

	waituntil {getmarkercolor _mkr == "colorblack" OR getmarkercolor _mkr == VictoryColor OR getmarkercolor _mkr == hostileColor or !triggeractivated  _bastActive};
	if (_debug) then {player sidechat "delete units";};
	{
		{deleteVehicle _x} foreach units _x;
	}foreach _aGroup;

	if (count _cGrp > 0) then
	{
		{
			_vehicle = _x select 0;
			_crew = _x select 1;
			_grp = _x select 2;
			{deleteVehicle _x} forEach (_crew);
			if (!(vehicle player == _vehicle)) then{{deleteVehicle _x} forEach[_vehicle];};
			{deleteVehicle _x} foreach units _grp;
			deleteGroup _grp;
		}foreach _cGrp;
	};

	if (count _bGrp > 0) then
	{
			{
				_vehicle = _x select 0;
				_crew = _x select 1;
				_grp = _x select 2;
				{deleteVehicle _x} forEach (_crew);
				if (!(vehicle player == _vehicle)) then
				{{deleteVehicle _x} forEach[_vehicle];};
				{deleteVehicle _x} foreach units _grp;
				deleteGroup _grp;
				}foreach _bGrp;
	};

// CACHE HELICOPTER TRANSPORT
	if (count _fGrp > 0) then {
		{
			_vehicle = _x select 0;_crew = _x select 1;_grp = _x select 2; _cargoGrp = _x select 3;
			{deleteVehicle _x} forEach (_crew);
			if (!(vehicle player == _vehicle)) then {{deleteVehicle _x} forEach[_vehicle];};
			{deleteVehicle _x} foreach units _grp;deleteGroup _grp;
			{deleteVehicle _x} foreach units _cargoGrp;deleteGroup _cargoGrp;

		}foreach _fGrp;};

		deletevehicle _bastActive;deletevehicle _bastClear;deletevehicle _basActivated;
		if (getmarkercolor _mkr == "colorblack") then {_mkr setmarkeralpha 0;};
//*/

// Modificado por Ignacio
[EAST] remoteExec ["MANDI_fnc_clearUnconsciousAi", 2];  
//////////////////////////////////////////////////////////////