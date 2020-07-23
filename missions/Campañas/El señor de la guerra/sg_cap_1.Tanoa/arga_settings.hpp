/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME Capítulo I           // Colocar nombre de mision (un espacio despues de Op. y sin comillas ni nada)
#define VERSION v1                      // Versión de la misión
#define IMAGE "imgs\portada.paa"            // Colocar nombre y extension de la imagen de portada, ej "core\imgs\portada.jpg"
#define DESCRIPTION "Obtener información y capturar los altos mandos"                      // Colocar descripcion de la mision entre las comillas

author = "Maxi e Ignacio";                  // Editor (Pone tu nombre)
IMG_LOGO = "imgs\logo.paa";                 // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#44CC00";                    // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 1;                            // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "El Señor de la Guerra";
INTRO = 2;                                  // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 4000;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;  // Equipamiento guardado en arsenal virtual
ACTIVAR_COMPUTADORA_ARTILLERIA = 1;         // Habilita computadora artilleria poner true. Para que no aparezca poner false
ACTIVAR_ROL_AUTOMATICO = 1;                 // Habilita la carga de rol al entrar a la misión por descripción de rol
                                            // Para verificar que los roles estan bien escritos activar todas las IAs y entrar
                                            
DEBUG = 1;                                  // Habilita el modo debug
ENABLE_LOG_SYSTEM = 1;                      // Habilita el sistema de log
ENABLE_LOG_SYSTEM_ONLY_DEDICATED = 1;       // Habilita el sistema de log sólo si el servidor es dedicado (requiere ENABLE_LOG_SYSTEM = 1)

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
GAFAS_INICIALES = "arga_rhs_pm_negro";
UNIFORME_PERSONALIZADO = "";
CASCO_PERSONALIZADO = "";
CHALECO_PERSONALIZADO = "";
MOCHILA_PERSONALIZADO = "";
MOCHILA_CHICA_PERSONALIZADO = "";

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "Oficial";
HORARIO = "0640hrs";
FECHA = "21/07/2020";
CLIMA = "Despejado";
UBICACION = "Fiji/Tanoa";
SITUACION = ["Es la primer operación sobre las islas, Corea desconoce sobre nuestra presencia en Fiji, aun así tienen fuertes patrullas en la zona. Tendremos dos objetivos en esta primera operación.", "Inteligencia informó sobre laboratorios clandestinos coreanos en Fiji. Por lo que aprovechando nuestro anonimato en la zona, Cóndor realizará un ataque sorpresa al punto Liebre, principal sospechoso.", "Mientras tanto, Yaguar, realizará un asalto a un punto clave de logística de los coreanos en la zona. Designado como Orca.", "En ambos objetivos deberán capturar a los oficiales de alto rango, recuperar información para inteligencia (laptos, archivos, etc).", "Ambas escuadras despliegan en la selva equipados ya con lo necesario para la operación. Para el repliegue se les informará horas antes de la operación sobre la ubicación de los vehículos de escape."];               
SITUACION_HISTORICA = ["Diciembre de 2019: una de las mayores crisis sanitarias a nivel mundial se desata en China. Corea del Norte ve en esto una oportunidad para tomar poder sobre otras tierras. Las grandes potencias estarían ocupadas tratando de salvar su crisis sanitaria, económica y social.", "Para facilitar el avance y movilización de sus tropas, Corea decide ofrecer ayuda a distintas islas. Entre ellas se encuentran, las islas de Tanoa, Altis y Ruegen.","Una vez establecidas bases militares en las islas y una primera movilización de tropas, la OTAN empiezan a sospechar de los movimientos del pequeño rojo.", "Al mismo tiempo, Rusia recibe información de sus espías en China. Ellos afirmaban que China estaba brindando tropas, armamento y apoyo logístico a Corea del Norte. Rusia entonces, contacta con la OTAN debido a este movimiento inusual de armamento y deciden tomar cartas en el asunto.", "La OTAN y Rusia deciden intervenir y darle un plazo a Corea hasta marzo de 2020 para que retire sus tropas innecesarias en dichas islas. Llegó la fecha, pasó otro mes más y Corea no mostraba intenciones de retirar a nadie.", "En mayo de 2020 la coalición OTAN-Rusia reitera el pedido a China y Corea de retirar sus debidas tropas de las islas, estos piden plazo hasta Julio de 2020 y es concedido.", "Junio 2020: Ni un solo regimiento de Corea ni de China fue movilizado.", "Julio 2020: Las tropas empiezan a patrullar reiteradamente por los pueblos civiles y se reportan comportamientos agresivos hacia la población. Se espera lo peor.", "El equipo ArgA es contactado por Rusia para realizar operaciones específicas junto a la colación en las islas afectadas." ];     
EXTRACTO_INTELIGENCIA = ["Se filtró información acerca de un mantenimiento en las comunicaciones de Fiji en este día a las 7:20, el cuál tendrá una brecha de 5 minutos.Por lo tanto es una oportunidad perfecta para coordinar los ataques a esta hora y así lograr un retraso en los refuerzos coreanos." "Se encontró información sobre altos mandos en la zona, militares de Fiji que simpatizan con los ideales norcoreanos, se muestra una fotografía de los capitanes." ];
OBJETIVOS = ["Atacar el centro logístico <marker name='orca'>Orca</marker> (Yaguar)", "Demoler armamento encontrado en <marker name='orca'>Orca</marker> (Yaguar)", "Asaltar laboratorio clandestino <marker name='liebre'>Liebre</marker> (Cóndor)", "Desmantelar el laboratorio (Cóndor)", "Capturar información (laptos, servidores, archivos, etc) (Cóndor y Yaguar)", "Capturar oficiales de alto rango (Cóndor y Yaguar)", "Terminar en el punto indicado como <marker name='fin'>Fin</marker>"];
RECURSOS = ["Aparecemos armados", "Mezcla de Armamento ruso y de ArgA" ];
ENEMIGOS = ["Ejercito coreano bien entrenado", "Vehiculos blindados pesados", "Vehiculos blindados Medianos" ];
////////////////////////////////////////////////////////////////////////////////

