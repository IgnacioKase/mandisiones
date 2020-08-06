/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
if(!isServer) exitWith { };

private _COMBAT_MODE = "AWARE";
private _LIMIT_SPEED = 30;
private _SPEED_MODE = "FULL";

private _TIME_FST_WAVE = 20;
private _TIME_SND_WAVE = 300;


// TODO PONER ESTOS TIEMPOS
/*
private _TIME_FST_WAVE = 2100;
private _TIME_SND_WAVE = 300;
*/

// convoy
private _fstGroup = [e1];

// helis
private _sndGroup = [e2, e3, e4, e5, e6, e7];

private _WAVES = [[_fstGroup, _TIME_FST_WAVE], [_sndGroup, _TIME_SND_WAVE]];

MANDI_SPAWN_WAVE = 
{
	params ["_unitGroups"];

	{
		private _group = _x;

		// _group setBehaviour _COMBAT_MODE;
		// _group setSpeedMode _SPEED_MODE;

		{
			if(!(isNull objectParent _x)) then {
				private _vehicle = vehicle _x;
				if (!simulationEnabled _vehicle || isObjectHidden _vehicle) then {
					[(vehicle _x), true] call MANDI_fnc_displayObject;
					// (vehicle _x) limitSpeed _LIMIT_SPEED;
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

