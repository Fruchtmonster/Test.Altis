/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Supermarkt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","zipties","boltcutter","storagesmall","storagebig"]]};
	case "rebel": {["Rebellen Markt",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","zipties"]]};
	case "gang": {["Gang Markt", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","zipties"]]};
	case "medic": {["Snack Automat", ["water","rabbit","apple","redgull","tbacon","fuelF","peach","zipties"]]};		
	case "adac": {["Kantine", ["water","rabbit","apple","redgull","tbacon","lockpick","fuelF","peach","zipties"]]};	
	case "sec": {["Snack Automat", ["water","rabbit","apple","redgull","tbacon","fuelF","peach"]]};	
	case "gas": {["Tankstelle", ["water","rabbit","apple","redgull","tbacon","peach","fuelF"]]};	
	case "jail": {["Snack Automat", ["water","rabbit","apple","redgull","tbacon","peach"]]};	
	case "smugler": {["Kiosk", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","zipties"]]};	
	case "wongs": {["Wong's China Imbiss",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Öl Händler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fisch Markt",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glas Händler",["glass"]]};
	case "iron": {["Altis Metall Händler",["iron_r","copper_r"]]};
	case "diamond": {["Juwelier",["diamond","diamondc"]]};
	case "salt": {["Salz Händler",["salt_r"]]};
	case "cop": {["Polizei Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","handcuffs"]]};
	case "cement": {["Baustoff Händler",["cement"]]};
	case "gold": {["Gold Ankäufer",["goldbar"]]};
};
