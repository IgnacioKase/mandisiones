/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. Martillo"
#define IMAGE "imgs\portada.paa"
#define DESCRIPTION "Eliminar la chatarra Irani"

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
NOMBRE_CAMPANIA = "";

MAX_DIST_VISION = 5000;
GAFAS_INICIALES = "";
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "1300hs";
FECHA = "25/03/2020";
CLIMA = "Despejado";
UBICACION = "Anizay";
SITUACION = ["El ejercito irani ha abastecido a los insurgentes de Anizay con tanques y artillería pesada para intentar sacarnos de la zona. Esta ultima semana tuvimos que dejar dos puestos de avanzada que teníamos cerca de la población por el constante bombardeo a nuestras tropas. Recientemente llego la 1.ª División de Caballería para avanzar sobre los puestos de la insurgente con todo nuestro potencial de fuego."];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Eliminar la chatarra Irani"];
RECURSOS = ["Aparecemos Armados", "5 M1 Abrams", "5 Bradley", "5 IAV Stryker", "1 M1078 Special Forces"];
ENEMIGOS = ["Guerrilleros", "Artilleria", "Vehículo Medianos", "Vehículos Pesados"];
////////////////////////////////////////////////////////////////////////////////

//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 1;
DESACTIVAR_TODO_BLUFOR = 1;
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