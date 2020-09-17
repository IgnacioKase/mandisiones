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
	[server, _params] remoteExec ["addAction", 0, true];
};

MENU_SERVER =
{
	server remoteExec ["removeAllActions", 0, true];
	["Guía de desactivación", "GUIA_DESACTIVACION"] call ADD_ACTION;
	["Pasos cables", "PASOS_CABLES"] call ADD_ACTION;
	["Pasos contraseña", "PASOS_PASSWORD"] call ADD_ACTION;
	["Pasos código de desactivación", "PASOS_CODIGO"] call ADD_ACTION;
};

/*******************************************************************************
								Obtener información
*******************************************************************************/

GUIA_DESACTIVACION =
{
	hint parseText " <img size='15' image='imgs\cables.paa'/>";
};

OBTENER_SERIE =
{
	hint "Número de serie: 4JFY3L";
};

OBTENER_RECUPERACION =
{
	hint "Código de recuperación: 8510672";
};

/*******************************************************************************
								Ejecuciones 
*******************************************************************************/

call MENU_SERVER;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/