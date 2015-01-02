/*
	File: fn_clothing_don.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Ali's Restposten.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Ali's Restposten"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_blue","Poloshirt Blau",25],
			["U_C_Poloshirt_burgundy","Poloshirt Burgunder",40],
			["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiss",40],
			["U_C_Poloshirt_salmon","Poloshirt Lachs",25],
			["U_C_Poloshirt_stripped","Poloshirt gestreift",25],
			["U_C_Poloshirt_tricolour","Poloshirt Dreifarbig",40],
			["U_C_Poor_2","Getragene Kleidung",12],
			["U_IG_Guerilla2_2","Grün gestreiftes Shirt & Hose",75],
			["U_IG_Guerilla3_1","Braune Jacke & Hose",100],
			["U_IG_Guerilla2_3","Ranger Outfit",75],
			["U_C_HunterBody_grn","Jäger Outfit",75],
			["U_OrestesBody","Surfer",90],
			["U_C_Journalist",nil,75],
			["U_C_Driver_1_black",nil,200],
			["U_C_Driver_1_blue",nil,200],
			["U_C_Driver_1_red",nil,200],
			["U_C_Driver_1_orange",nil,200],
			["U_C_Driver_1_green",nil,200],
			["U_C_Driver_1_white",nil,200],
			["U_C_Driver_1_yellow",nil,200],
			["U_C_Driver_2",nil,375],
			["U_C_Driver_1",nil,375],
			["U_C_Driver_3",nil,400],
			["U_C_Driver_4",nil,400],
			["U_IG_Guerilla1_1",nil,125],
			["U_IG_leader",nil,125],
			["U_BG_leader",nil,125],
			["U_I_CombatUniform",nil,200],
			["U_I_CombatUniform_shortsleeve",nil,200],
			["U_I_OfficerUniform",nil,150],
			["U_B_CTRG_3",nil,200],
			["U_B_CTRG_1",nil,200],
			["U_B_CTRG_2",nil,200],
			["U_O_CombatUniform_ocamo",nil,200],
			["U_O_CombatUniform_oucamo",nil,200],
			["U_O_OfficerUniform_ocamo" ,nil,150],
			["U_O_PilotCoveralls",nil,125],
			["U_I_G_Story_Protagonist_F",nil,200],
			["U_B_CombatUniform_mcam",nil,200],
			["U_B_CombatUniform_mcam_tshirt",nil,200],
			["U_B_CombatUniform_mcam_vest",nil,200],
			["U_O_GhillieSuit",nil,500],
			["U_I_GhillieSuit",nil,500],
			["U_B_GhillieSuit",nil,500],
			["U_I_Wetsuit",nil,250],
			["U_B_Wetsuit",nil,250]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_surfer","Surfer Bandana",12],
			["H_Bandanna_blu","Blaues Bandana",12],
			["H_Bandanna_sand","Sand Bandana",12],
			["H_Bandanna_gry","Graues Bandana",12],
			["H_Bandanna_cbr",nil,12],
			["H_Bandanna_surfer",nil,12],
			["H_Bandanna_surfer_grn",nil,12],
			["H_Bandanna_surfer_blk",nil,12],
			["H_Bandanna_khk","Khaki Bandana",12],
			["H_Bandanna_sgg","Grau-Grünes Bandana",12],
			["H_Bandanna_mcamo",nil,10],
			["H_Bandanna_camo",nil,10],
			["H_Bandanna_khk_hs",nil,35],
			["H_StrawHat","Strohhut",40],
			["H_Hat_blue",nil,50],
			["H_Hat_checker",nil,50],
			["H_Hat_grey",nil,50],
			["H_Hat_tan",nil,50],
			["H_Hat_camo",nil,50],
			["H_Cap_blu",nil,7],
			["H_Cap_grn",nil,7],
			["H_Cap_grn_BI",nil,10],
			["H_Cap_blk_CMMG",nil,10],
			["H_Cap_press",nil,10],
			["H_Cap_blk",nil,7],
			["H_Cap_surfer",nil,7],
			["H_Cap_oli",nil,7],
			["H_Cap_red",nil,7],
			["H_Cap_tan",nil,7],
			["H_RacingHelmet_1_black_F",nil,100],
			["H_RacingHelmet_1_red_F",nil,100],
			["H_RacingHelmet_1_white_F",nil,100],
			["H_RacingHelmet_1_blue_F",nil,100],
			["H_RacingHelmet_1_yellow_F",nil,100],
			["H_RacingHelmet_1_green_F",nil,100],
			["H_RacingHelmet_1_F",nil,150],
			["H_RacingHelmet_2_F",nil,150],
			["H_RacingHelmet_3_F",nil,150],
			["H_RacingHelmet_4_F",nil,150],
			["H_ShemagOpen_tan",nil,20],
			["H_Shemag_olive",nil,20],
			["H_Shemag_olive_hs",nil,45],
			["H_ShemagOpen_khk",nil,20],
			["H_MilCap_oucamo",nil,75],
			["H_MilCap_blue",nil,75],
			["H_MilCap_gry",nil,75],
			["H_MilCap_ocamo",nil,75],
			["H_MilCap_mcamo",nil,75],
			["H_MilCap_dgtl",nil,75],
			["H_Watchcap_cbr",nil,40],
			["H_Watchcap_camo",nil,40],
			["H_Watchcap_blk",nil,40],
			["H_Watchcap_khk",nil,40],
			["H_Booniehat_mcamo",nil,25],
			["H_Booniehat_oli",nil,25],
			["H_Booniehat_tan",nil,25],
			["H_Booniehat_dgtl",nil,25],
			["H_Cap_marshal","Gelbes Headset",100],
			["H_Cap_headphones","Olives Headset",100],
			["H_PilotHelmetHeli_I","Pilotenhelm Tarn",250],
			["H_PilotHelmetHeli_O","Pilotenhelm Olive",250],
			["H_PilotHelmetHeli_B","Pilotenhelm Schwarz",250]
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
			["G_Diving",nil,500],
			["G_Tactical_Black","NSA Glass",250]
		];
	};
	
	//Vest
	case 3:
	{

		[
			["V_Rangemaster_belt",nil,75],
			["V_Press_F",nil,175],
			["V_TacVest_khk",nil,150],
			["V_TacVest_brn",nil,150],
			["V_TacVest_khk",nil,150],
			["V_TacVest_oli",nil,150],
			["V_TacVest_blk",nil,150],
			["V_I_G_resistanceLeader_F",nil,250],
			["V_TacVestIR_blk",nil,165],
			["V_BandollierB_cbr",nil,100],
			["V_BandollierB_rgr",nil,100],
			["V_BandollierB_khk",nil,100],
			["V_BandollierB_oli",nil,100],
			["V_BandollierB_blk",nil,100],
			["V_HarnessO_brn",nil,175],
			["V_HarnessO_gry",nil,175],
			["V_HarnessOGL_brn",nil,175],
			["V_HarnessOGL_gry",nil,175],
			["V_HarnessOSpec_brn",nil,175],
			["V_HarnessOSpec_gry",nil,175],
			["V_Chestrig_rgr",nil,200],
			["V_Chestrig_khk",nil,200],
			["V_Chestrig_oli",nil,200],
			["V_Chestrig_blk",nil,200],
			["V_PlateCarrier1_rgr",nil,250],
			["V_PlateCarrierIA1_dgtl",nil,400],
			["V_PlateCarrierIAGL_dgtl",nil,500],
			["V_PlateCarrierIA2_dgtl",nil,500],
			["V_RebreatherIA",nil,625],
			["V_RebreatherB",nil,625]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,50],
			["B_AssaultPack_rgr",nil,50],
			["B_AssaultPack_sgg",nil,50],
			["B_AssaultPack_ocamo",nil,50],
			["B_AssaultPack_khk",nil,50],
			["B_AssaultPack_mcamo",nil,50],
			["B_AssaultPack_blk",nil,50],
			["B_AssaultPack_dgtl",nil,50],
			["B_Kitbag_mcamo",nil,60],
			["B_Kitbag_cbr",nil,60],
			["B_Kitbag_rgr",nil,60],
			["B_Kitbag_sgg",nil,60],
			["B_TacticalPack_oli",nil,75],
			["B_TacticalPack_rgr",nil,75],
			["B_TacticalPack_ocamo",nil,75],
			["B_TacticalPack_mcamo",nil,75],
			["B_TacticalPack_blk",nil,75],
			["B_FieldPack_ocamo",nil,90],
			["B_FieldPack_cbr",nil,90],
			["B_FieldPack_khk",nil,90],
			["B_FieldPack_oli",nil,90],
			["B_FieldPack_blk",nil,90],
			["B_FieldPack_oucamo",nil,90],
			["B_Carryall_oli",nil,125],
			["B_Carryall_oucamo",nil,125],
			["B_Carryall_cbr",nil,125],
			["B_Carryall_ocamo",nil,125],
			["B_Carryall_mcamo",nil,125],
			["B_Carryall_khk",nil,125],
			["B_Parachute",nil,1000]
		];
	};
};
