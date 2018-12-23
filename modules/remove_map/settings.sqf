//This module removes maps and compasses from units on spawn, except from the whitelisted gear script names below.
//All names retaining maps will also keep compasses, so you do NOT need to duplicate names into both arrays.
//Ex: "USMCRiflePlatoon_SL" for the default USMC squad leader gear
//
//	_keepMapClasses 		= ["USMCRiflePlatoon_SL"];
//	_keepCompassClasses 	= ["USMCRiflePlatoon_TL"];

	_keepMapClasses 		= ["UKR_RF","UKR_RPG","UKR_RPGASST","UKR_PL","UKR_PLSGT","UKR_SL","UKR_EFR","UKR_RPK","UKR_GNR","UKR_DRVR","UKR_RFAT","UKR_FO","UKR_PKM","UKR_155CMDR","UKR_155GNR","UKR_AGSAST","UKR_MED","REB_SL","REB_EFR","REB_GNR","REB_DRVR","REB_PL","REB_PSG","REB_MED","REB_FO","REB_MTRGNR","REB_MTRASST","REB_SPGC","REB_ATGM"];
	_keepCompassClasses 	= [];