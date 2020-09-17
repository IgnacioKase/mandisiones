/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_objective", "gato"]];

if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";

private _WAVES = [];

switch (_objective) do {
	case "gato": { 
		_WAVES = [
			[1, [e_1, e_2, e_3, e_4, e_5, e_6, b_1, b_2, b_3, b_4, b_5, b_6, v_1, v_2]], 
			[600, [e_7, e_8, e_9, e_10, e_11, b_7, b_8, b_9, b_10, b_11, v_3, r_1, r_2, r_3, r_4, h_1]],
			[600, [e_12, e_13, e_14, e_15, e_16, e_17, e_18, e_19, e_20]]
		];
		[comandante, "Múltiples objetivos acercandose hacia Foca"] remoteExec ["sideChat", 0, true];
	};
	case "perro": {
		_WAVES = [
			[1, [e_31, e_32, e_33, e_34, e_35, e_36, e_37, e_38, b_31, b_32, b_33, b_34, b_35, b_36, b_37, b_38, b_39, b_40, b_41, b_42]], 
			[600, [e_39, e_40, e_41, e_42, e_43, e_44, b_43, b_44, b_45, b_46, b_47, b_48, b_49, b_50, v_4]],
			[600, [e_45, e_46, e_47, e_48, e_49, e_50, e_51, e_52, e_53, e_54, b_51, b_52, b_53, b_54, b_55, b_56, b_57, b_58, v_5, v_6]]
		];
		[comandante, "Múltiples objetivos acercandose hacia Cabra"] remoteExec ["sideChat", 0, true];
	};
	default { };
};

MANDI_SPAWN_WAVE = 
{
	params ["_unitGroups"];

	{
		private _group = _x;

		_group setBehaviour _COMBAT_MODE;
		_group setSpeedMode _SPEED_MODE;

		{
			if(!(isNull objectParent _x)) then {
				private _vehicle = vehicle _x;
				if (!simulationEnabled _vehicle || isObjectHidden _vehicle) then {
					[(vehicle _x), true] call MANDI_fnc_displayObject;
					(vehicle _x) limitSpeed _LIMIT_SPEED;
				};
			};
			[_x, true] call MANDI_fnc_displayObject;
		} forEach units _group;
		
	} forEach _unitGroups;
};

{
	_x params ["_sleepTime", "_unitGroups"];
	sleep _sleepTime;
	["CONTRA ATAQUE:", _objective, "SLEEP TIME:", _sleepTime, _unitGroups] call MIV_fnc_log;
	[_unitGroups] call MANDI_SPAWN_WAVE;
} forEach _WAVES;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

