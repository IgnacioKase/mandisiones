/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

//if(hasInterface && (profileName != "|ArgA|Ignacio|Sdo") && (profileName != "|ArgA|Maxi|Cbo"))then{
	player unassignItem "ItemGPS";
	player removeItem "ItemGPS";
	while{true}do{
		if(!((vehicle player) getVariable ["ENABLE_PANEL_CH_47F", false]))then{
			showHUD [true, false, true, true, true, true, true, true, false, true];
		}else{
			showHUD [true, false, true, true, true, true, true, true, true, true];
		};
	};
//};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/