target switchMove "Acts_welcomeOnHUB01_PlayerWalk_3_IK";

MANDI_FIRE = 
{
	params ["_unit"];
	_unit forceWeaponFire [currentWeapon _unit, currentWeaponMode _unit];
};

private _pos = [3621.67,13112.3,1.2];
private _pos2 = [3622.94,13125.5,1.2];

_camera = "camera" camCreate _pos;
_camera cameraEffect ["Internal", "back"];

showCinemaBorder false;

_camera camPrepareTarget [3636.25,13112.1,1.2];
_camera camPreparePos _pos;
_camera camPrepareFov 0.480;
_camera camCommitPrepared 0;


_camera camPrepareTarget [3644.72,13124.2,1.2];
_camera camPreparePos _pos2;
_camera camPrepareFov 0.480;
_camera camCommitPrepared 15.5;


sleep 4;

m1 enableSimulationGlobal true;
m1 playMove "Acts_starterPistol_fire";

sleep 5;

m1 call MANDI_FIRE;

f1 doTarget c1;
f2 doTarget c2;
f3 doTarget c3;
f4 doTarget c4;
f5 doTarget c5;

// sleep 0.5;

{ 
 _x setCaptive false; 
}forEach units g1;

sleep 0.7;

c1 switchMove "AdthPercMstpSnonWnonDnon_3";
c2 switchMove "AdthPercMstpSnonWnonDnon_A1";
c3 switchMove "AcinPercMrunSrasWrflDf_death";
c4 switchMove "AdthPercMstpSnonWnonDnon_3";
c5 switchMove "AdthPknlMwlkSrasWlnrDf_1";

sleep 0.7;

f1 doTarget objNull;
f2 doTarget objNull;
f3 doTarget objNull;
f4 doTarget objNull;
f5 doTarget objNull;

{ 
 _x setCaptive true; 
}forEach units g1;

sleep 2;

_camera camPrepareTarget camion;
_camera camPreparePos _pos2;
_camera camPrepareFov 0.480;
_camera camCommitPrepared 1;




