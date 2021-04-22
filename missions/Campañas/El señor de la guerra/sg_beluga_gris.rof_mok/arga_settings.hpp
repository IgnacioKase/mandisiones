/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
#define NAME "Beluga Gris"
#define COMPLETE_NAME "Beluga Gris v1"
#define IMAGE "imgs\portada.jpg"                    // Colocar nombre y extension de la imagen de portada, ej "imgs\portada.jpg"
#define DESCRIPTION "Tomar la playa y sus cercanías"
CARACTER = "Oficial";                            // Tipos válidos: "Oficial", "No Oficial", "Entrenamiento", "Entrenamiento reclutas", "Entrenamiento rol", "Persistentes", "TVT"
author = "Maxi e Ignacio";                                    // Editor (Pone tu nombre)
AUTHOR_UID = ["76561198091139370", "76561198026915573"];                                    // Colocar entre las comillas el numero que aparece en la lista de abajo. Si son mas de un autor poner con la forma ["nro 1", "nro 2"]
                                                    // Axel: "76561198869072681", Camello: "76561198197706543", Ignacio: "76561198026915573", Joaco: "76561198090717772", Maxi: "76561198091139370", Maxtor: "76561198824233052", Nico: "76561198077670923", Night: "76561198090664588", Nogo: "76561198849038806", Ñato: "76561199027826936", Paco: "76561198030163544", Peta: "76561198279642154", Roke: "76561198883929795", Shaggy: "76561198030188168", Soda: "76561198122043854", Vultur: "76561198010777357", Zorro: "76561198027580786"
IMG_LOGO = "imgs\logo.paa";                         // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#44CC00";                            // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 1;                                    // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "El Señor de la Guerra";
INTRO_PERSONALIZADA = 1;                            // 1 Si la deseas cargar una intro personalizada (propia)
                                                    // y en el parametro INTRO la dirección del archivo entre comillas
                                                    // EJ. INTRO_PERSONALIZADA = 1; INTRO = "scripts\intro_propia.sqf";
INTRO = "scripts\intro_3.sqf";                      // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 2000;
MIN_DIST_VISION = 800;                              // Distancia de visión reducida por marcador.
EQUIPAMIENTO_PERSONALIZADO = 0;                     // 1: Permite cargar equipamiento guardado en arsenal virtual, 0: No Permite.
COMPUTADORA_ARTILLERIA = 1;                         // 1: Habilita computadora artilleria,0: Desabilita.
ROL_AUTOMATICO = 0;                                 // 1: Habilita la carga de rol al entrar a la misión por descripción de rol. 0: Desabilita.
                                                    // Para verificar que los roles automáticos estan bien escritos activar todas las IAs y entrar.
