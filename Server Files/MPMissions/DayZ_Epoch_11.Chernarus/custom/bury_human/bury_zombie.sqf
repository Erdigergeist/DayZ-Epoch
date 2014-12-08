private["_corpse","_type","_isBuried","_mound","_cross","_gun"];

//Variables ------------------------------------------------
_corpse = _this select 3;
_type = typeOf _corpse;
_isBuried = _corpse getVariable["isBuried",false];
_hasHarvested = _corpse getVariable["meatHarvested",false];
_countDownTimer = 120; //Total time to count down, makes the body burn for 60 seconds. Change to whatever you like...
_timeLeft = _countDownTimer; //time left to count down, dont touch this
canAbort = true;
//----------------------------------------------------------
  
player removeAction s_player_bury_human;
s_player_bury_human = -1;
 
if (!_isBuried) then {
    if (!_hasHarvested) then {
 
          _corpse setVariable["isBuried",true,true];
        player playActionNow "Medic";                
        sleep 10;
        _position = getPosATL _corpse;
        _dir = getDir _corpse;
        _deathMessage = format["For a better World!"];
        cutText [_deathMessage, "PLAIN DOWN"];
        [player,10] call player_humanityChange;
        deleteVehicle _corpse;
        _mound = createVehicle ["Grave", _position, [], 0, "CAN_COLLIDE"];
        _mound setpos [(getposATL _mound select 0),(getposATL _mound select 1), 0];
        PVDZ_obj_Fire = [_mound,1,time,false,true];
        publicVariable "PVDZ_obj_Fire";
        _id = PVDZ_obj_Fire spawn BIS_Effects_Burn;
        sleep 20;
        PVDZ_obj_Fire02 = [_mound,4,time,false,true];
        publicVariable "PVDZ_obj_Fire02";
        _id = PVDZ_obj_Fire02 spawn BIS_Effects_Burn;
        for "_i" from 0 to _countDownTimer do {
          sleep 1;
          _timeLeft = _timeLeft - 1;
        }; 
        if(_timeLeft == 0 || _timeLeft < 0) then {
        deleteVehicle _mound;
    };
    } else {
        cutText ["The lucky bastards died long ago, there's not much left to burn down.", "PLAIN DOWN", 3];
    };
};


