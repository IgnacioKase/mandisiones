/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

call compile preprocessFileLineNumbers "Engima\Civilians\Init.sqf";
private _disableGroupIA = getMissionConfigValue ["DESACTIVAR_IA_DE_GRUPO", 1];
private _disableBluforIA = getMissionConfigValue ["DESACTIVAR_TODO_BLUFOR", 0];
private _standMedico = getMissionConfigValue ["STAND_MEDICO", objNull];
private _standIngeniero = getMissionConfigValue ["STAND_INGENIERO", objNull];
private _standPiloto = getMissionConfigValue ["STAND_PILOTO", objNull];
_standMedico = missionNamespace getVariable [_standMedico, objNull];
_standIngeniero = missionNamespace getVariable [_standIngeniero, objNull];
_standPiloto = missionNamespace getVariable [_standPiloto, objNull];

setTerrainGrid 25;

[] execVM "scripts\civiles.sqf";

[] execVM "scripts\setBriefing.sqf";

if(! isNil "roles") then {
  [roles] execVM "scripts\init_roles.sqf";
};

[_standMedico, _standIngeniero, _standPiloto] execVM "scripts\init_stands.sqf";

[] execVM "scripts\init_vcom_driving.sqf";

player disableAI "MOVE";
player action ["SwitchWeapon", player, player, 100];
player setUnitPos "middle";

// Deshabilita el movimiento de la IA para todas las IA que 
// esten en el mismo grupo que un jugador humano
if(_disableGroupIA == 1)then{
  private _units = units (group player);
  {
    if(local _x) then {
      _x disableAI "MOVE";
      _x action ["SwitchWeapon", _x, _x, 100];
      _x setUnitPos "middle";
    };
  }foreach _units;
};

if(_disableBluforIA == 1) then {
  {
    if(side _x == west && local _x) then {
      _x disableAI "MOVE";
      _x action ["SwitchWeapon", _x, _x, 100];
      _x setUnitPos "middle";
    };
  }foreach allUnits;
};
MAC_fnc_switchMove =
{
   private["_object","_anim"];
   _object = _this select 0;
   _anim = _this select 1;
 
   _object switchMove _anim;
};

// FLARE FIX - recommended for vanilla missions and assets only, with mods you might have problems

// flare intensity, replace 30 with desired value
al_flare_intensity = 50;
publicvariable "al_flare_intensity";

// flare range, replace 500 with desired value
al_flare_range = 300;
publicvariable "al_flare_range";

al_mortar_flare_intensity = 400;
publicvariable "al_mortar_flare_intensity";

al_mortar_flare_range = 550;
publicvariable "al_mortar_flare_range";

// If you want to use FLARE FIX do not edit or remove lines bellow
player addEventHandler ["Fired",{private ["_al_flare"]; _al_flare = _this select 6;[[_al_flare],"AL_flare_fix\al_flare_enhance.sqf"] remoteExec ["execVM",0,true]}];

// FOR vanilla mortars place this line inside their init field.
// this addEventHandler ["Fired",{private ["_al_flare"]; _al_flare = _this select 6;[[_al_flare],"AL_flare_fix\al_flare_enhance.sqf"] remoteExec ["execVM",0,true]}];


/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
