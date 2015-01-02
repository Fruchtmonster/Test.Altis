/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weis";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkel Rot";};
			case 5: {_color = "Blau / Weis"};
			case 6: {_color = "Polizei"};
			case 7: {_color = "Polizei"};
			case 8: {_color = "Taxi"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Grün";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkel Blau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weis"};
			case 6: {_color = "Grau"};
			case 7: {_color = "Schwarz"};
		};
	};
	
	case "B_G_Offroad_01_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC";};
		};
	};
	
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot"};
			case 1: {_color = "Dunkel Blau"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Schwarz / Weis"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Grün"};
			case 6: {_color = "Polizei"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkel Rot";};
			case 1: {_color = "Schwarz";};
			case 2: {_color = "Silber";};
			case 3: {_color = "Orange";};
			case 4: {_color = "Polizei";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weis"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weis"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weis"};
			case 1: {_color = "Rot"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun"};
			case 1: {_color = "Digi Wüste"};
			case 2: {_color = "Schwarz"};
			case 3: {_color = "Blau"};
			case 4: {_color = "Rot"};
			case 5: {_color = "Weis"};
			case 6: {_color = "Digi Grün"};
			case 7: {_color = "Jäger Camo"};
			case 8: {_color = "Rebellen Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
			case 1: {_color = "Schwarz"};
			case 2: {_color = "Digi Grün"};
			case 3: {_color = "Rebel Digital"};
			case 4: {_color = "Olive"};
			case 5: {_color = "Sanitäter"};
		};
	};

	case "C_Heli_Light_01_civil_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blau"};
			case 1: {_color = "Rot"};
			case 2: {_color = "Blueline"};
			case 3: {_color = "Elliptical"};
			case 4: {_color = "Furious"};
			case 5: {_color = "Jeans Blau"};
			case 6: {_color = "Speedy Redline"};
			case 7: {_color = "Sunset"};
			case 8: {_color = "Vrana"};
			case 9: {_color = "Waves Blue"};
			case 10: {_color = "ADAC"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
			case 1: {_color = "Weis / Blau"};
			case 2: {_color = "Digi Grün"};
			case 3: {_color = "Wüsten Digi"};
			case 4: {_color = "Sanitäter"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Olive"};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "I_MRAP_03_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Schwarz"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "O_Heli_Transport_04_bench_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "O_Heli_Transport_04_repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};
	
	case "O_Heli_Transport_04_medevac_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sanitäter"};
		};
	};
	
	case "B_Truck_01_medical_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sanitäter"};
		};
	};
	
	case "I_Truck_02_medical_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sanitäter"};
		};
	};

	case "B_Truck_01_Repair_F":
	{
		switch (_index) do
		{
			case 0: {_color = "ADAC"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
};

_color;
