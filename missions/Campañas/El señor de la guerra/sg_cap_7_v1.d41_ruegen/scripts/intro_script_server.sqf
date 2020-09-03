/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

waitUntil { time > 35 };


sound_effect setPos ([[[getPos c4, 200]],[]] call BIS_fnc_randomPos);

waitUntil { time > 40 };

t_1 setPos getPos c4;
t_2 setPos ([[[getPos c4, 500]],[]] call BIS_fnc_randomPos);
t_13 setPos ([[[getPos c3, 500]],[]] call BIS_fnc_randomPos);
t_14 setPos ([[[getPos c3, 500]],[]] call BIS_fnc_randomPos);
t_4 setPos ([[[getPos c4, 500]],[]] call BIS_fnc_randomPos);
t_5 setPos ([[[getPos c4, 500]],[]] call BIS_fnc_randomPos);
t_6 setPos ([[[getPos c4, 500]],[]] call BIS_fnc_randomPos);
t_20 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
t_21 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
sleep 1;

c4 setDamage 1; 

waitUntil { time > 45 };

t_7 setPos getPos c3;
t_8 setPos ([[[getPos c3, 500]],[]] call BIS_fnc_randomPos);
t_10 setPos ([[[getPos c3, 500]],[]] call BIS_fnc_randomPos);
t_5 setPos ([[[getPos c4, 500]],[]] call BIS_fnc_randomPos);
t_11 setPos ([[[getPos c3, 500]],[]] call BIS_fnc_randomPos);
t_19 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
t_22 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
t_12 setPos ([[[getPos c3, 500]],[]] call BIS_fnc_randomPos);


sleep 1;

c3 setDamage 1; 

waitUntil { time > 53 };

t_15 setPos getPos c2;
t_16 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
t_3 setPos ([[[getPos c4, 500]],[]] call BIS_fnc_randomPos);
t_17 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
t_18 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
t_9 setPos ([[[getPos c3, 500]],[]] call BIS_fnc_randomPos);
t_23 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);
t_24 setPos ([[[getPos c2, 500]],[]] call BIS_fnc_randomPos);

sleep 1;

c2 setDamage 1;

sleep 2;

c1 setDamage 1;

sleep 10;

deleteVehicle sound_effect;
deleteVehicle t_1;
deleteVehicle t_2;
deleteVehicle t_3; 
deleteVehicle t_4;
deleteVehicle t_5;
deleteVehicle t_6;
deleteVehicle t_7;
deleteVehicle t_8;
deleteVehicle t_9;
deleteVehicle t_10;
deleteVehicle t_11;
deleteVehicle t_12;
deleteVehicle t_13;
deleteVehicle t_14;
deleteVehicle t_15;
deleteVehicle t_16;
deleteVehicle t_17;
deleteVehicle t_18;
deleteVehicle t_19;
deleteVehicle t_20;
deleteVehicle t_21;
deleteVehicle t_22;
deleteVehicle t_23;
deleteVehicle t_24;
/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/