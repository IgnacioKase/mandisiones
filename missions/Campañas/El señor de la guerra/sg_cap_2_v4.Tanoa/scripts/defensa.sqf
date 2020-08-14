/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";

/*
private _TIME_FST_WAVE = 1;
private _TIME_SND_WAVE = 1;
private _TIME_THD_WAVE = 1;
*/

// TODO PONER ESTOS TIEMPOS
private _TIME_FST_WAVE = 600;
private _TIME_SND_WAVE = 420;
private _TIME_THD_WAVE = 420;

// dos escuadra del sur, un bote de ataque, dos botes de asalto, uno de los pastizales del norte
private _fstGroup = [e_7, e_19, e_13, e_14, e_9, e_3];

// tres escuadras en la selva del norte, un btr, 3 botes de asalto, 2 de los pastizales del norte
private _sndGroup = [e_4, e_5, e_6, e_23, e_16, e_17, e_18, e_1, e_2];

// un tanque, una lancha de ataque, una escuadra del sur, un bote de asalto, 3 de los pastizales del norte
private _thdGroup = [e_22, e_20, e_8, e_15, e_10, e_11, e_12];

private _WAVES = [[_fstGroup, _TIME_FST_WAVE], [_sndGroup, _TIME_SND_WAVE], [_thdGroup, _TIME_THD_WAVE]];

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
	_x params ["_unitGroups", "_sleepTime"];
	sleep _sleepTime;
	[_unitGroups] call MANDI_SPAWN_WAVE;
} forEach _WAVES;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

