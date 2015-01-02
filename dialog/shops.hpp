class life_weapon_shop
{
	idd = 38400;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class RscTitleBackground : Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1; 
			y = 0.2;
			w = 0.8;
			h = (1 / 25);
		};
		
		class Mainbackground : Life_RscText
		{
			colorBackground[] = {0,0,0,0.7};
			idc = -1;
			x = 0.1; 
			y = 0.2 + (11 / 250);
			w = 0.8;
			h = 0.7 - (22 / 250);
		};
		
		class itemName : Life_RscStructuredText
		{
			colorBackground[] = {0,0,0,0};
			idc = 38407;
			text = "";
			x = 0.425; 
			y = 0.26;
			w = 0.46; 
			h = 0.1;
		};
		
		class Title : Life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 38401;
			text = "";
			x = 0.1; 
			y = 0.2;
			w = 0.8; 
			h = (1 / 25);
		};
		
		class itemInfo : Life_RscStructuredText
		{
			idc = 38404;
			text = "";
			sizeEx = 0.035;
			x = 0.425; 
			y = 0.8;
			w = 0.46; 
			h = 0.1;
		};
	};
	
	class controls
	{
		class FilterList : Life_RscCombo
		{
			idc = 38402;
			colorBackground[] = {0,0,0,0.7};
			onLBSelChanged = "_this call life_fnc_weaponShopFilter";
			x = 0.11; 
			y = 0.26;
			w = 0.3; 
			h = 0.05;
		};
		
		class itemList : Life_RscListBox
		{
			idc = 38403;
			onLBSelChanged = "_this call life_fnc_weaponShopSelection";
			sizeEx = 0.035;
			x = 0.11; 
			y = 0.32;
			w = 0.3; 
			h = 0.52;
		};
		
		class itemPicture: Life_RscPicture
		{
			idc = 38406;
			text = "#(argb,8,8,3)color(1,1,1,0)";
			x = 0.46;
			y = 0.35;
			w = 0.4;
			h = 0.4;
		};
		
		class ButtonBuySell : Life_RscButtonMenu
		{
			idc = 38405;
			text = "$STR_Global_Buy";
			onButtonClick = "[] spawn life_fnc_weaponShopBuySell; true";
			x = 0.1 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.9 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
		
		class ButtonClose : life_RscButtonMenu 
		{
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.9 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};
