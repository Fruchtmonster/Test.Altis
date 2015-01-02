#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret =
		[
			["U_Marshal","Polizei Uniform",75],
			["U_O_Wetsuit","SEK Uniform",250],
			["U_B_GhillieSuit","SEK Uniform",250]
		];
	};
	
	//Hats
	case 1:
	{
		_ret = 
		[	
			["H_Cap_police",nil,15],
			["H_Watchcap_blk",nil,15]
		];

		if((["cop"] call life_fnc_permLevel) < 2) then
		{
			_ret set[count _ret,["H_Beret_blk",nil,25]];
		};
		if((["cop"] call life_fnc_permLevel) > 2) then
		{
			_ret set[count _ret,["H_Beret_02",nil,25]];
		};
		if((["cop"] call life_fnc_permLevel) > 3) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,25]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,20],
			["G_Shades_Green",nil,20],
			["G_Shades_Red",nil,20],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Spectacles",nil,20],
			["G_Spectacles_Tinted",nil,20],
			["G_Squares",nil,20],
			["G_Aviator",nil,20],
			["G_Lady_Mirror",nil,20],
			["G_Lady_Dark",nil,20],
			["G_Lady_Red",nil,20],
			["G_Lady_Blue",nil,20],
			["G_Tactical_Black","NSA Glass",125],
			["G_Tactical_Clear",200]
		];
	};
	
	//Vest
	case 3:
	{
		_ret =
		[	
			["V_TacVest_blk_POLICE",nil,400],
			["V_PlateCarrier1_blk",nil,600],
			["V_RebreatherIR",nil,625]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_AssaultPack_blk",nil,75],
			["B_FieldPack_blk",nil,100],
			["B_TacticalPack_blk",nil,125]
		];
		
		if((["cop"] call life_fnc_permLevel) > 1) then
		{
			_ret set[count _ret,["B_UAV_01_backpack_F",nil,1000]];
		};
	};
};

_ret;
