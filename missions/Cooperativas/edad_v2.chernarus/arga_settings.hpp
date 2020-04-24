/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. Edad III"
#define IMAGE "imgs\portada.paa"
#define DESCRIPTION "Repeler el ataque"

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
GAFAS_INICIALES = ""; //arga_rhs_pm_negro
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "Oficial";
HORARIO = "0530 hrs";
FECHA = "23/04/2020";
CLIMA = "Despejado";
UBICACION = "Chernarus";
SITUACION = ["El equipo actual ArgA se encuentra en Chernarus, prestando sus servicios a las fuerzas locales para combatir contra los insurgentes. La situación se esta descontrolando, las fuerzas locales y ArgA no dan a basto. Comandancia pide ayuda a todos los veteranos ArgA para retomar el control en la zona. Pero no todo es trabajo, los veteranos muchos siguieron sus camino y se han distanciado, por lo tanto, una vez en Chernarus se tomarán unos días para ponerse al día y en situación.", "Se divisó múltiples unidades y vehículos cerca de la Base Mandarina. Se espera que ataquen pronto. Se ordena al equipo Mandarina a fortificarse en la zona para repeler el ataque. Mientras tanto el equipo Pomelo atacará una de las bases principales de los insurgentes para evitar que envíen refuerzos y llamar la atención para frenar el ataque a Base Mandarina."];
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Equipo de Base Mandarina debe fortificarse y defender la base.", "Equipo de Base Pomelo debe atacar la zona marcada en mapa con el fin de frenar el ataque y evitar los refuerzos."];
RECURSOS = ["Aparecemos Armados", "Arsenal limitado", "UH-1H (4 por base) (Oliva es médico)", "M1240 (M2) (4 por base)", "M1230A1 (Medevac)(Veh. de reparación) (1 por base)", "Morteros, vehículos de ammo y fuel, centros de reparación y médicos en base."];
ENEMIGOS = ["Insurgentes", "Vehículos ligeros, medianos y pesados"];
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