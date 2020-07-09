/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _trigger = trigger_campo_correr;
private _whitelist = trigger_campo_correr_not;
private _count = 0;

while {true && _count < 4000} do {
	if((player inArea _trigger) && hasInterface && !(player inArea _whitelist))then{
		MANDI_ENABLE_DIST = false;
		setViewDistance 5;
		

		player allowDamage false;
		"dynamicBlur" ppEffectEnable true; 
		"dynamicBlur" ppEffectAdjust [2]; 
		"dynamicBlur" ppEffectCommit 0;

		waitUntil {!(player inArea _trigger) || (player inArea _whitelist)};

		setViewDistance 2500;
		MANDI_ENABLE_DIST = true;

		player allowDamage true;
		"dynamicBlur" ppEffectEnable false; 
		"dynamicBlur" ppEffectAdjust [0.0]; 
		"dynamicBlur" ppEffectCommit 5;

		true;
	};
	sleep 1;
	_count = _count + 1;
};

execVM "scripts\loop_campo_correr.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
