/*
Author: Gkenny
Randomized UKR equipment

Required Addons:
RHS
Acre
ACE

	 call selectRandom ["rhs_acc_1p29","rhs_acc_1p78"];
[this, "UKR_RF"] call FNC_GearScript;
[this, "UKR_RPG"] call FNC_GearScript;
[this, "UKR_RPGASST"] call FNC_GearScript;
[this, "UKR_RPK"] call FNC_GearScript;
[this, "UKR_SL"] call FNC_GearScript;
[this, "UKR_EFR"] call FNC_GearScript;
[this, "UKR_GNR"] call FNC_GearScript;
[this, "UKR_DRVR"] call FNC_GearScript;
*/

#define package "UKR_"

#define IFAK \
	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem; \
	["ACE_packingBandage", 3, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 3, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;

#define grenades \
	["rhs_mag_rgd5",1] call FNC_AddItem; \
	["rhs_mag_rdg2_white",1] call FNC_AddItem;

#define items \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ItemMap"] call FNC_AddItem;\
	["ACE_earplugs"] call FNC_AddItem;


#define uniform \
	["WALSH_G3_Ukraine_Full_NF","WALSH_M88_ukraine","WALSH_G3_Ukraine_NF","WALSH_G3_Ukraine","WALSH_G3_Ukraine_Full"] call FNC_AddItemRandom;

#define vest \
	["WALSH_mbav_ukraine_light_camo","WALSH_mbav_ukraine_light"] call FNC_AddItemRandom;

#define helmet \
	["WALSH_6b27m","WALSH_6b27m_ess"] call FNC_AddItemRandom;



#define ak74 \
	["rhs_30Rnd_545x39_7N10_AK",7,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";

#define ak74m \
	["rhs_30Rnd_545x39_7N10_AK",7,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74m"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk";

#define aks74u \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_aks74u"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u";

#define weapon \
	call selectRandom [{ak74},{ak74m}];


case (package + "RF") : {
	uniform;
	vest;
	helmet;

	IFAK;
	items;
	grenades;

	weapon;
};

case (package + "RPG") : {
	uniform;
	vest;
	helmet;
	["rhs_rpg_empty"] call FNC_AddItem;

	IFAK;
	items;
	grenades;

	["rhs_rpg7_PG7VL_mag",2,"backpack"] call FNC_AddItem; // RPGs
	["rhs_rpg7_OG7V_mag",1,"backpack"] call FNC_AddItem;

	weapon;
	["rhs_weap_rpg7"] call FNC_AddItem; // RPG-7
	_unit addSecondaryWeaponItem "rhs_acc_pgo7v3"; //RPG Scope
};

case (package + "RPGASST") : {
	uniform;
	vest;
	helmet;
	["rhs_rpg_empty"] call FNC_AddItem;

	IFAK;
	items;
	grenades;

	["rhs_rpg7_PG7VL_mag",2,"backpack"] call FNC_AddItem; // RPGs
	["rhs_rpg7_OG7V_mag",1,"backpack"] call FNC_AddItem;

	weapon;
};

case (package + "PL") : {
	uniform;
	["WALSH_mbav_ukraine_rifleman_camo","WALSH_mbav_ukraine_rifleman"] call FNC_AddItemRandom;
	helmet;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;

	grenades;
	["rhs_mag_nspd",1,"vest"] call FNC_AddItem;
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;

	ak74m;
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
};

case (package + "PLSGT") : {
	uniform;
    ["WALSH_mbav_ukraine_grenadier_camo","WALSH_mbav_ukraine_grenadier"] call FNC_AddItemRandom;
	helmet;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;

	grenades;
	["rhs_mag_nspd",1,"vest"] call FNC_AddItem;
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem;
	["rhs_VOG25",7,"vest"] call FNC_AddItem;
	["rhs_GRD40_White",3,"vest"] call FNC_AddItem;
	["rhs_GRD40_Green",1,"vest"] call FNC_AddItem;
	["rhs_GRD40_Red",2,"vest"] call FNC_AddItem;


	["rhs_weap_ak74n_gp25","rhs_weap_ak74m_gp25"] call FNC_AddItemRandom;
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";
	_unit addPrimaryWeaponItem "rhs_acc_ekp8_02";
};

case (package + "SL") : {
	uniform;
	["WALSH_mbav_ukraine_rifleman_camo","WALSH_mbav_ukraine_rifleman"] call FNC_AddItemRandom;
	helmet;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;

	grenades;
	["rhs_mag_nspd",1,"vest"] call FNC_AddItem;

	ak74m;
	_unit addPrimaryWeaponItem "rhs_acc_1p29";
};

case (package + "EFR") : {
	uniform;
	["WALSH_mbav_ukraine_grenadier_camo","WALSH_mbav_ukraine_grenadier"] call FNC_AddItemRandom;
	helmet;

	IFAK;
	items;
	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;

	grenades;
	["rhs_30Rnd_545x39_7N10_AK",7,"vest"] call FNC_AddItem;
	["rhs_VOG25",8,"vest"] call FNC_AddItem;
	["rhs_GRD40_White",3,"vest"] call FNC_AddItem;
	["rhs_GRD40_Green",1,"vest"] call FNC_AddItem;
	["rhs_GRD40_Red",1,"vest"] call FNC_AddItem;


	["rhs_weap_ak74n_gp25","rhs_weap_ak74m_gp25"] call FNC_AddItemRandom;
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";
	_unit addPrimaryWeaponItem "rhs_acc_ekp8_02";
};

case (package + "RPK") : {
	uniform;
	vest;
	helmet;
	["WALSH_Kitbag_Ukraine"] call FNC_AddItem;

	IFAK;
	items;
	grenades;

	["rhs_45Rnd_545X39_7N10_AK",5,"vest"] call FNC_AddItem;
	["rhs_45Rnd_545X39_7N10_AK",4,"backpack"] call FNC_AddItem;
	["rhs_45Rnd_545X39_AK_Green",1,"backpack"] call FNC_AddItem;

	["hlc_rifle_rpk"] call FNC_AddItem;
};

case (package + "GNR") : {
	uniform;
	vest;
	["rhs_tsh4"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;

	IFAK;
	items;
	grenades;
	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;

	aks74u;

};

case (package + "DRVR") : {
	uniform;
	vest;
	["rhs_tsh4"] call FNC_AddItem;
	["G_Balaclava_blk"] call FNC_AddItem;


	IFAK;
	items;
	grenades;

	aks74u;
};

case (package + "RFAT") : {
	uniform;
	vest;
	helmet;

	IFAK;
	items;
	grenades;

	weapon;
	["rhs_weap_rpg26"] call FNC_AddItem;
};


case (package + "FO") : {

	uniform;
	["WALSH_mbav_ukraine_rifleman_camo","WALSH_mbav_ukraine_rifleman"] call FNC_AddItemRandom;
	helmet;
	["UK3CB_BAF_B_Bergen_OLI_JTAC_A"] call FNC_AddItem;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;
  ["ACE_MapTools",1] call FNC_AddItem;
	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
	["ACRE_PRC117F",1,"backpack"] call FNC_AddItem;

	grenades;
	["rhs_mag_nspd",1,"vest"] call FNC_AddItem;

	weapon;
};

case (package + "PKM") : {
	uniform;
	["WALSH_mbav_ukraine_mg_camo","WALSH_mbav_ukraine_mg"] call FNC_AddItemRandom;
	helmet;
	["WALSH_Kitbag_Ukraine"] call FNC_AddItem;

	IFAK;
	items;
	grenades;

	["rhs_100Rnd_762x54mmR",2,"vest"] call FNC_AddItem;
	["rhs_100Rnd_762x54mmR",3,"backpack"] call FNC_AddItem;

	["rhs_weap_pkm"] call FNC_AddItem;

};

case (package + "155CMDR") : {
	uniform;
	vest;
	["rhs_tsh4"] call FNC_AddItem;
	["Binocular"] call FNC_AddItem;

	IFAK;
	items;
	grenades;

	["ACE_MapTools",1,"vest"] call FNC_AddItem;

	aks74u;

};

case (package + "155GNR") : {
	uniform;
	vest;
	["rhs_tsh4"] call FNC_AddItem;
	["G_Balaclava_blk"] call FNC_AddItem;


	IFAK;
	items;
	grenades;
	["ACE_MapTools",1,"vest"] call FNC_AddItem;

	aks74u;
};

case (package + "AGSAST") : {
	uniform;
	["WALSH_mbav_ukraine_rifleman_camo","WALSH_mbav_ukraine_rifleman"] call FNC_AddItemRandom;
	helmet;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;

	grenades;
	["rhs_mag_nspd",1,"vest"] call FNC_AddItem;

	weapon;
};

case (package + "MED") : { // Medic

	uniform;
	["WALSH_mbav_ukraine_rifleman_camo","WALSH_mbav_ukraine_rifleman"] call FNC_AddItemRandom;
	["rhs_medic_bag"] call FNC_AddItem; // medic bag
	IFAK;
	items;
	helmet;

	["ACRE_PRC343",1,"uniform"] call FNC_AddItem; // PLT Radio

	["ACE_fieldDressing",10,"vest"] call FNC_AddItem; // MED Supplies
	["ACE_elasticBandage",10,"vest"] call FNC_AddItem;
	["ACE_quikclot",10,"vest"] call FNC_AddItem;
	["ACE_epinephrine",10,"vest"] call FNC_AddItem;
	["ACE_morphine",5,"vest"] call FNC_AddItem;

	 // Ammo
	grenades;


	["ACE_morphine",15,"backpack"] call FNC_AddItem; // Med Supplies
	["ACE_packingBandage",20,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",10,"backpack"] call FNC_AddItem;
	["ACE_quikclot",10,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;
	["ACE_salineIV",1,"backpack"] call FNC_AddItem;
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",2,"backpack"] call FNC_AddItem;

	weapon;
};
/*	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem; \
