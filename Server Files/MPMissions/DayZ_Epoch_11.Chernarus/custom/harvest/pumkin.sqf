/*
    Credits to Shogun338 from Insurrection gaming
    modified for separate "gather" script
*/
     
private ["_gearmenu","_playerPos","_nearSeed","_Seed","_objectID","_objectUID"];

_playerPos = getPosATL player;
_nearSeed = count nearestObjects [_playerPos, ["MAP_pumpkin"], 4] > 0;
_seed = nearestObject [player, "MAP_pumpkin"];
     
if !(_nearSeed) exitWith {
  cutText [format["You need to be near Pumkins."], "PLAIN DOWN"];
};

if (dayz_combat == 1) then {
  cutText [format["You are in Combat and cannot gather Pumkins."], "PLAIN DOWN"];
  } else {
  disableSerialization;
  _gearmenu = FindDisplay 106;
  _gearmenu CloseDisplay 106;
  player playActionNow "Medic";
  r_interrupt = false;
  sleep 6;
  player addMagazine ["FoodPumpkin",floor(random 2)+1];
  sleep 2;
  cutText [format["You've gathered some Pumkins!"], "PLAIN DOWN"];	
};