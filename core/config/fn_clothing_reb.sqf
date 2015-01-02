/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,250],
			["U_IG_leader",nil,250],
			["U_BG_leader",nil,250],
			["U_I_CombatUniform",nil,400],
			["U_I_CombatUniform_shortsleeve",nil,400],
			["U_I_OfficerUniform",nil,300],
			["U_B_CTRG_3",nil,400],
			["U_B_CTRG_1",nil,400],
			["U_B_CTRG_2",nil,400],
			["U_O_CombatUniform_ocamo",nil,400],
			["U_O_CombatUniform_oucamo",nil,400],
			["U_O_OfficerUniform_ocamo" ,nil,300],
			["U_O_PilotCoveralls",nil,250],
			["U_I_G_Story_Protagonist_F",nil,400],
			["U_B_CombatUniform_mcam",nil,400],
			["U_B_CombatUniform_mcam_tshirt",nil,400],
			["U_B_CombatUniform_mcam_vest",nil,400],		
			["U_O_GhillieSuit",nil,1000],
			["U_I_GhillieSuit",nil,1000],
			["U_B_GhillieSuit",nil,1000],
			["U_I_Wetsuit",nil,500]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,40],
			["H_Shemag_olive",nil,40],
			["H_Shemag_olive_hs",nil,90],
			["H_ShemagOpen_khk",nil,40],
			["H_Bandanna_mcamo",nil,20],
			["H_Bandanna_camo",nil,20],
			["H_Bandanna_khk_hs",nil,70],
			["H_Hat_camo",nil,100],
			["H_MilCap_oucamo",nil,150],
			["H_MilCap_blue",nil,150],
			["H_MilCap_gry",nil,150],
			["H_MilCap_ocamo",nil,150],
			["H_MilCap_mcamo",nil,150],
			["H_MilCap_dgtl",nil,150],
			["H_Watchcap_cbr",nil,75],
			["H_Watchcap_camo",nil,75],
			["H_Watchcap_blk",nil,75],
			["H_Watchcap_khk",nil,75],
			["H_Booniehat_mcamo",nil,50],
			["H_Booniehat_oli",nil,50],
			["H_Booniehat_tan",nil,50],
			["H_Booniehat_dgtl",nil,50],
			["H_Cap_headphones","Olives Headset",200],
			["H_PilotHelmetHeli_I","Pilotenhelm Tarn",500],
			["H_PilotHelmetHeli_O","Pilotenhelm Olive",500],
			["H_PilotHelmetHeli_B","Pilotenhelm Schwarz",500]
		];
	};
	
	//Glasses
	case 2:
	{
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
			["G_Bandanna_shades",nil,25],
			["G_Bandanna_beast",nil,25],
			["G_Bandanna_tan",nil,25],
			["G_Bandanna_khk",nil,25],
			["G_Bandanna_oli",nil,25],
			["G_Bandanna_blk",nil,25],
			["G_Bandanna_sport",nil,45],
			["G_Bandanna_aviator",nil,20],
			["G_Balaclava_oli",nil,20],
			["G_Balaclava_blk",nil,20],
			["G_Balaclava_combat",nil,125],
			["G_Balaclava_lowprofile",nil,105],
			["G_Lowprofile",nil,80],
			["G_Combat",nil,100],
			["G_Tactical_Black","NSA Glass",250]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,300],
			["V_TacVest_brn",nil,300],
			["V_TacVest_khk",nil,300],
			["V_TacVest_oli",nil,300],
			["V_TacVest_blk",nil,300],
			["V_I_G_resistanceLeader_F",nil,300],
			["V_TacVestIR_blk",nil,325],
			["V_BandollierB_cbr",nil,200],
			["V_BandollierB_rgr",nil,200],
			["V_BandollierB_khk",nil,200],
			["V_BandollierB_oli",nil,200],
			["V_BandollierB_blk",nil,200],
			["V_HarnessO_brn",nil,350],
			["V_HarnessO_gry",nil,350],
			["V_HarnessOGL_brn",nil,350],
			["V_HarnessOGL_gry",nil,350],
			["V_HarnessOSpec_brn",nil,350],
			["V_HarnessOSpec_gry",nil,350],
			["V_Chestrig_rgr",nil,400],
			["V_Chestrig_khk",nil,400],
			["V_Chestrig_oli",nil,400],
			["V_Chestrig_blk",nil,400],
			["V_PlateCarrier1_rgr",nil,500],
			["V_PlateCarrierIA1_dgtl",nil,800],
			["V_PlateCarrierIAGL_dgtl",nil,1000],
			["V_PlateCarrierIA2_dgtl",nil,1000],
			["V_RebreatherIA",nil,1250]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,100],
			["B_AssaultPack_rgr",nil,100],
			["B_AssaultPack_sgg",nil,100],
			["B_AssaultPack_ocamo",nil,100],
			["B_AssaultPack_khk",nil,100],
			["B_AssaultPack_mcamo",nil,100],
			["B_AssaultPack_blk",nil,100],
			["B_AssaultPack_dgtl",nil,100],
			["B_Kitbag_mcamo",nil,120],
			["B_Kitbag_cbr",nil,120],
			["B_Kitbag_rgr",nil,120],
			["B_Kitbag_sgg",nil,120],
			["B_TacticalPack_oli",nil,150],
			["B_TacticalPack_rgr",nil,150],
			["B_TacticalPack_ocamo",nil,150],
			["B_TacticalPack_mcamo",nil,150],
			["B_TacticalPack_blk",nil,150],
			["B_FieldPack_ocamo",nil,175],
			["B_FieldPack_cbr",nil,175],
			["B_FieldPack_khk",nil,175],
			["B_FieldPack_oli",nil,175],
			["B_FieldPack_blk",nil,175],
			["B_FieldPack_oucamo",nil,175],
			["B_Carryall_oli",nil,250],
			["B_Carryall_oucamo",nil,250],
			["B_Carryall_cbr",nil,250],
			["B_Carryall_ocamo",nil,250],
			["B_Carryall_mcamo",nil,250],
			["B_Carryall_khk",nil,250],
			["B_Parachute",nil,2000]
		];
	};
};
