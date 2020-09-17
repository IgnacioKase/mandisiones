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
	} else {
		dispositivo sideChat "Error. Iniciando detonación.";
			call DETONATE_BOMB;
	};
};

/*******************************************************************************
								Menú Contraseña 
*******************************************************************************/

INGRESAR_PASSWORD = 
{
	["Pulsar Lambda", ["PULSAR_PASSWORD", "Lambda"]] call ADD_ACTION;
	["Pulsar Epsilon", ["PULSAR_PASSWORD", "Epsilon"]] call ADD_ACTION;
	["Pulsar Xhi", ["PULSAR_PASSWORD", "Xhi"]] call ADD_ACTION;
	["Pulsar Z", ["PULSAR_PASSWORD", "Lambda"]] call ADD_ACTION;
};
/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/