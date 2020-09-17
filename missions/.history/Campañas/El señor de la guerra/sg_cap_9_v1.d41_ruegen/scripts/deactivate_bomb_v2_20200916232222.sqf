/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
ADD_ACTION =
{
	params ["_title", "_arguments"];
	private _params = [format ["<t color='#ffffff'>%1</t>", _title], {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments execVM "scripts\exec_dialog.sqf";
	}, _arguments , 1.5, true, true, "", "true", 5, false, "", ""];
	[bomba, _params] remoteExec ["addAction", 0, true];
};

INICIAR_DESACTIVACION =
{
	private _texts = [];
	["Mirar cables", [_texts, "MIRAR_CABLES"]] call ADD_ACTION;
	["Obtener numero de serie", [_texts, "MIRAR_SERIE"]] call ADD_ACTION;
	["Obtener código de recuperación", [_texts, "MIRAR_SERIE"]] call ADD_ACTION;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/