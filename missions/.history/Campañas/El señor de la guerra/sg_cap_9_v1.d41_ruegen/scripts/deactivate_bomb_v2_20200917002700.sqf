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
	bomba remoteExec ["removeAllActions", 0, true];
	["Observar cables", "OBSERVAR_CABLES"] call ADD_ACTION;
	["Obtener numero de serie", "OBTENER_SERIE"] call ADD_ACTION;
	["Obtener código de recuperación", "OBTENER_RECUPERACION"] call ADD_ACTION;
	["Cortar cables (Menú)", "CORTAR_CABLES"] call ADD_ACTION;
	["Ingresar contraseña (Menú)", "INGRESAR_PASSWORD"] call ADD_ACTION;
	["Ingresar código de desactivación (Menú)", "CODIDO_DESACTIVACION"]] call ADD_ACTION;
};

/*******************************************************************************
								Obtener información
*******************************************************************************/

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

/*******************************************************************************
								Menú Cables 
*******************************************************************************/

MANDI_ESTADO_CABLES = false;

CORTAR_CABLES =
{
	["Cortar cable amarillo", ["CORTAR_CABLE", "amarillo"]] call ADD_ACTION;
	["Cortar cable blanco", ["CORTAR_CABLE", "blanco"]] call ADD_ACTION;
	["Cortar cable rojo", ["CORTAR_CABLE", "rojo"]] call ADD_ACTION;
	["Cortar cable negro", ["CORTAR_CABLE", "negro"]] call ADD_ACTION;
	["Volver al menú principal", "MENU_PRINCIPAL"] call ADD_ACTION;
};

CORTAR_CABLE = 
{
	params ["_cable"];
	
	sleep 2;
	dispositivo sideChat format["Cable %1 cortado con éxito.", _cable];
	sleep 0.5;

	if (_cable == "blanco") then {
		call MENU_PRINCIPAL;
		MANDI_ESTADO_CABLES = true;
		publicVariable "MANDI_ESTADO_CABLES";
	} else {
		dispositivo sideChat "Error. Iniciando detonación.";
		call DETONATE_BOMB;
	};
};

/*******************************************************************************
								Menú Contraseña 
*******************************************************************************/

MANDI_PASSOWRD_PREVIO = "NULL";
MANDI_INTENTOS_FALLIDOS = 0;
MANDI_ESTADO_PASSWORD = false;

INGRESAR_PASSWORD = 
{
	["Pulsar Lambda", ["PULSAR_PASSWORD", "Lambda"]] call ADD_ACTION;
	["Pulsar Epsilon", ["PULSAR_PASSWORD", "Epsilon"]] call ADD_ACTION;
	["Pulsar Chi", ["PULSAR_PASSWORD", "Chi"]] call ADD_ACTION;
	["Pulsar Kappa", ["PULSAR_PASSWORD", "Kappa"]] call ADD_ACTION;
	["Volver al menú principal", "MENU_PRINCIPAL"] call ADD_ACTION;
};

PULSAR_PASSWORD =
{
	params ["_boton"];

	sleep 1;
	dispositivo sideChat format["Botón %1 pulsado.", _boton];
	sleep 0.5;

	private _error = false;

	switch (_boton) do {
		case "Chi": { 
			_error = MANDI_PASSOWRD_PREVIO != "NULL";
		};
		case "Kappa": { 
			_error = MANDI_PASSOWRD_PREVIO != "Chi";
		};
		case "Epsilon": { 
			_error = MANDI_PASSOWRD_PREVIO != "Kappa";
		};
		case "Lambda": { 
			_error = MANDI_PASSOWRD_PREVIO != "Epsilon";
		};
		default { };
	};

	if (!_error) {
		MANDI_PASSOWRD_PREVIO = _boton;
	} else {
		MANDI_PASSOWRD_PREVIO = "NULL";
		MANDI_INTENTOS_FALLIDOS = MANDI_INTENTOS_FALLIDOS + 1;
		dispositivo sideChat format ["Error. Intentos posibles: %1 de 3", MANDI_INTENTOS_FALLIDOS];
	};
	
	sleep 1;

	if (MANDI_INTENTOS_FALLIDOS >= 3) then {
		dispositivo sideChat "Error. Iniciando detonación.";
		call DETONATE_BOMB;
	};

	if (MANDI_PASSOWRD_PREVIO == "Lambda") then {
		dispositivo sideChat "Contraseña ingresada con éxito.";
		MANDI_ESTADO_PASSWORD = true;
		publicVariable "MANDI_ESTADO_PASSWORD";
		call MENU_PRINCIPAL;
	};

	publicVariable "MANDI_PASSOWRD_PREVIO";
	publicVariable "MANDI_INTENTOS_FALLIDOS";
};

/*******************************************************************************
								Menú Desactivación 
*******************************************************************************/

CODIDO_DESACTIVACION =
{
	["1JV86", ["INGRESAR_CODIDO_DESACTIVACION", "1JV86"]] call ADD_ACTION;
	["LGH3V", ["INGRESAR_CODIDO_DESACTIVACION", "LGH3V"]] call ADD_ACTION;
	["2PB8M", ["INGRESAR_CODIDO_DESACTIVACION", "2PB8M"]] call ADD_ACTION;
	["APV84", ["INGRESAR_CODIDO_DESACTIVACION", "APV84"]] call ADD_ACTION;
	["Volver al menú principal", "MENU_PRINCIPAL"] call ADD_ACTION;
};

INGRESAR_CODIDO_DESACTIVACION = 
{
	params ["_codigo"];
	
	sleep 2;
	dispositivo sideChat format["Código %1 ingresado con éxito.", _codigo];
	sleep 0.5;

	if (_cable == "2PB8M") then {
		call CHEQUEAR_DESACTIVACION_COMPLETA;
	} else {
		dispositivo sideChat "Error. Iniciando detonación.";
		call DETONATE_BOMB;
	};
};

/*******************************************************************************
								Bomba 
*******************************************************************************/


CHEQUEAR_DESACTIVACION_COMPLETA =
{
	sleep 10;
};

DETONATE_BOMB =
{

}

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/