GPS = 1;                                            // 1: Agrega GPS vanilla en rol automático o caja, 0: Remueve.
VISION_NOCTURNA = 0;                                // 1: Agrega visión nocturna panorámica en rol automático o caja, 0: Remueve.
TIPO_VN = "ACE_NVG_Wide";                           // Tipo de visión nocturna que se va a agregar en rol automático o caja.
HALO = 0;                                           // 1: Guarda en contenido de la mochila y pone un paracaidas en la unidad al inicio de la misión. Al tocar tierra se vuelve a poner la mochila automáticamente. 0: Desactiva
HALO_ALTURA_MINIMA_ACTIVACION = 1000;               // Altura en metros mínima que se le pone un paracaidas si HALO esta activado. Todas las unidades por debajo de esa altura no reciben paracaidas al inicio
INSIGNIA_AUTOMATICA = 1;                            // 1: Añade insignias por pelotón o médicas, 0: No Añade.
INSIGNIA_IR = 0;                                    // 1: Coloca insignias IR, 2: Insignias normales.
SETUP_PERSONALIZADO_RADIOS = 1;                     // 1: Activa el setup de las radios de ACRE2, 0: Desactiva.
/*
     Temas correción de color: (Colocar entre las comillas)
     - Realista
     - Apocalipsis
     - Nightstalkers
     - OFP_Gamma
     - Otoño_Dorado
     - Africa
     - Afghan
     - Medio_Oriente
     - Realidad_Marrón
     - Escala_Grises
     - Frío
     - Apocalipsis
     - Invierno_Azul
     - Invierno_Blanco
     - Mediterraneo
     - Post_Soviético
     - Blanco_Negro
*/
CORRECION_COLOR = 1;                                // 1: Activa la correción de color, 0: Desactiva.
TEMA_CORRECCION_COLOR = "Nightstalkers";
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
//CAMUFLAJE = ["Negro", "Multicam"];
CAMUFLAJE = ["Bosque", "Multicam"];
GAFAS_INICIALES = "";
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
BRIEFING = 1;                                       // 1: Muestra, 0: No muestra
HORARIO = "0930";
FECHA = "25/03/2021";
CLIMA = "Nublado";
UBICACION = "Mull of Kintyre";
SITUACION_HISTORICA = ["La situación desde la explosión en Ruegen y Chernarus sólo continuó empeorando, China y Corea no dejan de avanzar y tomar nuevos territorios. El conflicto escaló rapidamente a un nivel global.", "", "ArgA con la coalición se encuentra ahora mismo en las costas de Mull of Kintyre, comenzando la invasión de un territorio estrategico para detener a la doble C."];
SITUACION = ["ArgA está en camino a desembarcar en una de las costas de Mull of Kintyre, nombre en clave de la zona: Playa Zafiro. Esta es una de las zonas mas protegidas de la península, pero por una buena razón: Si la coalición toma la parte norte de la península dejaremos incomunicado al resto del territorio, facilitando así la conquista total.", "", "La misión no será facil, tienen muchos objetivos aunque todos a distancias cercanas de la playa. Tienen libertad de priorizar los objetivos a su parecer, aunque no deben de perder de vista algo clave: la artilleria. Recomendamos: velocidad, puntos fuertes y coordinación entre escuadras.", "", "Si es necesario, podrán utilizar la artillería de los destructores como apoyo. Pero se pide discreción, ya que la munición no es facil de reponer y queda toda una península por conquistar."];
EXTRACTO_INTELIGENCIA = [];
OBJETIVOS = ["Indigo: Eliminar al general Ha Joon (Imagen o cuerpo es necesario)", "Bordo: Destruir artillería", "Caoba: Destruir arsenales", "Zafiro: Capturar playa", "Salmón: Destruir vehículos", "Cobre: Liberar paso de ruta", "Lima: Destruir puesto de control (servidores y estación de comunicación)", "Ambar: Desturir artillería"];
RECURSOS = ["Armamento ArgA", "Artillería destructores", "Lanchas para desembarco"];
ENEMIGOS = ["Ejercito coreano", "Artillería", "Puestos fuertes y bunkeres", "Vehículos livianos y medianos", "Posibles campos minados"];
////////////////////////////////////////////////////////////////////////////////
/* Borrado de IAs enemigas muertas y vehículos destruidos */
RECOLECTOR_BASURA = 1;                              // 1: Activa la funcion que borra las IAs muertas y vehículos destruidos, 0: Desactivado
RB_TIEMPO_ESPERA_HOMBRES = 120;                     // Tiempo en segundos de espera para eliminar soldados enemigos. 0 Desactiva el borrado de enemigos
RB_TIEMPO_ESPERA_VEHICULOS = 0;                     // Tiempo en segundos de espera para eliminar vehículos enemigos. 0 Desactiva el borrado de vehículos
RB_TIEMPO_ESPERA_BLINDADOS = 0;                     // Tiempo en segundos de espera para eliminar blindados enemigos. 0 Desactiva el borrado de blindados
RB_TIEMPO_ESPERA_AEREOS = 0;                        // Tiempo en segundos de espera para eliminar aereos enemigos. 0 Desactiva el borrado de aereos
RB_DISTANCIA_JUGADORES = 0;                         // Distancia en metros a los jugadores a partir de la cual se borra. 0 desactiva el borrado por distancia
////////////////////////////////////////////////////////////////////////////////
/* Camuflaje */
COEFICIENTES_CAMUFLAJE = 0;                         // 1: Activada. 0: Desactivada.
COEFICIENTE_AUDICION = 1;                           // Valores menores hacen al jugador mas difícil de escuchar. Valores decimales ente 0 y 1.
COEFICIENTE_CAMUFLAJE = 1;                          // Valores menores hacen al jugador mas difícil de detectar. Valores decimales ente 0 y 1.
////////////////////////////////////////////////////////////////////////////////
/* IA - CONFIGURACION */
IA_DE_GRUPO = 0;                                    // 1: No desactiva la IA del Grupo de los jugadores, 0: la desactiva.
IA_BLUFOR = 0;                                      // 1: No desactiva la IA Blufor, 0: la desactiva.
DIFICULTAD_IA_PERSONALIZADA = 0;                    // 1: Activada. 0: Desactivada.
AIMING_ACCURACY = 0.01;                             // Precision de apuntado
AIMING_SHAKE = 0.99; 	                            // Dispersión de apuntado
AIMING_SPEED = 0.1; 	                            // Velocidad de apuntado
SPOT_DISTANCE = 0.3; 	                            // Distancia de avistamiento
SPOT_TIME = 0.5; 		                            // Tiempo de avistamiento
COURAGE = 0.25; 		                            // Coraje
RELOAD_SPEED = 0.25; 	                            // Velocidad de recarga
COMMANDING = 0.75; 		                            // Liderazgo
////////////////////////////////////////////////////////////////////////////////
/* Modificar desde los define que estan arriba de todo.
NO TOCAR LO QUE ESTA ABAJO DE ESTA LINEA             */
onLoadName = NAME;	                                // Nombre de carga
briefingName = COMPLETE_NAME;                       // Nombre en briefing
onLoadMission = DESCRIPTION;                        // Pie de carga
overviewText = DESCRIPTION;                         // Pie en seleccion de mision
overviewPicture = IMAGE;                            // Imagen en seleccion de mision
loadScreen = IMAGE;                                 // Imagen en carga
////////////////////////////////////////////////////////////////////////////////
/*******************************************************************************
                         Realizado por |ArgA|MIV
*******************************************************************************/
