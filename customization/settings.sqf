//ace_cookoff_enable = false; //this disables cookoff fire effect
//ace_cookoff_enableAmmoCookoff = false; //this disables secondary explosions
O=1;/*SL(3) count*/
P=1;/*Efreitor(4) count*/
K=1;/*Autorifleman(5) count*/
L=1;/*RPG count(6)*/
U=1;/*RPG ASST count(7)*/
Y=1;/*rifleman count(8)*/
BLU_GearNames = [["<t color='#FF0000'>Platoon Leader", "REB_PL", "3rd HQ", 0],["Medic","REB_MED","3rd HQ",0],["<t color='#FF0000'>Squad Leader", "REB_SL",(format ["%1 Squad", O]), 1],["<t color='#FF0000'>Efreitor", "REB_EFR", (format ["%1 Squad", O]), 0],["Autorifleman", "REB_RPK", (format ["%1 Squad", O]), 0],["RPG Grenadier", "REB_RPG", (format ["%1 Squad", O]), 0],
["RPG Assistant", "REB_RPGASST", (format ["%1 Squad", O]), 0],["Rifleman", "REB_RF", (format ["%1 Squad", O]), 0],["<t color='#FF0000'>SPG Commander","REB_SPGC","SPG Crew",0],["SPG Driver","REB_RF","SPG Crew",0]];
{
  box addAction [_x # 0, "gearChooser.sqf", [_forEachIndex]];
} forEach BLU_GearNames;

RemovePen = compile loadFile "pen.sqf";

if (isServer) then {

	setViewDistance 2500; //View distance for the server (the ai's)

	FW_TimeLimit = 70; //Time limit in minutes, to disable the time limit set it to 0
	FW_TimeLimitMessage = "Separatist Forces have not completed their objective they lack zeal!<br/>Putin sends more money."; //The message displayed when the time runs out

	[west, "Ukrainian Armed Forces", "player"] call FNC_AddTeam; //Adds a player team called USMC on side west
	[east, "Ukrainian Separatists", "player"] call FNC_AddTeam; //Adds a ai team called VDV on side east

	// [resistance, "Local Militia", "player"] call FNC_AddTeam; //Adds a player team called Local Militia on side resistance (aka independent)

	//Ticket pools for different sides
	FW_RespawnTicketsWest = 0;
	publicVariable "FW_RespawnTicketsWest";
	FW_RespawnTicketsEast = 20;
	publicVariable "FW_RespawnTicketsEast";
	FW_RespawnTicketsInd = 0;
	publicVariable "FW_RespawnTicketsInd";
	FW_RespawnTicketsCiv = 0;
	publicVariable "FW_RespawnTicketsCiv";

	//wave respawn
	FW_WaveSizeWest = 0; //How many players have to respawn before wave is released
	FW_WaveSizeEast = 20;
	FW_WaveSizeInd = 0;
	FW_WaveSizeCiv = 0;

	//Players should be put in enclosed space, when their number reaches treshold, the defined "gate" will disappear for 30 seconds
	FW_RespawnPenGateEast = [p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p20,p21,p22,p23];
  RespawnVehicles = [v7,v8,v9];
	publicVariable "FW_RespawnPenGateEast";
	publicVariable "RespawnVehicles";
	//FW_RespawnPenGateEast = YourEditorObjectName;
	//FW_RespawnPenGateInd = YourEditorObjectName;
	//FW_RespawnPenGateCiv = YourEditorObjectName;
	if (isNil "BLUFOR_ambientCombat") then {BLUFOR_ambientCombat = true};

	[{time > 5}, {
		_hideUnits = [];
		{
			if (_x == vehicle _x) then {
				[_x, true] remoteExec ["hideObject"];
			} else {
				[_x, true] remoteExec ["hideObject"];
				[vehicle _x, true] remoteExec ["hideObject"];
			};
		} forEach (units AMBIENT_1 + units AMBIENT_2 + units AMBIENT_3);

		lynx_mis_ambientFire = {
			if (BLUFOR_ambientCombat) then {
				[{ {_x setAmmo [primaryWeapon _x, 200]; _x doSuppressiveFire PROP_TARGET_AMBIENT1} forEach units AMBIENT_1; },[],random(30)] call CBA_fnc_waitAndExecute;
				[{ {_x setAmmo [primaryWeapon _x, 200]; _x doSuppressiveFire PROP_TARGET_AMBIENT2} forEach units AMBIENT_2; },[],random(30)] call CBA_fnc_waitAndExecute;
				[{ {_x setAmmo [primaryWeapon _x, 200]; _x doSuppressiveFire PROP_TARGET_AMBIENT3} forEach units AMBIENT_3; },[],random(30)] call CBA_fnc_waitAndExecute;

				[{ call lynx_mis_ambientFire },[],(10 + (random 30))] call CBA_fnc_waitAndExecute;
			};
		};

		[{ call lynx_mis_ambientFire },[],1] call CBA_fnc_waitAndExecute;
	}] call CBA_fnc_waitUntilAndExecute;

  BLU_ChosenGearsCounters = [];
  {BLU_ChosenGearsCounters pushBack 0;} forEach BLU_GearNames;
  publicVariable "BLU_ChosenGearsCounters";
  BLU_Callers1 = [];
  {BLU_Callers1 pushBack "Unassigned";} forEach BLU_GearNames;
  publicVariable "BLU_Callers1";
  NAME1 = [];
  {NAME1 pushBack "Unassigned";} forEach BLU_GearNames;
  publicVariable "NAME1";
  NAME2 = [];
  {NAME2 pushBack "Unassigned";} forEach BLU_GearNames;
  for "_i" from 0 to 2 do
{
    NAME2 pushBack "Unassigned";
};
  publicVariable "NAME2";
  BLU_Callers2 = [];
  {BLU_Callers2 pushBack "Unassigned";} forEach BLU_GearNames;
  for "_i" from 0 to 2 do
{
    BLU_Callers2 pushBack "Unassigned";
};
  publicVariable "BLU_Callers2";
  MAXCOUNT = [];
  {MAXCOUNT pushBack _x # 3;} forEach BLU_GearNames;
  publicVariable "MAXCOUNT";




};

if (!isDedicated) then {

	FW_DebugMessagesEnabled = true; //Only disable debug messages when the mission is released

	setViewDistance 2500; //View distance for the player

	call FNC_forceTerrainGrid; //uncomment this to force high terrain setting. This will prevent faraway objects from appearing as floating. Useful for missions with long sightlines.

	switch (side player) do { //Checks what team the player is on
		case east: {
			FW_RespawnTickets = 1; //If respawn is enabled you must create empty game logics, for respawn points, following the name format fw_side_respawn. Example: fw_west_respawn
		};
		//add more cases for other factions here
	};
};
