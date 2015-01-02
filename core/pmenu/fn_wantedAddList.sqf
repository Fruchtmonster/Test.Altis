//fn_wantedadd2.sqf

private["_display","_list","_side"];
disableSerialization;
createDialog "life_wanted_add";
//waitUntil {!isNull (findDisplay 9900)};
_display = findDisplay 9900;
_list = _display displayCtrl 9902;

//Purge List
lbClear _list;


{
    _side = switch(side _x) do {case west: {"Cop"}; case civilian : {"Civ"}; default {"Unknown"};};
    _list lbAdd format["%1 - %2", name _x,_side];
    _list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;


_list2 = _display displayCtrl 9991;
lbClear _list2;


//_index = lbAdd [_list2, "Name"];
//lbSetData [_list2, _index, "pfad/zum/bild.paa"];
//lbSetValue [_list2, _index, "pfad/zum/bild.paa"];

_text = "Vehicular Manslaughter $6500";
_data = "187V";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Manslaughter $8500";
_data = "187";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Escaping Jail $4500";
_data = "901";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Rape $5000";
_data = "261";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Rape $3000";
_data = "261A";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Auto Theft $2000";
_data = "215";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Use of illegal explosives $10000";
_data = "213";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Robbery $1000";
_data = "211";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];


_text = "Kidnapping $3500";
_data = "207";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Attempted Kidnapping $2000";
_data = "207A";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Grand Theft $1500";
_data = "487";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Petty Theft $700";
_data = "488";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Hit and run $1300";
_data = "481";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Drug Possession $1000";
_data = "481";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Intent to distribute $5000";
_data = "482";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Drug Trafficking $9500";
_data = "483";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];

_text = "Burglary $6500";
_data = "459";
_list2 lbAdd format["%1 (%2)",_text,_data];
_list2 lbSetData [(lbSize _list2)-1,_data];