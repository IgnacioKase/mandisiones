/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

Minas =
{
  _mina = createVehicle ["Bo_GBU12_LGB_MI10", ([[[getMarkerPos "objetivo_zorro", 450]],[]] call BIS_fnc_randomPos), [], 0, "NONE"];
  _mina setDamage 1;
  //"M_RPG32_AA_F" createVehicle (getMarkerPos (_this select 0));
};

sleep 5;

call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;

waitUntil { time > 40 };

call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;

sleep 5;

call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;

sleep 7;

call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;

sleep 8;

call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;
call Minas;sleep 0.5;

sleep 5;

[comandante, "ArgA, tomen la plaza. Avancen!"] remoteExec ["sideChat", 0, false];

deleteVehicle sound_effect;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
