call compile preprocessFileLineNumbers "Engima\Civilians\Init.sqf";

MAC_fnc_switchMove =
{
   private["_object","_anim"];
   _object = _this select 0;
   _anim = _this select 1;
 
   _object switchMove _anim;
};
	
enableSentences false;


// Deshabilita el radio largo alcance automatico en mochila
tf_no_auto_long_range_radio = true;
TF_give_microdagr_to_soldier = false;

if(isServer && isNil "init_done") then 
{
	fn_EnfermarATodos = {
	[] execVM "scripts\enfermarATodos.sqf";
	};
	[] remoteExec ["fn_EnfermarATodos", 0, true];
	init_done = true;
};
