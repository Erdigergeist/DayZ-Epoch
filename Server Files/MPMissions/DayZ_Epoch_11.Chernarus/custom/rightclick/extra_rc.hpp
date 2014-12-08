class ExtraRc {
    class HandGrenade_west {
        class craft01 {
            text = "Build Satchel Charge";
            script = "[[0,""PipeBomb"",""PipeBomb"",1],[[0,""HandGrenade_West"",3],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };
    };
    class HandGrenade_east {
        class craft02 {
            text = "Build Satchel Charge";
            script = "[[0,""PipeBomb"",""PipeBomb"",1],[[0,""HandGrenade_East"",3],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };        
    };
    class M4A1 {
        class Up01{
            text = "Add CCO";
            script = "[[1,""M4A1 Sniper Rifle"",""M4A1_Aim"",1],[[1,""M4A1"",1],[1,""Binocular"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class M4A1_AIM {
        class Down00{
            text = "Remove CCO";
            script = "[[1,""M4A1"",""M4A1"",1],[[1,""M4A1_Aim"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
        class Up02{
            text = "Add Camo";
            script = "[[1,""M4A1 CCO Camo"",""M4A1_Aim_camo"",1],[[1,""M4A1_Aim"",1],[0,""ItemCanvas"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class M4A1_AIM_CAMO {
        class Down01{
            text = "Remove Camo";
            script = "[[1,""M4A1 CCO"",""M4A1_Aim"",1],[[1,""M4A1_Aim_camo"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
        class Up03{
            text = "Add Silencer";
            script = "[[1,""M4A1 CCO SD Camo"",""M4A1_AIM_SD_camo"",1],[[1,""M4A1_Aim_camo"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class M4A1_AIM_SD_camo {
        class Down02{
            text = "Remove Silencer";
            script = "[[1,""M4A1 CCO Camo"",""M4A1_Aim_camo"",1],[[1,""M4A1_AIM_SD_camo"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    }; 
    class Bizon {
        class Up03{
            text = "Add Silencer";
            script = "[[1,""Bizon silenced"",""bizon_silenced"",1],[[1,""Bizon"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class bizon_silenced {
        class Down03{
            text = "Remove Silencer";
            script = "[[1,""Bizon"",""Bizon"",1],[[1,""bizon_silenced"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class MP5A5 {
        class Up04{
            text = "Add Silencer";
            script = "[[1,""MP5A5 silenced"",""MP5SD"",1],[[1,""MP5AS"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class MP5SD {
        class Down04{
            text = "Remove Silencer";
            script = "[[1,""MP5A5"",""MP5A5"",1],[[1,""MP5SD"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class SVD {
        class Up05{
            text = "Add Camo";
            script = "[[1,""SVD Camo"",""SVD_CAMO"",1],[[1,""SVD"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class SVD_CAMO {
        class Down05{
            text = "Remove Camo";
            script = "[[1,""SVD"",""SVD"",1],[[1,""SVD_CAMO"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class M9 {
        class Up07{
            text = "Add Silencer";
            script = "[[1,""M9 silenced"",""M9SD"",1],[[1,""M9"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class M9SD {
        class Down07{
            text = "Remove Silencer";
            script = "[[1,""M9"",""M9"",1],[[1,""M9SD"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class Makarov {
        class Up08{
            text = "Add Silencer";
            script = "[[1,""Makarov silenced"",""MakarovSD"",1],[[1,""Makarov"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class MakarovSD {
        class Down08{
            text = "Remove Silencer";
            script = "[[1,""Makarov"",""Makarov"",1],[[1,""MakarovSD"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class UZI_EP1 {
        class Up09{
            text = "Add Silencer";
            script = "[[1,""UZI silenced"",""UZI_SD_EP1"",1],[[1,""UZI_EP1"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };
    class UZI_SD_EP1 {
        class Down09{
            text = "Remove Silencer";
            script = "[[1,""UZI"",""UZI_EP1"",1],[[1,""UZI_SD_EP1"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };    
    class M8_carbine {
        class Up10{
            text = "Add grenade launcher";
            script = "[[1,""M8 Grenadelauncher"",""M8_carbineGL"",1],[[1,""M8_carbine"",1],[0,""ItemPole"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };
        class Up11{
            text = "Add Scope";
            script = "[[1,""M8 sharpshooter"",""m8_sharpshooter"",1],[[1,""M8_carbine"",1],[1,""Binocular"",1],[0,""PartGeneric"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
        class Up12{
            text = "Add Holo and SD";
            script = "[[1,""M8 Holo SD"",""m8_holo_sd"",1],[[1,""M8_carbine"",1],[1,""Binocular"",1],[0,""ItemPole"",1],[0,""PartGeneric"",2]]] execVM ""custom\crafting\weapons.sqf"";";
        };
    };
    class M8_carbineGL {
        class Down10{
            text = "Remove grenade launcher";
            script = "[[1,""M8"",""M8_carbine"",1],[[1,""M8_carbineGL"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };    
    class m8_sharpshooter {
        class Down11{
            text = "Remove Scope";
            script = "[[1,""M8"",""M8_carbine"",1],[[1,""m8_sharpshooter"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };    
    class m8_holo_sd {
        class Down12{
            text = "Remove Holo and SD";
            script = "[[1,""M8"",""M8_carbine"",1],[[1,""m8_holo_sd"",1]]] execVM ""custom\crafting\weapons.sqf"";";
        };                                                       
    };    
    class ItemPole {
        class build01 {
            text = "Well";
/*Here is how the array works:
script = "[""Land_Fort_Watchtower_EP1"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""ItemRuby"", 1],[""PartGeneric"", 1]],[0,6,2.5]] execVM ""custom\snap_build\player_build.sqf"";";
           ""Land_Fort_Watchtower_EP1"" is the object you want to build
                                        [""ItemToolbox"",""ItemHatchet_DZE""] is the toolbelt items needed to build the object
                                                                              [[""ItemRuby"", 1],[""PartGeneric"", 1]] List of items needed to build construction. Only have one of each item name and then set the number to how many of that item. If only a single item the array should look like this [[""PartGeneric"", 1]]
                                                                                                                      [0,6,2.5] is the item offset from your character. First number is Left/Right offset, second number is front/back offset, last number is Up/Down offset. Remember that comma is the seperator between the number and period is decimal seperator! also remember the double quotes are VERY important around class names!
-> remember to add your custom objects in "dayz_allowedObjects" and "DZE_maintainClasses" in your variables.sqf any object added to "DZE_isRemovable" every one have a chance to remove! */
            script = "[""MAP_Misc_WellPump"",[""ItemToolbox"",""ItemEtool""],[[""ItemPole"", 1],[""CinderBlocks"", 1],[""MortarBucket"", 1],[""metal_panel_kit"", 1]],[0,3,0.9]] execVM ""custom\snap_build\player_build.sqf"";";
        };
        class build02 {
            text = "Build Deep Well";
            script = "[""Land_pumpa"",[""ItemToolbox"",""ItemEtool""],[[""ItemPole"", 2],[""CinderBlocks"", 2],[""MortarBucket"", 2],[""metal_panel_kit"", 1]],[0,4.5,1.2]] execVM ""custom\snap_build\player_build.sqf"";";
        };
        class milWatchMedium {
            text = "Small Watch Tower";
            script = "[""Land_vez"",[""ItemToolbox"",""ItemEtool"",""ItemCrowbar"",""ItemSledge""],[[""PartGeneric"", 1],[""ItemPole"", 1]],[0,4,4.6]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		    class metalWatchTower {
            text = "Medium Watch Tower";
            script = "[""Land_radar_EP1"",[""ItemToolbox"",""ItemEtool"",""ItemCrowbar"",""ItemSledge""],[[""PartGeneric"", 1],[""ItemPole"", 1],[""CinderBlocks"", 1]],[0,4.5,6.7]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		    class lightWatchTower {
            text = "High Watch Tower (Light)";
            script = "[""Land_Ind_IlluminantTower"",[""ItemToolbox"",""ItemEtool""],[[""ItemPole"", 4],[""CinderBlocks"", 1],[""MortarBucket"", 1],[""ItemLightBulb"", 4]],[0,3,10]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		    class stopBoom {
            text = "STOP Gate";
            script = "[""ZavoraAnim"",[""ItemToolbox"",""ItemEtool""],[[""PartGeneric"", 1],[""ItemPole"", 1]],[0,3,4.4]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		    class scaffoldSmall {
            text = "Small Scaffold";
            script = "[""MAP_leseni2x"",[""ItemToolbox"",""ItemEtool""],[[""PartGeneric"", 1],[""ItemPole"", 1],[""PartWoodPlywood"", 1]],[0,3,1.55]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		    class scaffoldHigh {
            text = "High Scaffold";
            script = "[""MAP_leseni4x"",[""ItemToolbox"",""ItemEtool""],[[""PartGeneric"", 1],[""ItemPole"", 1],[""PartWoodPlywood"", 1],[""ItemWoodLadder"", 1]],[0,3,3.87]] execVM ""custom\snap_build\player_build.sqf"";";
        };        
        class build04 {
            text = "Build Radartower";
            script = "[""Land_radar_EP1"",[""ItemToolbox"",""ItemEtool""],[[""ItemPole"", 8],[""CinderBlocks"", 1],[""MortarBucket"", 1]],[0,4.5,6.7]] execVM ""custom\snap_build\player_build.sqf"";";
        };
        class build05 {
            text = "Build SearchLight";
            script = "[""SearchLight"",[""ItemToolbox"",""ItemEtool""],[[""ItemPole"", 2],[""ItemLightBulb"", 4],[""PartGeneric"", 1]],[0,4,0.4]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    };    
    class metal_panel_kit {
        class build11 {
            text = "Build Watchtower";
            script = "[""Land_vez"",[""ItemToolbox"",""ItemEtool""],[[""ItemPole"", 1],[""metal_panel_kit"", 2]],[0,4,0.4]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    };    
    class PartWoodPile {
        class build21 {
            text = "Build Campfire small";
            script = "[""Land_Fire"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""PartWoodPile"", 1],[""CinderBlocks"", 1]],[0,4,0.4]] execVM ""custom\snap_build\player_build.sqf"";";
        };
        class build22 {
            text = "Build Campfire small (burning)";
            script = "[""Land_Fire_burning"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""PartWoodPile"", 4],[""CinderBlocks"", 2]],[0,4,0.4]] execVM ""custom\snap_build\player_build.sqf"";";
        };
        class build23 {
            text = "Build Campfire big (burning)";
            script = "[""Land_Campfire_burning"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""PartWoodPile"", 6],[""CinderBlocks"", 4]],[0,4,0.4]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    };
    class ItemFuelBarrel {
        class build31 {
            text = "Build Gastank";
            script = "[""Land_Ind_TankSmall2_EP1"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""ItemFuelBarrel"", 4],[""CinderBlocks"", 1],[""MortarBucket"", 1],[""PartGeneric"", 2]],[0,3,1.5]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    };
    class ItemSandbag {
        class build41 {
            text = "Build Sandnest Tower";
            script = "[""Land_Fort_Watchtower_EP1"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""ItemSandbag"", 3],[""PartWoodLumber"", 3],[""forest_net_kit"", 1]],[0,6.5,2.5]] execVM ""custom\snap_build\player_build.sqf"";";
        };
        class build42 {
            text = "Build Big Sandnest";
            script = "[""Land_fortified_nest_big_EP1"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""ItemSandbag"", 4],[""PartWoodLumber"", 6]],[0,8,1.1]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    };
    class PartWoodPlywood {
        class build51 {
            text = "Build Ammo Box";
            script = "[""LocalBasicAmmunitionBox"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""PartWoodPlywood"", 4],[""PartWoodLumber"", 1]],[0,4,0.4]] execVM ""custom\snap_build\player_build.sqf"";";
            };
        class build52 {
            text = "Build Doghouse";
            script = "[""Land_psi_bouda"",[""ItemToolbox"",""ItemHatchet_DZE""],[[""PartWoodPlywood"", 4],[""PartWoodLumber"", 2]],[0,4,0.4]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    }; 
    class CinderBlocks {
        class build61 {
            text = "Build Old Well";
            script = "[""Land_Misc_Well_C_EP1"",[""ItemToolbox"",""ItemEtool""],[[""CinderBlocks"", 4],[""MortarBucket"", 2]],[0,4.5,1.2]] execVM ""custom\snap_build\player_build.sqf"";";
        };
        class build62 {
            text = "Build Deep old Well";
            script = "[""Land_Misc_Well_L_EP1"",[""ItemToolbox"",""ItemEtool""],[[""ItemPole"", 1],[""CinderBlocks"", 4],[""MortarBucket"", 2],[""PartGeneric"", 1]],[0,4.5,1.2]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    };
    	class PartGeneric {
		class climbingObstacle {
            text = "Climbing Obstacle";
            script = "[""Land_Climbing_Obstacle"",[""ItemToolbox""],[[""PartGeneric"", 1],[""PartWoodPlywood"", 1]],[0,3,1.1]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		class metalHouse1 {
            text = "Small Metal House 1";
            script = "[""mbg_slum01_EO"",[""ItemToolbox""],[[""PartGeneric"", 1],[""PartWoodPlywood"", 1]],[0,3,1.6]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		class metalHouse2 {
            text = "Small Metal House 2";
            script = "[""mbg_slum02_EO"",[""ItemToolbox""],[[""PartGeneric"", 1],[""PartWoodPlywood"", 1]],[0,3,1.6]] execVM ""custom\snap_build\player_build.sqf"";";
        };
		class metalHouse3 {
            text = "Small Metal House 3";
            script = "[""mbg_slum03h_EO"",[""ItemToolbox""],[[""PartGeneric"", 1],[""PartWoodPlywood"", 1]],[0,3,1.7]] execVM ""custom\snap_build\player_build.sqf"";";
        };
	};
	class PartPlankPack {
		class castleStairs {
            text = "Castle Stairs";
            script = "[""Land_A_Castle_Stairs_A"",[""ItemToolbox"",""ItemCrowbar"",""ItemSledge""],[[""PartPlankPack"", 1],[""PartPlywoodPack""]],[-4,6,3.8]] execVM ""custom\snap_build\player_build.sqf"";";
        };
	};
	class PartPlywoodPack {
		class stopSignBlue {
            text = "Stop Sign";
            script = "[""Sign_Checkpoint_US_EP1"",[""ItemToolbox""],[[""PartPlywoodPack"", 1]],[0,2,0.45]] execVM ""custom\snap_build\player_build.sqf"";";
        };
	}; 
  class ItemKiloHemp {
    class seedweed {
            text = "Seed hemp";
            script = "[""fiberplant"",[""ItemEtool""],[[""ItemKiloHemp"", 1]],[0,2,0.45]] execVM ""custom\snap_build\player_build.sqf"";";
        };
    class smokeweed {
            text = "Smoke easy joint";
            script = "execVM 'custom\harvest\smoke.sqf'";
        };
  };
  class FoodPumpkin {
    class seedpumping {
            text = "Seed Pumkins";
            script = "[""MAP_pumpkin"",[""ItemEtool""],[[""FoodPumpkin"", 1]],[0,2,0.45]] execVM ""custom\snap_build\player_build.sqf"";";
        };
  };
  class FoodSunFlowerSeed {
    class seedsunflowers {
            text = "Seed Sunflowers";
            script = "[""MAP_p_Helianthus"",[""ItemEtool""],[[""FoodSunFlowerSeed"", 1]],[0,2,0.45]] execVM ""custom\snap_build\player_build.sqf"";";
        };
  };   
};      