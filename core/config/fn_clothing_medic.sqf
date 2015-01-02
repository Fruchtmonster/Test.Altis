/*
	File: fn_clothing_medic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Rotes Kreuz.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Rotes Kreuz"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Scientist","Uniform",250]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Cap_headphones","Olives Headset",200],
			["H_Cap_oli_hs",nil,60]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,20],
			["G_Shades_Blue",nil,20],
			["G_Shades_Green",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Aviator",nil,20],
			["G_Lady_Mirror",nil,20],
			["G_Lady_Dark",nil,20],
			["G_Lady_Blue",nil,20],
			["G_Lowprofile",nil,80],
			["G_Combat",nil,100],
			["G_Tactical_Black","NSA Glass",250]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,1000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_rgr",nil,100]
		];
	};
};
