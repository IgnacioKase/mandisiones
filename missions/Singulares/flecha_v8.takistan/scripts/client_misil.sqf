/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _playerPos = getPos player;
private _comandantePos = getPos comandante;
private _distance = _playerPos distance _comandantePos;

comandante removeAction misiles_action;

if(_distance < 50) then {
	playSound "ruso";
};

sleep 2;

MANDI_ENABLE_DIST = false;
setViewDistance 3500;

execVM "scripts\camara_misil.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/