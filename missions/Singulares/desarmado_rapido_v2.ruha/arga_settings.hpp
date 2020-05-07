/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. Desarmado Rápido V2"
#define IMAGE "imgs\portada.paa"                   
#define DESCRIPTION "Destruir los arsenales y liberar las zonas"                  

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

CAMUFLAJE = ["Desierto", "Marpat"];
GAFAS_INICIALES = "";
UNIFORME_PERSONALIZADO = "";
CASCO_PERSONALIZADO = "";
CHALECO_PERSONALIZADO = "";
MOCHILA_PERSONALIZADO = "";
MOCHILA_CHICA_PERSONALIZADO = "";
STAND_MEDICO = "standMedico";
STAND_INGENIERO = "standIngeniero";
STAND_PILOTO = "standPiloto";

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "0330hrs";
FECHA = "06/05/2020";
CLIMA = "Despejado";
UBICACION = "Ruha";
SITUACION = ["Las fuerzas militares en Ruha estan descontroladas luego del golpe de estado. Atacaremos sus arsenales y puntos fuertes para evitar que sigan con sus ataques indiscriminados en la zona.", "Se desplegarán 4 equipos, designados por: Azul, Verde, Violeta y Amarillo, además de comandancia y un equipo de pilotos para el transporte. Inicialmente cada grupo tiene su punto de despliegue, algunos con LZ otros con salto. Luego del despliegue inicial y toma de objetivos, comandancia tendrá libertad para designar los próximos.", "Detalle del movimiento de Violeta y Azul, estos despliegan en el mismo helicoptero, primero se deja a Azul en la LZ marcada y se dirigira a Juliett, luego el CH-47F se dirigirá al salto de Violeta, para que este tome Echo", "Detalle del movimiento de Verde y Amarillo, estos despliegan en el mismo helicoptero, primero se pasa por la zona de salto de Verde, y este tomará Charlie y Bravo, luego el CH-47F se dirigirá a la LZ de Amarillo donde este equipo tomará Alpha.", "Se inicia en movimiento y helicópteros en el aire. Debemos actuar y desplazarnos rápido. No se espera demasiada resistencia en cada punto. Los líderes de cada escuadra solo poseen radio corta, por lo que aereo tendrá que hacer de enlace."];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Alpha: Despejar y destruir arsenal", "Bravo: Despejar y destruir Alcas", "Charlie: despejar", "Delta: Despejar", "Echo: Despejar y destruir arsenal.", "Foxtrot: Liberar bloqueo de ruta", "Golf: Despejar y destruir arsenal.", "Hotel: Despejar y destruir arsenal.", "India: Despejar y destruir arsenal.", "Juliett: Despejar y destruir arsenal."];
RECURSOS = ["Aparecemos armados y en movimiento", "Arsenal en base", "1 UH-60M", "2 CH-47F (Aparecemos en el aire sobre estos)", "2 Little bird", "2 UH-60M (Médicos)", "Camiones de combustible, reparación y munición en helipuerto."];
ENEMIGOS = ["Fuerzas armadas de Ruha", "Vehiculos tipo BTR y UAZ artilladas", "Ametralladoras montadas"];
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
