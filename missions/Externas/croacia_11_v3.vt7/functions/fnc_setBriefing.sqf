/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

private _colorAuthor = getMissionConfigValue ["COLOR_AUTOR", "#76a8f7"];
private _logo = getMissionConfigValue ["IMG_LOGO", "imgs\logo.paa"];

params["_recursos", "_enemigos", "_objetivos", "_mision", "_extractodeInteligencia", "_situacion", "_info", "_editores"];

player createDiaryRecord["Diary", ["Editores", "<br/><p align='center'><font color='"+_colorAuthor+"' size='28'>"+_editores+"</font></p><br/><img image= '"+_logo+"' width='323' height='323'/><br/>"]];

//Add when generalizable 
/*player createDiaryRecord["Diary", ["Imagenes", "<br/><p align='center'><font color='#ffffff' size='28'>"
+_imagenes+"</font></p><br/><br/>"]];*/

player createDiaryRecord["Diary", ["Nuestros Recursos", ([_recursos, true] call MANDI_fnc_makeInfo)]];

player createDiaryRecord["Diary", ["Fuerzas Enemigas", ([_enemigos, true] call MANDI_fnc_makeInfo)]];

player createDiaryRecord["Diary", ["Objetivos", ([_objetivos, true] call MANDI_fnc_makeInfo)]];

if((_extractodeInteligencia select 0) != "")then{
  player createDiaryRecord["Diary", ["Extracto de Inteligencia", ([_extractodeInteligencia, false] call MANDI_fnc_makeInfo)]];
};

if((_mision select 0) != "")then{
  player createDiaryRecord["Diary", ["Misi"+toString[243]+"n", ([_mision, false] call MANDI_fnc_makeInfo)]];
};

player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", ([_situacion, false] call MANDI_fnc_makeInfo)]];

player createDiaryRecord["Diary", ["Informaci"+toString[243]+"n", ([_info, true] call MANDI_fnc_makeInfo)]];

true;

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/