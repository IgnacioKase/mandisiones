/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

#define NAME "Op. Tormenta 333"                     // Colocar nombre de mision
#define COMPLETE_NAME "Op. Tormenta 333 V5"         // Nombre y versión de la misión
#define IMAGE "imgs\portada.jpg"                    // Colocar nombre y extension de la imagen de portada, ej "core\imgs\portada.jpg"
#define DESCRIPTION "Afganistan 1979"               // Colocar descripcion de la mision entre las comillas

author = "PACO";                                    // Editor (Pone tu nombre)
IMG_LOGO = "imgs\logo.jpg";                         // Nota: Las imagenes deberian estar en
COLOR_AUTOR = "#76a8f7";                            // formato .paa y en proporcion 2x1 (1024x512)
ES_CAMPANIA = 0;                                    // tamaño logo: 323px x 323px
NOMBRE_CAMPANIA = "";
INTRO_PERSONALIZADA = 0;                            // 1 Si la deseas cargar una intro personalizada (propia)
                                                    // y en el parametro INTRO la dirección del archivo entre comillas
                                                    // EJ. INTRO_PERSONALIZADA = 1; INTRO = "scripts\intro_propia.sqf";
INTRO = 0;                                          // Intros: 1 y 2. Para desactivar: 0

MAX_DIST_VISION = 4000;
MIN_DIST_VISION = 800;
DESACTIVAR_EQUIPAMIENTO_PERSONALIZADO = 1;          // Equipamiento guardado en arsenal virtual
ACTIVAR_COMPUTADORA_ARTILLERIA = 1;                 // Habilita computadora artilleria poner true. Para que no aparezca poner false
ACTIVAR_ROL_AUTOMATICO = 0;                         // Habilita la carga de rol al entrar a la misión por descripción de rol
                                                    // Para verificar que los roles estan bien escritos activar todas las IAs y entrar
ACTIVAR_INSIGNIA_AUTOMATICO = 0;                    // Añadir a arga_settings
INSIGNIA_IR = 0;                                    // Establece si las insignias son IR o normales

ACTIVAR_SETUP_PERSONALIZADO_RADIOS = 0;             // Activa el setup de las radios de ACRE2. 1: activado, 0:desactivado

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
ACTIVAR_BRIEFING = 1;
CARACTER = "No Oficial";
HORARIO = "0018";
FECHA = "27 de Diciembre 1979";
CLIMA = "Despejado, Luna LLena";
UBICACION = "Afganistan";
SITUACION = ["Deberemos avanzar hacia el ministerio de Interior y el edificio de seguridad interior para luego avanzar a tomar el Palacio de Tajbeg en busca de eliminar a Amin.","Estaremos compuestos por la unidad «Гром» (“Trueno”) del Grupo Alfa, el grupo especial del KGB: «Зенит» (“Zenit”), soldados de la Compañía Aerotransportada y el 154º Batallón Especial del Spetsnaz del Ministerio de la Defensa de URSS alias “batallón musulmán”, porque estaba formada exclusivamente por soldados de las repúblicas meridionales de la URSS."];               
SITUACION_HISTORICA = ["Hafizullah Amín era un dirigente del Partido Democrático Popular de Afganistán y funcionario del gobierno de Nur Mohammad Taraki desde el triunfo de la Revolución de abril de 1978. Sin embargo, en septiembre de 1979, Amín dirigió una sangrienta represión tanto a elementos hostiles como neutrales, y del propio Partido, luego ordenó eliminar a Taraki y convirtió al régimen en una dictadura personal.","La KGB reveló que Amín tenía apoyo de Pakistán y la CIA de Estados Unidos. Los soviéticos descubrieron que el plan de la CIA era colocar misiles Pershing en Afganistán para presionar a la URSS y además entregarle los depósitos de uranio afganos a Pakistán, para emplearlos en el desarrollo de armas nucleares, como compensación por su ayuda. El Consejo Revolucionario Afgano pidió a la Unión Soviética el envío de los Spetsnaz para la eliminación de Amín. Por esta razón la URSS decidió intervenir."];     
EXTRACTO_INTELIGENCIA = [""];
OBJETIVOS = ["Tomar el ministerio de Interior y el edificio de seguridad interior", "Tomar el Palacio de Tajbeg y eliminar a Amin"];
RECURSOS = ["Armamento entregado por la KGB", "MI7 para nuestra extracción."];
ENEMIGOS = ["Guardia de Hafizullah Amín", "Posible medidas AA","Vehiculos Ligeros"];
////////////////////////////////////////////////////////////////////////////////

