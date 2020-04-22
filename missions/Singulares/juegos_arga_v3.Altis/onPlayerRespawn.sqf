private _group = (group player);

private _group_respawn_count = _group getVariable ["GROUP_RESPAWN_COUNT", 0];

_group_respawn_count = _group_respawn_count + 1;

_group setVariable ["GROUP_RESPAWN_COUNT", _group_respawn_count];