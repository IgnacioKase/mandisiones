/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

if (!isServer) exitWith { };

sleep 300;

MANDI_IN_DISTANCE = {
	params ["_marker"];
	private _players = allPlayers select { _x distance (getMarkerPos _marker) < 100 };
	(count _players) > 0;
};

[speaker_l, ["MANDI_ALARM", 4000]] remoteExec ["say3D", 0];
[speaker_r, ["MANDI_ALARM", 4000]] remoteExec ["say3D", 0];

[comandante, "ArgA, estan atacando la ciudad, Necesitamos su ayuda rápido! Dirijanse a los puestos de avanzada y defiendan la posición!"] remoteExec ["sideChat", 0, true];

["puesto_1", 1] remoteExec ["setMarkerAlphaLocal", 0, true];
["puesto_2", 1] remoteExec ["setMarkerAlphaLocal", 0, true];

sleep 1140;

waitUntil { ("puesto_1" call MANDI_IN_DISTANCE) && ("puesto_2" call MANDI_IN_DISTANCE) };

sleep 60;

"fase1" execVM "scripts\contra_ataque.sqf";

sleep 2700;

["puesto_3", 1] remoteExec ["setMarkerAlphaLocal", 0, true];
["puesto_4", 1] remoteExec ["setMarkerAlphaLocal", 0, true];

[comandante, "ArgA, dirijanse a los puestos Charlie y Delta. Mantegan la nueva línea!"] remoteExec ["sideChat", 0, true];

waitUntil { ("puesto_3" call MANDI_IN_DISTANCE) && ("puesto_4" call MANDI_IN_DISTANCE) };

"fase2" execVM "scripts\contra_ataque.sqf";

sleep 1500;

["puesto_5", 1] remoteExec ["setMarkerAlphaLocal", 0, true];
["puesto_6", 1] remoteExec ["setMarkerAlphaLocal", 0, true];

[comandante, "ArgA, dirijanse a los puestos Echo y Foxtrox. Mantegan la nueva línea!"] remoteExec ["sideChat", 0, true];

waitUntil { ("puesto_5" call MANDI_IN_DISTANCE) && ("puesto_6" call MANDI_IN_DISTANCE) };

"fase3" execVM "scripts\contra_ataque.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/