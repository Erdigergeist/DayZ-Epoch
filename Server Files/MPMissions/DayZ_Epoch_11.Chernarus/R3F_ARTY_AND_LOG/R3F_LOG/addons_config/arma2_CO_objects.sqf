/**
 * English and French comments
 * Commentaires anglais et fran�ais
 * 
 * This file adds the ArmA 2 and Arrowhead objetcs in the configuration variables of the logistics system.
 * Fichier ajoutant les objets d'ArmA 2 et Arrowhead dans la configuration du syst�me de logistique.
 * 
 * Important note : All the classes names which inherits from the ones used in configuration variables will be also available.
 * Note importante : Tous les noms de classes d�rivant de celles utilis�es dans les variables de configuration seront aussi valables.
 */

/****** TOW WITH VEHICLE / REMORQUER AVEC VEHICULE ******/

/**
 * List of class names of vehicles which can tow towable objects.
 * Liste des noms de classes des v�hicules terrestres pouvant remorquer des objets remorquables.
 */
R3F_LOG_CFG_remorqueurs = R3F_LOG_CFG_remorqueurs +
[
  "ArmoredSUV_PMC_DZE",
  "ATV_CZ_EP1",
  "ATV_US_EP1",
  "BMP2_HQ_INS",
  "BTR90_HQ",
  "car_hatchback",
  "car_sedan",
  "datsun1_civil_1_open",
  "datsun1_civil_2_covered",
  "datsun1_civil_3_open",
  "GAZ_Vodnik_DZE",
  "GAZ_Vodnik_MedEvac",
  "GLT_M300_LT",
  "GLT_M300_ST",
  "hilux1_civil_1_open",
  "hilux1_civil_2_covered",
  "hilux1_civil_3_open_EP1",
  "HMMWV_Ambulance",
  "HMMWV_Ambulance_CZ_DES_EP1",
  "HMMWV_DES_EP1",
  "HMMWV_DZ",
  "HMMWV_M1035_DES_EP1",
  "HMMWV_M1151_M2_CZ_DES_EP1_DZE",
  "HMMWV_M998A2_SOV_DES_EP1_DZE",
  "Ikarus",
  "Ikarus_TK_CIV_EP1",
  "KamazRefuel_DZ",
  "Lada1",
  "Lada1_TK_CIV_EP1",
  "Lada2",
  "Lada2_TK_CIV_EP1",
  "LadaLM",
  "LandRover_CZ_EP1",
  "LandRover_MG_TK_EP1_DZE",
  "LandRover_Special_CZ_EP1_DZE",
  "LandRover_TK_CIV_EP1",
  "M1030_US_DES_EP1",
  "MMT_Civ",
  "MtvrRefuel_DES_EP1_DZ",
  "MTVR_DES_EP1",
  "Offroad_DSHKM_Gue_DZE",
  "PBX",
  "Pickup_PK_GUE_DZE",
  "Pickup_PK_INS_DZE",
  "Pickup_PK_TK_GUE_EP1_DZE",
  "S1203_ambulance_EP1",
  "S1203_TK_CIV_EP1",
  "Skoda",
  "SkodaBlue",
  "SkodaGreen",
  "SkodaRed",
  "SUV_Blue",
  "SUV_Camo",
  "SUV_Charcoal",
  "SUV_Green",
  "SUV_Orange",
  "SUV_Pink",
  "SUV_Red",
  "SUV_Silver",
  "SUV_TK_CIV_EP1",
  "SUV_White",
  "SUV_Yellow",
  "tractor",
  "TT650_Civ",
  "TT650_Ins",
  "TT650_TK_CIV_EP1",
  "UAZ_CDF",
  "UAZ_INS",
  "UAZ_MG_TK_EP1_DZE",
  "UAZ_RU",
  "UAZ_Unarmed_TK_CIV_EP1",
  "UAZ_Unarmed_TK_EP1",
  "UAZ_Unarmed_UN_EP1",
  "UralRefuel_TK_EP1_DZ",
  "Ural_CDF",
  "Ural_TK_CIV_EP1",
  "Ural_UN_EP1",
  "V3S_Open_TK_CIV_EP1",
  "V3S_Open_TK_EP1",
  "V3S_Refuel_TK_GUE_EP1_DZ",
  "VolhaLimo_TK_CIV_EP1",
  "Volha_1_TK_CIV_EP1",
  "Volha_2_TK_CIV_EP1",
  "VWGolf",
  "Zodiac"
];

