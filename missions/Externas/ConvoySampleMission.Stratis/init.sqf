if (isServer) then 
{
	[] execVM "Convoy\ConvoyInit.sqf";
	sleep 1;  // 1 sec is just to be on safe side that all initialiaziation has been done
	_handle = [["m_con_1","m_con_2","m_con_3","m_con_4"],[prowler, truck_1, truck_2], 30, 600, 2, "NORMAL", "CARELESS"] spawn DEVAS_ConvoyMove;
};