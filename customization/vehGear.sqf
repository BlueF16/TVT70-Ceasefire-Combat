#include "core\vehGearCore.sqf" //DO NOT REMOVE

// Call this with [this, "LOADOUT"] call FNC_VehicleGearScript; in the Init field of the vehile
// Example:
// [this, "HUMMVEE"] call FNC_VehicleGearScript;

switch (_type) do {

	case "MORTAR": {

		_vehicle call FNC_RemoveAllVehicleGear;

		["ACE_1Rnd_82mm_Mo_HE", 25] call FNC_AddItemVehicle;

	};
	case "SMOKE": {

		_vehicle call FNC_RemoveAllVehicleGear;


		["ACE_1Rnd_82mm_Mo_Smoke", 10] call FNC_AddItemVehicle;

	};
	
	case "ILLUM": {

		_vehicle call FNC_RemoveAllVehicleGear;


		["ACE_1Rnd_82mm_Mo_Illum", 40] call FNC_AddItemVehicle;

	};

	case "BTR": {
		_vehicle call FNC_RemoveAllVehicleGear;

	["rhs_30Rnd_545x39_7N10_AK",10] call FNC_AddItemVehicle;
	["rhs_45Rnd_545X39_7N10_AK",4] call FNC_AddItemVehicle;
	["rhs_45Rnd_545X39_AK_Green",1] call FNC_AddItemVehicle;
	["rhs_30Rnd_762x39mm_89",10] call FNC_AddItemVehicle;
	["rhs_mag_rgd5",3] call FNC_AddItemVehicle;
	["rhs_mag_rdg2_white",3] call FNC_AddItemVehicle;
	["rhs_weap_rpg26",2] call FNC_AddItemVehicle;
	["rhs_rpg7_PG7VL_mag",2] call FNC_AddItemVehicle;
	["ACE_fieldDressing",10] call FNC_AddItemVehicle;
	["ACE_elasticBandage",10] call FNC_AddItemVehicle;
	["ACE_quikclot",10] call FNC_AddItemVehicle;
	["ACE_morphine",5] call FNC_AddItemVehicle;
	["ACE_packingBandage",10] call FNC_AddItemVehicle;
	["rhs_100Rnd_762x54mmR",2] call FNC_AddItemVehicle;
	["rhs_30Rnd_545x39_AK_green",3] call FNC_AddItemVehicle;
	["ACE_wirecutter",2] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_white",2] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_red",1] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_green",1] call FNC_AddItemVehicle;

};
	case "BRDM": {
		_vehicle call FNC_RemoveAllVehicleGear;

	["rhs_30Rnd_545x39_7N10_AK",6] call FNC_AddItemVehicle;
	["rhs_30Rnd_762x39mm_89",2] call FNC_AddItemVehicle;
	["rhs_mag_rgd5",1] call FNC_AddItemVehicle;
	["rhs_mag_rdg2_white",3] call FNC_AddItemVehicle;
	["rhs_weap_rpg26",1] call FNC_AddItemVehicle;
	["ACE_fieldDressing",5] call FNC_AddItemVehicle;
	["ACE_elasticBandage",5] call FNC_AddItemVehicle;
	["ACE_quikclot",5] call FNC_AddItemVehicle;
	["ACE_morphine",2] call FNC_AddItemVehicle;
	["ACE_packingBandage",5] call FNC_AddItemVehicle;
	["rhs_100Rnd_762x54mmR",1] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_white",1] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_red",1] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_green",1] call FNC_AddItemVehicle;
};

case "UKRBOX": {
	_vehicle call FNC_RemoveAllVehicleGear;

	["rhs_30Rnd_545x39_7N10_AK",20] call FNC_AddItemVehicle;
	["rhs_45Rnd_545X39_7N10_AK",10] call FNC_AddItemVehicle;
	["rhs_45Rnd_545X39_AK_Green",3] call FNC_AddItemVehicle;
	["rhs_mag_rgd5",4] call FNC_AddItemVehicle;
	["rhs_mag_rdg2_white",6] call FNC_AddItemVehicle;
	["rhs_weap_rpg26",2] call FNC_AddItemVehicle;
	["rhs_rpg7_PG7VL_mag",2] call FNC_AddItemVehicle;
	["rhs_100Rnd_762x54mmR",4] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_white",2] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_red",1] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_green",1] call FNC_AddItemVehicle;
};

case "UKRBMP": {
	_vehicle call FNC_RemoveAllVehicleGear;

	["rhs_30Rnd_545x39_7N10_AK",10] call FNC_AddItemVehicle;
	["rhs_45Rnd_545X39_7N10_AK",5] call FNC_AddItemVehicle;
	["rhs_45Rnd_545X39_AK_Green",3] call FNC_AddItemVehicle;
	["rhs_mag_rgd5",3] call FNC_AddItemVehicle;
	["rhs_mag_rdg2_white",3] call FNC_AddItemVehicle;
	["rhs_weap_rpg26",2] call FNC_AddItemVehicle;
	["rhs_rpg7_PG7VL_mag",2] call FNC_AddItemVehicle;
	["rhs_100Rnd_762x54mmR",2] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_white",2] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_red",1] call FNC_AddItemVehicle;
	["rhs_weap_rsp30_green",1] call FNC_AddItemVehicle;
};


};
