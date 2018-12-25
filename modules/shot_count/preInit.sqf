["Ammo Counter", "Counts ammunition types fired and displays it in the mission endscreen.", "TinfoilHate"] call FNC_RegisterModule;

//Ammo Counter Initilization
//Much script by beta, some script by TinfoilHate
//Sets up ammo counting
/*	It's dangerous to go alone, take this:
	_ammoArray = [];
	{
		{
			_ammoClass = getText (configFile >> "CfgMagazines" >> _x >> "ammo");
			if !(_ammoClass in _ammoArray) then {
				_ammoArray set [count _ammoArray,_ammoClass];
			};
		} forEach magazines _x;
	} forEach allMissionObjects "ALL";
	diag_log _ammoArray;
*/

	if (isServer) then {
		aCount_556BLU = 0;
		aCount_762BLU = 0;
		aCount_762RBLU = 0;
		aCount_762AKBLU = 0;
		aCount_8MMBLU = 0;
		aCount_45BLU = 0;
		aCount_545BLU = 0;
		aCount_40MMBLU = 0;
		aCount_KPVTBLU = 0;
		aCount_DSHKMBLU = 0;
		aCount_25MMBLU = 0;
		aCount_TOWBLU = 0;
		aCount_LATBLU = 0;
		aCount_MATBLU = 0;
		aCount_AT4BLU = 0;
		aCount_919BLU = 0;
		aCount_M2BLU = 0;
		aCount_M47BLU = 0;
		aCount_152BLU = 0;
		aCount_155BLU = 0;
		aCount_9x18BLU = 0;
		aCount_30MMBLU = 0;
		aCount_AGSBLU = 0;
		aCount_ATGMBLU = 0;


		aCount_556RED = 0;
		aCount_762RED = 0;
		aCount_762RRED = 0;
		aCount_762AKRED = 0;
		aCount_8MMRED = 0;
		aCount_45RED = 0;
		aCount_545RED = 0;
		aCount_40MMRED = 0;
		aCount_KPVTRED = 0;
		aCount_DSHKMRED = 0;
		aCount_25MMRED = 0;
		aCount_TOWRED = 0;
		aCount_LATRED = 0;
		aCount_MATRED = 0;
		aCount_30MMRED = 0;
		aCount_ATGMRED = 0;
		aCount_125RED = 0;
		aCount_919RED = 0;
		aCount_AT4RED = 0;
		aCount_M2RED = 0;
		aCount_82RED = 0;
		aCount_9x18RED = 0;
		aCount_73MMRED = 0;
		aCount_AGSRED = 0;



		aCount_addEH = {	//If units are spawned, this should be run on them: ["aCount_event_addEH", UNIT] call CBA_fnc_serverEvent;
			_obj = param [0];

			_obj setVariable ["aCount_originalSide",side _obj,false];

			if (_obj isKindOf "Man") then {
				_obj addEventHandler ["fired", {[((_this select 0) getVariable "aCount_originalSide"), (_this select 4)] call aCount_shotCount;}];
				_obj setVariable ["aCount_firedEh", true, false];
			};

			if (((_obj isKindOf "Land") && !(_obj isKindOf "Man")) || (_obj isKindOf "Air") || (_obj isKindOf "Ship")) then {
				if (count crew _obj > 0) then {
					{
						_x setVariable ["aCount_firedEh", true, false];
						_x setVariable ["aCount_originalSide",side _obj,false];
					} forEach crew _obj;
				};
				_obj addEventHandler ["fired", {[((crew (_this select 0)) select 0 getVariable "aCount_originalSide"), (_this select 4)] call aCount_shotCount;}];
				_obj setVariable ["aCount_firedEh", true, false];
			};
		};
		["aCount_event_addEH",aCount_addEH] call CBA_fnc_addEventHandler;

		aCount_shotCount = {
			switch (_this select 0) do {
				case WEST: {
					switch (_this select 1) do {
						case "rhs_ammo_556x45_Mk318_Ball": 			{ aCount_556BLU = aCount_556BLU + 1; };
						case "rhs_ammo_556x45_M855_Ball": 			{ aCount_556BLU = aCount_556BLU + 1; };


						case "UK3CB_BAF_762_Ball": 					{ aCount_762BLU = aCount_762BLU + 1; };
						case "HLC_762x51_ball": 					{ aCount_762BLU = aCount_762BLU + 1; };
						//case "B_762x51_Tracer_Red": 				{ aCount_762BLU = aCount_762BLU + 1; };
						case "HLC_762x51_MK316_20in": 				{ aCount_762BLU = aCount_762BLU + 1; };
						case "rhs_ammo_762x51_M118_Special_Ball": 	{ aCount_762BLU = aCount_762BLU + 1; };

						case "rhs_ammo_792x57_Ball": 				{ aCount_8MMBLU = aCount_8MMBLU + 1; };

						case "rhs_B_762x54_Ball": 					{ aCount_762RBLU = aCount_762RBLU + 1; };

						case "rhs_B_762x39_Ball_89": 				{ aCount_762AKBLU = aCount_762AKBLU + 1; };

						case "rhs_ammo_45ACP_MHP": 					{ aCount_45BLU = aCount_45BLU + 1; };

						case "rhs_B_545x39_7N10_Ball": 				{ aCount_545BLU = aCount_545BLU + 1; };
						case "rhs_B_545x39_Ball_Tracer_Green": 		{ aCount_545BLU = aCount_545BLU + 1; };

						case "rhs_g_vog30": 						{ aCount_AGSBLU = aCount_AGSBLU + 1; };

						case "rhs_g_vog25": 						{ aCount_40MMBLU = aCount_40MMBLU + 1; };
						case "rhs_g_vg40md_white": 					{ aCount_40MMBLU = aCount_40MMBLU + 1; };
						case "rhs_g_vg40md_green": 					{ aCount_40MMBLU = aCount_40MMBLU + 1; };
						case "rhs_g_vg40md_red": 					{ aCount_40MMBLU = aCount_40MMBLU + 1; };
						case "rhsusf_40mm_HE": 						{ aCount_40MMBLU = aCount_40MMBLU + 1; };
						case "rhsusf_40mm_HEDP": 					{ aCount_40MMBLU = aCount_40MMBLU + 1; };
						case "rhs_40mm_smoke_white": 				{ aCount_40MMBLU = aCount_40MMBLU + 1; };


						case "rhs_ammo_145x115mm": 					{ aCount_KPVTBLU = aCount_KPVTBLU + 1; };

						case "rhs_ammo_127x108mm": 					{ aCount_DSHKMBLU = aCount_DSHKMBLU + 1; };

						case "RHS_ammo_M792_HEI": 					{ aCount_25MMBLU = aCount_25MMBLU + 1; };
						case "RHS_ammo_M919_APFSDS": 				{ aCount_25MMBLU = aCount_25MMBLU + 1; };

						case "rhs_ammo_3uof8":						{ aCount_30MMBLU = aCount_30MMBLU + 1; };
						case "rhs_ammo_3ubr8":						{ aCount_30MMBLU = aCount_30MMBLU + 1; };

						case "rhs_ammo_TOW2A_AT": 					{ aCount_TOWBLU = aCount_TOWBLU + 1; };
						case "rhs_ammo_TOW2_BB": 					{ aCount_TOWBLU = aCount_TOWBLU + 1; };

						case "rhs_ammo_m72a7_rocket": 				{ aCount_LATBLU = aCount_LATBLU + 1; };
						case "rhs_rpg26_rocket": 					{ aCount_LATBLU = aCount_LATBLU + 1; };
						case "rhs_rshg2_rocket": 					{ aCount_LATBLU = aCount_LATBLU + 1; };

						case "rhs_rpg7v2_pg7v": 					{ aCount_MATBLU = aCount_MATBLU + 1; };
						case "rhs_rpg7v2_pg7vl": 					{ aCount_MATBLU = aCount_MATBLU + 1; };
						case "rhs_rpg7v2_og7v": 					{ aCount_MATBLU = aCount_MATBLU + 1; };
						case "rhs_rpg7v2_pg7vr":					{ aCount_MATBLU = aCount_MATBLU + 1; };

						case "rhs_B_9x19_7N21":						{ aCount_919BLU = aCount_919BLU + 1; };
						case "rhs_ammo_9x19_JHP":					{ aCount_919BLU = aCount_919BLU + 1; };

						case "rhs_ammo_M136_rocket":				{ aCount_AT4BLU = aCount_AT4BLU + 1; };

						case "rhs_ammo_127x99_Ball_Tracer_Red":		{ aCount_M2BLU = aCount_M2BLU + 1; };

						case "ace_missile_dragon": 					{ aCount_M47BLU = aCount_M47BLU + 1; };

						case "rhs_ammo_9m113m": 					{ aCount_ATGMBLU = aCount_ATGMBLU + 1; };

						case "itc_land_155mm": 						{ aCount_155BLU = aCount_155BLU + 1; };
						case "itc_land_155mm_inert": 				{ aCount_155BLU = aCount_155BLU + 1; };


					};
				};

				case EAST: {
					switch (_this select 1) do {
						case "rhs_ammo_556x45_Mk318_Ball": 			{ aCount_556RED = aCount_556RED + 1; };
						case "rhs_ammo_556x45_M855A1_Ball": 		{ aCount_556BLU = aCount_556BLU + 1; };

						case "UK3CB_BAF_762_Ball": 					{ aCount_762RED = aCount_762RED + 1; };
						case "HLC_762x51_ball": 					{ aCount_762RED = aCount_762RED + 1; };
						case "B_762x51_Tracer_Red": 				{ aCount_762RED = aCount_762RED + 1; };
						case "HLC_762x51_MK316_20in": 				{ aCount_762RED = aCount_762RED + 1; };
						case "rhs_ammo_762x51_M118_Special_Ball": 	{ aCount_762RED = aCount_762RED + 1; };

						case "rhs_ammo_792x57_Ball": 				{ aCount_8MMRED = aCount_8MMRED + 1; };

						case "rhs_B_762x54_Ball": 					{ aCount_762RRED = aCount_762RRED + 1; };
						case "rhs_B_762x54_7N1_Ball": 				{ aCount_762RRED = aCount_762RRED + 1; };

						case "rhs_B_762x39_Ball_89": 				{ aCount_762AKRED = aCount_762AKRED + 1; };
						case "rhs_B_762x39_Tracer": 				{ aCount_762AKRED = aCount_762AKRED + 1; };

						case "rhs_ammo_45ACP_MHP": 					{ aCount_45RED = aCount_45RED + 1; };

						case "rhs_B_545x39_7N10_Ball": 				{ aCount_545RED = aCount_545RED + 1; };
						case "rhs_B_545x39_Ball_Tracer_Green": 		{ aCount_545RED = aCount_545RED + 1; };

						case "rhs_g_vog30": 						{ aCount_AGSRED = aCount_AGSRED + 1; };

						case "rhs_g_vog25": 						{ aCount_40MMRED = aCount_40MMRED + 1; };
						case "rhs_g_vg40md_white": 					{ aCount_40MMRED = aCount_40MMRED + 1; };
						case "rhs_g_vg40md_green": 					{ aCount_40MMRED = aCount_40MMRED + 1; };
						case "rhs_g_vg40md_red": 					{ aCount_40MMRED = aCount_40MMRED + 1; };
						case "rhsusf_40mm_HE": 						{ aCount_40MMRED = aCount_40MMRED + 1; };
						case "rhsusf_40mm_HEDP": 					{ aCount_40MMRED = aCount_40MMRED + 1; };
						case "rhs_40mm_smoke_white": 				{ aCount_40MMRED = aCount_40MMRED + 1; };


						case "rhs_ammo_145x115mm": 					{ aCount_KPVTRED = aCount_KPVTRED + 1; };

						case "rhs_ammo_127x108mm": 					{ aCount_DSHKMRED = aCount_DSHKMRED + 1; };


						case "RHS_ammo_M792_HEI": 					{ aCount_25MMRED = aCount_25MMRED + 1; };
						case "RHS_ammo_M919_APFSDS": 				{ aCount_25MMRED = aCount_25MMRED + 1; };

						case "rhs_ammo_TOW2A_AT": 					{ aCount_TOWRED = aCount_TOWRED + 1; };
						case "rhs_ammo_TOW2_BB": 					{ aCount_TOWRED = aCount_TOWRED + 1; };

						case "rhs_ammo_m72a7_rocket": 				{ aCount_LATRED = aCount_LATRED + 1; };
						case "rhs_rpg26_rocket": 					{ aCount_LATRED = aCount_LATRED + 1; };
						case "rhs_rshg2_rocket": 					{ aCount_LATRED = aCount_LATRED + 1; };

						case "rhs_rpg7v2_pg7v": 					{ aCount_MATRED = aCount_MATRED + 1; };
						case "rhs_rpg7v2_pg7vl": 					{ aCount_MATRED = aCount_MATRED + 1; };
						case "rhs_rpg7v2_og7v": 					{ aCount_MATRED = aCount_MATRED + 1; };
						case "rhs_rpg7v2_pg7vr":					{ aCount_MATRED = aCount_MATRED + 1; };

						case "rhs_ammo_3uof8":						{ aCount_30MMRED = aCount_30MMRED + 1; };
						case "rhs_ammo_3ubr8":						{ aCount_30MMRED = aCount_30MMRED + 1; };

						case "rhs_ammo_9m119":						{ aCount_125RED = aCount_125RED + 1; };
						case "rhs_ammo_3bm46":						{ aCount_125RED = aCount_125RED + 1; };
						case "rhs_ammo_3bk31":						{ aCount_125RED = aCount_125RED + 1; };
						case "rhs_ammo_3of26":						{ aCount_125RED = aCount_125RED + 1; };

						case "rhs_B_9x19_7N21":						{ aCount_919RED = aCount_919RED + 1; };
						case "rhs_ammo_9x19_JHP":					{ aCount_919RED = aCount_919RED + 1; };

						case "rhs_ammo_M136_rocket":				{ aCount_AT4RED = aCount_AT4RED + 1; };

						case "rhs_ammo_127x99_Ball_Tracer_Red":		{ aCount_M2RED = aCount_M2RED + 1; };

						case "Sh_82mm_AMOS":						{ aCount_82RED = aCount_82RED + 1; };
						case "Smoke_82mm_AMOS_White":				{ aCount_82RED = aCount_82RED + 1; };
						case "itc_82mm_flare":						{ aCount_82RED = aCount_82RED + 1; };

						case "rhs_B_9x18_57N181S":					{ aCount_9x18RED = aCount_9x18RED + 1; };

						case "rhs_ammo_pg9v":						{ aCount_73MMRED = aCount_73MMRED + 1; };
						case "rhs_ammo_og9v":						{ aCount_73MMRED = aCount_73MMRED + 1; };

						case "rhs_ammo_9m131": 						{ aCount_ATGMRED = aCount_ATGMRED + 1; };


					};
				};
			};
		};

		aCount_endCount = {
			_munitionsBLU = [];
			if (aCount_545BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_545BLU,"5.45x39"]]; };
			if (aCount_919BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_919BLU,"9x19"]]; };
			if (aCount_556BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_556BLU,"5.56x45"]]; };
			if (aCount_762BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_762BLU,"7.62x51"]]; };
			if (aCount_762RBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_762RBLU,"7.62x54R"]]; };
			//if (aCount_762AKBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_762AKBLU,"7.62x39"]]; };
			if (aCount_8MMBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_8MMBLU,"7.92mm Mauser"]]; };
			if (aCount_45BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_45BLU,".45 ACP"]]; };
			if (aCount_AGSBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_AGSBLU,"VOG 30"]]; };
			if (aCount_40MMBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_40MMBLU,"40mm Grenades"]]; };
			//if (aCount_M2BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_M2BLU,"12.7x99"]]; };
			if (aCount_KPVTBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_KPVTBLU,"14.5x114"]]; };
			if (aCount_DSHKMBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_DSHKMBLU,"12.7x108"]]; };
			if (aCount_30MMBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_30MMBLU,"2A42 30mm"]]; };
			//if (aCount_TOWBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_TOWBLU,"TOW Missile"]]; };
			if (aCount_LATBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_LATBLU,"RPG-26"]]; };
			if (aCount_MATBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_MATBLU,"RPG-7"]]; };
			//if (aCount_AT4BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_AT4BLU,"M136 AT"]]; };
			if (aCount_ATGMBLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_ATGMBLU,"9M113 Konkurs"]]; };
			if (aCount_155BLU > 0) then { _munitionsBLU set [count _munitionsBLU,[aCount_155BLU,"2S3 152.4mm Rounds"]]; };


			_munitionsRED = [];
			if (aCount_919RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_919RED,"9x19"]]; };
			if (aCount_545RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_545RED,"5.45x39"]]; };
			if (aCount_556RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_556RED,"5.56x45"]]; };
			if (aCount_762RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_762RED,"7.62x51"]]; };
			if (aCount_762AKRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_762AKRED,"7.62x39"]]; };
			if (aCount_762RRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_762RRED,"7.62x54R"]]; };
			if (aCount_8MMRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_8MMRED,"7.92mm Mauser"]]; };
			if (aCount_45RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_45RED,".45 ACP"]]; };
			if (aCount_AGSRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_AGSRED,"VOG 30"]]; };
			if (aCount_40MMRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_40MMRED,"40mm Grenades"]]; };
			if (aCount_M2RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_M2RED,"12.7x99"]]; };
			if (aCount_KPVTRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_KPVTRED,"14.5x114"]]; };
			if (aCount_DSHKMRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_DSHKMRED,"12.7x108"]]; };
			if (aCount_25MMRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_25MMRED,"25x137"]]; };
			if (aCount_TOWRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_TOWRED,"TOW Missile"]]; };
			if (aCount_LATRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_LATRED,"RPG-26"]]; };
			if (aCount_MATRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_MATRED,"RPG-7"]]; };
			if (aCount_30MMRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_30MMRED,"30x165"]]; };
			if (aCount_125RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_125RED,"125mm 2A46 Rounds"]]; };
			if (aCount_ATGMRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_ATGMRED,"9K115 Metis-M"]]; };
			if (aCount_AT4RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_AT4RED,"M136 AT"]]; };
			if (aCount_73MMRED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_73MMRED,"SPG-9 73mm"]]; };
			if (aCount_82RED > 0) then { _munitionsRED set [count _munitionsRED,[aCount_82RED,"82mm Rounds"]]; };



			["aCount_event_scoreScreen", [_munitionsBLU,_munitionsRED]] call CBA_fnc_globalEvent;
		};
	};

	if (!isDedicated && hasInterface) then {
		aCount_shotDisplay = {
			_this spawn {
				_arrayBLU = param [0];
				_arrayRED = param [1];

				aCount_textBLU = "UKR Munitions Expended:<br/>";
				aCount_textRED = "Separatists Munitions Expended:<br/>";

				{
					_count = _x select 0;
					_label = _x select 1;

					aCount_textBLU = aCount_textBLU + _label + ": " + str(_count) + "<br/>";
				} forEach _arrayBLU;
				{
					_count = _x select 0;
					_label = _x select 1;

					aCount_textRED = aCount_textRED + _label + ": " + str(_count) + "<br/>";
				} forEach _arrayRED;
			};
		};

		["aCount_event_scoreScreen",aCount_shotDisplay] call CBA_fnc_addEventHandler;
	};
