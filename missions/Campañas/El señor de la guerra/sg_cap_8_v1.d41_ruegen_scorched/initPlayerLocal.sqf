/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

call compile preprocessFile "core\events\initPlayerLocal.sqf";

execVM "scripts\deactivate_bomb.sqf";


comment "Exported from Arsenal by |ArgA|Maxi|CboÂ¹";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "arga_u_gen3_bosque_multicam";

comment "Add binoculars";
this addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_epinephrine";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_morphine";};
this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 3 do {this addItemToUniform "adv_aceSplint_splint";};
for "_i" from 1 to 10 do {this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 10 do {this addItemToUniform "ACE_packingBandage";};
this addItemToUniform "ACE_MapTools";
for "_i" from 1 to 2 do {this addItemToUniform "ACE_CableTie";};
this addItemToUniform "ACRE_PRC343";
this addItemToUniform "ACE_tourniquet";
this addItemToUniform "SmokeShellBlue";
this addGoggles "arga_pm_ojos_negro";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ACE_Altimeter";
this linkItem "ItemGPS";

comment "Set identity";
[this,"GreekHead_A3_05","male11eng"] call BIS_fnc_setIdentity;

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
