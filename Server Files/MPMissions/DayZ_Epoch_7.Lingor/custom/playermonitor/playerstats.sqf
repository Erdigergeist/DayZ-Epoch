private "_name";
//Let Zeds know
[player,4,true,(getPosATL player)] spawn player_alertZombies;

//display gui (temp hint)
_name = if (alive player) then {name player;} else {"Dead Player";};

_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));
if (player == vehicle player) then
		{
			_pic = (gettext (configFile >> 'cfgWeapons' >> (currentWeapon player) >> 'picture'));	
		}
		else
		{
			_pic = (gettext (configFile >> 'CfgVehicles' >> (typeof vehicle player) >> 'picture'));	
		};

hintSilent parseText format ["
	<t size='2'font='Bitstream' align='center' color='#f2cb0b'>%1</t><br/>
  <t size='1'font='Bitstream' align='center'' color='#FFFFFF'>%2 Days alive</t><br/><br/>
	<t size='1'font='Bitstream' align='left' color='#FFFFFF'>Blood:</t><t size='1' font='Bitstream' align='right' color='#2EE319'>%3</t><br/>
	<t size='1'font='Bitstream' align='left' color='#FFFFFF'>Humanity:</t><t size='1'font='Bitstream' align='right' color='#2EE319'>%4</t><br/>
	<t size='1'font='Bitstream' align='left' color='#FFFFFF'>Dead Survivors:</t><t size='1'font='Bitstream' align='right' color='#2EE319'>%5</t><br/>
	<t size='1'font='Bitstream' align='left' color='#FFFFFF'>Dead Bandits:</t><t size='1'font='Bitstream' align='right' color='#2EE319'>%6</t><br/>
	<t size='1'font='Bitstream' align='left' color='#FFFFFF'>Headshots:</t><t size='1'font='Bitstream' align='right' color='#2EE319'>%8</t><br/><br/>
  <t size='1' font='Bitstream' align='center' color='#FFFFFF'>%9 Survivors </t><br/>
	<img size='4' image='%10'/><br/>
  <t size='1' font='Bitstream' align='center' color='#FFFFFF'>Server runs</t><br/> 
  <t size='1' font='Bitstream' align='center' color='#FFFFFF'>%11 minutes</t>",
  (name player),
  (dayz_Survived),
  (r_player_blood),
  (player getVariable['humanity', 0]),
  (player getVariable['humanKills', 0]),
  (player getVariable['banditKills', 0]),
  (player getVariable['zombieKills', 0]),
  (player getVariable['headShots', 0]),
  (count playableUnits),
  _pic,	
  (round(serverTime/60))	
];
/*
player createDiarySubject ["MyDiary","My Diary"];
player createDiaryRecord ["MyDiary",["Stats", "Zombies Killed: <execute expression='player getVariable['zombieKills', 0]'</execute>"]];
player createDiaryRecord ["MyDiary",["Stats", "Headshots: <execute expression='player getVariable['headShots', 0]'</execute>"]];
player createDiaryRecord ["MyDiary",["Stats", "Murders: <execute expression='player getVariable['humanKills', 0]'</execute>"]];
player createDiaryRecord ["MyDiary",["Stats", "Bandits Killed: <execute expression='player getVariable['banditKills', 0]'</execute>"]];
player createDiaryRecord ["MyDiary",["Stats", "Humanity: <execute expression='player getVariable['humanity', 0]'</execute>"]];
*/
