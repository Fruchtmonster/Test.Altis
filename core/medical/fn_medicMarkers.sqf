/*
	File: fn_medicMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks downed players on the map when it's open.
*/
private["_medicmarkers","_requestmarkers","_units","_medics"];
_medicmarkers = [];
_requestmarkers = [];
_units = [];
_medics = [];

sleep 0.25;
if(visibleMap) then {
	{if(side _x == independent && alive _x && _x != player) then {_medics set[count _medics,_x];}} foreach playableUnits; //Fetch list of medics
	
	// Fetch list of dead units
	{
		_name = _x getVariable "name";
		_down = _x getVariable ["Revive",false];
		if(!isNil "_name" && !_down) then {
			_units set[count _units,_x];
		};
	} foreach allDeadMen;
	
	// Fetch list of Requests
	{
		_request = _x getVariable ["RequestingEMS", false];
		if(_request) then {
			_units set[count _units,_x];
		};
	} foreach playableUnits;
	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorGreen";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_medicmarkers set[count _medicmarkers,[_marker,_x]];
	} foreach _medics;
	
	//Loop through and create markers.
	{
		_marker = createMarkerLocal [format["%1_request_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorRed";
		_marker setMarkerTypeLocal "mil_warning";
		_marker setMarkerTextLocal format["%1",(_x getVariable["realname","Unknown Player"])];
		_requestmarkers set[count _requestmarkers,_marker];
	} foreach _units;
	
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _medicmarkers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};
	
	{deleteMarkerLocal (_x select 0);} foreach _medicmarkers;
	{deleteMarkerLocal _x;} foreach _requestmarkers;
	_medicmarkers = [];
	_requestmarkers = [];
	_medics = [];
	_units = [];
};