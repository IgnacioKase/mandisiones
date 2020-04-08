

if(isServer)then{
	private _fstGroup = [grp1, grp2];
	private _sndGroup = [grp3, grp4, grupo_veh2];
	private _thdGroup = [grp5, grp6];
	private _fthGroup = [grp7, grp8, grupo_veh1];
	
	sleep 180;

	{
		private _group = _x;
		{
			_x hideObjectGlobal false;
			_x enableSimulationGlobal true;
		} forEach units _group;
		
	} forEach _fstGroup;

	sleep 60;
	veh2 hideObjectGlobal false;
	veh2 enableSimulationGlobal true;
	{
		private _group = _x;
		{
			_x hideObjectGlobal false;
			_x enableSimulationGlobal true;
		} forEach units _group;
		
	} forEach _sndGroup;

	sleep 60;

	{
		private _group = _x;
		{
			_x hideObjectGlobal false;
			_x enableSimulationGlobal true;
		} forEach units _group;
		
	} forEach _thdGroup;

	sleep 60;
	veh1 hideObjectGlobal false;
	veh1 enableSimulationGlobal true;
	{
		private _group = _x;
		{
			_x hideObjectGlobal false;
			_x enableSimulationGlobal true;
		} forEach units _group;
		
	} forEach _fthGroup;

};
