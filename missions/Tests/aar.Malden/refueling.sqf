private _c130 = C130;
private _vehicle = false;
while { true } do {
	_vehicle = (vehicle player);
	while { player distance _c130 < 50 && _vehicle != _c130} do {
		
		_vehicle setFuel (1/60 + fuel _vehicle);
		sleep 1;
	};
	sleep 1;
};