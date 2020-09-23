/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_params"];

private ["_functionName", "_extraParams"];

if (typeName _params == "STRING") then {
	_functionName = _params;
} else {
	_functionName = _params select 0;
	_extraParams = _params select 1;
};

bomba remoteExec ["removeAllActions", 0, true];

switch (_functionName) do {
	case "CONECTAR_DESACTIVADOR": { call CONECTAR_DESACTIVADOR;};
	case "ATAQUE_SEGURIDAD": { call ATAQUE_SEGURIDAD;};
	case "EXTRAER_ARCHIVOS": { call EXTRAER_ARCHIVOS;};
	case "COMUNICACION_SERVIDOR": { call COMUNICACION_SERVIDOR;};
	case "ANULAR_DISPOSITIVO": { call ANULAR_DISPOSITIVO;};
	case "RETIRAR_DISPOSITIVO": { call RETIRAR_DISPOSITIVO;};
	default { };
};


/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/