/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

private _playerPos = getPos player;
private _comandantePos = getPos comandante;
private _distance = _playerPos distance _comandantePos;

if(_distance < 50) then {
	playSound "ruso";
};

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/