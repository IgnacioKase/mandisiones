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

INICIAR_DESACTIVACION =
{
	private _texts = [
		["Iniciando proceso de desactivación. Puede demorar hasta 5 minutos...", 5]
	];
	["Inciar desactivación", [_texts, "CONECTAR_DESACTIVADOR"]] call ADD_ACTION;
};

CONECTAR_DESACTIVADOR =
{
	private _texts = [
		["Conectando desactivador...", 19],
		["Desactivador conectado.", 0]
	];
	["Conectar desactivador", [_texts, "ATAQUE_SEGURIDAD"]] call ADD_ACTION;
};

ATAQUE_SEGURIDAD =
{
	private _texts = [
		["Iniciando ataque de seguridad...", 22],
		["Ataque de seguridad completado.", 0]
	];
	["Iniciar ataque de seguridad", [_texts, "EXTRAER_ARCHIVOS"]] call ADD_ACTION;
};

EXTRAER_ARCHIVOS =
{
	private _texts = [
		["Extrayendo archivos...", 33],
		["Archivos extraídos.", 0]
	];
	["Extraer archivos", [_texts, "COMUNICACION_SERVIDOR"]] call ADD_ACTION;
};

COMUNICACION_SERVIDOR =
{
	private _texts = [
		["Cortando comunicación con el servidor...", 31],
		["Conexión interrumpida.", 0]
	];
	["Cortar comunicación con el servidor", [_texts, "ANULAR_DISPOSITIVO"]] call ADD_ACTION;
};

ANULAR_DISPOSITIVO =
{
	private _texts = [
		["Anulando dispositivo...", 128],
		["Dispositivo anulado. Bomba asegurada.", 0.2],
		["Desconecte el desactivador.", 0]
	];
	["Anular dispositivo", [_texts, "RETIRAR_DISPOSITIVO"]] call ADD_ACTION;
};

RETIRAR_DISPOSITIVO =
{
	private _texts = [
		["Desactivador extraído.", 0]
	];
	["Retirar desactivador", [_texts, ""]] call ADD_ACTION;
};

call INICIAR_DESACTIVACION;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/