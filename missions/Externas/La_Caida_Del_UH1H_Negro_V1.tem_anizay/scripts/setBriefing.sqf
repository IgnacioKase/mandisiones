private _recursos = [
"Cajas con equipamiento",
"2 L 59 ALCA",
"2 UH1H Gunship equipados con misiles Hydra",
"2 Litle Bird artillado",
"2 Pandur II",
"1 Leopard",
"5 humvees M2",
"2 UH1H de transporte",
"3 Unimog de trasporte",
"1 L 159 Alca en base Arga",
"1 Unimog ambulancia"
];

private _enemigos = [
"Infantería bien armada",
"Tanques T 72",
"Zsu 35",
"Pick ap artilladas",
"se avistaron infantería con FIM 92 F STINGER"

];

private _objetivos = [
"LLegar hasta los UH1H abatidos y recuperar los cuerpos aliados",
"Despejar FOB ALPHA y recuperar los aliados capturados",
"Despejar FOB BRAVo y recuperar losaliados captirados"
];

private _mision = ["debemos llegar hasta los UH1H y recuperar los cuerpos de los que no sobrevivieron a la caída. desde allí dividir nuestro pelotones para tomar los FOB ALPHA Y BRAVO para recuperar a nuestros aliados. para ello contamos con apoyo aéreo 2 L 59 ALCA, que nos brindaran apoyo contra vehículos blindados y objetivos marcado por la infantería. 2 UH1H Gunship, equipados con misiles Hydra con capacitad para retirar a nuestros aliados de los FOB y 2 Litle Bird artillado. también contamos con con 2 Pandur II, 1 Leopard, 5 humvees M2 y 3 Unimog de trasporte para la infantería. es de suma importancia de no producir bajas civiles por mas que intenten atacarnos"];

private _extractodeInteligencia = [""];

private _situacionHistorica = [
"",
""
];

private _situacion = [
"en nuestra lucha contra el terrorismo nos lleva a la zona de Anizay en medio oriente. Donde mantenemos posición en la base aérea Landay Airfield intentando mantener el orden en la zona. no somos bienvenidos por la población ya que piensan que nuestras intenciones son las mismas que las de grandes potencias en querer saquear de sus tierrar el petroleo en nombre de la paz. aprovechando de eso varias facciones terrorista operan en la zona alimentando ese odio en la población.
Como es de rutina patrullar los cielos de Anizay, enviamos 2 UH1H a recorrer la zona de la gran mezquita donde perdimos comunicacion con ellos, salvo un radeo 15 min después informando que fueron abatidos y que estaban bajo fuego enemigo.
Nuestros contactos de la zona nos informan que llevaron a los sobrevivientes prisioneros a distintos lugares. FOB APHA y FOB BRAVO"
];

private _info = [
"Carácter: No Oficial",
"Horario: 17:30 Hs",
"Fecha: 2 De mayo del 2019",
"Clima: Despejado",
"Ubicación: Anizay"
];

private _imagenes = 
""
;

private _editores = "Sdo¹ Roke"
;

[_recursos, _enemigos, _objetivos, _situacion, _extractodeInteligencia, _mision, _situacionHistorica, _info, _imagenes, _editores] call MANDI_fnc_setBriefing;

