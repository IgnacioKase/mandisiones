/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. Buitre V3"
#define IMAGE "imgs\portada.paa"
#define DESCRIPTION "Capturar Kiril Sudakov Vivo"

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

MAX_DIST_VISION = 10000;
GAFAS_INICIALES = "arga_rhs_pm_negro"; //arga_rhs_pm_negro
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "Misión Chota";
HORARIO = "0530 hrs";
FECHA = "24/04/2020";
CLIMA = "Despejado";
UBICACION = "Altis";
SITUACION = ["Un ex agente de la KGB, Kiril Sudakov, esta ayudando a las fuerzas insurgentes de Altis. Proporcionándoles equipos, contactos y tácticas para así expulsar a la OTAN. Hace unos días recibimos imágenes satelitales de la zona Norwhiskey de la isla donde vimos una gran concentración de insurgentes, creemos que Kiril podría estar entre ellos. Lo malo es que la zona esta protegida por Anti-Aéreos por lo que el equipo Cóndor saltará tras las líneas enemigas para buscarlo y capturarlo, mientras Yaguar con ayuda de CAS abre un corredor aéreo para extraer a Kiril una vez capturado."];
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Capturar Kiril Sudakov Vivo.", "Abrir un corredor aereo.", "Limpiar la zona"];
RECURSOS = ["Zona de Briefing", "Aparecemos Armados", "Arsenal limitado", "C-130H", "2 Gripen", "2 UH-60M", "Wiesel 2 (ATGM)", "Wiesel 2 (MK20)", "4 Humvee (M2)", "1 Humvee (Médico)", "2 M1078A1P2-B (M2)"];
ENEMIGOS = ["Insurgentes bien entrenados", "ZSU-35 Tigris", "ZSU-23-4V", "Vehículos pesados y medianos"];
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