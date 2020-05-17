/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
if(!isServer)then{
	exit;
};

private _marker = "objetivo_ataque";
//private _marker = "objetivo_prueba";
private _anyInMarker = true;
private _message = "Estan atacando la Base Pomelo! A todas las unidades, al terminar sus objetivos, recuperen la base.";

while{_anyInMarker}do{
	{
		_anyInMarker = _anyInMarker && !(_x inArea _marker);
	} forEach allPlayers;
};

[] execVM "scripts\contrataque.sqf";

sleep 300;

comandante setName "Comandante";
[comandante, _message] remoteExec ["globalChat", 0]; 

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/