/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

// Deshabilita el movimiento de la IA para todas las IA que 
// esten en el mismo grupo que un jugador humano
private _group = (group player);
{
  _x disableAI "move";
  _x setUnitPos "middle";
} forEach units _group;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/