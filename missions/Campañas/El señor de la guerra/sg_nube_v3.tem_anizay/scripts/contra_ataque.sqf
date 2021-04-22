/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_objective", "honda"]];


if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";
private _RADIO = 500;

private _WAVES = [];

switch (_objective) do {
	case "honda": {
		_WAVES = [
			[1, wave_honda_1],
			[420, wave_honda_2],
			[840, wave_honda_3],
			[1260, wave_honda_4]
		];
		[comandante, "Múltiples objetivos acercandose a Honda"] remoteExec ["sideChat", 0, true];
	};
	case "yamaha": {
		_WAVES = [
			[1, wave_yamaha_1],
			[420, wave_yamaha_2],
			[840, wave_yamaha_3],
			[1260, wave_yamaha_4]
		];
		[comandante, "Múltiples objetivos acercandose a Yamaha"] remoteExec ["sideChat", 0, true];
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
			_groups pushBack _group;
		};
		
		[_x, true] call MANDI_fnc_displayObject;
	} forEach _units;

};

{
	_x params ["_sleepTime", "_objSyncUnits"];
	private _units = [_objSyncUnits, "MAN", false] call BIS_fnc_synchronizedObjects;
	sleep _sleepTime;
	["CONTRA ATAQUE:", _objective, "SLEEP TIME:", _sleepTime, _units] call MIV_fnc_log;
	[_units] call MANDI_SPAWN_WAVE;
} forEach _WAVES;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

