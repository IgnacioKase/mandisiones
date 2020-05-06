// VCOM SETTINGS
force Vcm_ActivateAI = true;
force VCM_ADVANCEDMOVEMENT = true; //True means AI will actively generate waypoints if no other waypoints are generated for the AI group (2 or more). False disables this advanced movements.
force VCM_AIDISTANCEVEHPATH = 100; //Distance AI check from the squad leader to steal vehicles
force VCM_AIMagLimit = 5; //Number of mags remaining before AI looks for ammo.
force VCM_ARTYDELAY = 400; //Delay between squads requesting artillery
force VCM_ARTYENABLE = true; //Enable improved artillery handling from Vcom.
force VCM_ARTYSPREAD = 100; //Spread in meters
force VCM_Debug = false; //Enable debug mode.
force VCM_FRMCHANGE = true; //AI GROUPS WILL CHANGE FORMATIONS TO THEIR BEST GUESS.
force VCM_HEARINGDISTANCE = 1000; //Distance AI hear unsuppressed gunshots.
force VCM_MINECHANCE = 85; //Chance to lay a mine
force VCM_RAGDOLL = true; //Should AI ragdoll when hit
force VCM_RAGDOLLCHC = 70; //CHANCE AI RAGDOLL
force VCM_SIDEENABLED = [WEST,EAST,GUER]; //Sides that will activate Vcom AI
force VCM_SKILLCHANGE = false; //AI Groups will have their skills changed by Vcom.
force VCM_STATICARMT = 500; //How long AI stay on static weapons when initially arming them. This is just for AI WITHOUT static bags. They will stay for this duration when NO ENEMIES ARE SEEN, or their group gets FAR away.
force VCM_StealVeh = true; //Will the AI steal vehicles.
force VCM_WARNDELAY = 30; //How long the AI have to survive before they can call in for support. This activates once the AI enter combat.
force VCM_WARNDIST = 500; //How far AI can request help from other groups.
force VCM_ARTYLST = []; //List of all AI inside of artillery pieces, leave this alone.
force VCM_ARTYSIDES = [east];  //Sides that will use VCOM/FFE artillery