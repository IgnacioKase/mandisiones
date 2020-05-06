/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
if(!isServer) exitWith { };

private _fstGroup = [e];
private _sndGroup = [e_3];
private _thdGroup = [e_1, e_2];

sleep 300;

{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _fstGroup;

sleep 300;

sou_veh hideObjectGlobal false;
sou_veh enableSimulationGlobal true;
{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _sndGroup;

sleep 300;

{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _thdGroup;

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/