//IA - CONFIGURACION
DESACTIVAR_IA_DE_GRUPO = 1; // 0 No desactiva la IA del Grupo de los jugadores, 1 la desactiva.
DESACTIVAR_TODO_BLUFOR = 1; // 0 No desactiva la IA del Blufor, 1 la desactiva.
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

/* Modificar desde los define arriba de todo, no tocar directamente */
onLoadName = NAME;	                        // Nombre de carga
briefingName = NAME VERSION;                // Nombre en briefing
onLoadMission = DESCRIPTION;                // Pie de carga
overviewText = DESCRIPTION;                 // Pie en seleccion de mision
overviewPicture = IMAGE;                    // Imagen en seleccion de mision
loadScreen = IMAGE;                         // Imagen en carga
////////////////////////////////////////////////////////////////////////////////

AUXILIAR_ROLE_LIST = [["lider","Líder",34],["sub_lider","Sub Líder",35],["lider_peloton","Líder Pelotón",36],["ametrallador_m240","Ametrallador m240",37],["ametrallador_m249","Ametrallador m249",38],["granadero","Granadero",39],["granadero_bengalas","Granadero bengalas",40],["lanzador_at","Lanzador AT",41],["lanzador_aa","Lanzador AA",42],["tirador_fal","Tirador fal",43],["tirador_mk11","Tirador mk11",44],["francotirador","Francotirador",45],["ingeniero","Ingeniero",46],["observador","Observador",47],["piloto","Piloto",48],["radio_operador","Radio operador",49],["medico","Médico",50],["medico_combate","Médico de combate",51],["enfermero","Enfermero",52],["fusilero","Fusilero",53],["fusilero_ra","Fusilero RA",54],["entrenamiento","Entrenamiento",55],["desconocido","Desconocido",56],["lider","Cacique",1],["entrenamiento","Soldado",2],["sub_lider","teniente",3],["lider","Capitan",4],["sub_lider","Teniente ¹",5],["radio_operador","Radio operador",7],["lider_peloton","Lider de Escuadra",8],["fusilero","Fusilero",9],["ametrallador_m249","Ametrallador",13],["granadero","Granadero",15],["ingeniero","Ingeniero",17],["lanzador_at","Anti Tanque",19],["tirador_mk11","Tirador",22],["enfermero","Enfermero",24],["medico","Medico",25],["piloto","Piloto",62],["lanzador_at","AT",71],["ingeniero","Sombra Especialista",72],["medico","Sombra Medico",73],["fusilero","Sombra",74],["lider_peloton","Lider Sombra",75],["sub_lider","Teniente Primero",148],["lanzador_at","Fusilero AT",149],["lider","Lider",193],["lanzador_aa","AA",197],["radio_operador","Fusilero Ro",204],["ametrallador_m240","Ametrallador 762",213],["tirador_fal","Tirador Designado CP",228],["sub_lider","Sub Lider",238],["entrenamiento","Cabo Primero",314],["entrenamiento","Instructor",321],["entrenamiento","Soldado Primero",327],["entrenamiento","Cabo",328],["entrenamiento","Recluta",337],["entrenamiento","Sargento Primero",356],["entrenamiento","Aspirante",357],["fusilero_ra","Fusilero R/A",391],["tirador_mk11","Tirador Designado",394],["lider_peloton","Matrero",396],["ametrallador_m249","Ametrallador 556",401],["sub_lider","Pampa",422],["desconocido","PRUEBA 3",463],["desconocido","any",471],["lanzador_aa","Fusilero AA",495],["lider_peloton","Lider-Tirador",502],["sub_lider","SubLider",672],["entrenamiento","Comandante",739],["entrenamiento","Sargento",769],["entrenamiento","PRUEBA 1",831],["entrenamiento","PRUEBA 2",833],["entrenamiento","Teniente¹",932]];
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
                         Realizado por |ArgA|Vultur|Cbo¹
*******************************************************************************/