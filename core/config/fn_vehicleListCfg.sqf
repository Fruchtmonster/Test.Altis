#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",300],
			["C_Kart_01_Fuel_F",300],
			["C_Kart_01_Red_F",300],
			["C_Kart_01_Vrana_F",300]
		];
	};
	
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",180]
		];
	};
	
	case "med_air_hs":
	{
		_return = [
			["B_Heli_Light_01_F",300],
			["O_Heli_Light_02_unarmed_F",450],
			["O_Heli_Transport_04_medevac_F",600]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",240],
			["C_Hatchback_01_F",1200],
			["C_Hatchback_01_sport_F",1500],
			["C_Offroad_01_F",2100],
			["C_SUV_01_F",3000],
			["C_Van_01_transport_F",2700]
		];
	};
	
	case "garage_car":
	{
		_return = 
		[
			["B_G_Offroad_01_repair_F",180]
		];
	};
	
	case "garage_air":
	{
		_return = 
		[
			["C_Heli_Light_01_civil_F",300],
			["O_Heli_Transport_04_repair_F",600]
		];
	};	
	
	case "sec_car":
	{
		_return = 
		[
			["B_G_Offroad_01_F",180],
			["B_MRAP_01_F",2250]
		];
	};
	
	case "sec_air":
	{
		_return = 
		[
			["B_Heli_Light_01_F",300]
		];
	};	
	
	case "don_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",180],
			["C_Hatchback_01_F",1200],
			["C_Hatchback_01_sport_F",1125],
			["C_Offroad_01_F",1575],
			["B_G_Offroad_01_F",1575],
			["C_SUV_01_F",2000],
			["O_MRAP_02_F",16875],
			["C_Van_01_transport_F",2025],
			["C_Van_01_box_F",2000],
			["I_Truck_02_transport_F",5060],
			["I_Truck_02_covered_F",5625],
			["B_Truck_01_transport_F",13500],
			["B_Truck_01_covered_F",15750],
			["B_Truck_01_box_F",20000],
			["O_Truck_03_transport_F",11250],
			["O_Truck_03_covered_F",13500],
			["O_Truck_03_device_F",29250]
		];
	};
	
	case "don_air":
	{
		_return = 
		[
			["B_Heli_Light_01_F",37125],
			["C_Heli_Light_01_civil_F",37125],
			["O_Heli_Light_02_unarmed_F",56250],
			["O_Heli_Transport_04_F",45000],
			["I_Heli_Transport_02_F",84375],
			["B_Heli_Transport_03_unarmed_F",84375],
			["O_Heli_Transport_04_covered_F",84375]
		];
	};	
	
	
	case "smugler_car":
	{
		_return = 
		[
			["B_G_Offroad_01_F",2100],
			["O_Truck_03_covered_F",18000],
			["O_MRAP_02_F",22500]
		];
	};
	
	case "smugler_air":
	{
		_return = 
		[
			["B_Heli_Light_01_F",49500],
			["O_Heli_Light_02_unarmed_F",75000],
			["O_Heli_Transport_04_covered_F",112500]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",3000],
			["I_Truck_02_transport_F",6750],
			["I_Truck_02_covered_F",7500],
			["B_Truck_01_transport_F",18000],
			["B_Truck_01_covered_F",21000],
			["B_Truck_01_box_F",30000],
			["O_Truck_03_transport_F",15000],
			["O_Truck_03_covered_F",18000],
			["O_Truck_03_device_F",39000]
		];	
	};
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",240]
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_F",2100]];
			_return set[count _return,
			["O_MRAP_02_F",22500]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};
	
	case "reb_air":
	{
		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",49500]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",75000]];
			_return set[count _return,
			["O_Heli_Transport_04_F",60000]];
			_return set[count _return,
			["O_Heli_Transport_04_covered_F",112500]];
		};
	};
	
	case "reb_ship":
	{
		_return =
		[
			["C_Rubberboat",225],
			["C_Boat_Civil_01_F",900]
		];
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",180]];
		_return set[count _return,
		["C_Hatchback_01_sport_F",450]];
		_return set[count _return,
		["C_SUV_01_F",300]];
		if((["cop"] call life_fnc_permLevel) > 4) then
		{
			_return set[count _return,
			["I_MRAP_03_F",2250]];m
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Slingload_01_Cargo_F",3000],
			["C_Heli_Light_01_civil_F",49500],
			["O_Heli_Light_02_unarmed_F",75000],
			["I_Heli_Transport_02_F",112500],
			["B_Heli_Transport_03_unarmed_F",112500]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",300]];
		if((["cop"] call life_fnc_permLevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",450]];
			_return set[count _return,
			["O_Heli_Transport_04_bench_F",600]];
		};
	};
	
	case "cop_airhq":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",300]];
		if((["cop"] call life_fnc_permLevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",450]];
			_return set[count _return,
			["O_Heli_Transport_04_bench_F",600]];
			_return set[count _return,
			["I_MRAP_03_hmg_F",37500]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",225],
			["C_Boat_Civil_01_F",900]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",225],
			["C_Boat_Civil_01_police_F",300],
			["B_Boat_Armed_01_minigun_F",450],
			["B_SDV_01_F",600]
		];
	};
};

_return;
