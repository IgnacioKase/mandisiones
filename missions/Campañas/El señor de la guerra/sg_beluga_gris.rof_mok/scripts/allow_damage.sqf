/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _immunePlayers = allPlayers select { !isDamageAllowed _x };
private _marker = "marker_3";

while { (count _immunePlayers) > 0 } do {
	{
		if (_x inArea  _marker) then {
			_x allowDamage true;
		};
	} forEach _immunePlayers;
	_immunePlayers = allPlayers select { !isDamageAllowed _x };
	sleep 2;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/