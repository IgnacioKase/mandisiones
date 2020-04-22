private _trigger = trigger_campo_correr;

while{true}do{
	if((player inArea _trigger) && hasInterface)then{
		setViewDistance 5;

		player allowDamage false;
		"dynamicBlur" ppEffectEnable true; 
		"dynamicBlur" ppEffectAdjust [2]; 
		"dynamicBlur" ppEffectCommit 0;

		waitUntil {!(player inArea _trigger)};

		setViewDistance 1500;

		player allowDamage true;
		"dynamicBlur" ppEffectEnable false; 
		"dynamicBlur" ppEffectAdjust [0.0]; 
		"dynamicBlur" ppEffectCommit 5;

		true;
	};
	sleep 1;
};


