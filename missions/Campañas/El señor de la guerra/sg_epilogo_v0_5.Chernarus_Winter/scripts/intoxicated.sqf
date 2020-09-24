/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/
private _MASKS = ["avon_ct12","avon_ct12_strapless","avon_fm12","avon_fm12_strapless","avon_SF12","avon_SF12_strapless","G_AirPurifyingRespirator_02_black_F","G_AirPurifyingRespirator_02_olive_F","G_AirPurifyingRespirator_02_sand_F","G_AirPurifyingRespirator_01_F"];

INTOXICATED = 
{
	sleep 1;
	["ChromAberration", 200, [0.05, 0.05, true]] spawn {
		params ["_name", "_priority", "_effect", "_handle"];
		while {
			_handle = ppEffectCreate [_name, _priority];
			_handle < 0
		} do {
			_priority = _priority + 1;
		};
		_handle ppEffectEnable true;
		_handle ppEffectAdjust _effect;
		_handle ppEffectCommit 5;
		waitUntil {ppEffectCommitted _handle};
		uiSleep 3;
		_handle ppEffectEnable false;
		ppEffectDestroy _handle;
	};
	[player, ["tos", 50]] remoteExec ["say3D", 0, false];	
	sleep 2;
	player setDamage 0.25;
	sleep 3;
	player setDamage 0.5;
	[player, ["tos", 50]] remoteExec ["say3D", 0, false];
	"dynamicBlur" ppEffectAdjust [5]; "dynamicBlur" ppEffectCommit 10; "dynamicBlur" ppEffectEnable true; 
	sleep 3;
	player setDamage 0.75;
	sleep 2;
	player setDamage 1;
};

sleep 15;

private _count = 0;
private _isIntoxicated = false;

while { _count < 5000} do {
	sleep 1;
	_count = _count + 1;
	_isIntoxicated = !(goggles player in _MASKS);
	if (_isIntoxicated) exitWith {
		call INTOXICATED;
	};
};

if (!_isIntoxicated) then {
	execVM "scripts\intoxicated.sqf";
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/