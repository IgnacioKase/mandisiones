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
	hint "Guía de desactivación:\n\nPuede acceder a esta guía cuantas veces le sea necesario.\n\nLa desactivación de la bomba cuenta de 3 pasos fundamentales. Estos se deben seguir al pie de la letra y en el orden especifico aqui comentado o el dispositivo detonará.\n\nPaso 1: Cortar el cable indicado.\nMenú 'Pasos cables'.\n\nPaso 2: Ingresar la contraseña.\nMenú 'Pasos contraseña'.\n\nPaso 3: Ingresar codigo de desactivación.\nMenú: 'Pasos código de desactivación'.\n\nLa comunicación con su compañero de desactivación es fundamental, pida y anote toda la información necesaria para poder indicarle correctamente como desactivar el dispositivo.\n\nUna vez que inicie el proceso, tendrá 20 minutos para completar los pasos o el dispositivo detonará.";
};

PASOS_CABLES =
{
	hint "El cable correcto a cortar dependerá de los cables que tenga el dispositivo.\n\n- Si hay 2 Cables rojos y 1 cable Blanco: Corte el cable negro\n\n- Si hay 1 Cable amarillo, 1 cable Blanco y 2 negros: Corte el cable amarillo\n\n\\n";
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