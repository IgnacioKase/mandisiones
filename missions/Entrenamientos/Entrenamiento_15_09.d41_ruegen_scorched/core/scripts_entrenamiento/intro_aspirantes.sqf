/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

private _author = getMissionConfigValue ["author", "ArgA"];
private _name = name player;

titleCut ["", "BLACK FADED", 999];

["<t size='1.3' color='#00B3FF'>Entrenamiento<t font = 'PuristaSemiBold' size='1.0' color='#FFFFFF'><br/>CLAN ARGA</t></t><br/><t size='0.9' color='#cccccc' font='PuristaSemiBold'>by "+_author+"</t>",0,0.3,4,2,0.0] spawn bis_fnc_dynamictext;

playSound "MANDI_BUS";
sleep 5;

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [6];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [0.0];
"dynamicBlur" ppEffectCommit 5;

titleCut ["", "BLACK IN", 5];

null=[
 [
   ["Bienvenido,","align = 'center' size = '.8' font='PuristaBold'"],
   [format ["  %1 ", _name],"align = 'center' size = '.8'","#aaaaaa"],
   ["","<br/>"],
   ["Campo de Entrenamiento Clan ArgA","align = 'center' size = '0.5'"]
 ]
] spawn BIS_fnc_typeText2;

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/