/**
 * List of class names of towables objects.
 * Liste des noms de classes des objets remorquables.
 */
R3F_LOG_CFG_objets_remorquables = R3F_LOG_CFG_objets_remorquables +
[
	"ArmoredSUV_PMC_DZE",
  "ATV_CZ_EP1",
  "ATV_US_EP1",
  "BMP2_HQ_INS",
  "BTR90_HQ",
  "car_hatchback",
  "car_sedan",
  "datsun1_civil_1_open",
  "datsun1_civil_2_covered",
  "datsun1_civil_3_open",
  "GAZ_Vodnik_DZE",
  "GAZ_Vodnik_MedEvac",
  "GLT_M300_LT",
  "GLT_M300_ST",
  "hilux1_civil_1_open",
  "hilux1_civil_2_covered",
  "hilux1_civil_3_open_EP1",
  "HMMWV_Ambulance",
  "HMMWV_Ambulance_CZ_DES_EP1",
  "HMMWV_DES_EP1",
  "HMMWV_DZ",
  "HMMWV_M1035_DES_EP1",
  "HMMWV_M1151_M2_CZ_DES_EP1_DZE",
  "HMMWV_M998A2_SOV_DES_EP1_DZE",
  "Ikarus",
  "Ikarus_TK_CIV_EP1",
  "KamazRefuel_DZ",
  "Lada1",
  "Lada1_TK_CIV_EP1",
  "Lada2",
  "Lada2_TK_CIV_EP1",
  "LadaLM",
  "LandRover_CZ_EP1",
  "LandRover_MG_TK_EP1_DZE",
  "LandRover_Special_CZ_EP1_DZE",
  "LandRover_TK_CIV_EP1",
  "M1030_US_DES_EP1",
  "MMT_Civ",
  "MtvrRefuel_DES_EP1_DZ",
  "MTVR_DES_EP1",
  "Offroad_DSHKM_Gue_DZE",
  "PBX",
  "Pickup_PK_GUE_DZE",
  "Pickup_PK_INS_DZE",
  "Pickup_PK_TK_GUE_EP1_DZE",
  "S1203_ambulance_EP1",
  "S1203_TK_CIV_EP1",
  "Skoda",
  "SkodaBlue",
  "SkodaGreen",
  "SkodaRed",
  "SUV_Blue",
  "SUV_Camo",
  "SUV_Charcoal",
  "SUV_Green",
  "SUV_Orange",
  "SUV_Pink",
  "SUV_Red",
  "SUV_Silver",
  "SUV_TK_CIV_EP1",
  "SUV_White",
  "SUV_Yellow",
  "tractor",
  "TT650_Civ",
  "TT650_Ins",
  "TT650_TK_CIV_EP1",
  "UAZ_CDF",
  "UAZ_INS",
  "UAZ_MG_TK_EP1_DZE",
  "UAZ_RU",
  "UAZ_Unarmed_TK_CIV_EP1",
  "UAZ_Unarmed_TK_EP1",
  "UAZ_Unarmed_UN_EP1",
  "UralRefuel_TK_EP1_DZ",
  "Ural_CDF",
  "Ural_TK_CIV_EP1",
  "Ural_UN_EP1",
  "V3S_Open_TK_CIV_EP1",
  "V3S_Open_TK_EP1",
  "V3S_Refuel_TK_GUE_EP1_DZ",
  "VolhaLimo_TK_CIV_EP1",
  "Volha_1_TK_CIV_EP1",
  "Volha_2_TK_CIV_EP1",
  "VWGolf",
  "Zodiac"
];


/****** LIFT WITH VEHICLE / HELIPORTER AVEC VEHICULE ******/

/**
 * List of class names of air vehicles which can lift liftable objects.
 * Liste des noms de classes des v�hicules a�riens pouvant h�liporter des objets h�liportables.
 */
