///////////////////////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI//////////////
//////////////////////////////////////////////////////////////////

private _recursos = [
"aparecemos armados",
"arsenal limitado",
"1 Camión de transporte de tropa.",
"1 Camión de reparación.",
"1 Camion medico.",
"1 veiculo para comandancia (Fennek).",
"1 Tanque leopard 2.",
"1 Mk19 portatil.",
"1 M2 portatil."
];

private _enemigos = [
"Infanteria bien equipada.",
"Bunker con ametralladoras estaticas.",
"Veiculos blindados."
];

private _objetivos = [
"1 despejar los controles enemigos en la ruta y en las cotas",
"2 Recuperar la metalúrgica",
"3 fotografiar los vehículos enemigos",
"4 Bloquear las rutas que va de la metalúrgica a Negades y a Aggeolchori solo un par de minutos fotografiar y terminar la misión."
];

private _situacionReal = [""];

private _extractoSinModificar = [""];

private _situacionHistorica = [""];

private _situacion = ["Situación:Después de expulsar a los mercenarios, el ministro de seguridad de la isla nos cuenta que se complicó su situación, sus tropas sin  experiencia no pueden contra los rebeldes, los cuales al parecer después de tomar Aggeolchori,  la ciudad portuaria más importante de Altias han recibido maquinaria bélica. Ahora controlan una de las fabricas metalurgicas mas grandes, y la ruta que conecta el puerto con el resto de la isla cortando así el acceso hacia uno de los  sectores más productivos. 

Misión:Según con cuentan paisanos de la zona hay varios bunker en las carreteras y minas en las laderas y cotas de los cerros cercanos a Kore y Topolia, vieron volar sus ovejas y explotar sus vacas, suponemos que minaron los lugares que no pueden controlar. debemos eliminarlos de los controles, recuperar la metalúrgica fotografiar sus vehículos tener una pista de quien es su proveedor y por ultimo colocarnos en ruta que va hacia Negades y la que va hacia Aggeolchori para evitar que ganen terreno nuevamente. 

"];

private _info = [
"Nombre de la misión:Mercenarios contrato extendido",
"Carácter: No Oficial",
"Horario: 00:00hs",
"Fecha: 24/06/2020",
"Clima: Nublado con pocibles de chaparrones",
"Ubicación: Altis"
];

private _editores = "Editor: |ArgA|Nogo|Sdo|";

[_recursos, _enemigos, _objetivos, _situacion, _extractoSinModificar, _situacionReal, _situacionHistorica, _info, _editores] call MANDI_fnc_setBriefing;

///////////////////////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI//////////////
//////////////////////////////////////////////////////////////////
