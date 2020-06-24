/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

#define NAME "Mapa de Entrenamiento ArgA Ligth"
#define COMPLETE_NAME "Mapa de Entrenamiento ArgA 23-06-2020 V2"
#define IMAGE "imgs\portada.paa"
#define DESCRIPTION "Escuela de infanteria Oscar Poltronieri"

author = "Maxi e Ignacio";
onLoadName = NAME;
briefingName = COMPLETE_NAME;
onLoadMission = DESCRIPTION;
overviewText = DESCRIPTION;
overviewPicture = IMAGE;
loadScreen = IMAGE;
IMG_LOGO = "imgs\logo.paa";
COLOR_AUTOR = "#76a8f7";
ES_CAMPANIA = 0;
NOMBRE_CAMPANIA = "";
INTRO = 3;
MAX_DIST_VISION = 4000;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;
CURATOR_WHITELIST = ["|ArgA|Ignacio|", "|ArgA|Maxi|", "|Sgt", "|Cpt", "|Tte", "|Cmd", "instructor", "subinstructor"];

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

CAMUFLAJE = ["Bosque", "Multicam"];
GAFAS_INICIALES = "";
UNIFORME_PERSONALIZADO = "";
CASCO_PERSONALIZADO = "";
CHALECO_PERSONALIZADO = "";
MOCHILA_PERSONALIZADO = "";
MOCHILA_CHICA_PERSONALIZADO = "";

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "";
HORARIO = "";
FECHA = "";
CLIMA = "";
UBICACION = "";
SITUACION = [""];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = [""];
RECURSOS = [""];
ENEMIGOS = [""];
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
