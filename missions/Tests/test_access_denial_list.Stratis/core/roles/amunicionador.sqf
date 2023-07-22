/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params [["_unit", player], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _useBigBackPack = true;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit addBackpack _back;
_unit addHeadgear _helmet;

comment "Add weapons";
_unit addWeapon "rhs_weap_hk416d145";
_unit addPrimaryWeaponItem "rhsusf_acc_SF3P556";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "150Rnd_556x45_Drum_Mag_F";
_unit addPrimaryWeaponItem "rhsusf_acc_grip1";
_unit addWeapon "bersa";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add binoculars";
_unit addWeapon "Binocular";

comment "Add items to containers";
_unit addItemToVest "ACE_Canteen";
_unit addItemToVest "ACE_SpareBarrel";
for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 2 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_FMJ";};
_unit addItemToVest "150Rnd_556x45_Drum_Mag_F";
_unit addItemToBackpack "ACE_SpareBarrel_Item";
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51_m61_ap";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "150Rnd_556x45_Drum_Mag_F";};


/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/