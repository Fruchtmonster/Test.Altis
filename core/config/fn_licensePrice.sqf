/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1500}; //Drivers License cost
	case "boat": {200}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {1000}; //Firearm/gun license cost
	case "dive": {500}; //Diving license cost
	case "oil": {6000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {1000}; //Swat License cost
	case "cg": {1000}; //Coast guard license cost
	case "heroin": {10000}; //Heroin processing license cost
	case "marijuana": {10000}; //Marijuana processing license cost
	case "medmarijuana": {5000}; //Medical Marijuana processing license cost
	case "gang": {1000}; //Gang license cost
	case "rebel": {20000}; //Rebel license cost
	case "truck": {6000}; //Truck license cost
	case "diamond": {7500};
	case "salt": {5000};
	case "cocaine": {10000};
	case "sand": {5000};
	case "iron": {5000};
	case "copper": {5000};
	case "cement": {5000};
	case "mair": {15000};
	case "gair": {15000};
	case "home": {20000};
	case "citizen": {0};
};
