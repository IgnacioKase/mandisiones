/* 
 * This file contains config parameters and a function call to start the civilian script.
 * The parameters in this file may be edited by the mission developer.
 *
 * See file Engima\Civilians\Documentation.txt for documentation and a full reference of 
 * how to customize and use Engima's Civilians.
 */
 
private ["_parameters"];

// Set civilian parameters.
_parameters = [
	["UNIT_CLASSES", ["LOP_Tak_Civ_Man_06", "LOP_Tak_Civ_Man_08", "LOP_Tak_Civ_Man_01", "LOP_Tak_Civ_Man_05", "LOP_Tak_Civ_Man_07", "LOP_Tak_Civ_Man_02", "LOP_Tak_Civ_Man_09", "LOP_Tak_Civ_Man_10", "LOP_Tak_Civ_Man_11", "LOP_Tak_Civ_Man_12", "LOP_Tak_Civ_Man_14", "LOP_Tak_Civ_Man_04", "LOP_Tak_Civ_Man_13", "LOP_Tak_Civ_Man_16", "LOP_Tak_Civ_Man_15"]],
	["UNITS_PER_BUILDING", 0.4],
	["MAX_GROUPS_COUNT", 100],
	["MIN_SPAWN_DISTANCE", 25],
	["MAX_SPAWN_DISTANCE", 300],
	["BLACKLIST_MARKERS", ["MilitaryAreaMarker", "marker_6", "marker_7", "NoCivsHereMarker"]],
	["HIDE_BLACKLIST_MARKERS", true],
	["ON_UNIT_SPAWNED_CALLBACK", {}],
	["ON_UNIT_REMOVE_CALLBACK", { true }],
	["DEBUG", false]
];

// Start the script
_parameters spawn ENGIMA_CIVILIANS_StartCivilians;
