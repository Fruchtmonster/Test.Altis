#include <macro.h>
/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;
_return = [];

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		if(life_spawn_base) then {			
			_return = [
				["cop_spawn_1","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_2","Sofia","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
				["cop_spawn_3","Athira","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
			];
		} else {
			_return = [
				["last_position","Standort","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
				["cop_spawn_1","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
			];
		};
	};
	
	case civilian:
	{
		if(!life_spawn_base) then {
			_return = [["last_position","Standort","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		
		if(license_civ_rebel) then { 			
			_return set[count _return,["reb_spawn","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		} else {			
			_return set[count _return,["civ_spawn","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
			
		switch (true) do {
			case ((["smugler"] call life_fnc_permLevel) > 1): {_return set[count _return,["civ_smugler_spawn","Schmuggler","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];};
			case ((["security"] call life_fnc_permLevel) > 1): {_return set[count _return,["civ_sec_spawn","Security","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];};
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		
		if((["medic"] call life_fnc_permLevel) > 0) then {
			if(life_spawn_base) then {
				_return = [
					["medic_spawn_1","Pyrgos","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
					["medic_spawn_2","Athira","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
					["medic_spawn_3","Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
					["medic_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
				];
			} else {
				_return = [
					["last_position","Standort","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["medic_spawn_1","Pygros","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
				];
			};
		} else {
			if(life_spawn_base) then {
				_return = [["adac_spawn_1","Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
			} else {
				_return = [
					["last_position","Standort","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
					["adac_spawn_1","Flughafen","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
				];
			};
		};
	};
};

_return;
