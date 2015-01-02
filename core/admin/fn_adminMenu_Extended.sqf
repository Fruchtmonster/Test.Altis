#include <macro.h>
/*
	File: fn_adminMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the admin menu, sorry nothing special in here. Take a look for yourself.
*/
if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
private["_display","_plist","_pside","_vlist"];
disableSerialization;
waitUntil {!isNull (findDisplay 2900)};
_display = findDisplay 2900;
_plist = _display displayCtrl 1500;
_vlist = _display displayCtrl 1501;


if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};
//Purge List
lbClear _plist;

{
	_pside = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"?"};};
	_plist lbAdd format["%1 - %2", name _x,_pside];
	_plist lbSetdata [(lbSize _plist)-1,str(_x)];
} foreach playableUnits;

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0;};

////////////Init vehicle list
lbClear _vlist;

/*{
	_vlist lbAdd "TYPE | NAME";
	_vlist lbSetData [(lbSize _vlist) - 1,"ID"];
}*/

/*	_vlist lbAdd "Auto | Off Road Truck";
	_vlist lbSetData [(lbSize _vlist) - 1,"C_Offroad_01_F"];


	_vlist lbAdd "Heli | MH-9 Hummingbird";
	_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Light_01_F"];


	_vlist lbAdd "Boot | Rescue Boat";
	_vlist lbSetData [(lbSize _vlist) - 1,"C_Rubberboat"];


	_vlist lbAdd "Bike | Quad";
	_vlist lbSetData [(lbSize _vlist) - 1,"B_Quadbike_01_F"];*/
	

_vlist lbAdd "Bike | Quad";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Quadbike_01_F"];
	
	
_vlist lbAdd "Kart | Kart";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Kart_01_Blu_F"];	
	
	
_vlist lbAdd "Boot | Rescue Boat";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Lifeboat"];


_vlist lbAdd "Boot | Assault Boat";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Boat_Transport_01_F"];


_vlist lbAdd "Boot | Motorboat";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Boat_Civil_01_F"];



_vlist lbAdd "Boot | SDV";
_vlist lbSetData [(lbSize _vlist) - 1,"B_SVD_01_F, O_SVD_01_F"];


_vlist lbAdd "Auto | HEMTT";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_transport_F"];


_vlist lbAdd "Auto | HEMTT abgedeckt";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_covered_F"];


_vlist lbAdd "Auto | HEMTT Container";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_box_F"];


_vlist lbAdd "Auto | HEMTT Mover";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Truck_01_mover_F"];


_vlist lbAdd "Auto | Tempest";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_transport_F"];


_vlist lbAdd "Auto | Tempest abgedeckt";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_covered_F"];


_vlist lbAdd "Auto | Tempest Device";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_03_device_F"];


_vlist lbAdd "Auto | Boxer";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Van_01_box_F"];


_vlist lbAdd "Auto | SUV";
_vlist lbSetData [(lbSize _vlist) - 1,"C_SUV_01_F"];


_vlist lbAdd "Auto | Hatchback";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Hatchback_01_F"];


_vlist lbAdd "Auto | Hatchback Sport";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Hatchback_01_sport_F"];


_vlist lbAdd "Auto | Offroader";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Offroad_01_F"];


_vlist lbAdd "Auto | Offroader Repair";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Offroad_01_repair_F"];


_vlist lbAdd "Auto | Hunter";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MRAP_01_F"];


_vlist lbAdd "Auto | Ifrit";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MRAP_02_F"];


_vlist lbAdd "Auto | Strider";
_vlist lbSetData [(lbSize _vlist) - 1,"I_MRAP_03_F"];


_vlist lbAdd "Auto | Van";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Van_01_transport_F"];


_vlist lbAdd "Auto | Zamak abgedeckt";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_02_covered_F"];


_vlist lbAdd "Auto | Zamak offen";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Truck_02_transport_F"];


_vlist lbAdd "Auto | Offroader HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"B_G_Offroad_01_armed_F"];


_vlist lbAdd "Auto | Hunter HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"B_MRAP_01_hmg_F"];


_vlist lbAdd "Auto | Ifrit HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"O_MRAP_02_hmg_F"];


_vlist lbAdd "Auto | Strider HMG";
_vlist lbSetData [(lbSize _vlist) - 1,"I_MRAP_03_hmg_F"];


_vlist lbAdd "Panzer | AMV-7 Marshall";
_vlist lbSetData [(lbSize _vlist) - 1,"B_APC_Wheeled_01_cannon_F"];


_vlist lbAdd "Heli | MH-9 Hummingbird";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Light_01_F"];


_vlist lbAdd "Heli | M-900";
_vlist lbSetData [(lbSize _vlist) - 1,"C_Heli_Light_01_civil_F"];


_vlist lbAdd "Heli | PO-30 Orca";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Light_02_unarmed_F"];


_vlist lbAdd "Heli | WY-55 Hellcat";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Heli_light_03_unarmed_F"];


_vlist lbAdd "Heli | Mi-290 Taru";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_F"];


_vlist lbAdd "Heli | Mi-290 Taru (Medical)";
_vlist lbSetData [(lbSize _vlist) - 1,"O_Heli_Transport_04_medevac_F"];


_vlist lbAdd "Heli | CH-67 Huron";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Transport_03_unarmed_F"];


_vlist lbAdd "Heli | CH-49 Mohawk";
_vlist lbSetData [(lbSize _vlist) - 1,"I_Heli_Transport_02_F"];


_vlist lbAdd "Heli | UH-80 Ghosthawk";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Heli_Transport_01_camo_F"];


_vlist lbAdd "Container | Frachtcontainer";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Slingload_01_Cargo_F"];


_vlist lbAdd "Container | Medizin Container";
_vlist lbSetData [(lbSize _vlist) - 1,"B_Slingload_01_Medevac_F"];
