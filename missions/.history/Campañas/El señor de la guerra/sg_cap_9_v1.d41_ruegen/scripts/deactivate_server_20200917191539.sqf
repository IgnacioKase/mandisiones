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
	hint "Guía de desactivación:\n\nLa desactivación de la bomba cuenta de 3 pasos fundamentales. Estos se deben seguir al pie de la letra y en el orden especifico aqui comentado o el dispositivo detonará.\n\nPaso 1: Cortar el cable indicado: Ingrese al menú 'Pasos cables' y obtendrá información ";
};

PASOS_CABLES =
{
	hint "";
};

PASOS_PASSWORD =
{
	hint "";
};

PASOS_CODIGO =
{

};

/*******************************************************************************
								Ejecuciones 
*******************************************************************************/

call MENU_SERVER;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/