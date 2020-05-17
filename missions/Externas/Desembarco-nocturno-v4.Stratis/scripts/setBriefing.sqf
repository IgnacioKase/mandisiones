///////////////////////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI//////////////
//////////////////////////////////////////////////////////////////

private _recursos = [
"APARECEMOS ARMADOS.",
"1 CH47F Chinook.",
"1UH1 MEDICO.",
"1UH1 CON LANZACOHETES.",
"2UH1 DE TRANSPORTE ARTILLADO.",
"2 LANCHAS CON ARMAS.",
"1 SUMERGIBLE SDV.",
"1 VEICULO DE REPARACION Y REARME.",
"1 CONTENEDOR DE REPARACIÓN Y REARME.",
"1 HUMVEE CON MK19.",
"1 HUMVEE CON M2.",
"4 M19A2 (artilleria).",
"2 CAJAS DE MUNICIÓN PARA INFANTERÍA (se pueden cargar con cuerdas) .",
"VARIAS CAJAS CON ARMAMENTO"
];

private _enemigos = [
"INFANTERIA BIEN ARMADA.",
"CAMIONETAS ARTILLADAS.",
"BLINDADOS LIVIANOS.",
"TANQUES SOLO EN BASE AEREA"
];

private _objetivos = [
"1 DESEMBARCAR EN LA COSTA",
"2 DESPEJAR LOS PUNTOS MARCADOS UNO POR UNO",
"3 LIBERAR AL AGENTE EN EL LUGAR DONDE LO ENCONTREMOS",
"4 ATACAR LA BASE AEREA USANDO EL V-44 BLACKFISH ARTILLADO ( si es que llega)"
];

private _situacionReal = [""];

private _extractoSinModificar = [""];

private _situacionHistorica = [""];

private _situacion = ["Startis era una isla tranquilas donde sus habitantes vivian sin sobresaltos, asta que se encontró uranio en sus cerros, llovieron propuestas de empresas extranjeras para extraerlo pero los mandatarios de startis las rechazaron, no querían arruinar su pas.
 Hace un par de semanas el mundo perdió comunicación con la isla la ONU decidió  averiguar por que, se acercó un portaaviones asta sus costas y despliegan dos agentes de inteligencia, uno pudo volver el otro fue capturado.

Informe de inteligencia:Un grupo terrorista tomo la isla capturando primero la base aérea y accediendo así a los depósitos militares luego capturó puntos importantes (marcados en mapa), su intención es extraer el uranio para vender al mercado negro.

Misión:La onu nos ofreció hacernos cargo, nos provee de algunos vehículos, informe de inteligencia y nos indica como proceder, también nos encarga que liberemos a su agente capturado.
 debemos desembarcar en la costa marcada, los buzos estuvieron días trabajando y han desactivado centenares de minas acuáticas y lograron abrir un corredor seguro para desembarcar, en la costa de desembarco no hay civiles y tampoco se encuentra el agente de inteligencia solo hay enemigos al igual que en la base aérea, nos dan luz verde para atacar esas posiciones como nosotros lo decidamos. 
 Debemos atacar los puntos de uno en uno eliminando al enemigo y buscando el agente la base aérea quedará para lo ultimo ya que nos prometieron que llegará en un par de horas un V-44 BLACKFISH ARTILLADO podemos usarlo para atacar el aeropuerto

 

"];

private _info = [
"Nombre de la misión:Desembarco nocturno",
"Carácter: No Oficial",
"Horario: 21:00hs",
"Fecha: 06/05/2020",
"Clima: despejado",
"Ubicación: Startis"
];

private _editores = "Editor: |ArgA|Nogo|Sdo|";

[_recursos, _enemigos, _objetivos, _situacion, _extractoSinModificar, _situacionReal, _situacionHistorica, _info, _editores] call MANDI_fnc_setBriefing;

///////////////////////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI//////////////
//////////////////////////////////////////////////////////////////
