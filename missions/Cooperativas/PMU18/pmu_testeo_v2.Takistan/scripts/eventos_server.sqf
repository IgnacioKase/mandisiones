///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////

aereoDer addEventHandler
["Killed",
    {
        if ((taskState task1) != "Succeeded")then
        {
            (_this select 0) removeEventHandler ["Killed", 0];
            [[task1, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
            ["TaskSucceeded",["","Destruir el antiaereo 1"]] remoteExecCall ["BIS_fnc_showNotification", 0];
        };
    }
];

aereoMed addEventHandler
["Killed",
    {
        if ((taskState task2) != "Succeeded")then
        {
            (_this select 0) removeEventHandler ["Killed", 0];
            [[task2, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
            ["TaskSucceeded",["","Destruir el antiaereo 2"]] remoteExecCall ["BIS_fnc_showNotification", 0];
        };
    }
];

aereoIzq addEventHandler
["Killed",
    {
        if ((taskState task3) != "Succeeded")then
        {
            (_this select 0) removeEventHandler ["Killed", 0];
            [[task3, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
            ["TaskSucceeded",["","Destruir el antiaereo 3"]] remoteExecCall ["BIS_fnc_showNotification", 0];
        };
    }
];

mor addEventHandler
["Killed",
    {
        if ((!alive mor)&&(!alive mor_1)&&(!alive mor_2)&&(!alive mor_3))then
        {
            if ((taskState task4) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task4, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Este"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

mor_1 addEventHandler
["Killed",
    {
        if ((!alive mor)&&(!alive mor_1)&&(!alive mor_2)&&(!alive mor_3))then
        {
            if ((taskState task4) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task4, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Este"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

mor_2 addEventHandler
["Killed",
    {
        if ((!alive mor)&&(!alive mor_1)&&(!alive mor_2)&&(!alive mor_3))then
        {
            if ((taskState task4) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task4, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Este"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

mor_3 addEventHandler
["Killed",
    {
        if ((!alive mor)&&(!alive mor_1)&&(!alive mor_2)&&(!alive mor_3))then
        {
            if ((taskState task4) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task4, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Este"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

mor_4 addEventHandler
["Killed",
    {
        if ((!alive mor_4)&&(!alive mor_5)&&(!alive mor_6)&&(!alive mor_7))then
        {
            if ((taskState task5) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task5, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

mor_5 addEventHandler
["Killed",
    {
        if ((!alive mor_4)&&(!alive mor_5)&&(!alive mor_6)&&(!alive mor_7))then
        {
            if ((taskState task5) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task5, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

mor_6 addEventHandler
["Killed",
    {
        if ((!alive mor_4)&&(!alive mor_5)&&(!alive mor_6)&&(!alive mor_7))then
        {
            if ((taskState task5) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task5, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

mor_7 addEventHandler
["Killed",
    {
        if ((!alive mor_4)&&(!alive mor_5)&&(!alive mor_6)&&(!alive mor_7))then
        {
            if ((taskState task5) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Killed", 0];
                [[task5, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

art addEventHandler
["Explosion",
    {
        if (((getDammage art) >= 0.5)&&((getDammage art_1) >= 0.5)&&((getDammage art_2) >= 0.5)&&((getDammage art_3) >= 0.5)&&((getDammage art_4) >= 0.5))then
        {
            if ((taskState task6) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Explosion", 0];
                [[task6, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

art_1 addEventHandler
["Explosion",
    {
        if (((getDammage art) >= 0.5)&&((getDammage art_1) >= 0.5)&&((getDammage art_2) >= 0.5)&&((getDammage art_3) >= 0.5)&&((getDammage art_4) >= 0.5))then
        {
            if ((taskState task6) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Explosion", 0];
                [[task6, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

art_2 addEventHandler
["Explosion",
    {
        if (((getDammage art) >= 0.5)&&((getDammage art_1) >= 0.5)&&((getDammage art_2) >= 0.5)&&((getDammage art_3) >= 0.5)&&((getDammage art_4) >= 0.5))then
        {
            if ((taskState task6) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Explosion", 0];
                [[task6, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

art_3 addEventHandler
["Explosion",
    {
        if (((getDammage art) >= 0.5)&&((getDammage art_1) >= 0.5)&&((getDammage art_2) >= 0.5)&&((getDammage art_3) >= 0.5)&&((getDammage art_4) >= 0.5))then
        {
            if ((taskState task6) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Explosion", 0];
                [[task6, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

art_4 addEventHandler
["Explosion",
    {
        if (((getDammage art) >= 0.5)&&((getDammage art_1) >= 0.5)&&((getDammage art_2) >= 0.5)&&((getDammage art_3) >= 0.5)&&((getDammage art_4) >= 0.5))then
        {
            if ((taskState task6) != "Succeeded")then
            {
                (_this select 0) removeEventHandler ["Explosion", 0];
                [[task6, "Succeeded"], "scripts\completar_tarea.sqf"] remoteExec ["execVM", 0];
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] remoteExecCall ["BIS_fnc_showNotification", 0];
            };
        };
    }
];

///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////