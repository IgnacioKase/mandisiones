#define NAME "Mitigacion"
#define IMAGE "imgs\portada.jpg" // ej "imgs\portada.jpg"
#define DESCRIPTION "MAS ALLA DE LA GUERRA"

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
MAX_DIST_VISION = 4000;
GAFAS_INICIALES = "";
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "Oficial";
HORARIO = "0520";
FECHA = "08/03/1993";
CLIMA = "Despejado";
UBICACION = "Sector West UNPA, Croacia (Vihrolati).";
SITUACION = ["Tras la disolución del JNA, la fuerzas de la nueva Serbia mantienen un leve control en la zona, pese a esto las persecuciones étnicas aumentan de parte de grupos serbios, lo que probablemente detonara la decisión Croata de contraatacar. Para evitar que escale el conflicto, se nos destinó a dirigirnos a las poblaciones en el extremo SE del sector marcadas en mapa, donde aún se encuentra gran densidad de población croata y protegerla de agresiones de parte de los serbios.",  "Para completar la tarea aprovecharemos la noche que adicionada al nuevo régimen de pocas precipitaciones, nos permitirá utilizar de manera segura el vado que minamos posterior al paso de los Canadienses meses atrás. El convoy se encuentra cerca de la orilla a la espera de la limpieza del paso.", "Poseemos marcas de inteligencia de posiciones fijas de los Serbios."];               
MISION = ["Nuestras ordenes son cruzar al sector SE y asegurar la integridad de los civiles ante cualquier agresión de parte de los serbios. No hay enemigos definidos, solo tenemos permitido el fuego posterior a recibirlo o al verificar agresión potencial contra civiles, esta permitido el desarme de tropas serbias en sectores de población civil croata.", "Posterior a esto, se debe controlar al menos 1 de los 2 puertos al Echo de la zona para permitir la fluida llegada de ayudas humanitarias. También controlaremos el ingreso o egreso de tropas serbias al establecer 3 puntos fuertes al November del Área operacional, cualquier ingreso debe ser advertido y detenido. Precaución ante cualquier indicio de hostilidad."];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Asegurar la integridad de los civiles en las poblaciones Hanski y Kirkonkyla, averiguar estado de la población en Eerikkala.", "Capturar al menos uno de los 2 puertos Oscar y Mike, evitar dañar las instalaciones.", "Mantener puntos de control en la marcas establecidas."];
RECURSOS = ["1 VCTP.", "1 BTR 70", "1 M113.", "5 UNIMOG, 1 Médico y 1 Logistico.", "1 Vehículo Liviano.", "2 UH-1."];
ENEMIGOS = ["Infantería motorizada.", "Posibles blindados de apoyo", "Nidos AA fijos."];
////////////////////////////////////////////////////////////////////////////////
//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 1;
DESACTIVAR_TODO_BLUFOR = 0;
DIFICULTAD_IA_PERSONALIZADA = 1;
AIMING_ACCURACY = 0.15; //precision de apuntado
AIMING_SHAKE = 0.70; 	//dispersión de apuntado
AIMING_SPEED = 0.2; 	//velocidad de apuntado
SPOT_DISTANCE = 0.3; 	//distancia de avistamiento
SPOT_TIME = 0.4; 		//tiempo de avistamiento
COURAGE = 0.25; 		//coraje
RELOAD_SPEED = 0.20; 	//velocidad de recarga
COMMANDING = 0.75; 		//liderazgo
////////////////////////////////////////////////////////////////////////////////