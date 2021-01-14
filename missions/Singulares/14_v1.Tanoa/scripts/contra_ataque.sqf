/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_objective", "hub"]];


if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";
private _POS = getMarkerPos "ky6";
private _RADIO = 500;

private _WAVES = [];

MANDI_CALLBACK_WAVE_2 =
{
	private _message = "Demasiados enemigos acercandose al puerto, deben escapar, YA!. Tomen los vehículos marcados en mapa y sigan el camino hasta el aeropuerto.";
	[comandante, _message] remoteExec ["sideChat", 0, true];

	private _color = "ColorUNKNOWN";
	{
		if (((getMarkerColor _x) == _color)) then {
			_x setMarkerAlphaLocal 1;
		};
	} forEach allMapMarkers;
};

switch (_objective) do {
	case "hub": {
		_WAVES = [
			[1, wave_1],
			[600, wave_2],
			[720, wave_3],
			[900, wave_4]
		];
		[comandante, "Múltiples objetivos acercandose a Куб"] remoteExec ["sideChat", 0, true];
	};
	default { };
};

MANDI_SPAWN_WAVE = 
{
	params ["_units"];
	private ["_newPos", "_group", "_groups"];
	_groups = [];

	{
		if(!(isNull objectParent _x)) then {
			private _vehicle = vehicle _x;
			if (!simulationEnabled _vehicle || isObjectHidden _vehicle) then {
				[(vehicle _x), true] call MANDI_fnc_displayObject;
				(vehicle _x) limitSpeed _LIMIT_SPEED;
			};
		};

		_group = group _x;

		if (_groups find _group == -1) then {
			_group setBehaviour _COMBAT_MODE;
			_group setSpeedMode _SPEED_MODE;
			// if ((count _POS) > 0) then {
			// 	_newPos = [[[_POS, _RADIO]],[]] call BIS_fnc_randomPos;
			// 	(leader _group) doMove _newPos;
			// };
			_groups pushBack _group;
		};
		
		[_x, true] call MANDI_fnc_displayObject;
	} forEach _units;

};

{
	_x params ["_sleepTime", "_objSyncUnits", "_callback"];
	private _units = [_objSyncUnits, "MAN", false] call BIS_fnc_synchronizedObjects;
	// sleep _sleepTime;
	sleep 5;
	["CONTRA ATAQUE:", _objective, "SLEEP TIME:", _sleepTime, _units] call MIV_fnc_log;
	[_units] call MANDI_SPAWN_WAVE;
	if(_forEachIndex == 1) then {
		call MANDI_CALLBACK_WAVE_2;
	};

} forEach _WAVES;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

