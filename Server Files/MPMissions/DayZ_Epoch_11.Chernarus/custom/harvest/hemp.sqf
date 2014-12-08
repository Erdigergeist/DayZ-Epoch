/*
    Credits to Shogun338 from Insurrection gaming
    modified for separate "gather weed" script
*/
     
private ["_gearmenu","_playerPos","_nearWeed","_weed","_objectID","_objectUID"];

_playerPos = getPosATL player;
_nearWeed = count nearestObjects [_playerPos, ["fiberplant"], 4] > 0;
_weed = nearestObject [player, "fiberplant"];
     
if !(_nearWeed) exitWith {
  cutText [format["You need to be near weed plants."], "PLAIN DOWN"];
};

if (dayz_combat == 1) then {
  cutText [format["You are in Combat and cannot gather Weed."], "PLAIN DOWN"];
  } else {
  disableSerialization;
  _gearmenu = FindDisplay 106;
  _gearmenu CloseDisplay 106;
  player playActionNow "Medic";
  r_interrupt = false;
  sleep 6;
  player addMagazine ["ItemKiloHemp",floor(random 2)+1];
  sleep 2;
  cutText [format["You've Gathered Some Weed! Smoke it or sell it at dealer!"], "PLAIN DOWN"];	
};