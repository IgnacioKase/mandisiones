/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

#define NAME "Op. Sabado de Entreno"
#define IMAGE "imgs\portada.paa"                   
#define DESCRIPTION "Aprendeh a ubicate capo"                  

author = "Maxi e Ignacio";                       
onLoadName = NAME;	                    
briefingName = NAME;                      
onLoadMission = DESCRIPTION;                     
overviewText = DESCRIPTION;                      
overviewPicture = IMAGE;   
loadScreen = IMAGE;        
IMG_LOGO = "imgs\logo.paa"              
COLOR_AUTOR = "#44CC00";               
ES_CAMPANIA = 0;                        
NOMBRE_CAMPANIA = "NO ES UNA CAMPAÑA";
INTRO = 2                               
MAX_DIST_VISION = 4500;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;

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

CAMUFLAJE = ["No editar", "Marpat"];
GAFAS_INICIALES = "arga_rhs_pm_negro";
UNIFORME_PERSONALIZADO = "";
CASCO_PERSONALIZADO = "";
CHALECO_PERSONALIZADO = "";
MOCHILA_PERSONALIZADO = "";
MOCHILA_CHICA_PERSONALIZADO = "";
STAND_MEDICO = "standMedico";
STAND_INGENIERO = "standIngeniero";
STAND_PILOTO = "standPiloto";

//BRIEFING
// Cada elemento del array es un parrafo
// Ejemplo: ["Primer parrafo", "Segundo parrafo"]
CARACTER = "No Oficial";
HORARIO = "0630hrs";
FECHA = "10/05/2020";
CLIMA = "Despejado";
UBICACION = "Takistan";
SITUACION = ["Hace dos hora y media, a las 0200 atacaron la base principal. Recibimos una transmisión de pedido de ayuda, treinta minutos después perdimos comunicación. Según esta ultima transmisión recibida el ejercito takistani ataco la base para apoderarse de las armas nucleares que había en la misma. No tiene mucho sentido ya que las mismas no sirven sin los códigos que tiene el general Nikita Yefremov por lo que creemos que el esta en un complot con los takistanis. Ya informamos a los altos mando rusos, nos dijeron que llegaran refuerzos dentro de 24hs por lo que tendremos que actuar rápido antes que estas armas salgan del país. Nuestra misión principal sera capturar al general Nikita Yefremov para interrogarlo, luego nos tendremos que deshacernos de él. Una vez interrogado el general recuperaremos las armas nucleares.", "Sabemos que en las inmediaciones a la base el general tenia varias casa de seguridad, marcamos tres zonas (Shashlyk, Borsch y Shchi) creemos que puede estar en una de esas."];               
SITUACION_HISTORICA = [""];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Interrogar al general Nikita Yefremov", "Recuperar las armas nucleares"];
RECURSOS = ["Aparecemos armados", "Cajas con munición, misceláneos y equipo médico", "1 Mi-8AMT", "1 Mi-8MT", "1 BRDM-2UM (Ya equipado con equipo médico)", "1 BRDM-2UM (Armed)(Ya equipado con munición y suministros para la tropa)", "1 BTR-80", "1 BMP-3 (Vesna-K/A)"];
ENEMIGOS = ["Ejercito takistani", "Vehiculos blindados pesados", "Vehiculos blindados Medianos"];
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
                          Realizado por |ArgA|MandI
*******************************************************************************/
