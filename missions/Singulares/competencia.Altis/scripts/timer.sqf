if(hasInterface)then{
	private _trigger = trigger_final;
	private _timer = 0;

	while{!(player inArea _trigger)}do{
		
		_timer = _timer + 1;
		hint format ["Tiempo: %1 segundos", _timer];
		uiSleep 1;
	};
	private _group = (group player);
	private _members = units _group;
	private _message = format ["El grupo: %1 integrado por: %2, %3, terminó con un tiempo de: %4",_group, name (_members select 0), name (_members select 1), _timer];
	if(count _members == 1)then{
		_message = format ["El grupo: %1 integrado por: %2, terminó con un tiempo de: %3",_group, name (_members select 0), _timer];
	};

	_message remoteExec ["systemChat", 0, false];
};


