
if (!isDedicated) then { //preventing start on server

	waitUntil {!isNull (findDisplay 46)}; //making sure player is spawned

  _deathMessage = format["You may not use third person while in combat"];
  cutText [_deathMessage, "PLAIN DOWN", 3];
   
	if (difficultyEnabled "3rdPersonView") then
	{
		while {true} do {
			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

      if  (((vehicle player) == player) && (dayz_combat == 1)) then {
				player switchCamera "INTERNAL";
        cutText ["You're forced to fight in firstperson!", "PLAIN DOWN", 1];
			};
			sleep 0.1;

			/*if (((vehicle player) != player) && ((speed (vehicle player)) >= 20)) then {
				(vehicle player) switchCamera "Internal";
        cutText ["You're forced to cruise in firstperson!", "PLAIN DOWN", 1];
			};
			sleep 0.1;*/
		};
	};

};