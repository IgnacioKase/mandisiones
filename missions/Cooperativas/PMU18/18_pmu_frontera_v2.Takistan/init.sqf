///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////

setViewDistance 10000;

player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", "<p align='left'>Nuestra base se encuentra en el campo aéreo del sur de Takistán (mirar mapa). Hemos recibido información que el ejército Iraní junto con el ISIS ha avanzado por casi todo el norte de Takistán donde han colocado artillería de 120mm y morteros protegidos por una serie de puestos de avanzada y antiaéreos, por lo que se nos hará muy difícil avanzar, si logramos destruir la artillería y limpiar las zonas podremos hacer que retrocedan.</p>"]];

player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n hist"+toString[243]+"rica", "<p align='left'>La guerra en el medio oriente continúa, pero cada vez la oposición se está haciendo más grande. Los conocemos como el ISIS, pero sabemos que no están solos. Tienen aliados importantes, algunos que los ayudan por las espaldas, otros declarados.En los últimos meses el ISIS avanzó a una velocidad preocupante, ha entrado en suelo takistaní. Esto ocurrió debido a que EE.UU retiró sus hombres hace 8 meses de la zona. El pueblo de Takistan pidió ayuda a la ONU quien decidió enviar a la coalición PMU para hacer que se retiren. Las tropas llegaran el día 19/05/2017 a las 0600hs (UTC+03:00). Además hemos recibido información otorgada por EE.UU que Irán movilizó sus blindados para apoyar el avance del ISIS. Creemos que llegaran el día 19/05/2017, desconocemos la hora pero tendremos que estar atentos.</p>"]];

player createDiaryRecord["Diary", ["Objetivo", "<p align='center'>-Destruir los antiaéreos</p><br/><p>-Destruir la artillería</p><br/><p>-Destruir los morteros</p>"]];

player createDiaryRecord["Diary", ["Editor", "<br/><p align='center'><font color='#539ACC' size='28'>ArgA</font></p><br/><img image= 'imgs\logo.paa' width='323' height='323'/><br/>"]];

setTerrainGrid 40;

MAC_fnc_switchMove =
{
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
};

[] execVM "scripts\tarea.sqf";

///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////