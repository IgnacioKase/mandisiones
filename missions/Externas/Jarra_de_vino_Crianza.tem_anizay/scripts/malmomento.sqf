_unit = _this select 0;
Pcolor = 1;
Pbright = 1;
Pgrain = 0.005;
Pblur = 0;
Pdamage = 0;
Pstamina = 60;
while {alive _unit} do {

_unit setDammage Pdamage;
_unit setStamina Pstamina;

"colorCorrections" ppEffectAdjust [Pbright, 1, 0, [1, 1, 1, 0], [1, 1, 1, Pcolor], [0.75, 0.25, 0, 1.0]];
"colorCorrections" ppEffectCommit 1;
"colorCorrections" ppEffectEnable TRUE;

"filmGrain" ppEffectAdjust [Pgrain, 1, 1, 0, 1];
"filmGrain" ppEffectCommit 1;
"filmGrain" ppEffectEnable TRUE;

"DynamicBlur" ppEffectAdjust [Pblur];
"DynamicBlur" ppEffectCommit 1;
"DynamicBlur" ppEffectEnable TRUE;

Pcolor = Pcolor - 0.04;
Pbright = Pbright - 0.03;
Pblur = Pblur + 0.1;
Pgrain = Pgrain + 0.0015;
Pdamage = Pdamage + 0.03;
Pstamina = Pstamina - 2;

sleep 26;
};