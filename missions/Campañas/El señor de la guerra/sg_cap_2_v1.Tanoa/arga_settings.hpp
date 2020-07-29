/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

#define NAME "Capítulo II"                  // Colocar nombre de mision
#define COMPLETE_NAME "Capítulo II - El Señor de la Guerra v1"  // Nombre y versión de la misión
#define IMAGE "imgs\portada.paa"                    // Colocar nombre y extension de la imagen de portada, ej "core\imgs\portada.jpg"
#define DESCRIPTION "Obtener información y capturar al coronel"                              // Colocar descripcion de la mision entre las comillas

author = "Maxi e Ignacio";                                    // Editor (Pone tu nombre)
IMG_LOGO = "imgs\logo.paa";                         // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#44CC00";                            // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 1;                                    // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "El Señor de la Guerra";
INTRO_PERSONALIZADA = 1;                            // 1 Si la deseas cargar una intro personalizada (propia)
                                                    // y en el parametro INTRO la dirección del archivo entre comillas
                                                    // EJ. INTRO_PERSONALIZADA = 1; INTRO = "scripts\intro_propia.sqf";
INTRO = "scripts\intro_3.sqf";                                          // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 2000;
MIN_DIST_VISION = 800;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;          // Equipamiento guardado en arsenal virtual
ACTIVAR_COMPUTADORA_ARTILLERIA = 1;                 // Habilita computadora artilleria poner true. Para que no aparezca poner false
ACTIVAR_ROL_AUTOMATICO = 0;                         // Habilita la carga de rol al entrar a la misión por descripción de rol
                                                    // Para verificar que los roles estan bien escritos activar todas las IAs y entrar
ACTIVAR_INSIGNIA_AUTOMATICO = 1;                    // Añadir a arga_settings
INSIGNIA_IR = 0;                                    // establece si las insignias son IR o normales

/* 
EQUIPAMIENTO
    Camuflajes disponibles:          Tipos disponibles:
       - Bosque                        - Multicam 
       - Desierto                      - Marpat
       - Selva                         - Liso
       - Negro

       - Personalizado (se debe ingresar mas abajo la clase del uniforme, chaleco, casco y mochila)
       - No editar (no se le modificara ninguna de las 4 cosas al jugador, solo arma y equipo interno)

         Las opciones Personalizada y No editar pueden llevar a comportamientos inesperados.
         Por lo que el editor queda a cargo de checkear y revisar el correcto funcionamiento.
*/
CAMUFLAJE = ["Negro", "Multicam"];
GAFAS_INICIALES = "arga_rhs_pm_negro";
UNIFORME_PERSONALIZADO = "";
CASCO_PERSONALIZADO = "";
CHALECO_PERSONALIZADO = "";
MOCHILA_PERSONALIZADO = "";
MOCHILA_CHICA_PERSONALIZADO = "";
////////////////////////////////////////////////////////////////////////////////

/* 
BRIEFING
    Cada elemento del array es un parrafo
    Ejemplo: ["Primer parrafo", "Segundo parrafo"] 
*/
CARACTER = "Oficial";
HORARIO = "1000hs";
FECHA = "27/07/2020";
CLIMA = "Viento y marea fuerte";
UBICACION = "Fiji/Tanoa";
SITUACION = ["El ejercito coreano encontró nuestro ubicación y esta enviando tropas desde el norte y desde el mar. Debemos repeler el ataque y contra-atacar tres puntos claves en la isla que se encuentra al Sureste donde inteligencia cree que se puede encontrar el Coronel Min ho, el cual creemos que esta a cargo de toda la operación en la isla Fiji."];               
SITUACION_HISTORICA = ["Diciembre de 2019: una de las mayores crisis sanitarias a nivel mundial se desata en China. Corea del Norte ve en esto una oportunidad para tomar poder sobre otras tierras. Las grandes potencias estarían ocupadas tratando de salvar su crisis sanitaria, económica y social.", "Para facilitar el avance y movilización de sus tropas, Corea decide ofrecer ayuda a distintas islas. Entre ellas se encuentran, las islas de Tanoa, Altis y Ruegen.","Una vez establecidas bases militares en las islas y una primera movilización de tropas, la OTAN empiezan a sospechar de los movimientos del pequeño rojo.", "Al mismo tiempo, Rusia recibe información de sus espías en China. Ellos afirmaban que China estaba brindando tropas, armamento y apoyo logístico a Corea del Norte. Rusia entonces, contacta con la OTAN debido a este movimiento inusual de armamento y deciden tomar cartas en el asunto.", "La OTAN y Rusia deciden intervenir y darle un plazo a Corea hasta marzo de 2020 para que retire sus tropas innecesarias en dichas islas. Llegó la fecha, pasó otro mes más y Corea no mostraba intenciones de retirar a nadie.", "En mayo de 2020 la coalición OTAN-Rusia reitera el pedido a China y Corea de retirar sus debidas tropas de las islas, estos piden plazo hasta Julio de 2020 y es concedido.", "Junio 2020: Ni un solo regimiento de Corea ni de China fue movilizado.", "Julio 2020: Las tropas empiezan a patrullar reiteradamente por los pueblos civiles y se reportan comportamientos agresivos hacia la población. Se espera lo peor.", "El equipo ArgA es contactado por Rusia para realizar operaciones específicas junto a la colación en las islas afectadas." ];     
EXTRACTO_INTELIGENCIA = ["El equipo de inteligencia analizo las notebooks obtenidas en la misión pasada y logramos identificar al coronel a cargo de la isla, sin embargo no pudimos descifrar que es lo que hacían con los civiles en sus laboratorios clandestinos, debido a esto necesitamos capturarlo. Además, sospechamos que el coronel responde a un superior inmediato fuera de la isla.", "<img image= 'imgs\minho.paa' width='323' height='323'/>"];
OBJETIVOS = ["Repeler el ataque", "Encontrar y capturar al Coronel Min ho", "Tomar control de la zona <marker name='conejo'>Conejo</marker> (Yaguar)", "Tomar control de la zona <marker name='manati'>Manatí</marker> (Yaguar)", "Tomar control de la zona <marker name='pinguino'>Pingüino</marker> (Cóndor)"];
RECURSOS = ["Aparecemos armados", "Mezcla de Armamento ruso y de ArgA", "Recibimos suministros", "2 Botes RHIB (Marcados en mapa de misión)", "3 Little Bird MH-6M", "1 Polaris DAGOR", "1 Polaris DAGOR (Mini-spike AT)", "2 Polaris DAGOR (XM312)"];
ENEMIGOS = ["Ejercito coreano bien entrenado", "Vehiculos blindados pesados", "Vehiculos blindados Medianos" ];
////////////////////////////////////////////////////////////////////////////////

