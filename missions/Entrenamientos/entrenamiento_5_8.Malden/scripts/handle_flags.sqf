/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_allFlags", []]];

{
	private _type = _x getVariable ["MANDI_FLAG_TYPE", "None"];
	if (_type == "ARG") then {
		_x setFlagTexture "imgs\bandera.paa";
		_x addAction ["<t color='#819FF7'>Himno</t> <t color='#FFFFFF'>nacional</t> <t color='#819FF7'>argentino</t>", {
			params ["_target", "_caller", "_actionId", "_arguments"];
			if (!isPlayingAnthem) then {
				"MANDI_ANTHEM" remoteExec ["playSound", 0];
				isPlayingAnthem = true;
				publicVariable "isPlayingAnthem";
				sleep 60;
				isPlayingAnthem = false;
				publicVariable "isPlayingAnthem";
			};
		}];
	};
	if (_type == "ARGA") then {
		_x setFlagTexture "imgs\arga.paa";
		_x addAction ["<t color='#60D292'>Tocar trompeta</t>", {
			params ["_target", "_caller", "_actionId", "_arguments"];
			if (!isPlayingTrumpet) then {
				//[[["MANDI_TRUMPET", _target, false, (getPosASL _target), 5, 1, 400]], "scripts\play_sound_3d.sqf"] remoteExec ["BIS_fnc_execVM", 0];
				"MANDI_TRUMPET" remoteExec ["playSound", 0];
				isPlayingTrumpet = true;
				publicVariable "isPlayingTrumpet";
				sleep 14;
				isPlayingTrumpet = false;
				publicVariable "isPlayingTrumpet";
			};
		}];
	};
} forEach _allFlags;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/