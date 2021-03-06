/*******************************************************************************
                          Realizado por |ArgA|MandI
						  Rol por       |ArgA|Maxi|Cbo
*******************************************************************************/

params [["_unit", player]];

if (!local _unit) exitWith {};

_unit addWeapon "acfaa_mp5sd_base";
_unit addPrimaryWeaponItem "acfaa_32Rnd_9x19_FMJ_Mag";
_unit addWeapon "rhsusf_weap_m9";
_unit addHandgunItem "rhsusf_mag_15Rnd_9x19_JHP";

for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_unit addItemToUniform "adv_aceSplint_splint";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToVest "ACE_DAGR";
_unit addItemToVest "ACE_microDAGR";
_unit addItemToVest "ACE_MapTools";
_unit addItemToVest "ACE_Flashlight_XL50";
for "_i" from 1 to 5 do {_unit addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";};
_unit addItemToBackpack "arga_h_norm";
_unit addItemToBackpack "arga_ca_bomber";

removeHeadgear _unit;
_unit addHeadgear "arga_bo_pilot";

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "tf_microdagr";
_unit linkItem "tf_anprc148jem_1";

/*******************************************************************************
                          Realizado por |ArgA|MandI
						  Rol por       |ArgA|Maxi|Cbo
*******************************************************************************/