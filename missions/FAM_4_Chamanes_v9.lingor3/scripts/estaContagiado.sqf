/*
	FAM_fnc_estaContagiado
	
	Descripción:
	Comprueba que el jugador está o no contagiado con la enfermedad que plantea la misión Chamanes.

	Parámetros:
    --
	Retorna:
	--
*/

private _tiempoMuerte = profileNamespace getVariable ["tiempoMuerte", nil];

todasLasMascaras = ["G_Bandanna_blk",
					"G_Bandanna_oli",
					"G_Bandanna_khk",
					"G_Bandanna_tan",
					"G_Respirator_white_F",
					"G_Respirator_yellow_F",
					"G_Respirator_blue_F",
					"rhs_scarf"];

if (!isNil "_tiempoMuerte") exitWith {
	["contagioCheck", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;
	[_tiempoMuerte] execVM "scripts\muerteContagiado.sqf";
};

systemChat "hola";

if (player inArea area_contaminada) then{
	systemChat "hola";
	if !(goggles player in todasLasMascaras) then{

		["contagioCheck", "onEachFrame"] call BIS_fnc_removeStackedEventHandler;

		TIEMPO_MUERTE_POR_CONTAGIO = getMissionConfigValue "TIEMPO_MUERTE_POR_CONTAGIO";
		PRIMER_AVISO_POR_CONTAGIO = getMissionConfigValue "PRIMER_AVISO_CONTAGIO";
		SEGUNDO_AVISO_POR_CONTAGIO = getMissionConfigValue "SEGUNDO_AVISO_CONTAGIO";

		private _tiempoMuerte = serverTime + TIEMPO_MUERTE_POR_CONTAGIO;
		private _primerAvisoContagio = serverTime + PRIMER_AVISO_POR_CONTAGIO;
		private _segundoAvisoContagio = serverTime + SEGUNDO_AVISO_POR_CONTAGIO;

		// private _tiempoMuerte = serverTime + 10;
		profileNamespace setVariable ["tiempoMuerte", _tiempoMuerte];

		[_tiempoMuerte, _primerAvisoContagio, _segundoAvisoContagio] execVM "scripts\muerteContagiado.sqf";
	};
};