/* IA - CONFIGURACION */
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
briefingName = COMPLETE_NAME;               // Nombre en briefing
onLoadMission = DESCRIPTION;                // Pie de carga
overviewText = DESCRIPTION;                 // Pie en seleccion de mision
overviewPicture = IMAGE;                    // Imagen en seleccion de mision
loadScreen = IMAGE;                         // Imagen en carga
////////////////////////////////////////////////////////////////////////////////

/* Log system */
DEBUG = 1;                                          // Habilita el modo debug
ENABLE_LOG_SYSTEM = 1;                              // Habilita el sistema de log
ENABLE_LOG_SYSTEM_ONLY_DEDICATED = 1;               // Habilita el sistema de log sólo si el servidor es dedicado (requiere ENABLE_LOG_SYSTEM = 1)
////////////////////////////////////////////////////////////////////////////////

/* Listas auxiliares */
AUXILIAR_ROLE_LIST = [["lider","Líder",34],["sub_lider","Sub Líder",35],["lider_peloton","Líder Pelotón",36],["ametrallador_m240","Ametrallador m240",37],["ametrallador_m249","Ametrallador m249",38],["granadero","Granadero",39],["granadero_bengalas","Granadero bengalas",40],["lanzador_at","Lanzador AT",41],["lanzador_aa","Lanzador AA",42],["tirador_fal","Tirador fal",43],["tirador_mk11","Tirador mk11",44],["francotirador","Francotirador",45],["ingeniero","Ingeniero",46],["observador","Observador",47],["piloto","Piloto",48],["radio_operador","Radio operador",49],["medico","Médico",50],["medico_combate","Médico de combate",51],["enfermero","Enfermero",52],["fusilero","Fusilero",53],["fusilero_ra","Fusilero RA",54],["entrenamiento","Entrenamiento",55],["desconocido","Desconocido",56],["lider","Cacique",1],["entrenamiento","Soldado",2],["sub_lider","teniente",3],["lider","Capitan",4],["sub_lider","Teniente ¹",5],["radio_operador","Radio operador",7],["lider_peloton","Lider de Escuadra",8],["fusilero","Fusilero",9],["ametrallador_m249","Ametrallador",13],["granadero","Granadero",15],["ingeniero","Ingeniero",17],["lanzador_at","Anti Tanque",19],["tirador_mk11","Tirador",22],["enfermero","Enfermero",24],["medico","Medico",25],["piloto","Piloto",62],["lanzador_at","AT",71],["ingeniero","Sombra Especialista",72],["medico","Sombra Medico",73],["fusilero","Sombra",74],["lider_peloton","Lider Sombra",75],["sub_lider","Teniente Primero",148],["lanzador_at","Fusilero AT",149],["lider","Lider",193],["lanzador_aa","AA",197],["radio_operador","Fusilero Ro",204],["ametrallador_m240","Ametrallador 762",213],["tirador_fal","Tirador Designado CP",228],["sub_lider","Sub Lider",238],["entrenamiento","Cabo Primero",314],["entrenamiento","Instructor",321],["entrenamiento","Soldado Primero",327],["entrenamiento","Cabo",328],["entrenamiento","Recluta",337],["entrenamiento","Sargento Primero",356],["entrenamiento","Aspirante",357],["fusilero_ra","Fusilero R/A",391],["tirador_mk11","Tirador Designado",394],["lider_peloton","Matrero",396],["ametrallador_m249","Ametrallador 556",401],["sub_lider","Pampa",422],["desconocido","PRUEBA 3",463],["desconocido","any",471],["lanzador_aa","Fusilero AA",495],["lider_peloton","Lider-Tirador",502],["sub_lider","SubLider",672],["entrenamiento","Comandante",739],["entrenamiento","Sargento",769],["entrenamiento","PRUEBA 1",831],["entrenamiento","PRUEBA 2",833],["entrenamiento","Teniente¹",932]];
ARGA_PLATOON_LIST = [["condor",["condor","cóndor"]],["yaguar",["yaguar","yaguarete","yaguareté"]]];
AVAILABLE_INSIGNIA_TYPES = ["arga","condor","yaguar","medico"];
BOX_ROLE_LIST = ["Ametrallador M240","Ametrallador M249","Capitan","Enfermero","Francotirador","Fusilero","Fusilero RA","Granadero","Granadero c/Bengalas","Ingeniero","Lanzador AA","Lanzador AT","Líder","Médico de Combate","Médico","Observador","Piloto","Radio Operador","Teniente","Tirador FAL","Tirador MK11"];
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
                         Realizado por |ArgA|MIV
*******************************************************************************/