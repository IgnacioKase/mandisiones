private _group = (group player);
if(hasInterface)then{
	private _trigger = trigger_final;
	private _timer = 0;

	while{!(player inArea _trigger)}do{
		
		_timer = _timer + 1;
		hint format ["Tiempo: %1 segundos", _timer];
		uiSleep 1;
	};
	private _members = units _group;
	private _respawns = _group getVariable ["GROUP_RESPAWN_COUNT", 0];
	_respawns = _respawns - 1;
	private _message = format ["%1 integrado por: %2, %3, terminó con un tiempo de: %4 segundos, con %5 respawns", _group, name (_members select 0), name (_members select 1), _timer, _respawns];
	if(count _members == 1)then{
		_message = format ["%1 integrado por: %2, terminó con un tiempo de: %3 segundos, con %4 respawns", _group, name (_members select 0), _timer, _respawns];
	};
	//player globalChat "1" + _message;
	[player, _message] remoteExec ["globalChat", -2];  
	//[[[player, "3" + _message], "scripts\show_message.sqf"], "BIS_fnc_execVM", true,false,false] call BIS_fnc_MP;
};


