/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. Cordillera Rota V2"
#define IMAGE "imgs\portada.paa"                   
#define DESCRIPTION "Liberar la Cordillera"                  

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
MAX_DIST_VISION = 2500;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1; 

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "0630hrs";
FECHA = "29/04/2020";
CLIMA = "Despejado";
UBICACION = "Takistan";
SITUACION = ["El equipo November estaba en camino a llevar suministros y apoyo a la base de la ONU al sur de Takistan. En camino a su tarea recibimos una transmisión de ataque y perdimos comunicación con ellos. En mapa marcamos su ultima posición conocida. Al oeste de Takistan.", "La cordillera que separa el sur del centro del mapa fue tomada por los talibanes, imposibilitando el acceso a Base ONU. Equipo November se estaba encargando de liberar la zona. El Equipo India que se encuentra en Base EEUU tendrá que contactar con November para juntos liberar la cordillera y asi recuperar el paso al sur."];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Recuperar contacto con November", "Liberar la cordillera (todos los pasos deben ser liberados)", "Llegar a la base ONU"];
RECURSOS = ["Aparecemos Armados", "Arsenal limitado (munición)", "2 UH-60M", "1 UH-60M Médico", "2 CH-47F", "2 A-29 Super Tucano", "November desplegó con: 4 M1240 (M2), 2 M1239, 1 N1239A1 (Médico)"];
ENEMIGOS = ["Talibanes", "Vehiculos tipo btr y chatas artilladas", "Toda la zona centro y sur de Takistan es zona enemiga. Desconocemos sus posiciones exactas"];
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
                          Realizado por |ArgA|Ignacio
*******************************************************************************/
