/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
if (!isServer) exitWith { };

private _fstGroup = [e_3, e_5, e_9, e_11, e_14, e_17, d_1, d_5, d_7, d_9, d_15]; //e_17 -> veh_1 // d_15 -> veh_3
private _sndGroup = [e_1, e_4, e_7, e_8, e_13, e_15, d_2, d_3, d_8, d_10, d_12, d_11];
private _thdGroup = [e, e_2, e_6, e_10, e_12, e_16, d, d_4, d_6, d_13, d_14]; //e_16 -> veh // d_14 -> veh_2

sleep 600;

veh_1 hideObjectGlobal false;
veh_1 enableSimulationGlobal true;

veh_3 hideObjectGlobal false;
veh_3 enableSimulationGlobal true;

{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _fstGroup;

sleep 600;

{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _sndGroup;

sleep 300;

veh hideObjectGlobal false;
veh enableSimulationGlobal true;

veh_2 hideObjectGlobal false;
veh_2 enableSimulationGlobal true;

{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _thdGroup;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/