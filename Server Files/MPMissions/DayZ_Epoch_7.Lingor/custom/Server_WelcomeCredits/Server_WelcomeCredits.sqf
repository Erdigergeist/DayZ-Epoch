/* *********************************************************************** */
 
/* =======================================================================
/* SCRIPT NAME: Server Intro Credits Script by IT07
/* SCRIPT VERSION: v1.3.5 BETA
/* Credits for original script: Bohemia Interactive http://bistudio.com
/* =======================================================================
 
/* *********************************************************************** */
 
// ========== SCRIPT CONFIG ============
_onScreenTime = 6; //how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role
//NOTE: Above value is not in seconds!
 
// ==== HOW TO CUSTOMIZE THE CREDITS ===
// If you want more or less credits on the screen, you have to add/remove roles.
// Watch out though, you need to make sure BOTH role lists match eachother in terms of amount.
// Just take a good look at the _role1 and the rest and you will see what I mean.
 
// For further explanation of it all, I included some info in the code.
 
// == HOW TO CUSTOMIZE THE COLOR OF CREDITS ==
// Find line **** and look for: color='#f2cb0b'
// The numbers and letters between the 2 '' is the HTML color code for a certain yellow.
// If you want to change the color of the text, search on google for HTML color codes and pick the one your like.
// Then, replace the existing color code for the code you would like to use instead. Don't forget the # in front of it.
// HTML Color Codes Examples:
// #FFFFFF (white)
// #000000 (black) No idea why you would want black, but whatever
// #C80000 (red)
// #009FCF (light-blue)
// #31C300 (Razer Green)
// #FF8501 (orange)
// ===========================================
 
 
// SCRIPT START
 
waitUntil {!isNil "dayz_animalCheck"};
sleep 60;                                                                                           //Wait in seconds before the credits start after player IS ingame
 
_role1 = "Welcome to the";
_role1names = ["Senzaii Wasteland Epoch Hive"];
_role2 = "Server powered by";
_role2names = ["www.senzaii.net"];
_role3 = "Admins";
_role3names = ["Bael aka erdgeist","pan aka nap"];
_role4 = "Server Edition";
_role4names = ["DayZ Overpoch Lingor","High Customized"];
_role5 = "Server Modifikationen";
_role5names = ["Snap Building Pro","Building Vektors","Bauen ohne Plotpole","Erweitertes Bauen","Wasserquellen","Pflanzen anbauen"];
_role6 = "Server Modifikationen";
_role6names = ["Lift","Waffen Attachments","Dynamische Spawns","Trader Citys","Fahrzeug Voransicht","Direkter Lootspawn"];
_role7 = "Server Modifikationen";
_role7names = ["Player Monitor Evolution","Sichere Zonen","Missionen","Infektion eindaemmen","Beerdigen","Leichen verbrennen"];
_role8 = "Server Modifikationen";
_role8names = ["Demontage Fahrzeuge","Tanken","Munition nachladen","Rettungsheli","Blutpackete","Multi Chars"];
_role9 = "Overpoch Modifikationen";
_role9names = ["Overpoch Fahrzeuge","Overpoch Weapons","Overpoch Kleider","Overpoch GUI","Overpoch Trader","Farbkorrektur"];
_role10 = "Modifizierte AI:";
_role10names = ["Armee","Banditen","Ueberlebende","DZMS","Wicked AI","Sarge AI"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} count _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50],                                                                 //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7],                                                                  //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} count [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names]                                                                                //make SURE the last one here does NOT have a , at the end
];