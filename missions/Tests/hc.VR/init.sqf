_spawnUnits = {
	execVM "spawn_viaScript.sqf";
	execVM "spawn_EditorPlaced.sqf";

	execVM "DAC\DAC_Config_Creator.sqf";
	execVM "DAC\spawn_viaDAC.sqf";
	true
};

if (!(isNil "HC1") && isMultiplayer) then {
	if(!isServer && !hasInterface) then {
		call _spawnUnits;
	};
} else {
	if (isServer) then {
		call _spawnUnits
	};
};