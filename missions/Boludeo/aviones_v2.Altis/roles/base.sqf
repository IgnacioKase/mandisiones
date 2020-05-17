/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_unit", player], "_rol", ["_uniform", "arga_u_mbosque"], ["_helmet", "arga_cas_mbosque"], ["_vest", "arga_c_mbosque"], ["_backPack", "arga_m_mbosque_p"]];

if (!local _unit) exitWith {};

_unit call MANDI_fnc_clearEquipment;

_unit forceAddUniform _uniform;
_unit addVest _vest;
_unit addBackpack _backPack;
_unit addHeadgear _helmet;

if (! isNil "_rol") then {
    _unit execVM _rol;
};

/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/