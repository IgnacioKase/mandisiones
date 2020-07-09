/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

#define NAME Op.Jarra de Vino - Crianza                     // Colocar nombre de mision
#define VERSION v1                                  // Versión de la misión
#define IMAGE "imgs\portada.jpg"                   // Colocar nombre y extension de la imagen de portada, ej "imgs\portada.jpg"
#define DESCRIPTION "NO OFICIAL"                  // Colocar descripcion de la mision entre las comillas

author = "|ArgA|Camello|Tte";                            // Editor
onLoadName = NAME;	                    // Nombre de carga
briefingName = NAME + VERSION;          // Nombre en briefing
onLoadMission = DESCRIPTION;            // Pie de carga
overviewText = DESCRIPTION;             // Pie en seleccion de mision
overviewPicture = IMAGE;                // Imagen en seleccion de mision
loadScreen = IMAGE;                     // Imagen en carga
IMG_LOGO = "imgs\logo.paa";              // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                        // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "";
INTRO = 1;                               // Intros: 1 y 2. Para desactivar: 0
MAX_DIST_VISION = 800;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;
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
HORARIO = "0545";
FECHA = "11/11/2019";
CLIMA = "Despejado-Niebla";
UBICACION = "Anizay";
SITUACION = ["James Wood es un doctor en Fisica y Quimica, graduado en la univerisdad de los Angeles. Esta es la persona que sintetizó el VX utilizado en septiembre y es el objetivo del equipo Dogo.", "Dogo deberá obtener archivos de ésta persona y posteriormente eliminarla en su propia oficina. Para ello deberá infiltrarse como trabajador en la fábrica de Maku, antes del horario de salida del personal nocturno y el ingreso del doble de tropas de seguridad (0630hs). ", "Demás está decir que Isis controla la zona.", "En base despliega vestido de civil y en los vehículos civiles cuenta con equipamiento que serán de utilidad.", "En base también tenemos desplegado a Condor y Yaguareté.", "Deberá enviar a uno de ellos o a ambos, a relevar a los soldados de la Otan en la fábrica de Barezki. El despliegue hasta allí se hará por tierra.", "Puede optar por enviar a una escuadra, de cualquiera de los pelotones, como apoyo de Dogo. Debe tener presente que solo tenemos 5 trabajadores encubiertos."];
SITUACION_HISTORICA = ["Luego de los acontecimientos de septiembre, la población de Anizay se tornó muy inestable con las fuerzas de pacificación. El hecho de las muertes de civiles ha condicionado a las mismas. ", "La situación política no ha cambiado en absoluto y la contaminación con VX se contuvo, aunque se continúa trabajando en la zona y limpiando los restos.", "La OTAN continúa con su apoyo a nuestras fuerzas pero hemos sido advertidos por el tema civil.", "En la región de Anizay se han prohibido el uso de armas en las calles, pero muchos las poseen en sus casas.", "Hemos obtenido indicios de algunos datos de importancia y se ha decidido enviar un grupo de incógnitos para obtener información más concreta"];
EXTRACTO_INTELIGENCIA = ["CÓMO SOLICITAR EVACUACION: SÓLO PARA COMANDANCIA", "1- Tecla Super a o Retroceso.", "2- Seleccionar Responder.", "3- Seleccionar Refuerzos.", "4- Seleccionar Helicoptero de Trasnporte.", "5- Seleccionar Vehículo disponible, apuntando con el hud la LZ de Evac", "6- Ya abordo, en el mapa elegir LZ. Con CTRL+rueda raton= Zoom en mapa. Hacer Click en LZ deseada", "El solicitante deberá ser el último en embarcar y desembarcar.", "CAJAS DE ARSENAL", "Aconsejamos llevar lo que se pueda"];
OBJETIVOS = ["1- H = 0545hs -Inicio de operaciones Nombre Clave “Crianza” ", "2- de H a H+45", "a) Dogo deberá encontrar a James Wood y simular un suicidio en su oficina","b) Buscará informacion en esa misma oficica", "c) Si es necesario desplegará en apoyo a otros operativos", "3 - de H en adelante", "a) Relevará a las fuerzas norteamiericanas em la fábrica de Berezki. Vehiculos terrestres disponibles", "b) Mantendrá seguridad de la fabrica hasta el proximo relevo", "c) Disponga de una escuadra de cualquier peloton para dar apoyo a Dogo"];
RECURSOS = ["Arsenal LIMITADO", "1x M1220 (M2)", "1x M1078A1P2-B (M2)", "1x M1078A1P2", "2x M1232 (M2)", "1 x M1097A2 (2D)", "2x UH60 M Medevac. Dependiente de la OTAN y bajo ordenes exclusivas de Comandancia (Cacique, Pampa o Matrero)", "Para Dogo", "Vestimenta civil", "Equipamiento en vehiculos civiles y arsenal", "1x Ural 4320 abierto", "1x Land Rover"];
ENEMIGOS = ["No se sabe con certeza", "Improbables vehiculos aéreos."];
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
