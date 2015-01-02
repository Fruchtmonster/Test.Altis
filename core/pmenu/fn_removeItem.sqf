/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Du hast nichts zum entfernen ausgewählt.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Du hast ein falsches Format angegeben."};
if(parseNumber(_value) <= 0) exitWith {hint "Du musst einen Wert eingeben."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Illegale Gegenstände können nicht in der Nähe von Polizisten entfernt werden.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Du kannst im Fahrzeug keine Gegenstände entfernen.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Angegebener Wert ist höher als der Wert des gewählten Gegenstandes."};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Gegenstand %1 %2 wurde aus deinem Inventar entfernt.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;
