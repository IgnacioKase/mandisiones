#define NAME "Tormenta del Dorado"
#define IMAGE "imgs\portada.jpg" // ej "imgs\portada.jpg"
#define DESCRIPTION "Mision No Oficial - Kuwait"

author = "Cbo Shaggy";                            // Editor
onLoadName = NAME;	                    // Nombre de carga
briefingName = NAME;                    // Nombre en briefing
onLoadMission = DESCRIPTION;            // Pie de carga
overviewText = DESCRIPTION;             // Pie en seleccion de mision
overviewPicture = IMAGE;                // Imagen en seleccion de mision
loadScreen = IMAGE;                     // Imagen en carga
IMG_LOGO = "imgs\logo.paa"              // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                        // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "";
MAX_DIST_VISION = 2000;
GAFAS_INICIALES = "";
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "0930";
FECHA = "13/2/1991";
CLIMA = "Nublado, Bruma densa";
UBICACION = "Isla Failaka, Kuwait";
SITUACION = ["Como los Marines del sector, debemos rearmarnos con munición, y embarcar en los vehículos recientemente descargados por los C-130, así como repostar el cobra. Posterior nuestro objetivo es dirigirnos a las poblaciones de Paraiso y Somato, al SE y S, ubicar los 2 puntos donde se escondio oro y traerlo a la base."];               
MISION = ["En represalia a la invasión de Kuwait por Irak, se formo una coalición liderara por EEUU, fuimos desplegados en las Operaciones Escudo del desierto, ahora el cambio en la estrategia a la Operación Sable del Desierto nos permitirá iniciar la ofensiva sobre la tropas Iraquíes y la recuperación del Estado de Kuwait.","Como respuesta interna Kuwait escondió sus reservas de oro en la isla Failaka. Al enterarse de ello, Sadam Husein ordeno la invasión de la isla por sus fuerzas personales de la Guardia Republicana, las cuales los últimos 2 meses se encontraron allanando toda la isla.","Debido a solo la presencia de una base aérea en la isla nuestro objetivo principal luego de la captura la misma es el de encontrar el oro en las posiciones señaladas por funcionarios que escaparon de la invasión y devolverlo a la base aérea para su transporte.","Habiendo ya cumplido la primer tarea de la captura de la base aérea, nos encontramos en la misma, desde donde se desplegaran fuerzas Aerotransportadas con anfibias de la marina en el Echo y los marines en el Whisky de la Isla en busca de los sectores claves."];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Recoger las cajas con el oro", "Transportarlas a la Base Aérea"];
RECURSOS = ["3 Hummves artillados", "1 Humvee Medico", "1 M2 Bradley", " 1 AH-1 Cobra",  "2 Vehiculos de transporte capturados","Transportes Logistica capturados"];
ENEMIGOS = ["uerzas Republicanas de Irak, con leve apoyo de vehículos blindados"];
////////////////////////////////////////////////////////////////////////////////
//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 1;
DESACTIVAR_TODO_BLUFOR = 0;
DIFICULTAD_IA_PERSONALIZADA = 0;
AIMING_ACCURACY = 0.2; //precision de apuntado
AIMING_SHAKE = 0.99; 	//dispersión de apuntado
AIMING_SPEED = 0.1; 	//velocidad de apuntado
SPOT_DISTANCE = 0.3; 	//distancia de avistamiento
SPOT_TIME = 0.5; 		//tiempo de avistamiento
COURAGE = 0.25; 		//coraje
RELOAD_SPEED = 0.25; 	//velocidad de recarga
COMMANDING = 0.75; 		//liderazgo
////////////////////////////////////////////////////////////////////////////////