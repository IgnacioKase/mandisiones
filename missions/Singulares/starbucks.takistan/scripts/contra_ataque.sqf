/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_objective", "virginia_1"]];

if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";

private _WAVES = [];

switch (_objective) do {
	case "virginia_1": { 
		_WAVES = [
			[1, grupo_virginia_1]
		];
		[comandante, "Múltiples objetivos acercandose a La Virginia"] remoteExec ["sideChat", 0, true];
	};
	case "virginia_2": { 
		_WAVES = [
			[1, grupo_virginia_2]
		];
		[comandante, "Múltiples objetivos acercandose a La Virginia"] remoteExec ["sideChat", 0, true];
	};
	case "dolca": {
		_WAVES = [
			[1, grupo_dolca_1], 
			[720, grupo_dolca_2]
		];
		[comandante, "Múltiples objetivos acercandose a Dolca"] remoteExec ["sideChat", 0, true];
	};
	case "arlistan": {
		_WAVES = [
			[1, grupo_arlistan_1], 
			[720, grupo_arlistan_2]
		];
		[comandante, "Múltiples objetivos acercandose a Arlistán"] remoteExec ["sideChat", 0, true];
	};
	case "nescafe": {
		_WAVES = [
			[1, grupo_nescafe_1], 
			[720, grupo_nescafe_2]
		];
		[comandante, "Múltiples objetivos acercandose a Nescafé"] remoteExec ["sideChat", 0, true];
	};
	default { };
};

MANDI_SPAWN_WAVE = 
{
	params ["_units"];

	if ((count _units) > 0) then {
		private _group = group (_units select 0);

		_group setBehaviour _COMBAT_MODE;
		_group setSpeedMode _SPEED_MODE;
	};

	{
		if(!(isNull objectParent _x)) then {
			private _vehicle = vehicle _x;
			if (!simulationEnabled _vehicle || isObjectHidden _vehicle) then {
				[(vehicle _x), true] call MANDI_fnc_displayObject;
				(vehicle _x) limitSpeed _LIMIT_SPEED;
			};
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

