#include <macro.h>

/*

	Black Lagoon Altis Life Permission System (perm)

*/

//Schema:
//   0        1         2            3            4                                5      6
// PERMID, PERMNAME, MAXLEVEL, RULECONFIG, MEMBER_CONDITIONS [cop,reb,donator], LOGO, LEVELNAMES

/*


	RULECONFIG:
	Array of leader rules
	
	[ [LEVEL, [RULESET+] ]

	RULESET = [LEADER, RANKUP, RANKDOWN, SELF, SUPER, VIEW, (CUSTOM PERMS)] 
	
	* SUPER ... CAN CONTROL RANK OF HIGHER LEVELS
	* SELF ... Can set own rank
	* VIEW ... can view list of players
	


*/

life_perms = [

	//Polizei-Verwaltung, will overwrite sessionReceive!
	["cop", "Altis Police Department", 7, [ 
	
		[1, ["VIEW"]],
		[2, ["VIEW"]],
		[3, ["VIEW","RESTRAIN"]],
		[4, ["VIEW","RESTRAIN"]],
		[5, ["VIEW","RESTRAIN"]],
		[6, ["VIEW","RESTRAIN"]],
		[7, ["LEADER", "RANKUP", "RANKDOWN", "SUPER", "VIEW","RESTRAIN"]]
	], 
	[], "textures\perms\police.paa",
	["Kein Mitglied","Rekrut", "Rekrut", "Polizist","Polizist","Bundespolizist","Bundespolizist","Polizeichef"]], 
	
	//ADAC
	["adac", "ADAC", 4, [ 
		[0, []],
		[1, []],
		[2, ["VIEW","RESTRAIN"]],
		[3, ["VIEW","RESTRAIN"]],
		[4, ["LEADER", "RANKUP", "RANKDOWN", "VIEW","RESTRAIN"]]
	],  
	[], "textures\perms\adac.paa",
	["Kein Mitglied", "Kunde", "ADAC-Rekrut", "ADAC-Mitarbeiter", "ADAC-Chef"]],
	
	//Medic
	["medic","Medics", 2,[ 
		[0, []],
		[1, ["VIEW"]],
		[2, ["LEADER", "RANKUP", "RANKDOWN", "VIEW"]]
	],  
	[], "",
	["Kein Mitglied","Mitglied", "Leiter"]],
	
	//Security aka Söldner
	["sec","Söldner", 4, [ 
		[0, []],
		[1, []],
		[2, ["VIEW","RESTRAIN"]],
		[3, ["VIEW","RESTRAIN"]],
		[4, ["LEADER", "RANKUP", "RANKDOWN", "VIEW","RESTRAIN"]]
	],  
	[], "",
	["Kein Mitglied", "Kunde", "Anwärter", "Mitarbeiter", "Chef"]],
	
	//Schmggler
	["smugler", "Waffenschieber", 4, [ 
		[0, []],
		[1, []],
		[2, ["VIEW","RESTRAIN"]],
		[3, ["VIEW","RESTRAIN"]],
		[4, ["LEADER", "RANKUP", "RANKDOWN", "VIEW","RESTRAIN"]]
	],  
	[], "",
	["Kein Mitglied", "Kunde", "Anwärter", "Mitarbeiter", "Chef"]],
	
	//Donator
	["don", "Donator", 5, [ 
		[0, []],
		[1, []],
		[2, []],
		[3, []],
		[4, []],
		[5, ["LEADER", "RANKUP", "RANKDOWN", "VIEW","RESTRAIN"]]
		
	],  
	[], "",
	["Kein Mitglied", "Donator", "Donator", "Donator", "Donator", "Admin"]]
	
	/*
	User requested groups
	*/
	//BloodZ User Group
	/*["user_bloodz", "BloodZ", 7, [ 
		[0, []],
		[1, ["VIEW"]],
		[2, ["VIEW"]],
		[3, ["VIEW"]],
		[4, ["VIEW"]],
		[5, ["VIEW"]],		
		[6, ["LEADER", "RANKUP", "RANKDOWN", "VIEW"]],
		[7, ["LEADER", "RANKUP", "RANKDOWN", "VIEW"]]
	],  
	[], "images\logo_user\bloodz.paa",
	["Kein Mitglied",
	"Blood-Praktikant",
	"Blood-Grünschnabel",
	"Blood-Dealer",
	"Blood-Hitman",
	"Blood-Rechte Hand",
	"Blood-CoLeader",
	"Blood-Leader"]]*/

];

life_dynperms = []; //Dynamic perms, loaded by database


///////////////////////////// Autoconfig
life_player_perms = []; //[PERMID, LEVEL]
life_dynperm_checkout_running = false;

__CONST__(life_perms,life_perms);

