private _recursos = [
"2 UH1H Gunship de ataque",
"2 Little Bird",
"1 M1240 (M2)",
"1 Humvee (Tow)",
"3 Humvee (m2)",
"2 Lanchas MK V Soc",
"Camion de reparacion",
"camion amunicionador"
];

private _enemigos = [
"Guerrilla bien armada",
"BTR 70",
"Pick Up Artilladas",
"Tanque T80"

];

private _objetivos = [
"Capturar al Negro Walter",
"Atacar el punto Juliet",
"Atacar el punto Mike",
"Detonar cualquier arsenal enemigo"
];

private _situacion = ["Tras desbaratar Al cartel Narcotraficante y capturar a su líder El Negro Walter que operaban en United Sahrani. Descubrimos que tiene una mano derecha operando en la isla de Tanoa. El alias de su mano derecha El pibe Jose, se esconde en los pantanos del punto denominado Quebet. su fabrica se encuentra en punto Mike y distribuye en el punto Juliet. como en la primera oportunidad, contaremos con las fuerzas especiales: Buzos tácticos. Fard de la fuerza aérea y Alacrán de Gendarmeria."];

private _extractodeInteligencia = [""];

private _situacionHistorica = [
"",
""
];

private _mision = [
"Los Buzos tacticos tienen la tarea de infiltrarse por la zonapantanosa en busca del Pibe Jose mientras la Fard asalta el punto Qubet para atraer la atencion de las fuerzas enemigas. Mientras tanto Alacran asalta el punto Julient donde se distribuyen los medicamentos adulterados. una vez asegurado y capturado el Pibe Jose la Fard y los Buzos Tacticos se unirán a Alacrán para asaltar su fabricaen el punto Mike."
];

private _info = [
"Carácter: No Oficial",
"Horario: 12:00 Hs",
"Fecha: 12:00 Hs 20 junio 2018",
"Clima: Despejado",
"Ubicación: Tanoa"
];

private _imagenes = 
""
;

private _editores = "Sdo¹ Roke"
;

[_recursos, _enemigos, _objetivos, _situacion, _extractodeInteligencia, _mision, _situacionHistorica, _info, _imagenes, _editores] call MANDI_fnc_setBriefing;

