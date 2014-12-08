/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz 
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 7;	//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;
server_name = "Senzaii Wasteland";

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio true;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config
spawnShoremode = 0; // Default = 1 (on shore)
spawnArea = 1500; // Default = 1500

//startgear
DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD""FoodCanFrankBeans","ItemSodaCoke","ItemPainkiller","ItemMorphine","10x_303","10x_303","10x_303","10x_303"]; 
DefaultWeapons = ["Binocular","ItemFlashlight","ItemMap","M9SD","ItemRadio","LeeEnfield"]; 
DefaultBackpack = ""; 
DefaultBackpackItems = [""];

MaxVehicleLimit = 400; // Default = 50
MaxDynamicDebris = 100; // Default = 100                                                                                                                                  
MaxMineVeins = 50;  // Default = 50
MaxAmmoBoxes = 15;  //Default = 3
dayz_MapArea = 12000; // Default = 10000
dayz_maxLocalZombies = 5; // Default = 30 
dayz_maxGlobalZombiesInit = 5; // Default = 30
dayz_maxGlobalZombiesIncrease = 2; // Default = 5;
dayz_maxZeds = 20; //Default = 500;

dayz_paraSpawn = true;
DZE_PlayerZed = false;
DZE_SelfTransfuse = true;
DZE_selfTransfuse_Values = [4000, 5, 60];

DZE_CharacterSwitchTimeout = 10; // default 30 minutes timeout (0 to disable)
DZE_CharacterMinDistance = 0; // default 1000 meters min distance (0 to disable)

//Enable/Disable Display Name
DZE_ForceNameTagsOff = true;
DZE_HumanityTargetDistance = 25; 

//Spawntime loot in minutes
DZE_LootSpawnTimer = 5;

//Enable/Disable machine gun ammo for vehicles with turrets
DZE_vehicleAmmo = 1;

dayz_sellDistance_vehicle = 20;
dayz_sellDistance_boat = 60;
dayz_sellDistance_air = 80;

dayz_maxAnimals = 12; // Default: 8
dayz_tameDogs = true;
DynamicVehicleDamageLow = 20; // Default: 0
DynamicVehicleDamageHigh = 80; // Default: 100

DZE_BuildOnRoads = true; // Default: False
DZE_requireplot = 0;     // Build without Plotpole = 0, build with Plotpole = 1 

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];
dayz_fullMoonNights = true;

//Load in compiled functions
call compile preprocessFileLineNumbers "custom\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "custom\multichar\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "custom\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

// GeneralCarver Vehicle Flip Script v2 Init Scripting
if (!(isNull player)) then
  {
  gc_veh_flip_script_script_action_manager = execVM "custom\gc_veh_flip\action_manager.sqf";
};
 
if (!isServer && isNull player) then
  {
  waitUntil {!isNull player};
  gc_veh_flip_script_script_action_manager = execVM "custom\gc_veh_flip\action_manager.sqf";
};
        
if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\dynamic_vehicle.sqf";				
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_7.Lingor\mission.sqf";

	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
    //Safezone
  [] execvm 'custom\safezone\agn_SafeZoneCommander.sqf';
  
  //Tankstelle refuel
  [] execVM "custom\refuel\kh_actions.sqf";
  
  //Server Welcom Message
  [] execVM "custom\Server_WelcomeCredits\Server_WelcomeCredits.sqf"; 
  
  //Just another Evac Heli
  _nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";
  	
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "custom\multichar\player_monitor.sqf";	
	
	//anti Hack
	[] execVM "\z\addons\dayz_code\system\antihack.sqf";

	//Lights
	[false,80] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
  
  //Force first person view
	//[] execVM "custom\view\firstperson_script.sqf";
  
  //Repair script
  execVM "custom\service_point\service_point.sqf";
  
  //Vehicle and Skins previwe VASP
  _nil = [] execVM "custom\VASP\VASP_init.sqf";
  
  //Elevator script
  ["elevator"] execVM "custom\elevator\elevator_init.sqf";   
  
  //Clientside AI
  _nul = [] execVM "DZAI_Client\dzai_initclient.sqf";  	
};

//#include "\z\addons\dayz_code\system\REsec.sqf"

//Start Dynamic Weather
execVM "custom\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

//Artillery and Logistics
[] execVM "R3F_ARTY_AND_LOG\init.sqf";

//DayZ Watermark
if (!isNil "server_name") then {
  [] spawn {
    waitUntil {(!isNull Player) and (alive Player) and (player == player)};
    waituntil {!(isNull (findDisplay 46))};
    5 cutRsc ["wm_disp","PLAIN"];
    ((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText server_name;
  };
};
    
//Radio on Map
execVM "custom\RC\init.sqf";

//Color correction
_null = [] execVM "custom\color_correction\color_correction.sqf";

DZE_noRotate = ["TentStorage","TentStorageDomed","TentStorageDomed2", "VaultStorageLocked","TrapBear","Fort_RazorWire","M240Nest_DZ","CanvasHut_DZ","ParkBench_DZ","OutHouse_DZ","Wooden_shed_DZ","WoodShack_DZ","StorageShed_DZ","Plastic_Pole_EP1_DZ","Generator_DZ","LightPole_DZ","FuelPump_DZ","SandNest_DZ","DeerStand_DZ","WorkBench_DZ","LockboxStorageLocked","GunRack_DZ","FireBarrel_DZ","WoodCrate_DZ","MAP_Misc_WellPump","Land_pumpa","Land_Ind_IlluminantTower","Land_radar_EP1","Land_vez","Land_Campfire_burning","Land_Ind_TankSmall2_EP1","Land_Fort_Watchtower_EP1","Land_fortified_nest_big_EP1","SearchLight","Land_psi_bouda","Land_Misc_Well_C_EP1","Land_Misc_Well_L_EP1","LocalBasicAmmunitionBox","Land_Fire_burning","ZavoraAnim","MAP_leseni2x","MAP_leseni4x","Land_Climbing_Obstacle","mbg_slum01_EO","mbg_slum02_EO","mbg_slum03h_EO","Land_A_Castle_Stairs_A","Sign_Checkpoint_US_EP1"]; //Objects that cannot be rotated. Ex: DZE_noRotate = ["VaultStorageLocked"]
DZE_curPitch = 5; //Starting rotation angle. Only 1, 5, 45, or 90.