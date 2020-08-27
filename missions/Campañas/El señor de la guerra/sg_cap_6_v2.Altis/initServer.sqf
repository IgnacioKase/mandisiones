/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFile "core\events\initServer.sqf";

MANDI_CHECK_ENDING =
{
    private _players = allPlayers select { _x call MIV_fnc_getState == "alive" };
    private _playersInArea = _players select { _x inArea trigger_ending };

    count _players == count _playersInArea;
};

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/