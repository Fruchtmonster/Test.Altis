#include <macro.h>
/*
	Impound for ADAC
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_vehownerid","_costful_impound"];
_vehicle = cursorTarget;
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "B_Slingload_01_Medevac_F") || (_vehicle isKindOf "B_Slingload_01_Cargo_F") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if((_vehicle isKindOf "Car") || (_vehicle isKindOf "B_Slingload_01_Medevac_F") || (_vehicle isKindOf "B_Slingload_01_Cargo_F") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
{
	_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
	if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle}; //Bad vehicle.
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	[[0,format["%1, dein %2 wird gerade vom ADAC abgeschleppt.",(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	life_action_inUse = true;
	
	_upp = localize "STR_NOTF_Impounding";
	//Setup our progress bar.
	disableSerialization;
	_layer = "life_progress" call BIS_fnc_rscLayer;
	_layer cutRsc["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	while{true} do
	{
		sleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 10) exitWith {};
		if(!alive player) exitWith {};
	};
	_layer cutText ["","PLAIN"];
	
	if(player distance _vehicle > 10) exitWith {hint localize "STR_NOTF_ImpoundingCancelled"; life_action_inUse = false;};
	if(!alive player) exitWith {life_action_inUse = false;};
	//_time = _vehicle getVariable "time";
	//if(isNil {_time}) exitWith {deleteVehicle _vehicle; hint "Achtung! Freilaufender Admin"};
	//if((time - _time)  < 120) exitWith {hint "This is a freshly spawned vehicle, you have no right impounding it."};
	if((count crew _vehicle) == 0) then
	{
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "B_Slingload_01_Medevac_F") || (_vehicle isKindOf "B_Slingload_01_Cargo_F") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {life_action_inUse = false;};
		_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		switch (true) do
		{
			case (_vehicle isKindOf "Car"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "Ship"): {_price = (call life_impound_boat);};
			case (_vehicle isKindOf "Air"): {_price = (call life_impound_air);};
			case (_vehicle isKindOf "B_Slingload_01_Medevac_F"): {_price = (call life_impound_car);};
			case (_vehicle isKindOf "B_Slingload_01_Cargo_F"): {_price = (call life_impound_car);};
		};
		
		life_impound_inuse = true;
		[[_vehicle,true,player],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
		
		//delete ropes on impound
		_ropes = (_vehicle getvariable ["zlt_ropes", []]);
		{deletevehicle _x} foreach _ropes;
		_vehicle setvariable ["zlt_ropes", [], true];

		waitUntil {!life_impound_inuse};
		hint format[localize "STR_NOTF_Impounded",_type,_price];
		[[0,format[localize "STR_NOTF_HasImpounded",profileName,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		life_atmcash = life_atmcash + _price;
	}
		else
	{
		hint localize "STR_NOTF_ImpoundingCancelled";
	};
};
life_action_inUse = false;
