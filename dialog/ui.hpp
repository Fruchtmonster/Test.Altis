	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{
			class foodHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "textures\icons\food.paa";
				x = 0.930208 * safezoneW + safezoneX;
				y = 0.906 * safezoneH + safezoneY;
				w = 0.03;
				h = 0.04;
				/*
				x = safeZoneX+safeZoneW-0.105; y = safeZoneY+safeZoneH+9.445;
				w = 0.03; h = 0.04;
				*/
			};
			
			class waterHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "textures\icons\water.paa";
				x = 0.900208 * safezoneW + safezoneX;
				y = 0.906 * safezoneH + safezoneY;
				w = 0.03;
				h = 0.04;
				/*
				x = safeZoneX+safeZoneW-0.110; y = safeZoneY+safeZoneH+9.445;
				w = 0.03; h = 0.04;
				*/
			};
			
			class healthHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "textures\icons\health.paa";
				x = 0.870208 * safezoneW + safezoneX;
				y = 0.906 * safezoneH + safezoneY;
				w = 0.03;
				h = 0.04;
				/*
				x = safeZoneX+safeZoneW-0.115; y = safeZoneY+safeZoneH+9.445;
				w = 0.03; h = 0.04;
				*/
			};
		};
		
		class controls
		{
			class foodtext
			{
				type=0;
				idc=23500;
				style=0;
				x = 0.922917 * safezoneW + safezoneX;
				y = 0.864 * safezoneH + safezoneY;
				w = 0.3;
				h = 0.05;
				/*
				x = 0.930208 * safezoneW + safezoneX;
				y = 0.8 * safezoneH + safezoneY;
				w = 0.3;
				h = 0.05;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				*/
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x = 0.892333 * safezoneW + safezoneX;
				y = 0.864 * safezoneH + safezoneY;
				w = 0.3;
				h = 0.05;
				/*
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				*/
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class healthtext
			{
				type=0;
				idc=23515;
				style=0;
				x = 0.862333 * safezoneW + safezoneX;
				y = 0.864 * safezoneH + safezoneY;
				w = 0.3;
				h = 0.05;
				/*
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				*/
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   
 	};