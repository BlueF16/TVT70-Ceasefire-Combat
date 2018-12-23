/*
Author: Gkenny
Randomized REB equipment

Required Addons:
RHS
Acre
ACE


[this, "REB_RF"] call FNC_GearScript;
[this, "REB_RPG"] call FNC_GearScript;
[this, "REB_RPGASST"] call FNC_GearScript;
[this, "REB_RPK"] call FNC_GearScript;
[this, "REB_SL"] call FNC_GearScript;
[this, "REB_EFR"] call FNC_GearScript;
[this, "REB_GNR"] call FNC_GearScript;
[this, "REB_DRVR"] call FNC_GearScript;
*/

#define package "REB_"

#define IFAK \
	["ACE_fieldDressing", 3, "uniform"] call FNC_AddItem; \
	["ACE_elasticBandage", 3, "uniform"] call FNC_AddItem; \
	["ACE_packingBandage", 3, "uniform"] call FNC_AddItem; \
	["ACE_quikclot", 3, "uniform"] call FNC_AddItem; \
	["ACE_morphine", 1, "uniform"] call FNC_AddItem; \
	["ACE_tourniquet", 1, "uniform"] call FNC_AddItem;

#define grenades \
	["rhs_mag_rgd5"] call FNC_AddItem; \
	["rhs_mag_rdg2_white",1,"vest"] call FNC_AddItem;

#define items \
	["ItemCompass"] call FNC_AddItem; \
	["ItemWatch"] call FNC_AddItem; \
	["ItemMap"] call FNC_AddItem; \
	["ACE_earplugs"] call FNC_AddItem;

#define uniform \
	["rhsgref_uniform_vsr","CORX_Uniform_Partisansummer","rhsgref_uniform_ttsko_forest","rhs_uniform_gorka_r_g","rhs_uniform_gorka_r_y","rhs_uniform_flora_patchless_alt","rhs_uniform_flora_patchless","rhs_uniform_emr_patchless"] call FNC_AddItemRandom;

#define vest \
	["rhsgref_6b23_ttsko_digi_rifleman","rhsgref_6b23_ttsko_forest_rifleman","rhsgref_6b23_ttsko_digi","rhsgref_6b23_ttsko_forest","rhs_6b23_digi_6sh92_spetsnaz2","rhs_6b23_6sh116_flora","rhs_6b23_6sh116_od","rhsgref_6b23_khaki","rhsgref_6b23_khaki_rifleman","rhs_6b23_6sh92","rhs_6b23_rifleman","rhs_6b5_rifleman_vsr","rhs_6b5_rifleman"] call FNC_AddItemRandom;

#define vestldr \
	["rhsgref_6b23_ttsko_digi_nco","rhsgref_6b23_khaki_nco","rhs_6b23_digi_6sh92_headset_mapcase","rhs_6b23_6sh92_headset_mapcase","rhs_6b23_digi_6sh92_Spetsnaz"] call FNC_AddItemRandom;

#define vestgp \
	["rhs_6b23_6sh116_vog_flora","rhs_6b23_6sh116_vog_od","rhs_6b23_6sh116_vog","rhs_6b23_digi_6sh92_Vog_Radio_Spetsnaz","rhs_6b23_6sh92_vog_headset"] call FNC_AddItemRandom;

#define helmet \
	["rhs_ssh68","rhsgref_ssh68_vsr","rhsgref_ssh68_ttsko_digi","rhsgref_ssh68_ttsko_forest","rhs_6b7_1m_olive","rhs_6b7_1m_olive","rhs_6b7_1m_bala2_olive","rhs_6b27m_green","rhs_6b27m_green_bala","rhs_6b27m_green_ess_bala","rhs_6b7_1m_emr_ess","rhs_6b7_1m_bala2_emr","rhs_6b26","rhs_6b26_bala","rhs_6b26_ess_bala"] call FNC_AddItemRandom;


