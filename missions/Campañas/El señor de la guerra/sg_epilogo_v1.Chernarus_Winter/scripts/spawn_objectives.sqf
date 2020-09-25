/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _spawnObjectives =  false;
private _LIMIT_TIME = 3600;

while { !_spawnObjectives } do {
	_spawnObjectives = time >= _LIMIT_TIME;
	if(_spawnObjectives) exitWith { };
	sleep 10;
	_spawnObjectives = !(alive objetivo_kefir) && !(alive objetivo_mors) && !(alive objetivo_kvas) && !(alive objetivo_vodka);
};

"medovuja_area" setMarkerAlpha 1;
"sbiten_area" setMarkerAlpha 1;
"medovuja" setMarkerAlpha 1;
"sbiten" setMarkerAlpha 1;

[comandante, "A todas las unidades: necesitamos refuerzos en Medovuja y Sbiten. Dirijanse a la zona, encuentren la bomba e inicien la desactivación."] remoteExec ["sideChat", 0, false];

sleep 420;

[340, 90000, false, false, false, 0.6] execVM "AL_dust_storm\al_duststorm.sqf";
/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/