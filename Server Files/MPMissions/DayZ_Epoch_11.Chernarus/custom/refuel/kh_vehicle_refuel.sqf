private ["_target", "_caller", "_id","_vehicle","_message"];

_target = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_args = _this select 3;
_amount = _args select 0;

_vehicle = vehicle player;
_message01 = "Refueling";
_message02 = "Refueling Stopped";
_message03 = "Done refueling, thanks for your visit, pls come back and have a nice day";

if (isNil "ib_refueling_in_progress") then { ib_refueling_in_progress = false; };

if (!ib_refueling_in_progress) then {
  ib_refueling_in_progress = true;
  _vehicle vehicleChat _message01;
  while {(vehicle _caller == _target) and (local _target)} do {
    private ["_velocity", "_cfcust"];
    _velocity = velocity _target;
    _cfcust = fuel _target;
    if ((_velocity select 0 > 1) or (_velocity select 1 > 1) or (_velocity select 2 > 1)) exitWith {
      _vehicle vehicleChat _message02;
    };
    
    if (_cfcust >= 1.0) exitWith {
      _vehicle vehicleChat _message03;
    };
    
    sleep 1.7;
    _cfcust = _cfcust + _amount;
    
    if (_cfcust >= 1.0) then { _cfcust = 1.0; };
    _target setFuel _cfcust;
  };
  
  titleFadeOut 1;
  ib_refueling_in_progress = false;
};