/*
	File: fn_copMarkers.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Marks cops on the map for other cops. Only initializes when the actual map is open.
*/
private["_copmarkers","_requestmarkers","_cops","_units"];
_copmarkers = [];
_requestmarkers = [];
_cops = [];
_units = [];

sleep 0.5;
if(visibleMap) then {
	{if(side _x == west && alive _x && _x != player) then {_cops set[count _cops,_x];}} foreach playableUnits; //Fetch list of cops / blufor
	
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
		_request = _x getVariable ["RequestingCops", false];
		if(_request) then {
			_units set[count _units,_x];
		};
	} foreach playableUnits;
	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
		_copmarkers set[count _copmarkers,[_marker,_x]];
	} foreach _cops;
	
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
		} foreach _copmarkers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};

	{deleteMarkerLocal (_x select 0);} foreach _copmarkers;
	{deleteMarkerLocal _x;} foreach _requestmarkers;
	_copmarkers = [];
	_requestmarkers = [];
	_cops = [];
	_units = [];
};