/* Borrado de IAs enemigas muertas y vehículos destruidos */
ACTIVAR_RECOLECTOR_BASURA = 0;                      // Activa la funcion que borra las IAs muertas y vehículos destruidos. 1: Activado, 0: Desactivado
RB_TIEMPO_ESPERA_HOMBRES = 0;                     // Tiempo en segundos de espera para eliminar soldados enemigos. 0 Desactiva el borrado de enemigos
RB_TIEMPO_ESPERA_VEHICULOS = 0;                     // Tiempo en segundos de espera para eliminar vehículos enemigos. 0 Desactiva el borrado de vehículos
RB_TIEMPO_ESPERA_BLINDADOS = 0;                     // Tiempo en segundos de espera para eliminar blindados enemigos. 0 Desactiva el borrado de blindados
RB_TIEMPO_ESPERA_AEREOS = 0;                        // Tiempo en segundos de espera para eliminar aereos enemigos. 0 Desactiva el borrado de aereos
RB_DISTANCIA_JUGADORES = 0;                       // Distancia en metros a los jugadores a partir de la cual se borra. 0 desactiva el borrado por distancia
////////////////////////////////////////////////////////////////////////////////

/* Camuflaje */
ACTIVAR_COEFICIENTES_CAMUFLAJE = 1;                 // 1 Activa esta función. 0 la desactiva.
COEFICIENTE_AUDICION = 0.5;                           // Valores menores hacen al jugador mas difícil de escuchar. Valores decimales ente 0 y 1.
COEFICIENTE_CAMUFLAJE = 0.5;                          // Valores menores hacen al jugador mas difícil de detectar. Valores decimales ente 0 y 1.
////////////////////////////////////////////////////////////////////////////////

/* IA - CONFIGURACION */
DESACTIVAR_IA_DE_GRUPO = 0;                         // 0 No desactiva la IA del Grupo de los jugadores, 1 la desactiva.
DESACTIVAR_TODO_BLUFOR = 0;                         // 0 No desactiva la IA del Blufor, 1 la desactiva.
DIFICULTAD_IA_PERSONALIZADA = 0;
AIMING_ACCURACY = 0.01;                             //precision de apuntado
AIMING_SHAKE = 0.99; 	                            //dispersión de apuntado
AIMING_SPEED = 0.1; 	                            //velocidad de apuntado
SPOT_DISTANCE = 0.3; 	                            //distancia de avistamiento
SPOT_TIME = 0.5; 		                            //tiempo de avistamiento
COURAGE = 0.25; 		                            //coraje
RELOAD_SPEED = 0.25; 	                            //velocidad de recarga
COMMANDING = 0.75; 		                            //liderazgo
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

/* Log system */
DEBUG = 1;                                          // Habilita el modo debug
ENABLE_LOG_SYSTEM = 1;                              // Habilita el sistema de log
ENABLE_LOG_SYSTEM_ONLY_DEDICATED = 1;               // Habilita el sistema de log sólo si el servidor es dedicado (requiere ENABLE_LOG_SYSTEM = 1)
////////////////////////////////////////////////////////////////////////////////

