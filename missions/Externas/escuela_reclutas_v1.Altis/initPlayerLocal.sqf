/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _distanciaVision = getMissionConfigValue ["MAX_DIST_VISION", 4000];
private _initialGoggles =  getMissionConfigValue ["GAFAS_INICIALES", ""];
private _disableCustomLoadout =  getMissionConfigValue ["DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO", 1];
private _intro = getMissionConfigValue ["INTRO", 3];
private _curatorWhiteList = parseSimpleArray getMissionConfigValue ["CURATOR_WHITELIST", "[]"];

if (hasInterface) then {
  MANDI_ENABLE_DIST = true;
  [_distanciaVision, 800] execVM "scripts\view_distance.sqf";
  execVM "scripts\check_view.sqf";
  [_intro] execVM "scripts\init_intro.sqf";
  removeGoggles player; //arga_rhs_pm_negro
  if(_initialGoggles != "")then{
    player addGoggles _initialGoggles;
  };
  private _isMedic = player getVariable ["ace_medical_medicClass", 0];
  private _ing = if (_isMedic > 0) then { "arga_ing_medico" } else { "arga_ing_arga" };
  [player, _ing] call BIS_fnc_setUnitInsignia;
  {
    if([_x, profileName, false] call BIS_fnc_inString || [_x, roleDescription player, false] call BIS_fnc_inString) then {
      execVM "scripts\make_curator.sqf";
    };
  } forEach _curatorWhiteList;
};

player disableAI "MOVE";
player action ["SwitchWeapon", player, player, 100];
player setUnitPos "middle";
enableEngineArtillery false;

// Deshabilita las opciones de Cargar y Guardar Equipo en el arsenal
if (_disableCustomLoadout == 1) then {
  [missionNamespace, "arsenalOpened", {
    disableSerialization;
    params ["_display"];
    _display displayAddEventHandler ["keydown", "_this select 3"];
    {
      (_display displayCtrl _x) ctrlShow false
    } forEach [44151, 44150, 44146, 44147, 44148, 44149, 44346];
  }] call BIS_fnc_addScriptedEventHandler;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/