MANDI_FIRE = 
{
	params ["_unit"];
	_unit forceWeaponFire [currentWeapon _unit, currentWeaponMode _unit];
};

casa animate ["door_2_rot", 0];

private _pos = [6086.996, 7346.486, 0];

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

_camera = "camera" camCreate [6092.91,7341.95,1.5];
_camera cameraEffect ["Internal", "back"];

showCinemaBorder false;

_camera camPrepareTarget [6087,7344.19,1.5];
_camera camPreparePos [6092.91,7341.95,1.5];
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;

sleep 7.5;

_camera camPrepareTarget [6088.78,7344.19,1.5];
_camera camPreparePos [6083.99,7340.55,1.5];
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;


sleep 1;

casa animate ["door_2_rot", 1];

sleep 1.4;

_camera camPrepareTarget [6087.96,7349.5,1.5];
_camera camPreparePos [6082.81,7344.86,1.5];
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;

sleep 2;

deadman call MANDI_FIRE;
sleep 0.1;
deadman call MANDI_FIRE;
sleep 0.07;
deadman call MANDI_FIRE;

sleep 1.9;

enemy2 call MANDI_FIRE;sleep 0.01;
enemy2 call MANDI_FIRE;sleep 0.07;
enemy2 call MANDI_FIRE;sleep 0.05;
enemy2 call MANDI_FIRE;sleep 0.1;
enemy2 call MANDI_FIRE;

sleep 0.5;

_camera camPrepareTarget [6082.81,7344.86,1.5];
_camera camPreparePos [6087.96,7349.5,1.5];
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;

sleep 6.1;

_camera camPrepareTarget [6081.92,7344.7,1.5];
_camera camPreparePos [6076.23,7349.58,1.5];
_camera camPrepareFov 0.740;
_camera camCommitPrepared 0;

sleep 2;

flashbang call MANDI_FIRE;

sleep 0.2;

flashbang call MANDI_FIRE;sleep 0.1;
flashbang call MANDI_FIRE;sleep 0.05;
flashbang call MANDI_FIRE;sleep 0.1;
flashbang call MANDI_FIRE;

//rhs_mag_mk84