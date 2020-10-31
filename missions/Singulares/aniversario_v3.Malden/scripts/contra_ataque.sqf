/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_objective", "fase1"]];

if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";

private _WAVES = [];

switch (_objective) do {
	case "fase1": { 
		_WAVES = [
			[1, [e_1, e_2, e_3, e_4, e_5, e_6, p_1, p_2, p_3, p_4, p_5, p_6, b_1, b_2, b_3, b_4, b_5, b_6, v_1, v_2]], 
			[720, [e_7, e_8, e_9, e_10, e_11, e_12, e_13, e_14, e_15, p_7, p_8, p_9, p_10, p_11, p_12, p_13, p_14, p_15, b_7, b_8, b_9, b_10, b_11, b_12, b_13, b_14, b_15, v_3, v_4, v_5]],
			[840, [e_16, e_17, e_18, e_19, e_20, e_21, e_22, e_23, p_16, p_17, p_18, p_19, p_20, p_21, p_22, p_23, b_16, b_17, b_18, b_19, b_20, b_21, b_22, b_23, v_6, v_7, v_8]]
		];
		[comandante, "Múltiples objetivos acercandose a Alpha y Bravo"] remoteExec ["sideChat", 0, true];
	};
	case "fase2": {
		_WAVES = [
			[1, [e_24, e_25, e_26, e_27, e_28, e_29, p_24, p_25, p_26, p_27, p_28, p_29, b_24, b_25, b_26, b_27, b_28, b_29, v_9, v_10]], 
			[900, [e_30, e_31, e_32, e_33, e_34, e_35, e_36, e_37, p_30, p_31, p_32, p_33, p_34, p_35, p_36, p_37, b_30, b_31, b_32, b_33, b_34, b_35, b_36, b_37, v_11, v_12]]
		];
		[comandante, "Múltiples objetivos acercandose a Charlie y Delta"] remoteExec ["sideChat", 0, true];
	};
	case "fase3": {
		_WAVES = [
			[1, [e_38, e_39, e_40, e_41, e_42, e_43, e_44, e_45, e_46, e_47, e_48, e_49, p_38, p_39, p_40, p_41, p_42, p_43, p_44, p_45, p_46, p_47, p_48, p_49, b_38, b_39, b_40, b_41, b_42, b_43, b_44, b_45, b_46, b_47, b_48, b_49, v_13, v_14, v_15, v_16]]
		];
		[comandante, "Múltiples objetivos acercandose a Echo y Foxtrot"] remoteExec ["sideChat", 0, true];
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

