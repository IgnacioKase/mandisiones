//override launch action duration
//missionNamespace setVariable ["bis_carrierLaunchDuration",20],

// Disable fleeing, just in case
{_x allowFleeing 0} forEach allUnits;

// Many thanks to Zipper :-)
Bis_printText =
{
	private["_blocks","_block","_blockCount","_blockNr","_blockArray","_blockText","_blockTextF","_blockTextF_","_blockFormat","_formats","_inputData","_processedTextF","_char","_cursorBlinks","_cursorInvis"];

	_blockCount = count _this;

	_invisCursor = "<t color ='#00000000' shadow = '0'>_</t>";

	//process the input data
	_blocks = [];
	_formats = [];

	{
		_inputData = _x;

		_block 	= [_inputData, 0, "", [""]] call BIS_fnc_param;
		_format = [_inputData, 1, "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>", [""]] call BIS_fnc_param;

		//convert strings into array of chars
		_blockArray = toArray _block;
		{_blockArray set [_forEachIndex, toString [_x]]} forEach _blockArray;

		_blocks  = _blocks + [_blockArray];
		_formats = _formats + [_format];
	}
	forEach _this;

	//do the printing
	_processedTextF  = "";

	{
		_blockArray  = _x;
		_blockNr 	 = _forEachIndex;
		_blockFormat = _formats select _blockNr;
		_blockText   = "";
		_blockTextF  = "";
		_blockTextF_ = "";

		{
			_char = _x;

			_blockText = _blockText + _char;

			_blockTextF  = format[_blockFormat, _blockText + _invisCursor];
			_blockTextF_ = format[_blockFormat, _blockText + "_"];

			//print the output
			[(_processedTextF + _blockTextF_), 0, 0.15, 5, 0, 0, 90] spawn BIS_fnc_dynamicText;
			playSound "click";
			sleep 0.08;
			[(_processedTextF + _blockTextF), 0, 0.15, 5, 0, 0, 90] spawn BIS_fnc_dynamicText;
			sleep 0.02;
		}
		forEach _blockArray;

		if (_blockNr + 1 < _blockCount) then
		{
			_cursorBlinks = 5;
		}
		else
		{
			_cursorBlinks = 15;
		};

		for "_i" from 1 to _cursorBlinks do
		{
			[_processedTextF + _blockTextF_, 0, 0.15, 5, 0, 0, 90] spawn BIS_fnc_dynamicText;
			sleep 0.08;
			[_processedTextF + _blockTextF, 0, 0.15, 5, 0, 0, 90] spawn BIS_fnc_dynamicText;
			sleep 0.02;
		};

		//store finished block
		_processedTextF  = _processedTextF + _blockTextF;
	}
	forEach _blocks;

	//clean the screen
	["", 0, 0.15, 5, 0, 0, 90] spawn BIS_fnc_dynamicText;
};

//Title card
["\A3\Missions_F_Jets\video\showcase_jets_intro_01.ogv","STR_A3_Showcase_Jets_Titlecard"] spawn BIS_fnc_titlecard;
waitUntil { !isNil { BIS_fnc_titlecard_finished } };

// Start establishing shot

	private ["_colorWest", "_colorEast"];
	_colorWest = WEST call BIS_fnc_sideColor;
	_colorEast = EAST call BIS_fnc_sideColor;
	{_x set [3, 0.33]} forEach [_colorWest, _colorEast];

[
	[2571,4201,0],					// Target position
	localize "STR_A3_Showcase_Jets_SITREP_text",	// SITREP text
	250,							// 250m altitude
	100,							// 100m radius
	90,							// 90 degrees viewing angle
	1,							// Clockwise movement

	[]

] spawn BIS_fnc_establishingShot;

// If enemy armor was 'destroyed' by a bomb, unlock Bomberman achievement
_null = BIS_O_Tank addEventHandler ["HitPart",
{
	if ((_this select 0 select 6 select 4) isKindOf "BombCore") then {setStatValue ["JetsBomberman",1]; BIS_O_Tank removeAllEventHandlers "HitPart"; BIS_O_IFV removeAllEventHandlers "HitPart"};
}];

_null = BIS_O_IFV addEventHandler ["HitPart",
{
	if ((_this select 0 select 6 select 4) isKindOf "BombCore") then {setStatValue ["JetsBomberman",1]; BIS_O_Tank removeAllEventHandlers "HitPart"; BIS_O_IFV removeAllEventHandlers "HitPart"};
}];