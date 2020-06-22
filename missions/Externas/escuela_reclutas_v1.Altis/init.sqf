/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _disableGroupIA = getMissionConfigValue ["DESACTIVAR_IA_DE_GRUPO", 1];
private _disableBluforIA = getMissionConfigValue ["DESACTIVAR_TODO_BLUFOR", 0];

setTerrainGrid 25;

player setVariable["Saved_Loadout", getUnitLoadout player];

nopop = true;
stand addAction ["<t color='#5882FA'>Levantar Blancos</t>", { ["blancos","cdm_fnc_popupTarget"] call BIS_fnc_MP; }];
// [] execVM "scripts\init_vcom_driving.sqf";

player disableAI "MOVE";
player action ["SwitchWeapon", player, player, 100];
player setUnitPos "middle";

// Deshabilita el movimiento de la IA para todas las IA que 
// esten en el mismo grupo que un jugador humano
if (_disableGroupIA == 1) then {
  private _units = units (group player);
  {
    if(local _x) then {
      _x disableAI "MOVE";
      _x action ["SwitchWeapon", _x, _x, 100];
      _x setUnitPos "middle";
    };
  } foreach _units;
};

if (_disableBluforIA == 1) then {
  {
    if(side _x == west && local _x) then {
      _x disableAI "MOVE";
      _x action ["SwitchWeapon", _x, _x, 100];
      _x setUnitPos "middle";
    };
  }foreach allUnits;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
