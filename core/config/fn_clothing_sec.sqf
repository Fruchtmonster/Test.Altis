#include <macro.h>
/*
	File: fn_clothing_sec.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Larry's Militär Shop.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Larry's Militär Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_BG_Guerrilla_6_1","Uniform",250]
		];
	};
	
	//Hats
	case 1:
	{
		_ret =
		[
			["H_Cap_headphones","Olives Headset",200],
			["H_Booniehat_khk_hs",nil,100]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret =
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
		_ret =
		[
			["V_PlateCarrierL_CTRG",nil,1000]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_rgr",nil,100]
		];
	};
};

_ret;
