/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_marker"];

Humo = 
{
  params ["_marker"];
  _humo = "SmokeShell" createVehicle (getMarkerPos _marker);
};


_marker call Humo;
/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/