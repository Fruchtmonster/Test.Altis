private["_unit","markers","_target"];
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];
_markers = [];

if(isNull _unit) exitWith {hint "Kein Spieler ausgewählt!.";}; //Not valid
if(!isPlayer _unit) exitWith {hint "Kein Spieler ausgewählt!.";};

_markers = allMapMarkers;
_target = _markers select((count _markers)-1);
//hint format["%1",_markers select((count _markers)-1)];
hint format["%1",getMarkerPos _target];
	
//if(!getMarkerPos _target) exitWith {hint "Kein Teleportmarker gesetzt!";};

hint "Scotty, Energie!";

if(name _unit == name player) then
{
	player setPos (getMarkerPos _target);
}
else
{
	player setPos (getPos _unit);
};
