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
	case "MENU_PRINCIPAL": { call MENU_PRINCIPAL;};
	case "OBSERVAR_CABLES": { call OBSERVAR_CABLES;};
	case "OBTENER_SERIE": { call OBTENER_SERIE;};
	case "OBTENER_RECUPERACION": { call OBTENER_RECUPERACION;};
	case "CORTAR_CABLES": { call CORTAR_CABLES;};
	case "INGRESAR_PASSWORD": { call INGRESAR_PASSWORD;};
	case "INGRESAR_PASSWORD": { call INGRESAR_PASSWORD;};
	case "INGRESAR_PASSWORD": { call INGRESAR_PASSWORD;};
	case "INGRESAR_PASSWORD": { call INGRESAR_PASSWORD;};
	case "INGRESAR_PASSWORD": { call INGRESAR_PASSWORD;};
	default { };
};


/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/