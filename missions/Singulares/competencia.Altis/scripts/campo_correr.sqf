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
      ["marker_54"] call Humo;
      ["marker_52"] call Humo;
      ["marker_53"] call Humo;
    };
    case (1):
    {
      ["marker_43"] call Minas;
      sleep 0.5;
      ["marker_2"] call Minas;
    };
    case (2):
    {
      ["marker_45"] call Minas;
      
      sleep 1;
      ["marker_45"] call Minas;
    };
    case (3):
    {
      ["marker_46"] call Minas;
      sleep 0.2;
      ["marker_47"] call Minas;
      objetivo_obstaculo enableSimulationGlobal true;
      objetivo_obstaculo hideObjectGlobal false;
      sleep 0.1;
      objetivo_obstaculo hideObjectGlobal true;
      sleep 40;
      objetivo_obstaculo enableSimulationGlobal false;
    };
    case (4):
    {
      ["marker_48"] call Minas;
      
      sleep 0.7;
      ["marker_49"] call Minas;
    };
    case (5):
    {
      ["marker_50"] call Minas;
      sleep 0.7;
      ["marker_51"] call Minas;
      
    };
};
