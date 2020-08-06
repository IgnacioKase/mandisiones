case "BIS_tskEquipment": {
	if (_taskState == "") then {

		[_taskID,"armor"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				format [localize "STR_A3_Showcase_Jets_BIS_tskEquipment_desc", "</marker>", "<marker name = 'BIS_mrkResupply'>"],
				localize "STR_A3_Showcase_Jets_BIS_tskEquipment_title",
				localize "STR_A3_Showcase_Jets_BIS_tskEquipment_WP"
			],
			[BIS_Helmet, true],
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};

case "BIS_tskJet": {
	if (_taskState == "") then {

		[_taskID,"move"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				localize "STR_A3_Showcase_Jets_BIS_tskJet_desc",
				localize "STR_A3_Showcase_Jets_BIS_tskJet_title",
				localize "STR_A3_Showcase_Jets_BIS_tskJet_WP"
			],
			[BIS_Plane, true],
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};

case "BIS_tskTakeOff": {
	if (_taskState == "") then {

		[_taskID,"move"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				format [localize "STR_A3_Showcase_Jets_BIS_tskTakeOff_desc", "</marker>", "<marker name = 'BIS_mrkCarrier'>"],
				localize "STR_A3_Showcase_Jets_BIS_tskTakeOff_title",
				localize "STR_A3_Showcase_Jets_BIS_tskTakeOff_WP"
			],
			((markerPos "BIS_mrkTakeOff") vectorAdd [0, 0, 30]),
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};


case "BIS_tskCAP": {
	if (_taskState == "") then {

		[_taskID,"attack"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				format [localize "STR_A3_Showcase_Jets_BIS_tskCAP_desc", "</marker>", "<marker name = 'BIS_mrkCAP'>"],
				localize "STR_A3_Showcase_Jets_BIS_tskCAP_title",
				localize "STR_A3_Showcase_Jets_BIS_tskCAP_WP"
			],
			((markerPos "BIS_mrkCAP") vectorAdd [0, 0, 800]),
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};


case "BIS_tskCAS": {
	if (_taskState == "") then {

		[_taskID,"target"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				format [localize "STR_A3_Showcase_Jets_BIS_tskCAS_desc", "</marker>", "<marker name = 'BIS_mrkCAS'>"],
				localize "STR_A3_Showcase_Jets_BIS_tskCAS_title",
				localize "STR_A3_Showcase_Jets_BIS_tskCAS_WP"
			],
			markerPos "BIS_mrkCAS",
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};


case "BIS_tskLand": {
	if (_taskState == "") then {

		[_taskID,"move"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				format [localize "STR_A3_Showcase_Jets_BIS_tskLand_desc", "</marker>", "<marker name = 'BIS_mrkCarrier'>"],
				localize "STR_A3_Showcase_Jets_BIS_tskLand_title",
				localize "STR_A3_Showcase_Jets_BIS_tskLand_WP"
			],
			(markerPos "BIS_mrkLandingWp_1") vectorAdd [0,0,400],
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};


case "BIS_tskRearm": {
	if (_taskState == "") then {

		[_taskID,"rearm"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				format [localize "STR_A3_Showcase_Jets_BIS_tskRearm_desc", "</marker>", "<marker name = 'BIS_mrkAirfield'>", "<marker name = 'BIS_mrkRearm'>"],
				localize "STR_A3_Showcase_Jets_BIS_tskRearm_title",
				localize "STR_A3_Showcase_Jets_BIS_tskRearm_WP"
			],
			(markerPos "BIS_mrkRearm"),
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};


case "BIS_tskRepair": {
	if (_taskState == "") then {

		[_taskID,"repair"] call bis_fnc_taskSetType;

		[
			BIS_Player,
			_taskID,
			[
				format [localize "STR_A3_Showcase_Jets_BIS_tskRepair_desc", "</marker>", "<marker name = 'BIS_mrkAirfield'>", "<marker name = 'BIS_mrkRearm'>"],
				localize "STR_A3_Showcase_Jets_BIS_tskRepair_title",
				localize "STR_A3_Showcase_Jets_BIS_tskRepair_WP"
			],
			(markerPos "BIS_mrkRearm"),
			true
		] call BIS_fnc_taskCreate
	} else {
		if (_this == "Current") then {_taskID call BIS_fnc_taskSetCurrent} else {[_taskID, _this] call BIS_fnc_taskSetState}
	}
};
