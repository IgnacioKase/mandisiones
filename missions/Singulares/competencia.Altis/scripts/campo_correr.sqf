Minas =
{
  _mina = createVehicle ["R_80mm_HE", (getMarkerPos (_this select 0)),[],0,"NONE"];
  _mina setDamage 1;
  //"M_RPG32_AA_F" createVehicle (getMarkerPos (_this select 0));
};

Humo = 
{
  _humo = "SmokeShell" createVehicle (getMarkerPos (_this select 0));
};

switch ((_this select 0)) do
{
    case (0):
    {
      if(repetir_campo_0)then{
        ["humo"] call Humo;
        ["humo_1"] call Humo;
        ["humo_2"] call Humo;
        ["humo_3"] call Humo;
        ["humo_4"] call Humo;
        repetir_campo_0 = false;
        publicVariable "repetir_campo_0";
      };
    };
    case (1):
    {
      if(repetir_campo_1)then{
        ["bomba"] call Minas;
        sleep 0.5;
        ["bomba_1"] call Minas;
        repetir_campo_1 = false;
        publicVariable "repetir_campo_1";
      };
    };
    case (2):
    {
      if(repetir_campo_2)then{
        ["bomba_2"] call Minas;
        sleep 1;
        ["bomba_3"] call Minas;
        repetir_campo_2 = false;
        publicVariable "repetir_campo_2";
      };
    };
    case (3):
    {
      if(repetir_campo_3)then{
        ["bomba_4"] call Minas;
        sleep 0.2;
        ["bomba_5"] call Minas;
        objetivo_obstaculo enableSimulationGlobal true;
        objetivo_obstaculo hideObjectGlobal false;
        sleep 0.1;
        objetivo_obstaculo hideObjectGlobal true;
        sleep 40;
        objetivo_obstaculo enableSimulationGlobal false;
        repetir_campo_3 = false;
        publicVariable "repetir_campo_3";
      };
    };
    case (4):
    {
      if(repetir_campo_4)then{
        ["bomba_6"] call Minas;
        sleep 0.7;
        ["bomba_7"] call Minas;
        repetir_campo_4 = false;
        publicVariable "repetir_campo_4";
      };
    };
    case (5):
    {
      if(repetir_campo_5)then{
        ["bomba_8"] call Minas;
        sleep 0.7;
        ["bomba_9"] call Minas;
        repetir_campo_5 = false;
        publicVariable "repetir_campo_5";
      };
    };
};
