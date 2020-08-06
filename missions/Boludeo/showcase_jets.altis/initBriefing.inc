"BIS_tskEquipment" call BIS_fnc_missionTasks;
"BIS_tskJet" call BIS_fnc_missionTasks;
"BIS_tskTakeOff" call BIS_fnc_missionTasks;
"BIS_tskCAP" call BIS_fnc_missionTasks;

BIS_player createDiaryRecord [
	"Diary",
	[
		localize "STR_A3_Diary_Signal_title",
		localize "STR_A3_Showcase_Jets_Briefing_Signal_text"
	]
];

BIS_player createDiaryRecord [
	"Diary",
	[
		localize "STR_A3_Diary_Execution_title",
		format [localize "STR_A3_Showcase_Jets_Briefing_Execution_text", "</marker>", "<marker name = 'BIS_mrkCarrier'>", "<marker name = 'BIS_mrkAirfield'>", "<marker name = 'BIS_mrkCAP'>"]
	]
];

BIS_player createDiaryRecord [
	"Diary",
	[
		localize "STR_A3_Diary_Mission_title",
		format [localize "STR_A3_Showcase_Jets_Briefing_Mission_text", "</marker>", "<marker name = 'BIS_mrkCarrier'>", "<marker name = 'BIS_mrkAirfield'>", "<marker name = 'BIS_mrkCAP'>"]
	]
];

BIS_player createDiaryRecord [
	"Diary",
	[
		localize "STR_A3_Diary_Situation_title",
		format [localize "STR_A3_Showcase_Jets_Briefing_Situation_text", "</marker>", "<marker name = 'BIS_mrkCarrier'>", "<marker name = 'BIS_mrkAirfield'>", "<marker name = 'BIS_mrkCAP'>"]
	]
];

BIS_player createDiarySubject [
	"Showcase",
	localize "STR_A3_Diary_Showcase_title"
];

BIS_player createDiaryRecord [
	"Showcase",
	[
		localize "STR_A3_Diary_Summary_title",
		"<img image = '\a3\Missions_F_Jets\data\img\Showcase_Jets_briefing_CA.paa' width = '370' align='center'/>" + localize "STR_A3_Showcase_Jets_Showcase_Summary_text"
	]
];

//--- Select "Showcase" subject by default
[] spawn {
	disableserialization;
	_diary = finddisplay 37;
	_diaryList = _diary displayctrl 1001;
	waituntil {lbsize _diaryList > 4};
	_diaryList lbsetcursel 4;
};

[] spawn
{
	(findDisplay 37 displayCtrl 51) ctrlmapAnimAdd [1, 1, markerPos "BIS_mrk_BriefingCenter"];
	ctrlmapAnimCommit (findDisplay 37 displayCtrl 51);
};
