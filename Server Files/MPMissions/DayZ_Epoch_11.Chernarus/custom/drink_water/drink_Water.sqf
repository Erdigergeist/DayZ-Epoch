	

    private["_playerPos","_canDrink","_isPond","_isWell","_pondPos","_objectsWell","_objectsPond","_display"];
     
    call gear_ui_init;
    _playerPos = getPosATL player;
    _canDrink = count nearestObjects [_playerPos, ["Land_pumpa","Land_water_tank","Land_Misc_Well_L_EP1","Land_Misc_Well_C_EP1"], 4] > 0;
    _isPond = false;
    _isWell = false;
    _pondPos = [];
    _objectsWell = [];
     
    if (!_canDrink) then {
            _objectsWell = nearestObjects [_playerPos, [], 4];
            {
                    //Check for Well
                    _isWell = ["_well",str(_x),false] call fnc_inString;
                    if (_isWell) then {_canDrink = true};
            } forEach _objectsWell;
    };
     
    if (!_canDrink) then {
            _objectsPond = nearestObjects [_playerPos, [], 50];
            {
                    //Check for pond
                    _isPond = ["pond",str(_x),false] call fnc_inString;
                    if (_isPond) then {
                            _pondPos = (_x worldToModel _playerPos) select 2;
                            if (_pondPos < 0) then {
                                    _canDrink = true;
                            };
                    };
            } forEach _objectsPond;
    };
     
    if (_canDrink) then {
     
                    if ((floor (random 100) < 25)) then {
                   
                            player playActionNow "PutDown";
                            r_player_infected = true;
                            player setVariable["USEC_infected",true,true];
                            player setVariable ["messing",[dayz_hunger,dayz_thirst],true];
     
                            dayz_lastDrink = time;
                            dayz_thirst = 0;
     
                            //Ensure Control is visible
                            _display = uiNamespace getVariable 'DAYZ_GUI_display';
                            (_display displayCtrl 1302) ctrlShow true;
                            cutText ["Das Wasser ist lauwarm und schmeckt irgendwie komisch und dein Durst ist gestillt, aber du hast dich angesteckt.", "PLAIN DOWN", 3];
                            //cutText ["The water is warm and tastes kinda strange, but your thirst is quenched.", "PLAIN DOWN", 3];
                           
                    } else {
                           
                            player playActionNow "PutDown";
                            dayz_lastDrink = time;
                            dayz_thirst = 0;
     
                            //Ensure Control is visible
                            _display = uiNamespace getVariable 'DAYZ_GUI_display';
                            (_display displayCtrl 1302) ctrlShow true;
                            cutText ["Das Wasser ist kuehl und schmeckt frisch, dein Durst ist gestillt.", "PLAIN DOWN", 3];
                            //cutText ["The water is cool and tastes a bit stale, but your thirst is quenched.", "PLAIN DOWN", 3];
                    };
     
    };