R3F_LOG_CFG_heliporteurs = R3F_LOG_CFG_heliporteurs +
[
	"CH47_base_EP1",
	"Mi17_base",
	"Mi24_Base",
	"UH1H_base",
	"UH1_Base",
	"UH60_Base",
	"MV22"
];

/**
 * List of class names of liftable objects.
 * Liste des noms de classes des objets h�liportables.
 */
R3F_LOG_CFG_objets_heliportables = R3F_LOG_CFG_objets_heliportables +
[
	"ArmoredSUV_PMC_DZE",
  "ATV_CZ_EP1",
  "ATV_US_EP1",
  "BMP2_HQ_INS",
  "BTR90_HQ",
  "car_hatchback",
  "car_sedan",
  "datsun1_civil_1_open",
  "datsun1_civil_2_covered",
  "datsun1_civil_3_open",
  "GAZ_Vodnik_DZE",
  "GAZ_Vodnik_MedEvac",
  "GLT_M300_LT",
  "GLT_M300_ST",
  "hilux1_civil_1_open",
  "hilux1_civil_2_covered",
  "hilux1_civil_3_open_EP1",
  "HMMWV_Ambulance",
  "HMMWV_Ambulance_CZ_DES_EP1",
  "HMMWV_DES_EP1",
  "HMMWV_DZ",
  "HMMWV_M1035_DES_EP1",
  "HMMWV_M1151_M2_CZ_DES_EP1_DZE",
  "HMMWV_M998A2_SOV_DES_EP1_DZE",
  "Ikarus",
  "Ikarus_TK_CIV_EP1",
  "KamazRefuel_DZ",
  "Lada1",
  "Lada1_TK_CIV_EP1",
  "Lada2",
  "Lada2_TK_CIV_EP1",
  "LadaLM",
  "LandRover_CZ_EP1",
  "LandRover_MG_TK_EP1_DZE",
  "LandRover_Special_CZ_EP1_DZE",
  "LandRover_TK_CIV_EP1",
  "M1030_US_DES_EP1",
  "MMT_Civ",
  "MtvrRefuel_DES_EP1_DZ",
  "MTVR_DES_EP1",
  "Offroad_DSHKM_Gue_DZE",
  "PBX",
  "Pickup_PK_GUE_DZE",
  "Pickup_PK_INS_DZE",
  "Pickup_PK_TK_GUE_EP1_DZE",
  "S1203_ambulance_EP1",
  "S1203_TK_CIV_EP1",
  "Skoda",
  "SkodaBlue",
  "SkodaGreen",
  "SkodaRed",
  "SUV_Blue",
  "SUV_Camo",
  "SUV_Charcoal",
  "SUV_Green",
  "SUV_Orange",
  "SUV_Pink",
  "SUV_Red",
  "SUV_Silver",
  "SUV_TK_CIV_EP1",
  "SUV_White",
  "SUV_Yellow",
  "tractor",
  "TT650_Civ",
  "TT650_Ins",
  "TT650_TK_CIV_EP1",
  "UAZ_CDF",
  "UAZ_INS",
  "UAZ_MG_TK_EP1_DZE",
  "UAZ_RU",
  "UAZ_Unarmed_TK_CIV_EP1",
  "UAZ_Unarmed_TK_EP1",
  "UAZ_Unarmed_UN_EP1",
  "UralRefuel_TK_EP1_DZ",
  "Ural_CDF",
  "Ural_TK_CIV_EP1",
  "Ural_UN_EP1",
  "V3S_Open_TK_CIV_EP1",
  "V3S_Open_TK_EP1",
  "V3S_Refuel_TK_GUE_EP1_DZ",
  "VolhaLimo_TK_CIV_EP1",
  "Volha_1_TK_CIV_EP1",
  "Volha_2_TK_CIV_EP1",
  "VWGolf",
  "Zodiac",
  "AH6X_DZ",
  "AN2_DZ",
  "BAF_Merlin_DZE",
  "C130J_US_EP1",
  "CH_47F_EP1_DZE",
  "MV22_DZ",
  "MH6J_DZ",
  "Mi17_Civilian_DZ",
  "Mi17_DZE",
  "UH1H_DZE",
  "UH1Y_DZE",
  "UH60M_EP1_DZE",
  "GNT_C185",
  "GNT_C185C",
  "GNT_C185R",
  "GNT_C185U",
  "CSJ_GyroC",
  "CSJ_GyroCover",
  "CSJ_GyroP",
  "Old_bike_TK_INS_EP1",
  "Old_moto_TK_Civ_EP1",
  "JetSkiYanahui_Case_Blue",
  "JetSkiYanahui_Case_Green",
  "JetSkiYanahui_Case_Red",
  "JetSkiYanahui_Case_Yellow"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/

/*
 * This section use a quantification of the volume and/or weight of the objets.
 * The arbitrary referencial used is : an ammo box of type USSpecialWeaponsBox "weights" 5 units.
 * 
 * Cette section utilise une quantification du volume et/ou poids des objets.
 * Le r�f�rentiel arbitraire utilis� est : une caisse de munition de type USSpecialWeaponsBox "p�se" 5 unit�s.
 * 
 * Note : the priority of a declaration of capacity to another corresponds to their order in the tables.
 *   For example : the "Truck" class is in the "Car" class (see http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   If "Truck" is declared with a capacity of 140 before "Car". And if "Car" is declared after "Truck" with a capacity of 40,
 *   Then all the sub-classes in "Truck" will have a capacity of 140. And all the sub-classes of "Car", excepted the ones
 *   in "Truck", will have a capacity of 40.
 * 
 * Note : la priorit� d'une d�claration de capacit� sur une autre correspond � leur ordre dans les tableaux.
 *   Par exemple : la classe "Truck" appartient � la classe "Car" (voir http://community.bistudio.com/wiki/ArmA_2:_CfgVehicles).
 *   Si "Truck" est d�clar� avec une capacit� de 140 avant "Car". Et que "Car" est d�clar� apr�s "Truck" avec une capacit� de 40,
 *   Alors toutes les sous-classes appartenant � "Truck" auront une capacit� de 140. Et toutes les sous-classes appartenant
 *   � "Car", except�es celles de "Truck", auront une capacit� de 40.
 */

/**
 * List of class names of (ground or air) vehicles which can transport transportable objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 * 
 * Liste des noms de classes des v�hicules (terrestres ou a�riens) pouvant transporter des objets transportables.
 * Le deuxi�me �l�ment des tableaux est la capacit� de chargement (en relation avec le co�t de capacit� des objets).
 */
R3F_LOG_CFG_transporteurs = R3F_LOG_CFG_transporteurs +
[
	["CH47_base_EP1", 80],
	["AH6_Base_EP1", 25],
	["Mi17_base", 60],
	["Mi24_Base", 50],
	["UH1H_base", 35],
	["UH1_Base", 30],
	["UH60_Base", 40],
	["An2_Base_EP1", 40],
	["C130J", 150],
	["MV22", 80],
	["ATV_Base_EP1", 5],
	["HMMWV_Avenger", 5],
	["HMMWV_M998A2_SOV_DES_EP1", 12],
	["HMMWV_Base", 18],
	["Ikarus", 50],
	["Lada_base", 10],
	["LandRover_Base", 15],
	["Offroad_DSHKM_base", 15],
	["Pickup_PK_base", 15],
	["S1203_TK_CIV_EP1", 20],
	["SUV_Base_EP1", 15],
  ["SUV_Blue", 15],
  ["SUV_Camo", 15],
  ["SUV_Charcoal", 15],
  ["SUV_Green", 15],
  ["SUV_Orange", 15],
  ["SUV_Pink", 15],
  ["SUV_Red", 15],
  ["SUV_Silver", 15],
  ["SUV_TK_CIV_EP1", 15],
  ["SUV_White", 15],
  ["SUV_Yellow", 15],
 	["SkodaBase", 10],
	["TowingTractor", 5],
	["Tractor", 5],
	["KamazRefuel", 10],
	["Kamaz", 50],
	["Kamaz_Base", 35],
	["MAZ_543_SCUD_Base_EP1", 10],
	["MtvrReammo", 35],
	["MtvrRepair", 35],
	["MtvrRefuel", 10],
	["MTVR", 50],
	["GRAD_Base", 10],
	["Ural_ZU23_Base", 12],
	["Ural_CDF", 50],
	["Ural_INS", 50],
	["UralRefuel_Base", 10],
	["Ural_Base", 35],
	["V3S_Refuel_TK_GUE_EP1", 10],
	["V3S_Civ", 35],
	["V3S_Base_EP1", 50],
	["UAZ_Base", 10],
	["VWGolf", 8],
	["Volha_TK_CIV_Base_EP1", 8],
	["BRDM2_Base", 15],
	["BTR40_MG_base_EP1", 15],
	["BTR90_Base", 25],
	["GAZ_Vodnik_HMG", 25],
	["LAV25_Base", 25],
	["StrykerBase_EP1", 25],
	["hilux1_civil_1_open", 12],
	["hilux1_civil_3_open_EP1", 12],
	["Motorcycle", 3],
	["2S6M_Tunguska", 10],
	["M113_Base", 12],
	["M1A1", 5],
	["M2A2_Base", 15],
	["MLRS", 8],
	["T34", 5],
	["T55_Base", 5],
	["T72_Base", 5],
	["T90", 5],
	["AAV", 12],
	["BMP2_Base", 7],
	["BMP3", 7],
	["ZSU_Base", 5]
];

/**
 * List of class names of transportable objects.
 * The second element of the arrays is the cost capacity (in relation with the capacity of the vehicles).
 * 
 * Liste des noms de classes des objets transportables.
 * Le deuxi�me �l�ment des tableaux est le co�t de capacit� (en relation avec la capacit� des v�hicules).
 */
R3F_LOG_CFG_objets_transportables = R3F_LOG_CFG_objets_transportables +
[
	["M1030", 5],
	["TKVehicleBox_EP1", 12],
	["USVehicleBox_EP1", 12],
	["USVehicleBox", 12],
	["ReammoBox", 5],
	["Desk", 1],
	["FoldChair", 1],
	["FoldTable", 1],
	["SmallTable", 1]
	];


/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

/**
 * List of class names of objects moveable by player.
 * Liste des noms de classes des objets transportables par le joueur.
 */
R3F_LOG_CFG_objets_deplacables = R3F_LOG_CFG_objets_deplacables +
[
	/*"SatPhone", // Needed for the R3F_ARTY module (arty HQ) (n�cessaire pour le module R3F_ARTY (PC d'arti))
	"FoldChair_with_Cargo",
	"StaticWeapon",
	"FlagCarrierSmall",
	"Fort_Crate_wood",
	"Fort_RazorWire",
	"Gunrack1",
	"Base_WarfareBBarrier5x",
	"Fort_EnvelopeBig",
	"Fort_EnvelopeSmall",
	"Land_A_tent",
	"Land_Antenna",
	"Land_Fire_barrel",
	"Land_GuardShed",
	"Land_fort_bagfence_corner",
	"Land_fort_bagfence_long",
	"Land_fort_bagfence_round",
	"Land_fortified_nest_small",
	"Land_tent_east",
	"Land_HBarrier_large",
	"Land_Toilet",
	"RoadBarrier_light",
	"WarfareBunkerSign",
	"ACamp",
	"Camp",
	"CampEast",
	"MASH",
	"FlagCarrier",
	"FlagCarrierChecked",
	"Hedgehog",
	"AmmoCrate_NoInteractive_Base_EP1",
	"ReammoBox",
	"TargetE",
	"TargetEpopup",
	"TargetPopUpTarget",
	"Desk",
	"FoldChair",
	"FoldTable",
	"Land_Barrel_empty",
	"Land_Barrel_sand",
	"Land_Barrel_water",
	"Land_arrows_yellow_L",
	"Land_arrows_yellow_R",
	"Land_coneLight",
	"BarrelBase",
	"Fuel_can",
	"Notice_board",
	"Pallets_comlumn",
	"Unwrapped_sleeping_bag",
	"Wheel_barrow",
	"RoadCone",
	"Sign_1L_Border",
	"Sign_Danger",
	"SmallTable",
	"EvPhoto",
	"MetalBucket",
	"Notebook",
	"Radio",
	"SmallTV",
	"Land_Chair_EP1",
	"Suitcase",
	"WeaponBagBase_EP1"*/
];