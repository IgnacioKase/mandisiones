///////////////////////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI//////////////
//////////////////////////////////////////////////////////////////

private _recursos = [
"Aparecemos Armados",
"2 M1240 (M2)",
"2 M1240 (M240)",
"2 M1240",
"1 AH-64D",
"1 UH-60M",
"1 UH-60M MEV",
"Cajas de munición",
"Cajas con elementos médicos"
];

private _enemigos = [
"Guerrilleros",
"Vehículos ligeros",
"Vehículo AA ZSU-23"
];

private _objetivos = [
"Rescatar al gobernador",
"Rescatar a los civiles secuestrados"
];

private _situacionReal = [""];

private _extractoSinModificar = [""];

private _situacionHistorica = [""];

private _situacion = ["Hace tiempo se implementaron políticas controversiales que hicieron despertar el enojo en los ciudadanos de Ruha. Varios ex militares de la zona se han juntado para formar una insurgencia. Su primer golpe ha sido asaltar un arsenal ruso abandonado tras la guerra fría, luego de eso tomaron el poder y secuestraron al gobernador. Han subido un vídeo pidiendo que se los reconozca como lideres o asesinarían a los civiles y el gobernador.
Las fuerzas de Ruha han sido sometidas o desertaron para unirse a la insurgencia, por lo que se mandaron fuerzas estadounidenses para estabilizar la zona y sacar del poder al que no lo merece."
];

private _info = [
"Salvando el día otra vez",
"Carácter: No Oficial",
"Horario: 0600hs",
"Fecha: 20/03/2020",
"Clima: Despejado",
"Ubicación: Ruha"
];

private _editores = "Maxi e Ignacio";

[_recursos, _enemigos, _objetivos, _situacion, _extractoSinModificar, _situacionReal, _situacionHistorica, _info, _editores] call MANDI_fnc_setBriefing;

///////////////////////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI//////////////
//////////////////////////////////////////////////////////////////
