/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_originalString"]; 
private _string = toArray _originalString;
private _begin = -1; 
private _end = -1; 
private _length = count _string; 

if (_length != 0) then { 
	for "_i" from 0 to _length step 1 do {
		if (_string select _i != 32 && _begin == -1) then { 
			_begin = _i; 
		}; 
	}; 
	for "_i" from _length to 0 step -1 do { 
		if (_string select _i != 32 && _end == -1) then { 
			_end = _i; 
		}; 
	}; 
}; 

[_originalString, _begin, _end] call BIS_fnc_trimString; 

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/