_posPuertaLadoIzquierdo = [2155.94,7314.53,0];


private _pos = [6967.775, 7366.211, 0.026];

doorman setpos _pos;
flashbang setpos _pos;
deadman setpos _pos;
guard setpos _pos;

doorman switchmove "Acts_Breaching_Four";
flashbang switchmove "Acts_Breaching_Two";
deadman switchmove "Acts_Breaching_One"; 
guard switchmove "Acts_Breaching_Three";

enemy1 setpos _pos;
enemy2 setpos _pos;
enemy3 setpos _pos;

enemy1 switchmove "Acts_Breaching_Enemy_A";
enemy2 switchmove "Acts_Breaching_Enemy_B";
enemy3 switchmove "Acts_Breaching_Enemy_C";

[2155.93,7314.55,0]
[2157.46,7314.61,0]
[2156.789,7316.596,0]

[6951.066, 7368.806, 0.026]