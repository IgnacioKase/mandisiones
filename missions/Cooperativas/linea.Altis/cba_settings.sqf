// VCOM SETTINGS
force Vcm_ActivateAI = true;
force VCM_ADVANCEDMOVEMENT = true; //Verdadero significa que la IA generará activamente puntos de referencia si no se generan otros puntos de referencia para el grupo de IA (2 o más). Falso deshabilita estos movimientos avanzados.
force VCM_AIDISTANCEVEHPATH = 5; //La distancia que verificará la IA del líder del escuadrón para robar vehículos
force VCM_AIMagLimit = 2; //Número de cargadores restantes antes de que AI busque munición.
force VCM_ARTYDELAY = 30; //Retraso entre escuadrones que solicitan artillería
force VCM_ARTYENABLE = true; //Habilite el manejo mejorado de artillería de Vcom.
force VCM_ARTYSPREAD = 350; //Dispersion en metros
force VCM_Debug = false; //Habilitar el modo de depuración.
force VCM_FRMCHANGE = true; //LOS GRUPOS DE AI CAMBIARÁN LAS FORMACIONES A SU MEJOR PRESUNCION.
force VCM_HEARINGDISTANCE = 200; //Distancia AI escucha disparos no suprimidos.
force VCM_MINECHANCE = 25; //Probabilidad de poner una mina
force VCM_RAGDOLL = true; //Should AI ragdoll when hit
force VCM_RAGDOLLCHC = 50; //CHANCE AI RAGDOLL
force VCM_SKILLCHANGE = true; //Grupos de IA tendrán sus habilidades cambiadas por Vcom.
force VCM_STATICARMT = 200; //Cuánto tiempo permanece la IA en armas estáticas cuando las arma inicialmente. Esto es solo para AI SIN bolsas estáticas. Se quedarán durante este tiempo cuando NO SE VEAN ENEMIGOS, o su grupo se aleje.
force VCM_StealVeh = true; //La IA robará vehículos.
force VCM_WARNDELAY = 40; //Cuánto tiempo tiene que sobrevivir la IA antes de poder pedir ayuda. Esto se activa una vez que la IA entra en combate.
force VCM_WARNDIST = 200; //Hasta qué distancia la AI puede solicitar ayuda de otros grupos.
force VCM_ARTYDELAY = 30; //Delay between squads requesting artillery
force VCM_ARTYWT = -(VCM_ARTYDELAY);
force VCM_ARTYET = -(VCM_ARTYDELAY);
force VCM_ARTYRT = -(VCM_ARTYDELAY);
//force VCM_ARTYSIDES = [west,east,resistance];  //Sides that will use VCOM/FFE 
// force VCM_SIDEENABLED = [west,east,resistance];
/*force VCM_AIDIFA = [['aimingAccuracy',0.35],['aimingShake',0.4],['aimingSpeed',0.45],['commanding',1],['courage',1],['endurance',1],['general',0.5],['reloadSpeed',1],['spotDistance',0.8],['spotTime',0.8]];
force VCM_AISIDESPEC =
{
	private _Side = (side (group _this));
	switch (_Side) do {
		case west: 
		{
			{
				_this setSkill _x;
			} forEach VCM_AIDIFWEST;				
		};
		case east: 
		{
			{
				_this setSkill _x;
			} forEach VCM_AIDIFEAST;					
		}; 
		case resistance: 
		{
			{
				_this setSkill _x;
			} forEach VCM_AIDIFRESISTANCE;					
		}; 
	};		
};
*/