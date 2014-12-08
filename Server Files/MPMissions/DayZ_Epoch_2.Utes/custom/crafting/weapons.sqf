/*
 All credits to MANATEES
 http://manatees.enjin.com
 BAEL CUSTOM ATTACHMENTS SCRIPT
 http://www.senzaii.net
*/

// Config
_disallowinVehicle = true;  // true = Forbidden in vehicle
/*
_gold_cost = false;         // Did adding Attachment cost gold?
_gold_rcost = false;        // Did removing Attachment cost gold?
*/
// CONFIG END

disableUserInput true;

// get all the parameters
_parameters = _this select 0;                   //[1,""M24 Sniper Rifle"",""M24"",1]
_makeItemType = _parameters select 0;           //1
_makeItemName = _parameters select 1;           //""M24 Sniper Rifle""
_makeItem = _parameters select 2;               //""M24""
_makeItemClass = _parameters select 2;          //""M24""
_makeItemQty = _parameters select 3;            //1
_neededItems = _this select 1;                  //[[1,""huntingrifle"",1],[0,""PartGeneric"",4]]

if (dayz_combat == 1) exitwith { titleText [format["You are in combat and cannot modify your weapon!"], "PLAIN DOWN", 3]};
if (_disallowinVehicle && vehicle player != player) exitWith {titleText [format["You cannot modify your weapon in a vehicle!"], "PLAIN DOWN", 3]};

player playActionNow "Medic";
[player,"repair",0,false] call dayz_zombieSpeak;
titleText [ format ["Attempting to craft %1",_makeItemName],"PLAIN DOWN", 3];
sleep 5;
 
// get players inventory and story them as arrays
_mags = magazines player;
_weps = weapons player;
 
_correctInventory = true; // assume true until otherwise proven false
 
// loop through the array of needed items for the build
{
    _itemType = _x select 0;
    _itemClass = _x select 1;
    _itemQty = _x select 2;
 
    if (_itemType == 0) then {
        if (_itemClass in _mags) then {
            _inUserInv = {_x == _itemClass} count magazines player;
            if (_inUserInv < _itemQty) then {
                _correctInventory = false;
            };
        } else {
            _correctInventory = false;
        };
    } else {
        if (_itemClass in _weps) then {
            _inUserInv = 1;
        } else {
            _correctInventory = false;
        };
    };
} forEach _neededItems;
 
if (_correctInventory) then { // appears the player has everything needed
    // remove the items now
    {
        _itemType2 = _x select 0;
        _itemClass2 = _x select 1;
        _itemQty2 = _x select 2;
        for "_i" from 0 to _itemQty2-1 do {
            if (_itemType2 == 0) then {
                titleText [format ["Hold on, removing Item(s)"], "PLAIN DOWN",1];
                player removeMagazine _itemClass2;
            } else {
                titleText [format ["Hold on, removing Weapon"], "PLAIN DOWN",1];
                player removeWeapon _itemClass2;
            };
        };
    } forEach _neededItems;
 
    sleep 2;
    player playActionNow "Medic";
    [player,"repair",0,false] call dayz_zombieSpeak;
    titleText [ format ["Crafting a %1",_makeItemName],"PLAIN DOWN", 3];
    sleep 6;
 
    if (alive player) then { // see if they weren't killed in the process
        _error = false;
        for "_i" from 0 to _makeItemQty-1 do {
            if (_makeItemClass == "PipeBomb") then {
                _result = player addMagazine "PipeBomb";
            } else {
                _result = [player,_makeItemClass] call BIS_fnc_invAdd;
            };
            if (!_result) then {
                _error = true;
            };
        };
        if(_error) then {
            titleText ["One or more items were lost in the crafting process.", "PLAIN DOWN", 3];
        } else {
            titleText [ format ["You have successfully created: %1",_makeItemName],"PLAIN DOWN", 3];
        };
    };
} else {
    // the players gear does not match
    _neededString = [];
    {
        _itemClass3 = _x select 1;
        _itemQty3 = _x select 2;
        _inUserInv3 = {_x == _itemClass3} count magazines player;
        _neededString set [count _neededString, format["%1/%2 %3",_inUserInv3,_itemQty3,_itemClass3]];
     
    } forEach _neededItems;
 
    titleText [format ["To make a %1 you need: %2",_makeItemName, _neededString], "PLAIN DOWN",1];
};

disableUserInput false;