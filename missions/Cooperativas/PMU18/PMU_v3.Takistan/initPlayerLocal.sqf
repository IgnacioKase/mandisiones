removeGoggles player;

cartel setObjectTexture [0,"imgs\a3cr.jpg"];
cartel1 setObjectTexture [0,"imgs\arga.jpg"];
cartel2 setObjectTexture [0,"imgs\fpl.jpg"];
cartel3 setObjectTexture [0,"imgs\sfs.jpg"];
cartel4 setObjectTexture [0,"imgs\zr.jpg"];
pantalla setObjectTexture [0,"imgs\portada.jpg"];
camara setObjectTexture [0,"imgs\portada.jpg"];
pantalla1 setObjectTexture [0,"imgs\arga.jpg"];
pantalla2 setObjectTexture [0,"imgs\fpl.jpg"];
pantalla3 setObjectTexture [0,"imgs\zr.jpg"];
pantalla4 setObjectTexture [0,"imgs\logomi.jpg"];
pantalla5 setObjectTexture [0,"imgs\a3cr.jpg"];
pantalla6 setObjectTexture [0,"imgs\sfs.jpg"];

[] execVM "scripts\3rdView Restrictions.sqf";

null = [2000, 800] execVM "scripts\dist_vis.sqf";

null = [] execVM "scripts\intro.sqf";

camara addAction ["Cámara", {"scripts\camara.sqf" remoteExec ["execVM", clientOwner ];}];