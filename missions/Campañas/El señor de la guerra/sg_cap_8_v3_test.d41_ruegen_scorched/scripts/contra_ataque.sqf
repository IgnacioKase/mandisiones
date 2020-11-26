/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";

private _objective = "lemur";

private _WAVES = [
	[1, [e_1, e_2, e_3, e_4, e_5, e_6, b_1, b_2, b_3, b_4, b_5, b_6, v_1]], 
	[900, [e_7, e_8, e_9, e_10, e_11, e_12, e_13, e_14, e_15, e_16, b_7, b_8, b_9, b_10, b_11, b_12, b_13, b_14, v_2, v_3]],
	[900, [e_17, e_18, e_19, e_20, e_21, e_22, e_23, e_24, e_25, e_26, e_27, b_15, b_16, b_17, b_18, b_19, b_20, b_21, b_22, b_23, b_24, b_25, b_26, v_4, v_5, v_6]]
];

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

