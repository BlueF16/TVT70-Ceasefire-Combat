private _westCasualty = "Ukranian Armed Forces" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "USMC"
private _eastCasualty = "Ukranian Separatists" call FNC_CasualtyPercentage; //Gets the casualty percentage of team "VDV"
private _msg = "";





if ((_westCasualty >= 70) and ("EAST" == "cap_zone" call FNC_isCaptured)) then {
	if (_eastCasualty >= 80) then {_msg="TACTICAL"};
	if (_eastCasualty >= 70) then {_msg="PYRRHIC"};
	if (_eastCasualty >= 45) then {_msg="MINOR"};
	if (_eastCasualty >= 20) then {_msg="MAJOR"};
	if (_eastCasualty < 20) then {_msg="TOTAL"};

	(format ["Sepratist Forces %1 VICTORY<br/>The Ukranian Armed Forces have been routed<br/>and their trench system has been siezed.", _msg]) call FNC_EndMission;
	};

if (_eastCasualty >= 85) then {

	if (_westCasualty >= 70) then {_msg="PYRRHIC"};
	if (_westCasualty >= 45) then {_msg="MINOR"};
	if (_westCasualty >= 20) then {_msg="MAJOR"};
	if (_westCasualty < 20) then {_msg="TOTAL"};
	(format ["Ukranian Armed Forces %1 VICTORY<br/>The Sepratist Forces have sustained heavy casualties and have fled.", _msg]) call FNC_EndMission;
	};


	if (_westCasualty >= 85) then {

		if (_eastCasualty >= 70) then {_msg="PYRRHIC"};
		if (_eastCasualty >= 45) then {_msg="MINOR"};
		if (_eastCasualty >= 20) then {_msg="MAJOR"};
		if (_eastCasualty < 20) then {_msg="TOTAL"};
		(format ["Sepratist Forces %1 VICTORY<br/>The Ukranian Armed Forces have been routed.", _msg]) call FNC_EndMission;
		};




/*
Alternative methods of counting casualties

	"USMC" call FNC_casualtyCount;
		this will count how many members of a team died in the mission

	"USMC" call FNC_countTeam;
		this will check how many players are remaining in a team
		be careful as using this method will end the mission instantly if
		not enough players are present in the team
		if (_eastCasualty >= 75) exitWith {

			"USMC VICTORY<br />VDV has retreated due to casualties." call FNC_EndMission;
		};
Adding extraction

	["USMC", "ExtractionAreaMarker", 0.8] call FNC_hasExtracted;
		this will check if at least 80% of remaining forces are present in extraction area
*/

sleep (60); //This determines how frequently the end conditions should be checked in seconds
