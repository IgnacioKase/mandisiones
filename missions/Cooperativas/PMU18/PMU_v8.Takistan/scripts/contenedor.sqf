///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////

private _contenedor = _this select 0;
private _numero = _this select 2;

[_contenedor, _numero] remoteExec ["removeAction", 0];

switch(_contenedor)do
{
    case contenedor1:
    {
        [[malla1, contenedor1], "scripts\llamada_contenedor.sqf"] remoteExec ["execVM", 2];
        sleep 2;
        if (!(isObjectHidden malla1))then
        {
            [contenedor1, ["<t color='#FA5858'>Desarmar malla mimética</t>", "scripts\contenedor.sqf"]] remoteExec ["addAction", 0];
        }
        else
        {
            [contenedor1, ["<t color='#58FA82'>Armar malla mimética</t>", "scripts\contenedor.sqf"]] remoteExec ["addAction", 0];
        };
    };
    case contenedor2:
    {
        [[malla2, contenedor2], "scripts\llamada_contenedor.sqf"] remoteExec ["execVM", 2];
        sleep 2;
        if (!(isObjectHidden malla2))then
        {
            [contenedor2, ["<t color='#FA5858'>Desarmar malla mimética</t>", "scripts\contenedor.sqf"]] remoteExec ["addAction", 0];
        }
        else
        {
            [contenedor2, ["<t color='#58FA82'>Armar malla mimética</t>", "scripts\contenedor.sqf"]] remoteExec ["addAction", 0];
        };
    };
    case contenedor3:
    {
        [[malla3, contenedor3], "scripts\llamada_contenedor.sqf"] remoteExec ["execVM", 2];
        sleep 2;
        if (!(isObjectHidden malla3))then
        {
            [contenedor3, ["<t color='#FA5858'>Desarmar malla mimética</t>", "scripts\contenedor.sqf"]] remoteExec ["addAction", 0];
        }
        else
        {
            [contenedor3, ["<t color='#58FA82'>Armar malla mimética</t>", "scripts\contenedor.sqf"]] remoteExec ["addAction", 0];
        };
    };
};

///////////////////////////////////////////////////
///////////Realizado por |ArgA|MandI/////////////
///////////////////////////////////////////////////