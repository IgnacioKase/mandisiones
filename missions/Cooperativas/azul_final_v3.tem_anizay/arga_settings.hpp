/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

#define NAME "Op. Azul Caído Final V3"
#define IMAGE "imgs\portada.paa"                   
#define DESCRIPTION "Repeler el ataque y contraatacar."                  

author = "Maxi e Ignacio";                       
onLoadName = NAME;	                    
briefingName = NAME;                      
onLoadMission = DESCRIPTION;                     
overviewText = DESCRIPTION;                      
overviewPicture = IMAGE;   
loadScreen = IMAGE;        
IMG_LOGO = "imgs\logo.paa"              
COLOR_AUTOR = "#44CC00";               
ES_CAMPANIA = 0;                        
NOMBRE_CAMPANIA = "NO ES UNA CAMPAÑA";
INTRO = 2                               
MAX_DIST_VISION = 2000;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//EQUIPAMIENTO
// Camuflajes disponibles:          Tipos disponibles:
//      - Bosque                        - Multicam 
//      - Desierto                      - Marpat
//      - Selva
//
//      - Personalizado (se debe ingresar mas abajo la clase del uniforme, chaleco, casco y mochila)
//      - No editar (no se le modificara ninguna de las 4 cosas al jugador, solo arma y equipo interno)
//
//        Las opciones Personalizada y No editar pueden llevar a comportamientos inesperados.
//        Por lo que el editor queda a cargo de checkear y revisar el correcto funcionamiento.

CAMUFLAJE = ["No editar", "Marpat"];
GAFAS_INICIALES = "rhsusf_shemagh2_gogg_tan";
UNIFORME_PERSONALIZADO = "rhs_uniform_cu_ocp";
CASCO_PERSONALIZADO = "rhsusf_ach_helmet_headset_ocp";
CHALECO_PERSONALIZADO = "rhsusf_mbav_rifleman";
MOCHILA_PERSONALIZADO = "B_Kitbag_cbr";
MOCHILA_CHICA_PERSONALIZADO = "rhsusf_falconii_coy";
STAND_MEDICO = "standMedico";
STAND_INGENIERO = "standIngeniero";
STAND_PILOTO = "standPiloto";

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "Cooperativa";
HORARIO = "0430hrs";
FECHA = "29/05/2020";
CLIMA = "Despejado";
UBICACION = "Anizay";
SITUACION = ["El ejercito de liberación de Anizay fingió una retirada para tender una trampa a la ONU. Estos, habían decidido aprovechar el momento para ayudar a los civiles y avanzar en la zona, pero el ejercito de liberación los tomó por sorpresa y cayeron en la boca del lobo.", "Hace 8 horas que los grupos de la ONU se encuentran bajo fuerte ataque en los FOB Obeh y Nauzad. En Obeh se encuentran prácticamente sin recursos. La ONU quiso coordinar un reabastecimiento desde Nuazad hasta Obeh pero este se imposibilitó por bloqueos en la ruta principal que conecta ambos FOB (Bloqueo Charlie y Bloqueo Delta).", "Debido a que la situación se esta saliendo de control los Rangers que están en la base OTAN entraran en la zona para dar soporte."];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Repeler ataque de FOB Obeh (ONU)", "Repeler ataque de FOB Nauzad (ONU)", "Despejar Bloqueo Charlie (Ranger)", "Despejar Bloqueo Delta (Ranger)", "Reabastecer Obeh con los camiones de Nauzad", "Destruir antiaéreo de Foxtrot", "Despejar Echo", "Capturar alto mando del Ejercito de liberación en Zulu"];
RECURSOS = ["Aparecemos armados", "Cajas con munición, misceláneos y equipo médico", "1 UH-60", "1 UH-60 (Médico)", "2 CH-47F", "1 MH-6M", "1 A-29 Super Tucano", "4 M1240 (M2)", "3 M1230 (M2)", "2 M113A3 (M2)", "1 M113A3 (Mev)", "2 M1025A2 (M2)", "1 M1097A2 (2D)"];
ENEMIGOS = ["Ejercito de liberación (bien armados y entrenados)", "Vehiculos blindados pesados", "Vehiculos blindados Medianos", "Vehiculos ligeros"];
////////////////////////////////////////////////////////////////////////////////

//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 1; // 0 Permite la IA del Grupo de los jugadores, 1 la desactiva.
DESACTIVAR_TODO_BLUFOR = 1; // 0 Permite la IA del Blufor, 1 la desactiva.
DIFICULTAD_IA_PERSONALIZADA = 0;
AIMING_ACCURACY = 0.01; //precision de apuntado
AIMING_SHAKE = 0.99; 	//dispersión de apuntado
AIMING_SPEED = 0.1; 	//velocidad de apuntado
SPOT_DISTANCE = 0.3; 	//distancia de avistamiento
SPOT_TIME = 0.5; 		//tiempo de avistamiento
COURAGE = 0.25; 		//coraje
RELOAD_SPEED = 0.25; 	//velocidad de recarga
COMMANDING = 0.75; 		//liderazgo
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
