private _target = _this # 0;
private _caller = _this # 1;
private _id = _this # 2;
private _chosenGearId = _this # 3 # 0;
private _allActions = actionIDs _target;

{_target removeAction _x} forEach _allActions; //remove all gearscript actions for that player

private _gearParams = BLU_GearNames # _chosenGearId;

[_caller, _gearParams # 1, _gearParams # 2] call FNC_GearScript; //add chosen gear to player

BLU_ChosenGearsCounters set [_chosenGearId, (BLU_ChosenGearsCounters # _chosenGearId) + 1];
publicVariable "BLU_ChosenGearsCounters"; //increment counter


switch (BLU_ChosenGearsCounters select _chosenGearId) do {
case 1: {BLU_Callers1 set [_chosenGearId,_caller];
				NAME1 set [_chosenGearId,name (_caller)];
				};
case 2: {BLU_Callers2 set [_chosenGearId,_caller];
				NAME2 set [_chosenGearId,name (_caller)];
				};
case 3: {BLU_Callers2 set [10,_caller];
				NAME2 set [10,name (_caller)];
				};
case 4: {BLU_Callers2 set [11,_caller];
				NAME2 set [11,name (_caller)];
				};
case 5: {BLU_Callers2 set [12,_caller];
				NAME2 set [12,name (_caller)];
				};
case 6: {BLU_Callers2 set [13,_caller];
				NAME2 set [13,name (_caller)];
				}; //cases (insertable by snippet)
};
publicVariable "BLU_Callers1";
publicVariable "BLU_Callers2";
publicVariable "NAME1";
publicVariable "NAME2";

O= O+ BLU_ChosenGearsCounters # 2;/*SL(3) count*/
P= P+ BLU_ChosenGearsCounters # 3;/*Efreitor(4) count*/
K= K+ BLU_ChosenGearsCounters # 4;/*Autorifleman(5) count*/
L= L+ BLU_ChosenGearsCounters # 5;/*RPG count(6)*/
U= U+ BLU_ChosenGearsCounters # 6;/*RPG ASST count(7)*/
Y=Y + BLU_ChosenGearsCounters # 7;/*rifleman count(8)*/
Y=ceil (Y/3);
publicVariable "O";
publicVariable "P";
publicVariable "K";
publicVariable "L";
publicVariable "U";
publicVariable "Y";


private _currentCount = BLU_ChosenGearsCounters # _chosenGearId;
private _maxCount = _gearParams # 3;
if (_currentCount >= _maxCount) then {
	[_target, _id] remoteExec ["removeAction", 0];
};




 format ["Squad 1 Members:\n\nSquad Leader: %1,\nEfreitor: %2,\n Autorifleman: %3,\n RPG: %4,\n RPG Asst.: %5,\n Rifleman 1: %6,\n Rifleman 2: %7,\n Rifleman 3: %8",NAME1 #2, NAME1 #3,
  NAME1 #4, NAME1 #5, NAME1 #6, NAME1 #7, NAME2 #7, NAME2 #10] remoteExec ["hint",BLU_Callers1 select [2,7]];
  format ["Squad 2 Members:\nSL: %1,\nEfreitor: %2,\n Autorifleman: %3,\n RPG: %4,\n RPG Asst.: %5,\n Rifleman 1: %6,\n Rifleman 2: %7,\n Rifleman 3: %8", NAME2 #2, NAME2 #3,
   NAME2 #4, NAME2 #5, NAME2 #6, NAME2 #11, NAME2 #12, NAME2 #13] remoteExec ["hint",BLU_Callers2 select [2,6]];

if (MAXCOUNT isEqualTo BLU_ChosenGearsCounters) then {
    HQ= BLU_Callers1 select [0,1];
	 S1= BLU_Callers1 select [2,7];
    S1= S1 pushBack (BLU_Callers2 # 7);
    S1= S1 pushBack (BLU_Callers2 # 10);
    S2= BLU_Callers2 select [2,6];
    S2= S2 pushBack (BLU_Caller2 # [11,13]);
    SPG= BLU_Callers1 select [8,9];
	 groupA = createGroup [east, true];
	 groupB = createGroup [east, true];
	 groupC = createGroup [east, false];
	 groupD = createGroup [east,false];
    HQ joinSilent groupA;
	 S1 joinSilent groupB;
    S2 joinSilent groupC;
    SPG joinSilent groupD;
	 GROUPS=[S1];
	  {
	     format ["You have been grouped to your respective squads, the vehicles are unlocked, and you will be released from the pen in 30 seconds"] remoteExec ["hint",_x]
	 } forEach GROUPS;
	 remoteExec ["RemovePen",2];

};
