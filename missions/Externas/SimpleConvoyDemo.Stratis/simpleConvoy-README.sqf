//More info can be found on the BI Forums thread at :
// https://forums.bohemia.net/forums/topic/226608-simple-convoy-script-release/

//The script code :

TOV_fnc_SimpleConvoy = { 
	params ["_convoyGroup",["_convoySpeed",50],["_convoySeparation",50]];
	_convoyGroup setFormation "COLUMN";
	{(vehicle _x) limitSpeed _convoySpeed*1.15} forEach (units _convoyGroup);
	(vehicle leader _convoyGroup) limitSpeed _convoySpeed;
	while {sleep 10;true} do { 
		{
			(vehicle _x) setConvoySeparation _convoySeparation;
			if (speed vehicle _x < 5) then {
				(vehicle _x) doFollow (leader _convoyGroup);
			};	
		} forEach (units _convoyGroup)-(crew (vehicle (leader _convoyGroup)))-[player]; 
	}; 
};

//How to call it with parameters explanation :

convoyScript = [convoyGroup] spawn TOV_fnc_SimpleConvoy;
//Or
convoyScript = [convoyGroup, convoySpeed, convoySeparation] spawn TOV_fnc_SimpleConvoy;

/*
- convoyGroup : the group you want to be the convoy
- convoySpeed : Maximum speed of the convoy in km/h (default 50 km/h)
- convoySeparation : distance between each vehicle of the convoy (default 50m)
*/

//Also note the script won't exit itself !
//You can end it this way once you don't need it anymore (last waypoint reached or custom condition) :

terminate convoyScript;
{(vehicle _x) limitSpeed 5000} forEach (units convoyGroup);
