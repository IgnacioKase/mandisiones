private _recursos = [
"4 Unimog de transporte",
"2 Unimog de combustible en base Arga",
"1 Unimog ambulancia",
"5 Humvees M2",
"1 Humvees de comandancia",
"2 Pandur ll",
"2 Leopard 2 SG",
"2 UH1H de transporte",
"1 UH1H medico",
"1 L 159 Alca en base Arga",
"4 Cajas con equipo",
"2 Cajas con equipo para ingenieros",
"2 Cajas con equipo medico"
];

private _enemigos = [
"Vehículos antiaéreos desplegados en Virojoko (Alfa)",
"Vehículos artillados",
"Infantería armadas con AK 74",
"VCI desplegados en Virojoko (Alfa) y Delta)"
];

private _objetivos = [
"Destruir la torre de comunicacion",
"Recuperar los civiles en Charli",
"Recuperar los civiles en Delta",
"Tomar evidencia Fotografica de Delta para enviar a la ONU"
];

private _mision = [
"Yaguarete debe tomar posiciones en las cercanías Charli, Haciendo Observación del terreno, Mientras Cóndor se dirije hacia la torre de comunicación destruirla. una vez destruida, Realizan un asalto en conjunto hacia Delta recuperando los civiles capturados en esa posición. terminada la ofensiva en Charli. dirigirnos hacia Delta. Allí eliminar toda amenaza presente, recuperar los civiles capturados y tomar evidencia fotográfica para notificar a la ONU la situación en la que esta sometida la población de Virolahti. Finalizando en Delta la operación"
];

private _extractodeInteligencia = [""];

private _situacionHistorica = [
"",
""
];

private _situacion = [
" Hemos logrado rescatar los civiles capturados del punto Bravo con éxito, aunque el enemigo se mantuvo fuerte pese al duro golpe resabido días atrás al destruir sus vehículos y arsenales, pudimos tomar posiciones de Bravo y neutralizar sus fuerzas.
Hemos establecido base en su antiguo FOV donde fue destruido sus vehículos, para un rápido despliegue hacia los puntos Delta y Charle donde sen encuentran los civiles capturados restantes y el campo de consentracion. en el proceso de investigación encontramos una torre de comunicación custodiada en las cercanías del campo de concentración (Deltai)"
];

private _info = [
"Carácter: No Oficial",
"Horario: 06:00",
"Fecha: 18 de junio del 2015 06:00HS ",
"Clima: Despejado",
"Ubicación: Virolahti"
];

private _imagenes = 
""
;

private _editores = 
"Sdo Roke"
;


[_recursos, _enemigos, _objetivos, _situacion, _extractodeInteligencia, _mision, _situacionHistorica, _info, _imagenes, _editores] call MANDI_fnc_setBriefing;

