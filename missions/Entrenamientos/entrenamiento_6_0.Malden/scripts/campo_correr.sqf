/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_case"];

if (!isServer) exitWith { };

Minas =
{
  params ["_marker"];
  _mina = createVehicle ["R_80mm_HE", (getMarkerPos _marker),[],0,"NONE"];
  _mina setDamage 1;
  //"M_RPG32_AA_F" createVehicle (getMarkerPos (_this select 0));
};

Humo = 
{
  params ["_marker"];
  _humo = "SmokeShell" createVehicle (getMarkerPos _marker);
};

SHOW_TARGET =
{
  params ["_unit"];
  [_unit, true] call MANDI_fnc_displayObject;
  sleep 0.1;
  _unit hideObjectGlobal true;
  sleep 40;
  _unit enableSimulationGlobal false;
};

SPAWN_OBSTACULO = 
{
  params ["_case"];

  switch (_case) do {
      case (0): {
        ["HUMO"] call Humo;
        ["HUMO_1"] call Humo;
      };
      case (1): {
        ["HUMO_2"] call Humo;
        ["BOMBA"] call Minas;
        sleep 1.5;
        ["BOMBA_1"] call Minas;
      };
      case (2): {
        ["HUMO_3"] call Humo;
        ["BOMBA_2"] call Minas;
        sleep 1;
        ["BOMBA_3"] call Minas;
        [TARGET] call SHOW_TARGET;
      };
      case (3): {
        ["BOMBA_4"] call Minas;
        sleep 1.3;
        ["BOMBA_5"] call Minas;
      };
      case (4): {
        ["HUMO_4"] call Humo;
        ["BOMBA_6"] call Minas;
        sleep 1.5;
        ["BOMBA_7"] call Minas;
      };
      case (5): {
        ["HUMO_5"] call Humo;
        ["BOMBA_8"] call Minas;
        sleep 2;
        ["BOMBA_9"] call Minas;
        [TARGET_1] call SHOW_TARGET;
      };
      case (6): {
        ["HUMO_6"] call Humo;
        ["HUMO_7"] call Humo;
        ["HUMO_8"] call Humo;
        ["BOMBA_14"] call Minas;
        sleep 2;
        ["BOMBA_15"] call Minas;
      };
      case (7): {
        ["HUMO_9"] call Humo;
        ["BOMBA_10"] call Minas;
        sleep 1;
        ["BOMBA_11"] call Minas;
        [TARGET_2] call SHOW_TARGET;
      };
      case (8): {
        ["BOMBA_12"] call Minas;
        sleep 1.2;
        ["BOMBA_13"] call Minas;
      };
  };
};

if (MANDI_REPETIR_CAMPO select _case) then {
  [_case] call SPAWN_OBSTACULO;
  MANDI_REPETIR_CAMPO set [_case, false];
  publicVariable "MANDI_REPETIR_CAMPO";
};



/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/