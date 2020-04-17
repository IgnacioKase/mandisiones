/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. Mercenarios fuera"
#define IMAGE "imgs\portada.jpg"
#define DESCRIPTION "Destruir el arsenal"

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

MAX_DIST_VISION = 4000;
GAFAS_INICIALES = "";
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "1715 hrs";
FECHA = "10/04/2020";
CLIMA = "Despejado";
UBICACION = "Malden 2035";
SITUACION = ["Tras años de descontento con el gobierno, la oposición ha contratado una fuerza privada para tomar dos ciudades principales de Malden. La ONU decidió mandar al equipo ArgA a contrarrestar este movimiento armado.", "Debemos destruir el arsenal que se encuentra marcado en la zona mas roja de La Trinité. Además limpiar lo mas posible ambas ciudades."];
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Destruir arsenal en la zona más roja de La Trinité", "Limpiar lo más posible los puntos marcados"];
RECURSOS = ["No aparecemos Armados", "Arsenal ilimitado", "1 CH-47F Médico", "1 AH-6M (Little bird artillado)", "2 M1240 (Camuflados) (Médicos y de reparación)", "2 M1220 (M2)", "2 M1025A2 (M2)", "2 M1097A2"];
ENEMIGOS = ["Mercenarios privados", "1 Helicóptero","Vehículos ligeros", "Vehículo Medios"];
////////////////////////////////////////////////////////////////////////////////

//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 0;
DESACTIVAR_TODO_BLUFOR = 0;
DIFICULTAD_IA_PERSONALIZADA = 0;
AIMING_ACCURACY = 0.01;
AIMING_SHAKE = 0.99; 	
AIMING_SPEED = 0.1; 	
SPOT_DISTANCE = 0.2; 	
SPOT_TIME = 0.5; 		
COURAGE = 0.25; 		
RELOAD_SPEED = 0.25; 	
COMMANDING = 0.75; 		
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/