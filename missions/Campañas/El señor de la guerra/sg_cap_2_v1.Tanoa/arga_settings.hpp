/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME Capítulo II                            // Colocar nombre de mision (un espacio despues de Op. y sin comillas ni nada)
#define VERSION Capítulo II - El Señor de la Guerra v6 // Versión de la misión
#define IMAGE "imgs\portada.paa"            // Colocar nombre y extension de la imagen de portada, ej "imgs\portada.jpg"
#define DESCRIPTION "Obtener información y capturar al coronel"                      // Colocar descripcion de la mision entre las comillas

author = "Maxi e Ignacio";                  // Editor (Pone tu nombre)
IMG_LOGO = "imgs\logo.paa";                 // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#44CC00";                    // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                            // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "El Señor de la Guerra";
INTRO = 2;                                  // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 2000;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;  // Equipamiento guardado en arsenal virtual
PERMITIR_COMPUTADORA_ARTILLERIA = 1;        // Habilita computadora artilleria poner true. Para que no aparezca poner false
PERMITIR_ROL_AUTOMATICO = 0;                // Habilita la carga de rol al entrar a la misión por descripción de rol

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

/* Modificar desde los define arriba de todo, no tocar directamente */
onLoadName = NAME;	                        // Nombre de carga
briefingName = NAME VERSION;                // Nombre en briefing
onLoadMission = DESCRIPTION;                // Pie de carga
overviewText = DESCRIPTION;                 // Pie en seleccion de mision
overviewPicture = IMAGE;                    // Imagen en seleccion de mision
loadScreen = IMAGE;                         // Imagen en carga

/*******************************************************************************
                         Realizado por |ArgA|Vultur|Cbo¹
*******************************************************************************/
