﻿

{  //Script para configuracion de dificultad de los enemigos
    if (!(isPlayer  _x))then
    {
        _x setSkill ["aimingAccuracy",0.17];
        _x setSkill ["aimingShake",0.18];
        _x setSkill ["aimingSpeed",0.50];
        _x setSkill ["spotDistance",0.40];
        _x setSkill ["spotTime",0.40];
        _x setSkill ["courage",0.90];
        _x setSkill ["reloadSpeed",0.70];
        _x setSkill ["commanding",0.90];
    }
}forEach allUnits;

variablesIniciadas = true;
publicVariable "variablesIniciadas";
// Fin de inicialización
civilesSanados = 0;
publicVariable "civilesSanados";
