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

OBTENER_RECUPERACION =
{
	hint "Numéro de serie: 8510672";
};

CORTAR_CABLES =
{
	["Cortar cable amarillo", ["CORTAR_CABLE", "amarillo"]] call ADD_ACTION;
	["Cortar cable blanco", ["CORTAR_CABLE", "blanco"]] call ADD_ACTION;
	["Cortar cable rojo", ["CORTAR_CABLE", "rojo"]] call ADD_ACTION;
	["Cortar cable negro", ["CORTAR_CABLE", "negro"]] call ADD_ACTION;
};

CORTAR_CABLE = 
{
	params ["_cable"];
	
	sleep 2;
	dispositivo sideChat format["Cable %1 cortado con éxito.", _cable];
	sleep 0.5;

	switch (_cable) do {
		case "amarillo": {
			dispositivo sideChat "Error. Iniciando detonación.";
			call DETONATE_BOMB;
		};
		case "blanco": {
			call MENU_PRINCIPAL;
		};
		case "rojo": { 
			dispositivo sideChat "Error. Iniciando detonación.";
			call DETONATE_BOMB;
		};
		case "negro": { 
			dispositivo sideChat "Error. Iniciando detonación.";
			call DETONATE_BOMB;
		};
		default { };
	};
};


/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/