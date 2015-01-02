#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Altis Polizei Ausrüstung",
					[
						["ToolKit",nil,50],
						["FirstAidKit",nil,10],
						["Medikit",nil, 300],
						["Rangefinder",nil,100],
						["MineDetector",nil,100],
						["ItemGPS",nil,100],
						["B_UavTerminal",nil,100],							
						["Chemlight_red",nil,5],
						["HandGrenade_Stone","Flashbang",100],
						["SmokeShellBlue",nil,100],
						["B_IR_Grenade",nil,10],
						["NVGoggles_OPFOR",nil,400]		
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Mitglied des EMS!"};
			case ((["medic"] call life_fnc_permLevel) < 1): {"Du bist kein Mitglied der Medic!"};
			default {
				["Altis Johanniter Ausrüstung",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,20],
						["ToolKit",nil,50],
						["FirstAidKit",nil,10],
						["Medikit",nil,100],
						["NVGoggles",nil,400],
						["hgun_P07_snds_F","Taser",500],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_Signal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["SmokeShellOrange",nil,100],
						["optic_Yorris",nil,50],
						["optic_MRD",nil,50],
						["Chemlight_red",nil,5]
					]
				];
			};
		};
	};

	case "cop_weapons":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case ((["cop"] call life_fnc_permLevel) < 2):
			{
				["Altis Polizei Rekrutenwaffen",
					[
						["hgun_P07_snds_F","Taser",500],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_Signal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["optic_Yorris",nil,50],
						["optic_MRD",nil,50]
					]
				];
			};
			case ((["cop"] call life_fnc_permLevel) > 2 && (["cop"] call life_fnc_permLevel)  < 5):
			{
				["Altis Polizei Polizistenwaffen",
					[
						["hgun_P07_snds_F","Taser",500],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_Signal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["arifle_sdar_F",nil,1500],
						["20Rnd_556x45_UW_mag",nil,75],
						["arifle_MXC_Black_F",nil,2000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["acc_flashlight",nil,100],
						["acc_pointer_IR",nil,150],
						["optic_Yorris",nil,50],
						["optic_MRD",nil,50],
						["optic_Holosight",nil,500],
						["optic_Arco",nil,600],
						["optic_Hamr",nil,700],
						["muzzle_snds_H",nil,100]
					]
				];
			};						
			//case (playerSide == west && __GETC__(life_coplevel) > 4):
			default
			{
				["Altis Polizei Bundespolizistenwaffen",
					[
						["hgun_P07_snds_F","Taser",500],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_Signal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["arifle_sdar_F",nil,1500],
						["20Rnd_556x45_UW_mag",nil,75],
						["arifle_MXC_Black_F",nil,2000],
						["arifle_MXM_Black_F",nil,3000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["acc_flashlight",nil,100],
						["acc_pointer_IR",nil,150],
						["optic_Holosight",nil,500],
						["optic_Arco",nil,600],
						["optic_Hamr",nil,700],
						["optic_MRCO",nil,700],
						["optic_DMS",nil,1750],
						["optic_LRPS",nil,2000],
						["muzzle_snds_H",nil,100]
					]
				];
			};
		};
	};
	
	case "reb_basic":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du besitzt keine Rebellenlizenz!"};
			default
			{
				["Mohammed's Jihadis Ausrüstung",
					[
						["Rangefinder",nil,100],
						["Binocular",nil,20],
						["ItemMap",nil,1],
						["ItemWatch",nil,100],
						["ItemCompass",nil,25],
						["ItemGPS",nil,100],
						["ToolKit",nil,1000],
						["FirstAidKit",nil,10],
						["SmokeShellPurple",nil,100],
						["SmokeShellYellow",nil,100],
						["SmokeShellRed",nil,100],
						["SmokeShell",nil,100],
						["NVGoggles",nil,400],
						["NVGoggles_INDEP",nil,400],
						["NVGoggles_OPFOR",nil,400]
					]
				];
			};
		};
	};
	
	case "reb_weapons":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du besitzt keine Rebellenlizenz!"};
			default
			{
				["Mohammed's Jihadis Waffen",
					[
						["hgun_Rook40_F",nil,500],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,750],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,850],
						["11Rnd_45ACP_Mag",nil,75],
						["hgun_Pistol_heavy_02_F",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_PDW2000_F",nil,2000],
						["30Rnd_9x21_Mag",nil,100],
						["SMG_01_F",nil,2200],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["arifle_Mk20C_plain_F",nil,2500],
						["arifle_Mk20C_F",nil,2500],
						["arifle_Mk20_plain_F",nil,2500],
						["arifle_Mk20_F",nil,2500],
						["30Rnd_556x45_Stanag",nil,175],
						["arifle_TRG20_F",nil,2750],
						["arifle_TRG21_F",nil,2750],
						["20Rnd_556x45_UW_mag",nil,125],
						["arifle_Katiba_C_F",nil,3000],
						["arifle_Katiba_F",nil,3000],
						["30Rnd_65x39_caseless_green",nil,200],
						["srifle_DMR_01_F",nil,5000],
						["10Rnd_762x51_Mag",nil,500],
						["srifle_EBR_F",nil,5000],
						["20Rnd_762x51_Mag",nil,1000],
						["arifle_SDAR_F",nil,2400],
						["20Rnd_556x45_UW_mag",nil,130],
						["muzzle_snds_L",nil,100],
						["muzzle_snds_acp",nil,100],
						["muzzle_snds_B",nil,100],
						["acc_flashlight",nil,100],
						["acc_pointer_IR",nil,150],
						["optic_ACO_grn_smg",nil,150],
						["optic_Aco_smg",nil,150],
						["optic_Holosight_smg",nil,150],
						["optic_ACO_grn",nil,350],
						["optic_Holosight",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,600],
						["optic_MRCO",nil,700],
						["optic_DMS",nil,1750],
						["optic_LRPS",nil,2000]
					]
				];
			};
		};
	};
	

	case "smugler":
	{
		switch (true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case ((["smugler"] call life_fnc_permLevel) < 2): {"Du bist kein Mitglied der Schmuggler!"};
			default
			{
				["Ed's Waffensammlung",
					[
						["hgun_Rook40_F",nil,250],
						["16Rnd_9x21_Mag",nil,25],
						["hgun_ACPC2_F",nil,375],
						["9Rnd_45ACP_Mag",nil,25],
						["hgun_Pistol_heavy_01_F",nil,425],
						["11Rnd_45ACP_Mag",nil,38],
						["hgun_Pistol_heavy_02_F",nil,500],
						["6Rnd_45ACP_Cylinder",nil,25],
						["hgun_PDW2000_F",nil,1000],
						["30Rnd_9x21_Mag",nil,50],
						["SMG_01_F",nil,1100],
						["30Rnd_45ACP_Mag_SMG_01",nil,75],
						["arifle_Mk20C_plain_F",nil,1250],
						["arifle_Mk20C_F",nil,1250],
						["arifle_Mk20_plain_F",nil,1250],
						["arifle_Mk20_F",nil,1250],
						["30Rnd_556x45_Stanag",nil,90],
						["arifle_TRG20_F",nil,1400],
						["arifle_TRG21_F",nil,1400],
						["30Rnd_556x45_Stanag",nil,90],
						["arifle_Katiba_C_F",nil,1500],
						["arifle_Katiba_F",nil,1500],
						["30Rnd_65x39_caseless_green",nil,100],
						["srifle_DMR_01_F",nil,2500],
						["10Rnd_762x51_Mag",nil,250],
						["srifle_EBR_F",nil,2500],
						["20Rnd_762x51_Mag",nil,500],
						["arifle_SDAR_F",nil,1200],
						["20Rnd_556x45_UW_mag",nil,65],
						["muzzle_snds_L",nil,50],
						["muzzle_snds_acp",nil,50],
						["muzzle_snds_B",nil,50],
						["acc_flashlight",nil,50],
						["acc_pointer_IR",nil,75],
						["optic_ACO_grn",nil,175],
						["optic_Holosight",nil,250],
						["optic_Arco",nil,250],
						["optic_Hamr",nil,300],
						["optic_MRCO",nil,350],
						["optic_DMS",nil,900],
						["optic_LRPS",nil,1000],
						["SmokeShellPurple",nil,50],
						["SmokeShellYellow",nil,50],
						["SmokeShellRed",nil,50],
						["SmokeShell",nil,50]
					]
				];
			};
		};
	};
	
	case "don":
	{
		["Igor's Waffenstube",
			[
				["Rangefinder",nil,75],
				["Binocular",nil,15],
				["ItemMap",nil,1],
				["ItemWatch",nil,75],
				["ItemCompass",nil,25],
				["ItemGPS",nil,75],
				["ToolKit",nil,750],
				["FirstAidKit",nil,8],
				["NVGoggles",nil,300],
				["NVGoggles_INDEP",nil,300],
				["NVGoggles_OPFOR",nil,300],
				["hgun_Rook40_F",nil,375],
				["16Rnd_9x21_Mag",nil,38],
				["hgun_ACPC2_F",nil,560],
				["9Rnd_45ACP_Mag",nil,38],
				["hgun_Pistol_heavy_01_F",nil,640],
				["11Rnd_45ACP_Mag",nil,64],
				["hgun_Pistol_heavy_02_F",nil,750],
				["6Rnd_45ACP_Cylinder",nil,38],
				["hgun_PDW2000_F",nil,1500],
				["30Rnd_9x21_Mag",nil,100],
				["SMG_01_F",nil,1650],
				["30Rnd_45ACP_Mag_SMG_01",nil,110],
				["arifle_Mk20C_plain_F",nil,1875],
				["arifle_Mk20C_F",nil,1875],
				["arifle_Mk20_plain_F",nil,1875],
				["arifle_Mk20_F",nil,1875],
				["30Rnd_556x45_Stanag",nil,130],
				["arifle_TRG20_F",nil,2100],
				["arifle_TRG21_F",nil,2100],
				["30Rnd_556x45_Stanag",nil,130],
				["arifle_Katiba_C_F",nil,2250],
				["arifle_Katiba_F",nil,2250],
				["30Rnd_65x39_caseless_green",nil,150],
				["srifle_DMR_01_F",nil,3750],
				["10Rnd_762x51_Mag",nil,375],
				["srifle_EBR_F",nil,3750],
				["20Rnd_762x51_Mag",nil,750],
				["arifle_SDAR_F",nil,1600],
				["20Rnd_556x45_UW_mag",nil,90],
				["muzzle_snds_L",nil,75],
				["muzzle_snds_acp",nil,75],
				["muzzle_snds_B",nil,75],
				["acc_flashlight",nil,75],
				["acc_pointer_IR",nil,110],
				["optic_Yorris",nil,100],
				["optic_MRD",nil,100],
				["optic_ACO_grn_smg",nil,100],
				["optic_Aco_smg",nil,100],
				["optic_Holosight_smg",nil,100],
				["optic_ACO_grn",nil,260],
				["optic_Holosight",nil,375],
				["optic_Arco",nil,375],
				["optic_Hamr",nil,450],
				["optic_MRCO",nil,525],
				["optic_DMS",nil,1300],
				["optic_LRPS",nil,1500],
				["SmokeShellPurple",nil,75],
				["SmokeShellYellow",nil,75],
				["SmokeShellRed",nil,75],
				["SmokeShell",nil,75]
			]
		];
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_gun): {"Du besitzt keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Pistol_Signal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["hgun_Rook40_F",nil,500],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,750],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,850],
						["11Rnd_45ACP_Mag",nil,75],
						["hgun_Pistol_heavy_02_F",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_PDW2000_F",nil,2000],
						["30Rnd_9x21_Mag",nil,100],
						["optic_ACO_grn_smg",nil,150],
						["optic_Aco_smg",nil,150],
						["optic_Yorris",nil,150],
						["optic_MRD",nil,150],
						["optic_Holosight_smg",nil,150],
						["V_Rangemaster_belt",nil,150]
					]
				];
			};
		};
	};
	
	case "garage":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Du bist kein Mitglied des EMS!"};
			case ((["adac"] call life_fnc_permLevel) < 1): {"Du bist kein Mitglied des ADAC!"};
			default
			{
				["Big Earl's Egosteigerer",
					[
						["hgun_P07_snds_F","Taser",500],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_Signal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["optic_Yorris",nil,50],
						["optic_MRD",nil,50],
						["SmokeShellOrange",nil,100],
						["Rangefinder",nil,100],
						["Binocular",nil,20],
						["ItemMap",nil,1],
						["ItemWatch",nil,100],
						["ItemCompass",nil,25],
						["ItemGPS",nil,100],
						["ToolKit",nil,20],
						["FirstAidKit",nil,10],
						["NVGoggles",nil,400],
						["Chemlight_red",nil,5],
						["Chemlight_yellow",nil,5],
						["Chemlight_green",nil,5],
						["Chemlight_blue",nil,5]
					]
				];
			};
		};
	};
	
	case "garage_gas":
	{
		switch (true) do
		{
			case (playerSide != independent): {"Du bist kein Mitglied des EMS!"};
			case ((["adac"] call life_fnc_permLevel) < 1): {"Du bist kein Mitglied des ADAC!"};
			default
			{
				["Werkbank",
					[
						["30Rnd_9x21_Mag",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["SmokeShellOrange",nil,100],
						["ToolKit",nil,20],
						["FirstAidKit",nil,10],
						["Chemlight_red",nil,5],
						["Chemlight_yellow",nil,5],
						["Chemlight_green",nil,5],
						["Chemlight_blue",nil,5]
					]
				];
			};
		};
	};
	
	case "sec":
	{
		switch (true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case ((["sec"] call life_fnc_permLevel) < 2): {"Du bist kein Mitglied der Söldner!"};
			default
			{
				["Happy Triggers Spielzeugladen",
					[
						["Rangefinder",nil,100],
						["Binocular",nil,20],
						["ItemMap",nil,1],
						["ItemWatch",nil,100],
						["ItemCompass",nil,25],
						["ItemGPS",nil,100],
						["ToolKit",nil,500],
						["FirstAidKit",nil,10],
						["NVGoggles",nil,400],
						["hgun_P07_snds_F","Taser",500],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_Pistol_Signal_F",nil,100],
						["6Rnd_GreenSignal_F",nil,30],
						["hgun_Pistol_heavy_01_F",nil,850],
						["11Rnd_45ACP_Mag",nil,75],
						["arifle_MXC_Holo_pointer_snds_F",nil,2750],
						["30Rnd_65x39_caseless_mag",nil,100],
						["optic_Yorris",nil,150],
						["optic_MRD",nil,150],
						["muzzle_snds_acp",nil,100],
						["Chemlight_red",nil,5],
						["Chemlight_yellow",nil,5],
						["Chemlight_green",nil,5],
						["Chemlight_blue",nil,5],
						["SmokeShellGreen",nil,100]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			default
			{
				["Waffenkiste",
					[
						["hgun_Rook40_F",nil,500],
						["16Rnd_9x21_Mag",nil,50],
						["hgun_ACPC2_F",nil,750],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_01_F",nil,850],
						["11Rnd_45ACP_Mag",nil,75],
						["hgun_Pistol_heavy_02_F",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,50],
						["hgun_PDW2000_F",nil,2000],
						["30Rnd_9x21_Mag",nil,100],
						["SMG_01_F",nil,2200],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["optic_ACO_grn_smg",nil,150],
						["optic_Aco_smg",nil,150],
						["optic_Holosight_smg",nil,150],
						["optic_Yorris",nil,150],
						["optic_MRD",nil,150],
						["V_Rangemaster_belt",nil,150]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis Ausrüstung",
			[
				["Rangefinder",nil,100],
				["Binocular",nil,20],
				["ItemMap",nil,1],
				["ItemWatch",nil,100],
				["ItemCompass",nil,25],
				["ItemGPS",nil,100],
				["ToolKit",nil,1000],
				["FirstAidKit",nil,10],
				["NVGoggles",nil,400],
				["NVGoggles_INDEP",nil,400],
				["NVGoggles_OPFOR",nil,400],
				["hgun_Pistol_Signal_F",nil,100],
				["6Rnd_GreenSignal_F",nil,30],
				["Chemlight_red",nil,5],
				["Chemlight_yellow",nil,5],
				["Chemlight_green",nil,5],
				["Chemlight_blue",nil,5]
			]
		];
	};
};
