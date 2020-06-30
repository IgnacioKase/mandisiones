#define NAME "RESGUARDAR"
#define COMPLETE_NAME "RESGUARDAR v3"
#define IMAGE "imgs\portada.jpg" // ej "imgs\portada.jpg"
#define DESCRIPTION "MAS ALLA DE LA GUERRA"

author = "Cbo Shaggy";                  // Editor
onLoadName = NAME;	                    // Nombre de carga
briefingName = COMPLETE_NAME;           // Nombre en briefing
onLoadMission = DESCRIPTION;            // Pie de carga
overviewText = DESCRIPTION;             // Pie en seleccion de mision
overviewPicture = IMAGE;                // Imagen en seleccion de mision
loadScreen = IMAGE;                     // Imagen en carga
IMG_LOGO = "imgs\logo.paa"              // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 1;                        // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "MAS ALLÁ DE LA GUERRA";
MAX_DIST_VISION = 1500;
GAFAS_INICIALES = "";
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "Oficial";
HORARIO = "0920";
FECHA = "28/04/1995";
CLIMA = "Despejado";
UBICACION = "Croacia (Vihrolati).";
SITUACION = ["El sector está en un proceso avanzado de desmiliritarización, las fuerzas serbias poseen poco equipo y su base aérea tan solo funciona actualmente como cuartel. Nuestra tarea diaria consiste en supervisar la actividad serbia en sus diversos puestos, como también los canadienses hacen lo propio en el lado croata, varios kilómetros al oeste.", "Tenemos informes de ataques croatas contra posiciones serbias en otros sectores del país, pero no recibimos ningún informe de alerta por parte del alto mando de UNCRO. En contraste, se nos acaba de informar del retiro de las fuerzas canadienses del sector, quedando como única fuerza operativa."];          
MISION = ["Siendo parte del BEA 7 tenemos la tarea de supervisar todos los puestos de control de la línea de frente de las fuerzas serbias, y establecer puestos propios anexos a estos, nuestra tarea es mantener la posición y la paz en la zona.", "Precaución al salir de la línea de frente serbia marcada en mapa, podemos encontrar más campos minados."];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Establecernos en los puestos frontales de los serbios y vigilar su accionar.", "Mantener control de las posiciones."];
RECURSOS = ["1 VCTP.","1 M113.", "4 UNIMOG, 1 Médico y 1 Logistico.", "2 Vehículos Livianos.", "2 UH-1."];
ENEMIGOS = ["Ejercito Croata reagrupado en su frente."];
////////////////////////////////////////////////////////////////////////////////
//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 1;
DESACTIVAR_TODO_BLUFOR = 0;
DIFICULTAD_IA_PERSONALIZADA = 1;
AIMING_ACCURACY = 0.10; //precision de apuntado
AIMING_SHAKE = 0.80; 	//dispersión de apuntado
AIMING_SPEED = 0.2; 	//velocidad de apuntado
SPOT_DISTANCE = 0.4; 	//distancia de avistamiento
SPOT_TIME = 0.4; 		//tiempo de avistamiento
COURAGE = 0.25; 		//coraje
RELOAD_SPEED = 0.20; 	//velocidad de recarga
COMMANDING = 0.75; 		//liderazgo
////////////////////////////////////////////////////////////////////////////////