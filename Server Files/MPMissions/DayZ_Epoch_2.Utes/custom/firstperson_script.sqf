if (!isDedicated) then { //preventing start on server

	waitUntil {!isNull (findDisplay 46)}; //making sure player is spawned

	if (difficultyEnabled "3rdPersonView") then
	{
		while {true} do {
			waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

      if  (((vehicle player) == player) && (dayz_combat == 1)) then {
				player switchCamera "INTERNAL";
        titleText ["You're forced to fight in firstperson!", "PLAIN DOWN", 3];
			};
			sleep 0.1;

			/*if (((vehicle player) != player) && ((speed (vehicle player)) >= 20)) then {
				(vehicle player) switchCamera "Internal";
        titleText ["You're forced to cruise in firstperson!", "PLAIN DOWN", 3];
			};
			sleep 0.1;*/
		};
	};

};