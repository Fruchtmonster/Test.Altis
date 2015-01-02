/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_C_Poloshirt_blue","Poloshirt Blau",50],
			["U_C_Poloshirt_burgundy","Poloshirt Burgunder",75],
			["U_C_Poloshirt_redwhite","Poloshirt Rot/Weiss",75],
			["U_C_Poloshirt_salmon","Poloshirt Lachs",50],
			["U_C_Poloshirt_stripped","Poloshirt gestreift",50],
			["U_C_Poloshirt_tricolour","Poloshirt Dreifarbig",75],
			["U_C_Poor_2","Getragene Kleidung",25],
			["U_IG_Guerilla2_2","Grün gestreiftes Shirt & Hose",150],
			["U_IG_Guerilla3_1","Braune Jacke & Hose",200],
			["U_IG_Guerilla2_3","Ranger Outfit",150],
			["U_C_HunterBody_grn","Jäger Outfit",150],
			["U_OrestesBody","Surfer",175],
			["U_C_Journalist",nil,150],
			["U_C_WorkerCoveralls","Mechaniker Bekleidung",100],
			["U_I_HeliPilotCoveralls","Heli Uniform Khaki",250],
			["U_B_HeliPilotCoveralls","Heli Uniform Olive",250]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_Bandanna_surfer","Surfer Bandana",25],
			["H_Bandanna_blu","Blaues Bandana",25],
			["H_Bandanna_sand","Sand Bandana",25],
			["H_Bandanna_gry","Graues Bandana",25],
			["H_Bandanna_cbr",nil,25],
			["H_Bandanna_surfer",nil,25],
			["H_Bandanna_surfer_grn",nil,25],
			["H_Bandanna_surfer_blk",nil,25],
			["H_Bandanna_khk","Khaki Bandana",25],
			["H_Bandanna_sgg","Grau-Grünes Bandana",25],
			["H_StrawHat","Strohhut",75],
			["H_Booniehat_tan",nil,50],
			["H_Booniehat_khk",nil,50],
			["H_Booniehat_oli",nil,50],
			["H_Hat_blue",nil,100],
			["H_Hat_checker",nil,100],
			["H_Hat_grey",nil,100],
			["H_Hat_tan",nil,100],
			["H_Cap_blu",nil,15],
			["H_Cap_grn",nil,15],
			["H_Cap_grn_BI",nil,20],
			["H_Cap_blk_CMMG",nil,20],
			["H_Cap_press",nil,20],
			["H_Cap_blk",nil,15],
			["H_Cap_surfer",nil,15],
			["H_Cap_oli",nil,15],
			["H_Cap_red",nil,15],
			["H_Cap_tan",nil,15],
			["H_Cap_marshal","Gelbes Headset",200],
			["H_Cap_headphones","Olives Headset",200],
			["H_PilotHelmetHeli_B","Pilotenhelm Schwarz",500],
			["H_PilotHelmetHeli_O","Pilotenhelm Olive",500],
			["H_RacingHelmet_1_black_F",nil,200],
			["H_RacingHelmet_1_red_F",nil,200],
			["H_RacingHelmet_1_white_F",nil,200],
			["H_RacingHelmet_1_blue_F",nil,200],
			["H_RacingHelmet_1_yellow_F",nil,200],
			["H_RacingHelmet_1_green_F",nil,200],
			["H_RacingHelmet_1_F",nil,300],
			["H_RacingHelmet_2_F",nil,300],
			["H_RacingHelmet_3_F",nil,300],
			["H_RacingHelmet_4_F",nil,300]
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
			["G_Tactical_Black","NSA Glass",250]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_Rangemaster_belt",nil,150],
			["V_Press_F",nil,350]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,100],
			["B_AssaultPack_rgr",nil,100],
			["B_AssaultPack_sgg",nil,100],
			["B_AssaultPack_blk",nil,100],
			["B_Kitbag_cbr",nil,120],
			["B_Kitbag_rgr",nil,120],
			["B_Kitbag_sgg",nil,120],
			["B_TacticalPack_oli",nil,150],
			["B_TacticalPack_rgr",nil,150],
			["B_TacticalPack_blk",nil,150],
			["B_FieldPack_khk",nil,175],
			["B_FieldPack_oli",nil,175],
			["B_FieldPack_blk",nil,175],
			["B_Carryall_oli",nil,250],
			["B_Carryall_cbr",nil,250],
			["B_Carryall_khk",nil,250],
			["B_Parachute",nil,2000]
		];
	};
};
