/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
if(!isServer)then{
	exit;
};

_groups = [cont_1, cont_2, cont_3, cont_4, cont_5, cont_6, cont_7, cont_8, cont_9, cont_10, cont_11, cont_12, cont_13, cont_14, cont_15, cont_16, cont_17, cont_18, cont_19, cont_20, cont_21, cont_22, cont_23, cont_24, cont_25, cont_26, cont_27, cont_28, cont_29, cont_30];

cont_veh_1 hideObjectGlobal false;
cont_veh_1 enableSimulationGlobal true;

cont_veh_2 hideObjectGlobal false;
cont_veh_2 enableSimulationGlobal true;

cont_veh_3 hideObjectGlobal false;
cont_veh_3 enableSimulationGlobal true;

cont_veh_4 hideObjectGlobal false;
cont_veh_4 enableSimulationGlobal true;

cont_veh_5 hideObjectGlobal false;
cont_veh_5 enableSimulationGlobal true;

cont_veh_6 hideObjectGlobal false;
cont_veh_6 enableSimulationGlobal true;
{
	private _group = _x;
	{
		_x hideObjectGlobal false;
		_x enableSimulationGlobal true;
	} forEach units _group;
	
} forEach _groups;

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/