#define akm \
	["rhs_30Rnd_762x39mm_89",5,"vest"] call FNC_AddItem; \
	["rhs_weap_akm"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";

#define akms \
	["rhs_30Rnd_762x39mm_89",5,"vest"] call FNC_AddItem; \
	["rhs_weap_akms"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtkakm";

#define aks74u \
	["rhs_30Rnd_545x39_7N10_AK",4] call FNC_AddItem; \
	["rhs_weap_aks74u"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_pgs64_74u";

#define ak74 \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";

#define ak74n \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74n"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";

#define ak74plum \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74_2"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";

#define ak74plum2 \
	["rhs_30Rnd_545x39_7N10_plum_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74m_fullplum"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk";

#define aks74 \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_aks74"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";

#define aks74n \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_aks74n"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";

#define ak74m \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74m"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983";

#define ak74cam \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74m_camo"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk";

#define ak74ngp \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_VOG25",7,"vest"] call FNC_AddItem; \
	["rhs_GRD40_White",3,"vest"] call FNC_AddItem; \
	["rhs_GRD40_Green",1,"vest"] call FNC_AddItem; \
	["rhs_GRD40_Red",1,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74n_gp25"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983"; \
	_unit addPrimaryWeaponItem "rhs_acc_ekp8_02";

#define ak74mgp \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_VOG25",7,"vest"] call FNC_AddItem; \
	["rhs_GRD40_White",3,"vest"] call FNC_AddItem; \
	["rhs_GRD40_Green",1,"vest"] call FNC_AddItem; \
	["rhs_GRD40_Red",1,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74m_gp25"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983"; \
	_unit addPrimaryWeaponItem "rhs_acc_pkas";

#define ak74plumgp \
	["rhs_30Rnd_545x39_7N10_AK",6,"vest"] call FNC_AddItem; \
	["rhs_VOG25",7,"vest"] call FNC_AddItem; \
	["rhs_GRD40_White",3,"vest"] call FNC_AddItem; \
	["rhs_GRD40_Green",1,"vest"] call FNC_AddItem; \
	["rhs_GRD40_Red",1,"vest"] call FNC_AddItem; \
	["rhs_weap_ak74n_2_gp25"] call FNC_AddItem; \
	_unit addPrimaryWeaponItem "rhs_acc_dtk1983"; \
	_unit addPrimaryWeaponItem "rhs_acc_1p63";

#define LAT \
	["rhs_weap_rpg26","rhs_weap_rpg75"] call FNC_AddItemRandom;

#define RPK762 \
	["hlc_45Rnd_762x39_m_rpk",4] call FNC_AddItem; \
	["hlc_75Rnd_762x39_m_rpk",2] call FNC_AddItem; \
	["hlc_rifle_rpk_45rnd"] call FNC_AddItem;

#define RPK74 \
	["rhs_45Rnd_545X39_7N10_AK",5] call FNC_AddItem; \
	["rhs_45Rnd_545X39_7N10_AK",4] call FNC_AddItem; \
	["rhs_45Rnd_545X39_AK_Green",1] call FNC_AddItem; \
	["hlc_rifle_rpk"] call FNC_AddItem;

#define weapon \
	call selectRandom [{ak74},{aks74},{ak74plum},{ak74m},{ak74cam},{ak74plum2},{ak74},{ak74m},{akm},{akms}];

#define weaponldr \
	call selectRandom [{ak74n},{aks74n},{ak74m},{ak74cam},{ak74plum2}];

#define weapongl \
	call selectRandom [{ak74ngp},{ak74mgp},{ak74plumgp}];

#define RPK \
	call selectRandom[{RPK762},{RPK74}];

case (package + "RF") : {
	uniform;
	vest;
	helmet;

	IFAK;
	items;
	grenades;

	weapon;
};
case (package + "UF") : {
	uniform;

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

case (package + "SL") : {
	uniform;
	vestldr;
	helmet;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343"] call FNC_AddItem;
	["ACRE_PRC148"] call FNC_AddItem;

	grenades;
	weaponldr;
	_unit addPrimaryWeaponItem "rhs_acc_1p78";
};

case (package + "EFR") : {
	uniform;
	vestgp;
	helmet;

	IFAK;
	items;
	["ACRE_PRC343"] call FNC_AddItem;

	grenades;

	weapongl;
};

case (package + "RPK") : {
	uniform;
	vest;
	helmet;
	["rhs_sidor","rhs_assault_umbts"] call FNC_AddItemRandom;

	IFAK;
	items;
	grenades;
	RPK;
};

case (package + "GNR") : {
	uniform;
	vest;
	["rhs_tsh4"] call FNC_AddItem;

	IFAK;
	items;
	["ACRE_PRC343"] call FNC_AddItem;
	grenades;

	aks74u;

};

case (package + "DRVR") : {
	uniform;
	["rhs_6sh46"] call FNC_AddItem;
	["rhs_tsh4"] call FNC_AddItem;
	["G_Balaclava_blk"] call FNC_AddItem;

	IFAK;
	items;
	grenades;

	["rhs_mag_9x18_8_57N181S",4,"vest"] call FNC_AddItem;
	["rhs_weap_makarov_pm"] call FNC_AddItem; // Makarov PM

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

case (package + "RPK74") : {
	uniform;
	vest;
	helmet;
	["rhs_sidor"] call FNC_AddItem;

	IFAK;
	items;
	grenades;

	["rhs_45Rnd_545X39_7N6_AK",5,"vest"] call FNC_AddItem;
	["rhs_45Rnd_545X39_7N6_AK",4,"backpack"] call FNC_AddItem;
	["rhs_45Rnd_545X39_AK_Green",1,"backpack"] call FNC_AddItem;

	["hlc_rifle_rpk"] call FNC_AddItem;
};

case (package + "PL") : {
	uniform;
	vestldr;
	["rhs_fieldcap_vsr"] call FNC_AddItem;
	["G_Aviator"] call FNC_AddItem;

	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343"] call FNC_AddItem;
	["ACRE_PRC148"] call FNC_AddItem;

	grenades;
	weaponldr;
	_unit addPrimaryWeaponItem "rhs_acc_1p78";
};

case (package + "PSG") : {
	uniform;
	vestgp;
	helmet;
	["Binocular"] call FNC_AddItem;

	IFAK;
	items;
	["ACRE_PRC343"] call FNC_AddItem;
	["ACRE_PRC148"] call FNC_AddItem;
	grenades;

	weapongl;
};

case (package + "MED") : {
	uniform;
	vest;
	helmet;
	["rhs_medic_bag"] call FNC_AddItem; // medic bag
	["rhs_mag_rdg2_white"] call FNC_AddItem;
	IFAK;
	items;

	["ACE_fieldDressing",10] call FNC_AddItem;
	["ACE_elasticBandage",10] call FNC_AddItem;
	["ACE_quikclot",10] call FNC_AddItem;
	["ACE_morphine",5] call FNC_AddItem;
	["ACE_epinephrine",5,"vest"] call FNC_AddItem;
	["ACE_packingBandage",10] call FNC_AddItem;

	["ACE_morphine",15,"backpack"] call FNC_AddItem; // Med Supplies
	["ACE_packingBandage",20,"backpack"] call FNC_AddItem;
	["ACE_elasticBandage",10,"backpack"] call FNC_AddItem;
	["ACE_quikclot",10,"backpack"] call FNC_AddItem;
	["ACE_salineIV_500",2,"backpack"] call FNC_AddItem;
	["ACE_salineIV",1,"backpack"] call FNC_AddItem;
	["ACE_surgicalKit",1,"backpack"] call FNC_AddItem;
	["ACE_salineIV_250",2,"backpack"] call FNC_AddItem;

	aks74u;
};

case (package + "MKS") : {
	uniform;
	vest;
	helmet;

	IFAK;
	items;
	grenades;

	["rhs_mag_9x18_8_57N181S",2,"uniform"] call FNC_AddItem;
	["rhs_10Rnd_762x54mmR_7N1",7,"vest"] call FNC_AddItem;

	["rhs_weap_svdp"] call FNC_AddItem; // SVD
	_unit addPrimaryWeaponItem "rhs_acc_pso1m2"; //Scope
	["rhs_weap_makarov_pm"] call FNC_AddItem; // Makarov PM
};

case (package + "PKM") : {
	uniform;
	vest;
	helmet;
	["rhs_sidor","rhs_assault_umbts"] call FNC_AddItemRandom;

	IFAK;
	items;
	grenades;
	["rhs_100Rnd_762x54mmR",1,"vest"] call FNC_AddItem; // PKM Ammo
	["rhs_100Rnd_762x54mmR",2,"backpack"] call FNC_AddItem;

	["ruPal_rhs_weap_pkm"] call FNC_AddItem; // PKM
};

case (package + "PKMASST") : {
	uniform;
	vest;
	helmet;
	["Binocular"] call FNC_AddItem;
	["rhs_sidor","rhs_assault_umbts"] call FNC_AddItemRandom;

	IFAK;
	items;
	grenades;

	["rhs_100Rnd_762x54mmR",2,"backpack"] call FNC_AddItem;

	weapon;
};

case (package + "FO") : {
	uniform;
	vest;
	helmet;
	["UK3CB_BAF_B_Bergen_OLI_JTAC_A"] call FNC_AddItem;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343",1,"uniform"] call FNC_AddItem;
	["ACRE_PRC148",1,"uniform"] call FNC_AddItem;
	["ACRE_PRC117F",1,"backpack"] call FNC_AddItem;
	["ACE_MapTools",1] call FNC_AddItem;

	grenades;
	["rhs_mag_nspd",1,"vest"] call FNC_AddItem;

	ak74m;
};


case (package + "MTRGNR") : {
	uniform;
	["rhs_6sh46"] call FNC_AddItem;
	helmet;
	["UK3CB_BAF_B_Bergen_OLI_JTAC_A"] call FNC_AddItem;
	IFAK;
	items;
	["ACE_RangeTable_82mm",1,"uniform"] call FNC_AddItem;
	["ACE_MapTools",1,"uniform"] call FNC_AddItem;

	["ACRE_PRC117F",1,"backpack"] call FNC_AddItem;


	["rhs_mag_9x18_8_57N181S",4,"vest"] call FNC_AddItem;
	["rhs_weap_makarov_pm"] call FNC_AddItem; // Makarov PM

};

case (package + "MTRASST") : {
	uniform;
	vest;
	helmet;
	["rhs_sidor","rhs_assault_umbts"] call FNC_AddItemRandom;
	IFAK;
	items;
	["ACE_RangeTable_82mm",1,"uniform"] call FNC_AddItem;
	["ACE_MapTools",1,"uniform"] call FNC_AddItem;

	grenades;

	weapon;
};


case (package + "SPGC") : {
	uniform;
	vestldr;
	helmet;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343"] call FNC_AddItem;
	["ACRE_PRC148"] call FNC_AddItem;

	grenades;
	weaponldr;

};

case (package + "ATGM") : {
	uniform;
	vest;
	helmet;
	IFAK;
	items;
	["Binocular"] call FNC_AddItem;

	["ACRE_PRC343"] call FNC_AddItem;


	grenades;
	weapon;

};
