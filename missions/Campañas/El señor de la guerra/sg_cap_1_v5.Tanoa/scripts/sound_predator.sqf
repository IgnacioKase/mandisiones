/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_trigger"];

private _playerPos = getPos player;
private _triggerPos = getPos _trigger;
private _distance = _playerPos distance _triggerPos;

if(_distance < 1500) then {
	playSound "effect_predator";
};


/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/