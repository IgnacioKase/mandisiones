/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _stage = getMissionConfigValue ["ESCENARIO", 0] == 1;

params [["_allFlags", []]];

{
	private _type = _x getVariable ["MANDI_FLAG_TYPE", "None"];
	if (_type == "ARG") then {
		_x forceFlagTexture "imgs\bandera.paa";
		_x addAction ["<t color='#819FF7'>Himno</t> <t color='#FFFFFF'>nacional</t> <t color='#819FF7'>argentino</t>", {
			params ["_target", "_caller", "_actionId", "_arguments"];
			if (!isPlayingAnthem) then {
				[speaker_l, ["MANDI_ANTHEM", 400]] remoteExec ["say3D", 0];
				[speaker_r, ["MANDI_ANTHEM", 400]] remoteExec ["say3D", 0];
				isPlayingAnthem = true;
				publicVariable "isPlayingAnthem";
				sleep 60;
				isPlayingAnthem = false;
				publicVariable "isPlayingAnthem";
			};
		}, nil , 1.5, true, true, "", "true", 5, false, "", ""];
	};
	if (_type == "ARGA") then {
		_x forceFlagTexture "imgs\arga.paa";
		_x addAction ["<t color='#4aba7b'>Tocar trompeta</t>", {
			params ["_target", "_caller", "_actionId", "_arguments"];
			if (!isPlayingTrumpet) then {
				[speaker_l, ["MANDI_TRUMPET", 500]] remoteExec ["say3D", 0];
				[speaker_r, ["MANDI_TRUMPET", 500]] remoteExec ["say3D", 0];
				isPlayingTrumpet = true;
				publicVariable "isPlayingTrumpet";
				sleep 14;
				isPlayingTrumpet = false;
				publicVariable "isPlayingTrumpet";
			};
		}, nil , 1.5, true, true, "", "true", 5, false, "", ""];

		if(_stage) exitWith {
			_x addAction ["<t color='#eb9534'>Mostrar Escenario</t>", {
				params ["_target", "_caller", "_actionId", "_arguments"];
				[true, "core\scripts_entrenamiento\show_escenario.sqf"] remoteExec ["BIS_fnc_execVM", 0, true];
			}];

			_x addAction ["<t color='#e8eb34'>Ocultar Escenario</t>", {
				params ["_target", "_caller", "_actionId", "_arguments"];
				[false, "core\scripts_entrenamiento\show_escenario.sqf"] remoteExec ["BIS_fnc_execVM", 0, true];
			}];
		};
	};
} forEach _allFlags;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/