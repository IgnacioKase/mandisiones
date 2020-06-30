/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME "Op. Dividir el Crudo"                     // Colocar nombre de mision
#define IMAGE "imgs\portada.paa"        // Colocar nombre y extension de la imagen de portada, ej "imgs\portada.jpg"
#define DESCRIPTION "Tomar el refugio y suprimir la presencia enemiga alli"                  // Colocar descripcion de la mision entre las comillas

author = "Choqqo";                        // Editor (Pone tu nombre)
onLoadName = NAME;	                    // Nombre de carga
briefingName = NAME;                    // Nombre en briefing
onLoadMission = DESCRIPTION;            // Pie de carga
overviewText = DESCRIPTION;             // Pie en seleccion de mision
overviewPicture = IMAGE;                // Imagen en seleccion de mision
loadScreen = IMAGE;                     // Imagen en carga
IMG_LOGO = "imgs\logo.paa";              // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                        // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "";
INTRO = 2;                              // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 3000;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1; // Equipamiento guardado en arsenal virtual
PERMITIR_COMPUTADORA_ARTILLERIA = true;  // Habilita computadora artilleria poner true. Para que no aparezca poner false
PERMITIR_ROL_AUTOMATICO = false;

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

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "0330hrs";
FECHA = "10/06/2004";
CLIMA = "Probablemente despejado";
UBICACION = "Kolgujev";
SITUACION = ["En la isla de Kolgujev, es ocupada por una base militar de la facción Rusa VMF , la cual les sirve de punto de re-abastecimiento para disputar la tenencia de Bjørnøya para mantener el control sobre las plataformas proliferaras de alta mar al norte de Noruega.", "Nuestra misión como miembros del grupo 'los Extranjeros' como siempre es sencilla: desequilibrar la balanza.", "Nuestro contratista nos brindo información, con la cual nuestros especialistas determinaron que en las coordenadas marcadas debemos plantar la suficiente carga para que el gas comprimido en la chimenea del volcán Sennaya pueda salir y quebrar la base de la laguna, para generar un cono adventicio y reactivar el volcán."];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Plantar en la zona cero con tiempo suficiente para evacuar al refugio", "Tomar el refugio y suprimir la presencia enemiga alli"];
RECURSOS = ["Ya salimos equipados, a ser certeros, a ser letales."];
ENEMIGOS = ["No se esperan vehículos blindados.", "No deberían encontrarse vehículos aéreos en la zona.", "Presencia naval enemiga."];
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
                         Realizado por |ArgA|Vultur|Cbo¹
*******************************************************************************/
