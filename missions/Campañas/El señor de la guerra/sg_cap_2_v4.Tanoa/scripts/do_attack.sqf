/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params ["_group"];

if(!isServer) exitWith { };

private _pos = [7649.41,6877.2,0];

if( !(isNull objectParent (leader _group))) then {
    private _vehicle = vehicle (leader _group);
    _vehicle setVehicleLock "LOCKED";
};

{
	doGetOut _x;
} forEach units _group;

sleep 2;

(units _group) doMove _pos;



/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/