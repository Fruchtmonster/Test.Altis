/*
File: welcome.sqf
Author: ZedBuster
Link: opendayz.net/threads/dayz-welcome-message-credits-style.13071/
Description:
Creates an intro on the bottom-right hand corner of the screen.
*/
_onScreenTime = 5; //Zeit wie lange ein Text angezeigt wird
sleep 8; //Zeit bis die Willkommensnachricht erscheint (in Sekunden)
_role1 = "Willkommen"; //In Gelb
_role1names = ["bei RPGaming Alpha"]; //In Weiß
_role2 = "Information";
_role2names = ["Eigenständiges Konzept vorhanden, bei Fragen bei Admins melden"];
_role3 = "TeamSpeak 3";
_role3names = ["RPGaming.de"];
_role4 = "Community";
_role4names = ["Alle News rund um Server und der Community findet ihr unter RPGaming.de"];
_role5 = "Verbesserungen";
_role5names = ["Ideen, Bugs und Verbesserungen können via Steam/TS mitgeteilt werden"];
_role6 = "Admins";
_role6names = ["NoobyMcNapNoob; Spiderswine"];
_role7 = "Viel Spass";
_role7names = ["wünscht euch das RP Evolution Team"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names]
];
