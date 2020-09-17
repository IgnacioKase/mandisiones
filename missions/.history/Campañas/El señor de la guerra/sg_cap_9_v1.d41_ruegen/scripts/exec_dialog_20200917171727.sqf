/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_params"];

private ["_function", "_extraParams"];

if (typeName _params == ) then {
	
};

bomba remoteExec ["removeAllActions", 0, true];

{
	_x params ["_text", "_sleepTime"];
	[desactivador, _text] remoteExec ["sideChat", 0, false];
	sleep 0.2;
	if (_sleepTime > 0) then {
		[desactivador, format ["Tiempo de espera para siguiente acción: %1 segundos", str _sleepTime]] remoteExec ["sideChat", 0, false];
	};
	sleep _sleepTime;
} forEach _texts;

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