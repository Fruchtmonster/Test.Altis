/*
	File: fn_adminGodMode.sqf
	Author: Spiderswine
	
	Description:
	Handles damage for Admins
*/

private ["_enable","_handled"];
_enable = _this select 0;

// Enables God Mode for Admin
if(_enable) then {
	life_is_god = true;
	hint "Du bist jetzt unverwundbar!";
}
// Disables God Mode for Admin
else
{
	life_is_god = false;
	hint "Du bist jetzt wieder verwundbar!";
};

