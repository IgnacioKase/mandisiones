if(!isServer)then{
	exit;
};

{
	if(_x getVariable ['HUMVEE_CIEGO', false])then{
		_x addEventHandler ["GetIn", { 
		params ["_vehicle", "_role", "_unit", "_turret"];
		if(_role == "driver")then{
		titleCut ["", "BLACK FADED", 999];
		};
		}];

		_x addEventHandler ["GetOut", { 
		params ["_vehicle", "_role", "_unit", "_turret"];
		if(_role == "driver")then{
		titleCut ["", "BLACK IN", 2];
		};
		}];

		_x addEventHandler ["SeatSwitched", { 
		params ["_vehicle", "_unit1", "_unit2"];
		private _role = (assignedVehicleRole _unit1) select 0;
		if(_role == "driver")then{
		titleCut ["", "BLACK FADED", 999];
		}; 
		}];
	};
} forEach vehicles;