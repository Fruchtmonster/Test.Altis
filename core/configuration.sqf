#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_action_gathering = false;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 3; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_smartphoneTarget = ObjNull;
life_action_gathering = false;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,2500); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,10000); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,2000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH
__CONST__(life_maxGangMember,10);

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_spawn_base = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,1500);
__CONST__(life_impound_boat,1500);
__CONST__(life_impound_air,2500);
life_istazed = false;

life_my_gang = ObjNull;
life_player_position = ObjNull;
life_payer_positions = ObjNull;
life_player_stats = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 20000; //Starting Bank Money
		life_paycheck = 2000; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 5000; //Starting Bank Money
		life_paycheck = 75; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 20000;
		life_paycheck = 2000;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["I_MRAP_03_hmg_F","B_G_Offroad_01_armed_F","B_Slingload_01_Cargo_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig",
	"life_inv_handcuffs",
	"life_inv_zipties",
	"life_inv_blackmoney"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	// ["license_civ_heroin","civ"],
	// ["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	// ["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_adac_air","med"],
	["license_civ_citizen","civ"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",1200],["heroinp",2500],["cocaine",1500],["cocainep",3500],["marijuana",2000],["turtle",3000],["blastingcharge",10000],["boltcutter",500]];

//illegale Waffen
life_illegalweapons =
[
	"hgun_P07_snds_F",
	"hgun_P07_F",
	"arifle_MXC_Black_F",
	"arifle_MXM_Black_F",
	"SMG_01_F",
	"arifle_Mk20C_plain_F",
	"arifle_Mk20C_F",
	"arifle_Mk20_plain_F",
	"arifle_Mk20_F",
	"arifle_TRG20_F",
	"arifle_TRG21_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_F",
	"srifle_DMR_01_F",
	"srifle_EBR_F",
	"arifle_SDAR_F",
	"arifle_MX_F",
	"arifle_MXC_F",
	"arifle_MXM_F",
	"10Rnd_762x51_Mag",
	"20Rnd_556x45_UW_mag",
	"30Rnd_556x45_Stanag",
	"20Rnd_762x51_Mag",
	"30Rnd_65x39_caseless_mag",
	"HandGrenade_Stone",
	"SmokeShellOrange",
	"SmokeShellBlue",
	"SmokeShell",
	"SmokeShellRed",
	"SmokeShellPurple",
	"B_IR_Grenade",
	"30Rnd_45ACP_Mag_SMG_01"
];

/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",4],
	["heroinu",1850],
	["heroinp",2650],
	["salema",10],
	["ornate",8],
	["mackerel",175],
	["tuna",30],
	["mullet",20],
	["catshark",35],
	["rabbit",8],
	["oilp",3200],
	["turtle",30],
	["water",1],
	["coffee",1],
	["turtlesoup",1000],
	["donuts",2],
	["marijuana",2350],
	["tbacon",15],
	["lockpick",75],
	["boltcutter",150],	
	["defusekit",200],
	["blastingcharge",15000],
	["pickaxe",75],
	["redgull",4],
	["peach",6],
	["cocaine",3000],
	["cocainep",5000],
	["diamond",750],
	["diamondc",2000],
	["iron_r",3200],
	["copper_r",1500],
	["salt_r",1650],
	["glass",1450],
	["fuelF",35],
	["handcuffs",10],
	["zipties",5],
	["spikeStrip",200],
	["cement",1950],
	["goldbar",30000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",4],
	["rabbit",8],
	["handcuffs",10],
	["zipties",5],
	["salema",10],
	["ornate",8],
	["mackerel",200],
	["tuna",30],
	["mullet",20],
	["catshark",35],
	["water",2],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",5],
	["coffee",2],
	["tbacon",15],
	["lockpick",150],
	["pickaxe",100],
	["redgull",4],
	["fuelF",50],
	["peach",6],
	["spikeStrip",200],
	["blastingcharge",15000],
	["boltcutter",150],
	["defusekit",200],
	["storagesmall",500],
	["storagebig",1500]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["Rangefinder",75],
	["Binocular",15],
	["ItemMap",1],
	["ItemWatch",75],
	["ItemCompass",25],
	["ItemGPS",75],
	["ToolKit",20],
	["FirstAidKit",8],
	["NVGoggles",300],
	["NVGoggles_INDEP",300],
	["NVGoggles_OPFOR",300],
	["Medikit",100],
	["B_UavTerminal",100],
	["MineDetector",100],
	["Chemlight_blue",5],
	["Chemlight_yellow",5],
	["Chemlight_green",5],
	["Chemlight_red",5],
	["DemoCharge_Remote_Mag",100],
	["SLAMDirectionalMine_Wire_Mag",100],
	["arifle_sdar_F",1500],
	["hgun_P07_snds_F",500],
	["hgun_P07_F",500],
	["hgun_Pistol_Signal_F",100],
	["hgun_Rook40_F",500],
	["hgun_ACPC2_F",750],
	["hgun_Pistol_heavy_01_F",850],
	["hgun_Pistol_heavy_02_F",1000],
	["hgun_PDW2000_F",2000],
	["arifle_MXC_Black_F",2000],
	["arifle_MXM_Black_F",3000],
	["SMG_01_F",1650],
	["arifle_Mk20C_plain_F",1875],
	["arifle_Mk20C_F",1875],
	["arifle_Mk20_plain_F",1875],
	["arifle_Mk20_F",1875],
	["arifle_TRG20_F",2100],
	["arifle_TRG21_F",2100],
	["arifle_Katiba_C_F",2250],
	["arifle_Katiba_F",2250],
	["srifle_DMR_01_F",3750],
	["srifle_EBR_F",3750],
	["arifle_MXC_Holo_pointer_snds_F",2750],
	["arifle_MX_F",2500],
	["arifle_MXC_F",2000],
	["arifle_MXM_F",3000],
	["muzzle_snds_L",75],
	["muzzle_snds_acp",75],
	["muzzle_snds_B",75],
	["muzzle_snds_H",100],
	["acc_flashlight",75],
	["acc_pointer_IR",110],
	["optic_ACO_grn_smg",50],
	["optic_Aco_smg",nil,50],
	["optic_Yorris",nil,50],
	["optic_MRD",nil,50],
	["optic_Holosight_smg",nil,50],
	["optic_Aco",250],
	["optic_ACO_grn",260],
	["optic_Holosight",375],
	["optic_Arco",375],
	["optic_Hamr",450],
	["optic_MRCO",525],
	["optic_DMS",1300],
	["optic_LRPS",1500],
	["10Rnd_762x51_Mag",375],
	["16Rnd_9x21_Mag",50],
	["20Rnd_556x45_UW_mag",75],
	["6Rnd_GreenSignal_F",30],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_mag",100],
	["HandGrenade_Stone",100],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["9Rnd_45ACP_Mag",50],
	["11Rnd_45ACP_Mag",75],
	["6Rnd_45ACP_Cylinder",50],
	["30Rnd_9x21_Mag",30],
	["B_IR_Grenade",10],
	["SmokeShellOrange",50],
	["SmokeShellBlue",50],
	["SmokeShell",50],
	["SmokeShellRed",50],
	["SmokeShellGreen",50],
	["SmokeShellPurple",50]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Kart_01_Blu_F",50],
	["C_Kart_01_Fuel_F",50],
	["C_Kart_01_Red_F",50],
	["C_Kart_01_Vrana_F",50],
	["B_Quadbike_01_F",50],
	["C_Hatchback_01_F",100],
	["B_G_Offroad_01_F",100],
	["B_G_Offroad_01_repair_F",90],
	["B_G_Offroad_01_armed_F",375000],
	["C_SUV_01_F",100],
	["C_Van_01_transport_F",100],
	["C_Van_01_box_F",150],
	["C_Hatchback_01_sport_F",150],
	["C_Heli_Light_01_civil_F",4750],
	["O_Heli_Transport_04_repair_F",300],
	["O_Heli_Transport_04_medevac_F",300],
	["O_Heli_Transport_04_F",30000],
	["O_Heli_Transport_04_covered_F",56250],
	["O_Heli_Transport_04_bench_F",300],
	["B_Heli_Transport_03_unarmed_F",56250],
	["I_Heli_Transport_02_F",56250],
	["I_Heli_light_03_unarmed_F",225],
	["I_Truck_02_transport_F",3375],
	["I_Truck_02_covered_F",3750],
	["I_Truck_02_medical_F",150],
	["B_Truck_01_Repair_F",225],
	["B_Truck_01_medical_F",225],
	["B_Truck_01_transport_F",9000],
	["B_Truck_01_covered_F",10500],
	["B_Truck_01_box_F", 15000],
	["O_Truck_03_transport_F",7500],
	["O_Truck_03_covered_F",9000],
	["O_Truck_03_device_F",19500],
	["O_MRAP_02_F",11250],
	["C_Rubberboat",113],
	["C_Boat_Civil_01_F",450],
	["B_Boat_Transport_01_F",113],
	["C_Boat_Civil_01_police_F",150],
	["B_Boat_Armed_01_minigun_F",225],
	["B_SDV_01_F",300],
	["I_MRAP_03_F",18750],
	["I_MRAP_03_hmg_F",12500],
	["B_MRAP_01_F",1125]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Kart_01_Blu_F",1000],
	["C_Kart_01_Fuel_F",1000],
	["C_Kart_01_Red_F",1000],
	["C_Kart_01_Vrana_F",1000],
	["B_Quadbike_01_F",800],
	["C_Hatchback_01_F",4000],
	["B_G_Offroad_01_F",600],
	["B_G_Offroad_01_repair_F",600],
	["B_G_Offroad_01_armed_F",375000],
	["C_SUV_01_F",10000],
	["C_Van_01_transport_F",9000],
	["C_Van_01_box_F",10000],
	["C_Hatchback_01_sport_F",5000],
	["C_Heli_Light_01_civil_F",247500],
	["O_Heli_Transport_04_repair_F",2000],
	["O_Heli_Transport_04_medevac_F",2000],
	["O_Heli_Transport_04_F",200000],
	["O_Heli_Transport_04_covered_F",375000],
	["O_Heli_Transport_04_bench_F",2000],
	["B_Heli_Transport_03_unarmed_F",375000],
	["I_Heli_Transport_02_F",375000],
	["I_Heli_light_03_unarmed_F",1500],
	["I_Truck_02_transport_F",22500],
	["I_Truck_02_covered_F",25000],
	["I_Truck_02_medical_F",1000],
	["B_Truck_01_Repair_F",1500],
	["B_Truck_01_medical_F",1500],
	["B_Truck_01_transport_F",90000],
	["B_Truck_01_covered_F",105000],
	["B_Truck_01_box_F", 150000],
	["O_Truck_03_transport_F",75000],
	["O_Truck_03_covered_F",90000],
	["O_Truck_03_device_F",195000],
	["O_MRAP_02_F",75000],
	["C_Rubberboat",750],
	["C_Boat_Civil_01_F",3000],
	["B_Boat_Transport_01_F",750],
	["C_Boat_Civil_01_police_F",1000],
	["B_Boat_Armed_01_minigun_F",1500],
	["B_SDV_01_F",2000],
	["I_MRAP_03_F",7500],
	["I_MRAP_03_hmg_F",12500],
	["B_MRAP_01_F",7500]
];
__CONST__(life_garage_sell,life_garage_sell);

[] call life_fnc_permconfiguration;
