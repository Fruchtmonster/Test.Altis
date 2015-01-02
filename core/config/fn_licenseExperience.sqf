/*
	File: fn_licenseExperience.sqf
	Author: Spiderswine
	
	Description:
	Returns the experience you need for a license.
*/
private["_license", "_ret"];
_license = [_this,0,"",[""]] call BIS_fnc_param;

if(_license == "") exitWith {0};

switch (_license) do
{
	case "license_civ_driver": {_ret = 100}; //Drivers License experience
	case "license_civ_boat": {_ret = 1000}; //Boating license experience
	case "license_civ_air": {_ret = 6700}; //Pilot/air license experience
	case "license_civ_gun": {_ret = 1000}; //Firearm/gun license experience
	case "license_civ_dive": {_ret = 1000}; //Diving license experience
	case "license_civ_oil": {_ret = 2500}; //Oil processing license experience
	case "license_cop_air": {_ret = 3000}; //Cop Pilot License experience
	case "license_cop_swat": {_ret = 4000}; //Swat License experience
	case "license_cop_cg": {_ret = 3000}; //Coast guard license experience
	case "license_civ_heroin": {_ret = 3500}; //Heroin processing license experience
	case "license_civ_marijuana": {_ret = 3500}; //Marijuana processing license experience
	case "license_civ_medmarijuana": {_ret = 3500}; //Medical Marijuana processing license experience
	case "license_civ_gang": {_ret = 1000}; //Gang license experience
	case "license_civ_rebel": {_ret = 3600}; //Rebel License experience
	case "license_civ_truck":{_ret = 2400}; //Truck License experience
	case "license_civ_diamond": {_ret = 3600};
	case "license_civ_salt": {_ret = 2600};
	case "license_civ_coke": {_ret = };
	case "license_civ_sand": {_ret = 1800};
	case "license_civ_iron": {_ret = 2700};
	case "license_civ_copper": {_ret = 3100};
	case "license_civ_cement": {_ret = 1300};
	case "license_med_air": {_ret = 4700};
	case "license_civ_home": {_ret = 10000};
	case "license_civ_citizen": {_ret = 0};
	default {_ret = 0};
};

_ret;