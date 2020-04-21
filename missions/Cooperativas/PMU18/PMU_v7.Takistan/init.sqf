setViewDistance 10000;

player createDiaryRecord["Diary", ["Situaci"+toString[243]+"n", "<p align='left'> <marker name='marker_1'>aqui</marker></p>"]];

player createDiaryRecord["Diary", ["Objetivo", "<p align='center'>- </p>"]];

player createDiaryRecord["Diary", ["Editor", "<br/><p align='center'><font color='#539ACC' size='28'>ArgA</font></p><br/><img image= 'imgs\logo.paa' width='323' height='323'/><br/>"]];

setTerrainGrid 40;

/*contenedor1 addAction ["<t color='#58FA82'>Armar malla mimética</t>", {[[contenedor1, (_this select 2)], "scripts\contenedor.sqf"] remoteExec ["execVM", 2]; systemChat "Malla armada correctamente"}];
contenedor2 addAction ["<t color='#58FA82'>Armar malla mimética</t>", {[[contenedor2, (_this select 2)], "scripts\contenedor.sqf"] remoteExec ["execVM", 2]; systemChat "Malla armada correctamente"}];
contenedor3 addAction ["<t color='#58FA82'>Armar malla mimética</t>", {[[contenedor3, (_this select 2)], "scripts\contenedor.sqf"] remoteExec ["execVM", 2]; systemChat "Malla armada correctamente"}];*/

contenedor1 addAction ["<t color='#58FA82'>Armar malla mimética</t>", "scripts\llamada_contenedor.sqf", malla1];
contenedor2 addAction ["<t color='#58FA82'>Armar malla mimética</t>", "scripts\llamada_contenedor.sqf", malla2];
contenedor3 addAction ["<t color='#58FA82'>Armar malla mimética</t>", "scripts\llamada_contenedor.sqf", malla3];