/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

MANDI_EXEC_ENDING = 
{
	[c130ending, true] call MANDI_fnc_displayObject; 
	
	{ 
	[_x, true] call MANDI_fnc_displayObject; 
	} forEach units pilotos; 

	[[], "scripts\ending.sqf"] remoteExec ["BIS_fnc_execVM", 0, true];
};

MANDI_CHECK_ENDING =
{
	params ["_marker"];
	
    private _players = allPlayers select { _x call MANDI_fnc_getState == "alive" };
    private _playersInArea = _players select { _x inArea _marker };

    (count _players == count _playersInArea) &&  count _playersInArea != 0;
};

sleep 10;

while { ! ("marker_ending" call MANDI_CHECK_ENDING) } do {
	sleep 10;
};

call MANDI_EXEC_ENDING;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/