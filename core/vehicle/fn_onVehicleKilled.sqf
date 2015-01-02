/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part"];
_vehicle = _this select 0;
_killer = _this select 1;

hint "Killed";

if(_vehicle isKindOf "Car") then {
	_vehicle setDammage 0.9; 
	_vehicle setHit["wheel_1_1_steering", 1]; 
	_vehicle setHit["wheel_1_2_steering", 1]; 
	_vehicle setHit["wheel_2_1_steering", 1];
	_vehicle setHit["wheel_2_2_steering", 1]; 
	_vehicle setHit["karoserie", 1];
};