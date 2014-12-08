// General Carver Vehicle Flip Script Flip Over script.
// Author: GeneralCarver
// Date: 10/18/2010
// Version: 1
// Description: This script is executed via the flip over action and sets the targeted vehicle passed to this script back upright.

private ["_veh"];
_veh = _this select 3;

// reset the vehicle at its current position. This will set flipped vehicles back upright.
_veh setpos [getpos _veh select 0, getpos _veh select 1, 0];