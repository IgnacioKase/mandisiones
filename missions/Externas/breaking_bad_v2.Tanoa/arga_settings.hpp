/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME Op. Operación Braking Bad Fin del camino
#define VERSION v2                      // Versión de la misión
#define IMAGE "imgs\portada.paa"        // Colocar nombre y extension de la imagen de portada, ej "imgs\portada.jpg"
#define DESCRIPTION "Capturar al Pibe Jose"

author = "Roke";                        // Editor (Pone tu nombre)
onLoadName = NAME;	                    // Nombre de carga
briefingName = NAME VERSION;          // Nombre en briefing
onLoadMission = DESCRIPTION;            // Pie de carga
overviewText = DESCRIPTION;             // Pie en seleccion de mision
overviewPicture = IMAGE;                // Imagen en seleccion de mision
loadScreen = IMAGE;                     // Imagen en carga
IMG_LOGO = "imgs\logo.paa"              // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                        // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "";
INTRO = 2;                              // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 4000;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1; // Equipamiento guardado en arsenal virtual
PERMITIR_COMPUTADORA_ARTILLERIA = 1;  // Habilita computadora artilleria poner true. Para que no aparezca poner false
PERMITIR_ROL_AUTOMATICO = 0;

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

CAMUFLAJE = ["Selva", "Marpat"];
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
HORARIO = "12:00 Hs 20 junio 2018";
FECHA = "";
CLIMA = "";
UBICACION = "Tanoa";
SITUACION = ["Los Buzos tacticos tienen la tarea de infiltrarse por la zonapantanosa en busca del Pibe Jose mientras la Fard asalta el punto Qubet para atraer la atencion de las fuerzas enemigas. Mientras tanto Alacran asalta el punto Julient donde se distribuyen los medicamentos adulterados. una vez asegurado y capturado el Pibe Jose la Fard y los Buzos Tacticos se unirán a Alacrán para asaltar su fabricaen el punto Mike."];               
SITUACION_HISTORICA = ["Tras desbaratar Al cartel Narcotraficante y capturar a su líder El Negro Walter que operaban en United Sahrani. Descubrimos que tiene una mano derecha operando en la isla de Tanoa. El alias de su mano derecha El pibe Jose, se esconde en los pantanos del punto denominado Quebet. su fabrica se encuentra en punto Mike y distribuye en el punto Juliet. como en la primera oportunidad, contaremos con las fuerzas especiales: Buzos tácticos. Fard de la fuerza aérea y Alacrán de Gendarmeria."];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Capturar al Pibe Jose", "Atacar el punto Juliet", "Atacar el punto Mike", "Detonar cualquier arsenal enemigo"];
RECURSOS = ["2 UH1H Gunship de ataque", "2 Little Bird", "1 M1240 (M2)", "1 Humvee (Tow)", "3 Humvee (m2)", "2 Lanchas MK V Soc", "Camion de reparacion", "Camion amunicionador"];
ENEMIGOS = ["Guerrilla bien armada", "BTR 70", "Pick Up Artilladas", "Tanque T80"];
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