/* Listas auxiliares */
AUXILIAR_ROLE_LIST = [["lider","Líder",34],["sub_lider","Sub Líder",35],["lider_peloton","Líder Pelotón",36],["ametrallador_m240","Ametrallador m240",37],["ametrallador_m249","Ametrallador m249",38],["granadero","Granadero",39],["granadero_bengalas","Granadero bengalas",40],["lanzador_at","Lanzador AT",41],["lanzador_aa","Lanzador AA",42],["tirador_fal","Tirador fal",43],["tirador_mk11","Tirador mk11",44],["francotirador","Francotirador",45],["ingeniero","Ingeniero",46],["observador","Observador",47],["piloto","Piloto",48],["radio_operador","Radio operador",49],["medico","Médico",50],["medico_combate","Médico de combate",51],["enfermero","Enfermero",52],["fusilero","Fusilero",53],["fusilero_ra","Fusilero RA",54],["entrenamiento","Entrenamiento",55],["desconocido","Desconocido",56],["lider_escuadra","Líder Escuadra",57],["lider_escuadra_1","Líder Escuadra 1",61],["lider_escuadra_2","Líder Escuadra 2",62],["lider_escuadra_3","Líder Escuadra 3",63],["lider","Cacique",1],["entrenamiento","Soldado",2],["sub_lider","teniente",3],["lider","Capitan",4],["sub_lider","Teniente ¹",5],["radio_operador","Radio operador",7],["lider_escuadra","Lider de Escuadra",8],["fusilero","Fusilero",9],["ametrallador_m249","Ametrallador",13],["granadero","Granadero",15],["ingeniero","Ingeniero",17],["lanzador_at","Anti Tanque",19],["tirador_mk11","Tirador",22],["enfermero","Enfermero",24],["medico","Medico",25],["piloto","Piloto",62],["lanzador_at","AT",71],["ingeniero","Sombra Especialista",72],["medico","Sombra Medico",73],["fusilero","Sombra",74],["lider_peloton","Lider Sombra",75],["sub_lider","Teniente Primero",148],["lanzador_at","Fusilero AT",149],["lider","Lider",193],["lanzador_aa","AA",197],["radio_operador","Fusilero Ro",204],["ametrallador_m240","Ametrallador 762",213],["tirador_fal","Tirador Designado CP",228],["sub_lider","Sub Lider",238],["entrenamiento","Cabo Primero",314],["entrenamiento","Instructor",321],["entrenamiento","Soldado Primero",327],["entrenamiento","Cabo",328],["entrenamiento","Recluta",337],["entrenamiento","Sargento Primero",356],["entrenamiento","Aspirante",357],["fusilero_ra","Fusilero R/A",391],["tirador_mk11","Tirador Designado",394],["lider_peloton","Matrero",396],["ametrallador_m249","Ametrallador 556",401],["sub_lider","Pampa",422],["desconocido","PRUEBA 3",463],["desconocido","any",471],["lanzador_aa","Fusilero AA",495],["lider_peloton","Lider-Tirador",502],["sub_lider","SubLider",672],["entrenamiento","Comandante",739],["entrenamiento","Sargento",769],["entrenamiento","PRUEBA 1",831],["entrenamiento","PRUEBA 2",833],["entrenamiento","Teniente¹",932],["granadero_bengalas","Granadero c/Bengalas",40],["lider_escuadra","Lider Escuadra 1",2820],["lider_escuadra","Lider Escuadra 2",2830],["lider_escuadra","Lider Escuadra 3",3270]];
ARGA_PLATOON_LIST = [["condor",["condor","cóndor"]],["yaguar",["yaguar","yaguarete","yaguareté"]]];
AVAILABLE_INSIGNIA_TYPES = ["arga","condor","yaguar","medico"];
BOX_ROLE_LIST = ["Ametrallador M240","Ametrallador M249","Capitan","Enfermero","Francotirador","Fusilero","Fusilero RA","Granadero","Granadero c/Bengalas","Ingeniero","Lanzador AA","Lanzador AT","Líder","Médico de Combate","Médico","Observador","Piloto","Radio Operador","Teniente","Tirador FAL","Tirador MK11"];
STAFF_ROLE = [["Nico","Lanzador AT"],["Jhon","Ametrallador"],["Cero","Tirador fal"],["Camello","Lanzador AT"],["Maxi","Ametrallador"],["Choqqo","Ingeniero"],["Ignacio","Ametrallador"],["Paco","Granadero"],["Zorro","Granadero"],["Maxtor","Ametrallador"],["Vultur","Granadero"],["Veck","Ingeniero"],["Ranquel","Médico"],["Labrador","Médico"],["Locofer","Ingeniero"],["Lince","Ametrallador"],["Joaco","Tirador fal"],["Shaggy","Granadero"],["Timor","Ingeniero"],["Axel","Ametrallador"],["Night","Médico"],["Heiz","Ametrallador"],["Guille","Tirador fal"],["Rodo","Ingeniero"],["Vigua","Ametrallador"],["Roke","Lanzador AT"],["Jaairo","Tirador fal"],["Kalam","Ingeniero"],["Fix","Lanzador AT"],["Juani","Ametrallador"],["Huaiqui","Granadero"],["Matias","Ingeniero"],["Soda","Ingeniero"],["Tinga","Ingeniero"],["Akin","Ingeniero"]];
RADIO_CHANNEL_NAME = [["ACRE_PRC152",[[4, "AEREO"],[5, "INTERNA MANDO"],[6, "COMANDANCIA"],[7, "CONDOR"],[8, "YAGUARETE"],[9, "CONVOY"],[10, "MEDICOS"]]],["ACRE_PRC117F",[[4, "AEREO"],[5, "INTERNA MANDO"],[6, "COMANDANCIA"],[7, "CONDOR"],[8, "YAGUARETE"],[9, "CONVOY"],[10, "MEDICOS"]]]];
FIXED_CHANNEL_NAME = ["AEREO","INTERNA MANDO","COMANDANCIA","CONVOY","MEDICOS"];
RADIO_CHANNEL_SETUP = [["lider",[["ACRE_PRC117F",6],["ACRE_PRC152",6],["ACRE_PRC343",5]]],["sub_lider",[["ACRE_PRC117F",6],["ACRE_PRC152",6],["ACRE_PRC343",5]]],["lider_peloton@condor",[["ACRE_PRC117F",6],["ACRE_PRC152",7],["ACRE_PRC343",5]]], ["lider_escuadra_1@condor",[["ACRE_PRC152",7],["ACRE_PRC343",1]]],["lider_escuadra_2@condor",[["ACRE_PRC152",7],["ACRE_PRC343",2]]], ["lider_peloton@yaguar",[["ACRE_PRC117F",6],["ACRE_PRC152",8],["ACRE_PRC343",5]]], ["lider_escuadra_1@yaguar",[["ACRE_PRC152",8],["ACRE_PRC343",11]]], ["lider_escuadra_2@yaguar",[["ACRE_PRC152",8],["ACRE_PRC343",12]]], ["lider_escuadra_3@yaguar",[["ACRE_PRC152",8],["ACRE_PRC343",13]]]];
////////////////////////////////////////////////////////////////////////////////

/*******************************************************************************
                         Realizado por |ArgA|MIV
*******************************************************************************/