/*
	initBriefing.sqf
	
	Descripción:
	Este script agrega los datos del briefing de la misión a cada uno de los jugadores. 

	El editor debe tomar nota y llenar su briefing desde el último hasta el primero, porque la forma en que se agregan
	las entradas al diario está invertida.

	Parámetros:
	--

	Retorna:
	--
*/

//Final
player createDiaryRecord["Diary", ["Final", "<p align='center'> 
<br/><font size='18' color='#29a329'>- Final: </font>
<br/>
Replegar a base de inicio y dar por finalizada la misión con la escuadra completa <font color='#ffcc00'>(5pts)</font>
<br/><br/>
<font size='15' color='#ff0000'>NOTA:</font>Todos deben llegar a base, de lo contrario restará -1 por cada miembro que no haya llegado a base al momento de finalizar misión.
</p>"]];

//Tareas
player createDiaryRecord["Diary", ["Tareas", "<p align='center'> 
<br/><font size='18' color='#29a329'>- Tareas: </font>
<br/>
1. Llevar caja médica a galpón donde se encuentran los infectados <font color='#ffcc00'>(6 pts)</font><br/>
<br/><br/>
</p>"]];

//Objetivos secundarios
player createDiaryRecord["Diary", ["Objetivos Secundarios", "<p align='center'> 
<br/><font size='18' color='#29a329'>- Secundarios: </font>
<br/>
1. Destruir 1 tanque de agua contaminada<font color='#ffcc00'>(3 pts)</font><br/>
2. Destruir 1 tanque de agua contaminada <font color='#ffcc00'>(5pts)</font>
<br/><br/>
</p>"]];



// Objetivos
player createDiaryRecord["Diary", ["Objetivos", "<p align='center'> 
<br/><font size='18' color='#29a329'>- Principal:</font>
<br/>
<font size='14' color='#ffffff'>1. Inyectar el antídoto a los civiles infectados agonizantes</font> <font size='18' color='#ffcc00'>(10pts)</font>
<br/><br/></font>
<font size='14' color='#ffffff'>2. Aguantar y repeler los ataques del B.L.A.S. hasta la llegada del helicóptero sanitario y llevarse a los civiles de la zona</font> <font size='18' color='#ffcc00'>(10pts)</font>
<br/><br/></font>
<img image='1.jpg' align='center' width='367' height='407' />

</p>"]];

player createDiaryRecord["Diary", ["Recursos en base", 
"<p align='justify'>
2 lanchas tipo RHIB. Una médica
<br/><br/>Pequeñas cajas limitadas en armamento en base
<br/><br/>
</p>"]];

player createDiaryRecord["Diary", ["Informaci"+toString[243]+"n Operativa", 
"<p align='justify'>
<br/><br/>En Arapesca, han dejado hacinados y librados a su suerte (que será una muerte segura), a civiles en un centro común. 
<br/><br/>Debemos llegar a tiempo antes de que la infección interna sea irreversible e inyectarle una dosis de atropina, que las investigaciones indican que esa droga actúa eficazmente contra las toxinas absorbidas al beber agua.
<br/><br/>El virus es muy volátil y capaz de propagarse solo en el aire, por respiración directa.
<br/><br/>Debemos tener extremo cuidado con ello y cada operario que se acerque a la ciudad deberá tener su boca tapada, ya sea con un tapa-boca o con un pañuelo, sin él, contraeremos el virus y moriremos.
<br/><br/>Llevar suministros médicos a la ciudad puede ser de gran ayuda.
<br/><br/>Una vez inyectado el antídoto, se debe mantener la seguridad del pueblo hasta que llegue el helicóptero sanitario a llevar a los civiles.
<br/><br/>El envenenamiento del agua se produjo en los tanques de reserva ubicados al norte de la isla, sería muy importante hacerlos explotar y así evitar más intoxicaciones.
<br/><br/>
</p>"]];

// Situación
player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", 
"<p align='justify'>
Se logró liberar la ruta de suministros hacia Gatoro y Medicolin, ambas ciudades ya podrán volver a la normalidad.
<br/><br/>Ésto es un golpe fuerte para el BLAS, ya que si no controla los pueblos en su zona de influencia no recibe los cánones e impuestos extorsivos con lo que complementa su financiamiento.
<br/><br/>Para generar caos y continuar con su dominio territorial, el BLAS necesita más pueblos bajo su dominio.
<br/><br/>La fuerza de defensa local son muy ineficientes y aunque tenían claro que el BLAS iría por más, han descuidado el pueblo de Arapesca, ubicado en una isla al extremo oeste del delta.
<br/><br/>Agregaron toxinas al agua y generaron un descontrol sanitario de tal dimensión que las decisiones tomadas por los civiles fueron desmesuradas; no solo porque la gente está a punto de morir, sino por la propaganda generada.
<br/><br/>El BLAS ingresó rumores en toda la isla desde las iglesias, aprovechando que el 100% de la población de la isla es muy religiosa.
<br/><br/>Los rumores que luego se transformaron en noticias hasta de los medios decían que el virus que afectaba a sus pobladores eran demasiado contagiosos y que llevarían a la muerte segura, no solo a los afectados si no también a los que respiraran su aire cercano. Rumores que se tornaron realidad y la gente muere a cada hora.
<br/><br/>Eso provocó que toda la población abandonara la isla dejando a la espera de la muerte a sus propios familiares infectados.
<br/><br/>En su huida desesperada se llevaron consigo todo lo que pudieron y se estima que ningún suministro médico quedó.
<br/><br/>Los científicos que investigaron el virus y confirmaron que es mortal y que solo se puede detener con una dosis de atropina, que alivia los sintomas de espasmos musculares y problemas abdominales, bronquiales y cardíacos.
<br/><br/>Cualquiera de nosotros que respire el aire contaminado, morirá al poco tiempo sin posibilidad de que la atropina nos haga efecto.
<br/><br/>
</p>"]];


	
enableSentences false;

