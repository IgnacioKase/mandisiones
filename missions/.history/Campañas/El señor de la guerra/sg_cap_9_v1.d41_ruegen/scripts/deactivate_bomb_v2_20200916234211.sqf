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

MENU_PRINCIPAL =
{
	private _texts = [];
	["Observar cables", "OBSERVAR_CABLES"] call ADD_ACTION;
	["Obtener numero de serie", "OBTENER_SERIE"] call ADD_ACTION;
	["Obtener código de recuperación", "OBTENER_RECUPERACION"] call ADD_ACTION;
	["Cortar cables (Menú)", "CORTAR_CABLES"] call ADD_ACTION;
	["Ingresar código de desactivación (Menú)", "CODIDO_DESACTIVACION"]] call ADD_ACTION;
	["Ingresar contraseña (Menú)", "INGRESAR_PASSWORD"] call ADD_ACTION;
};

OBSERVAR_CABLES =
{
	hint parseText "<img image='imgs\cables.paa'/> ";
};

OBTENER_SERIE =
{
	hint "Numéro de serie: 4JFY3L";
};



/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/