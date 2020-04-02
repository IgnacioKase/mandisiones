/*
	muerteContagiado.sqf
	
	Descripción:
    Mata al jugador cuando el tiempo de muerte por contagio se cumple.

	Parámetros:
        0 -- 
	Retorna:
	--
*/

params["_tiempoMuerte", "_primerAvisoContagio", "_segundoAvisoContagio"];

//Primer aviso
hintSilent "No te sientes muy bien. Te arde la cabeza";
[player, 0.1] call ace_medical_fnc_adjustPainLevel;
uiSleep _primerAvisoContagio;
[player, 0.2] call ACE_medical_fnc_adjustPainLevel;

//Segundo aviso
hintSilent "Comienzas a sentirte pésimo, quieres vomitar tus tripas";
[player, 1] call ACE_medical_fnc_adjustPainLevel;
uiSleep _segundoAvisoContagio;
[player, 1] call ACE_medical_fnc_adjustPainLevel;
uiSleep 50;
hintSilent "No das más del dolor de cabeza";
[player, 1] call ACE_medical_fnc_adjustPainLevel;

//Muerte
uiSleep _tiempoMuerte;

hintSilent "Has muerto por contagio...";
player setDamage 1;