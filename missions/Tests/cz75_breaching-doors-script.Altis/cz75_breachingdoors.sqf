/*
Breaching-Doors-script for ArmA3-Buildings by LuzifR (v0.07)
------------------------------------------------------------
Squadpage: http://steamcommunity.com/groups/cz75-squad

Description:
	This script locks doors or gates of ArmA3-Buildings in a trigger area and makes it possible to force open them with a Claymore charge.

Execution from a trigger:
	Size			- Script is running for every building or gates in the trigger area.
	Condition		- true
	On Activation		- 0=[thisTrigger] execVM "cz75_breachingdoors.sqf";

Parameter:
	Trigger name		- Variable Name of the trigger (default: thisTrigger)
	Buildings percentage	- How much percent (0-100) of buildings with closed doors (default if empty: 100)
	Doors percentage	- How much percent (0-100) of closed doors (default if empty: 100)
	Building class		- Which classes of buildings have closed doors (default if empty: "Building")

Examples:
	- In this case all doors of all buildings or gates in the triggerarea are closed:
		0=[thisTrigger] execVM "cz75_breachingdoors.sqf";
		(equal to: 0=[thisTrigger,100,100,"Building"] execVM "cz75_breachingdoors.sqf";)

	- In this case in 20% of all buildings or gates in the triggerarea all doors in this building are closed:
		0=[thisTrigger,20,100] execVM "cz75_breachingdoors.sqf";
	
	- In this case 50% of the doors of all Military-Cargo-HQ buildings in the triggerarea are closed:
		0=[thisTrigger,100,50,"Land_Cargo_HQ_V1_F"] execVM "cz75_breachingdoors.sqf";
*/



if (!isServer) exitWith {};

sleep 2; // To make sure the script works with placed buildings

private ["_trigger","_randomBuildings","_randomDoors","_classes","_count","_doors","_i"];

// Defaults
_trigger = _this select 0;
_randomBuildings = 100;
_randomDoors = 100;
_classes = "Building";

_count = count _this;
if (_count > 0) then {_trigger = _this select 0};
if (_count > 1) then {_randomBuildings = _this select 1};
if (_count > 2) then {_randomDoors = _this select 2};
if (_count > 3) then {_classes = _this select 3};

{	if (random 100 <= _randomBuildings) then {
		_doors = getNumber (configFile >> "CFGVehicles" >> typeOf _x >> "numberOfDoors");
		for "_i" from 1 to _doors do {
			if (random 100 <= _randomDoors) then {
				[_i,_x,_forEachIndex] spawn {

					private ["_door","_building","_pos","_doorpos","_index","_dummy","_damage"];

					_door = _this select 0;
					_building = _this select 1;

					_pos = _building selectionPosition (format ["Door_%1_trigger", _door]);
					_doorpos = _building modelToWorld _pos;

					//_index = _this select 2;
					//_doormark = createMarker [str _index + "_" + str _door, _doorpos];
					//_doormark setMarkerType "hd_dot";

					_dummy = "Land_MetalBarrel_F" createvehicle [0,0,0];
					_dummy enableSimulation false;
					_dummy setPos [_doorpos select 0, _doorpos select 1, (_doorpos select 2)-1];
					_dummy hideObjectGlobal true;

					_damage = switch (typeOf _building) do {
						case "Land_City_Gate_F": 	{0.006};
						case "Land_Stone_Gate_F": 	{0.1};
						case "Land_Medevac_house_V1_F";
						case "Land_Cargo_House_V2_F";
						case "Land_Cargo_House_V3_F";
						case "Land_Cargo_House_V1_F":	{0.11};
						default 			{0.025};
					};

					_building animate [ format["door_%1_rot",_door], 0];
					_building setVariable[format["bis_disabled_Door_%1",_door],1,true];
					while {damage _dummy < _damage} do {
						if (_building animationPhase format["door_%1_rot",_door] > 0) then {
							_building animate [ format["door_%1_rot",_door], 0];
						};
						sleep 0.1;
					};
					_building setVariable[format["bis_disabled_Door_%1",_door],0,true];
					_building animate [ format["door_%1_rot",_door], 1];

					deleteVehicle _dummy;
				};
			};
		};
	};
} forEach nearestObjects [_trigger,[_classes],triggerArea _trigger select 0];
