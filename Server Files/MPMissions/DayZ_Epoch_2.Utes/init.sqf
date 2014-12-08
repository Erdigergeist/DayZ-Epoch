/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 2;	//The instance
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
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1000; // Default = 1500

//startgear
DefaultMagazines = ["ItemBandage","ItemBandage","ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD""FoodCanFrankBeans","ItemSodaCoke","ItemPainkiller","ItemMorphine"]; 
DefaultWeapons = ["Binocular","ItemFlashlight","ItemMap","M9SD","ItemRadio"]; 
DefaultBackpack = ["DZ_ALICE_Pack_EP1"]; 
DefaultBackpackWeapon = [""];

MaxVehicleLimit = 100; // Default = 50
MaxDynamicDebris = 150; // Default = 100
dayz_MapArea = 4000; // Default = 10000
dayz_maxLocalZombies = 0; // Default = 30 
dayz_maxGlobalZombiesInit = 0; // Default = 30
dayz_maxGlobalZombiesIncrease = 0; // Default = 5;
dayz_maxZeds = 1; //Default = 500;

dayz_paraSpawn = true;
DZE_PlayerZed = false;
DZE_SelfTransfuse =true;
DZE_selfTransfuse_Values = [4000, 5, 180];

DZE_CharacterSwitchTimeout = 10; // default 30 minutes timeout (0 to disable)
DZE_CharacterMinDistance = 0; // default 1000 meters min distance (0 to disable)

//Enable/Disable Display Name
DZE_ForceNameTagsOff = true; 

//Spawntime loot in minutes
DZE_LootSpawnTimer = 5;

//Enable/Disable machine gun ammo for vehicles with turrets
DZE_vehicleAmmo = 1;

dayz_sellDistance_vehicle = 10;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;

dayz_maxAnimals = 5; // Default: 8
dayz_tameDogs = true;
DynamicVehicleDamageLow = 20; // Default: 0
DynamicVehicleDamageHigh = 80; // Default: 100

DZE_BuildOnRoads = false; // Default: False

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
call compile preprocessFileLineNumbers "custom\snap_build\compiles.sqf";      //snap build
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_2.Utes\dynamic_vehicle.sqf";				
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_2.Utes\mission.sqf";
	
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {
  //Tankstelle refuel
  [] execVM "custom\refuel\kh_actions.sqf";
  
  //Server Welcom Message
  [] execVM "custom\Server_WelcomeCredits\Server_WelcomeCredits.sqf"; 
  
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
  
  //Just another Evac Heli
  _nil = [] execVM "custom\JAEM\EvacChopper_init.sqf";
  	
  //Force first person view
	[] execVM "custom\firstperson_script.sqf";
  	
};

//#include "\z\addons\dayz_code\system\REsec.sqf"

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

// run SAR_AI, SHK and UPSMON
call compile preprocessFileLineNumbers "addons\UPSMON\scripts\Init_UPSMON.sqf";
call compile preprocessfile "addons\SHK_pos\shk_pos_init.sqf";
[] execVM "addons\SARGE\SAR_AI_init.sqf";

//DayZ Watermark
if (!isNil "server_name") then {
  [] spawn {
    waitUntil {(!isNull Player) and (alive Player) and (player == player)};
    waituntil {!(isNull (findDisplay 46))};
    5 cutRsc ["wm_disp","PLAIN"];
    ((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText server_name;
  };
};

//Color correction
_null = [] execVM "custom\color_correction\color_correction.sqf";

//Radio on Map
execVM "custom\RC\init.sqf";
