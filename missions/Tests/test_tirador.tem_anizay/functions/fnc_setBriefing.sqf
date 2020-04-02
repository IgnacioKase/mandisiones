/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

params["_recursos", "_enemigos", "_objetivos", "_situacion", "_extractodeInteligencia", "_mision", "_situacionHistorica", "_info", "_imagenes", "_editores"];

player createDiaryRecord["Diary", ["Editores", "<br/><p align='center'><font color='#76a8f7' size='28'>"
+_editores+"</font></p><br/><img image= 'imgs\LogoArgA.jpg' width='303' height='303'/><br/>"]];

player createDiaryRecord["Diary", ["Imagenes", "<br/><p align='center'><font color='#ffffff' size='28'>"
+_imagenes+"</font></p><br/><br/>"]];

player createDiaryRecord["Diary", ["Nuestros Recursos", ([_recursos, true] call MANDI_fnc_makeInfo)]];

player createDiaryRecord["Diary", ["Fuerzas Enemigas", ([_enemigos, true] call MANDI_fnc_makeInfo)]];

player createDiaryRecord["Diary", ["Objetivos", ([_objetivos, true] call MANDI_fnc_makeInfo)]];

if((_extractodeInteligencia select 0) != "")then{
  player createDiaryRecord["Diary", ["Extracto de Inteligencia", ([_extractodeInteligencia, false] call MANDI_fnc_makeInfo)]];
};

player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", ([_situacion, false] call MANDI_fnc_makeInfo)]];

if((_situacionHistorica select 0) != "")then{
  player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n hist"+toString[243]+"rica", ([_situacionHistorica, false] call MANDI_fnc_makeInfo)]];
};

if((_mision select 0) != "")then{
  player createDiaryRecord["Diary", ["Misi"+toString[243]+"n", ([_mision, false] call MANDI_fnc_makeInfo)]];
};

player createDiaryRecord["Diary", ["Informaci"+toString[243]+"n", ([_info, true] call MANDI_fnc_makeInfo)]];

true;

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/