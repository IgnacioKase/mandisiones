///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////

task1 = player createSimpleTask ["Destruir el antiaereo 1"];
task1 setTaskState "Assigned";
task1 setSimpleTaskType "destroy";

task2 = player createSimpleTask ["Destruir el antiaereo 2"];
task2 setTaskState "Assigned";
task2 setSimpleTaskType "destroy";

task3 = player createSimpleTask ["Destruir el antiaereo 3"];
task3 setTaskState "Assigned";
task3 setSimpleTaskType "destroy";

task4 = player createSimpleTask ["Destruir el mortero Este"];
task4 setTaskState "Assigned";
task4 setSimpleTaskType "destroy";

task5 = player createSimpleTask ["Destruir el mortero Oeste"];
task5 setTaskState "Assigned";
task5 setSimpleTaskType "destroy";

task6 = player createSimpleTask ["Destruir la artileria 120mm"];
task6 setTaskState "Assigned";
task6 setSimpleTaskType "destroy";

aereoDer addEventHandler
["Killed",
    {
        if ((taskState task1) != "Succeeded")then
        {
            task1 setTaskState "Succeeded";
            ["TaskSucceeded",["","Destruir el antiaereo 1"]] call BIS_fnc_showNotification;
        };
    }
];

aereoMed addEventHandler
["Killed",
    {
        if ((taskState task2) != "Succeeded")then
        {
            task2 setTaskState "Succeeded";
            ["TaskSucceeded",["","Destruir el antiaereo 2"]] call BIS_fnc_showNotification;
        };
    }
];

aereoIzq addEventHandler
["Killed",
    {
        if ((taskState task3) != "Succeeded")then
        {
            task3 setTaskState "Succeeded";
            ["TaskSucceeded",["","Destruir el antiaereo 3"]] call BIS_fnc_showNotification;
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
                task4 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Este"]] call BIS_fnc_showNotification;
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
                task4 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Este"]] call BIS_fnc_showNotification;
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
                task4 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Este"]] call BIS_fnc_showNotification;
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
                task4 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Este"]] call BIS_fnc_showNotification;
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
                task5 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] call BIS_fnc_showNotification;
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
                task5 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] call BIS_fnc_showNotification;
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
                task5 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] call BIS_fnc_showNotification;
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
                task5 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir el mortero Oeste"]] call BIS_fnc_showNotification;
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
                task6 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] call BIS_fnc_showNotification;
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
                task6 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] call BIS_fnc_showNotification;
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
                task6 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] call BIS_fnc_showNotification;
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
                task6 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] call BIS_fnc_showNotification;
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
                task6 setTaskState "Succeeded";
                ["TaskSucceeded",["","Destruir la artileria 120mm"]] call BIS_fnc_showNotification;
            };
        };
    }
];

///////////////////////////////////////////////////
///////////Realizado por |ArgA|Ignacio/////////////
///////////////////////////////////////////////////