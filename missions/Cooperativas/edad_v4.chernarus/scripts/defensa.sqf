/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
if(!isServer)then{
	exit;
};

private _fstGroup = [nor_2_1, nor_2_2, nor_3_1, nor_3_3];
private _sndGroup = [west_2_1, west_3_1, sou_veh_grp];
private _thdGroup = [sou_2_2, sou_2_3, west_2_2, nor_2_3, sou_3_4, nor_3_4];
private _fthGroup = [sou_2_4, sou_3_1, sou_3_2, sou_3_3, nor_2_4, nor_3_2, west_veh_grp, west_3_2];

sleep 600;

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

sleep 300;
west_veh hideObjectGlobal false;
west_veh enableSimulationGlobal true;
{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _fthGroup;

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/