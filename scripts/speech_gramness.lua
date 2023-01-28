
-----------------------------------
-- This file is the template for other speech files. Once a new string is added here, simply run PropagateSpeech.bat
-- If you are adding strings that are character specific, or not required by all characters, you will still need to add the strings to speech_wilson.lua,
-- and then add the context string to speech_from_generic.lua. Once you run the PropagateSpeech.bat, you can go into your character's speech file and simply uncomment the new lines.
--
-- There are some caveats about maintaining sane formatting in this file.
--      -No single line lua tables
--      -Opening and closing brackets should be on their own line
--      -If wilson's speech has X unnamed strings in a table, then all other speech files must have at least X unnamed strings in that context too (example, CHESSPIECE_MOOSEGOOSE has 1 string in wilson, but 2 in wortox), this requirement could be relaxed if required by motifying po_vault.lua)

return {
	ACTIONFAIL =
	{
        APPRAISE =
        {
            NOTNOW = "Ah! They're busy!",
        },
        REPAIR =
        {
            WRONGPIECE = "Wait, I'll try again.",
        },
        BUILD =
        {
            MOUNTED = "I'm too high up!",
            HASPET = "I've got a pet.",
			TICOON = "I got a Ticoon of my own!",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "Now I'm not the most intuitive, but I feel I shouldn't do that whle they're awake.",
			GENERIC = "Shave? Shave what?",
			NOBITS = "They don't have anything to shave.",
            REFUSE = "only_used_by_woodie",
            SOMEONEELSESBEEFALO = "That's someone's pet! That doesn't seem nice to do.",
		},
		STORE =
		{
			GENERIC = "It's too stuffed!",
			NOTALLOWED = "It won't fit there.",
			INUSE = "I'll give them space.",
            NOTMASTERCHEF = "Mom usually does the cooking.",
		},
        CONSTRUCT =
        {
            INUSE = "They got it!",
            NOTALLOWED = "This part's not right!",
            EMPTY = "Oh, whoops! I forgot the hammer, haha!",
            MISMATCH = "Mom usually does the cooking.",
        },
		RUMMAGE =
		{
			GENERIC = "Not now.",
			INUSE = "I'll let them do it.",
            NOTMASTERCHEF = "Mom usually does the cooking.",
		},
		UNLOCK =
        {
        	WRONGKEY = "Maybe if- I stuff it... just right!",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Hm. Dunno why I thought that would work.",
        	KLAUS = "Let's take care of this guy first!",
			QUAGMIRE_WRONGKEY = "We'll open it, don't worry!",
        },
		ACTIVATE =
		{
			LOCKED_GATE = "Locked...",
            HOSTBUSY = "He's got his feathers full.",
            CARNIVAL_HOST_HERE = "Ah, there he is!",
            NOCARNIVAL = "The carnival's not in town.",
			EMPTY_CATCOONDEN = "Huh? Where'd you go?",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "We should get more kitties to play with first.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "This place stinks for hiding.",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "I've had enough.", --Dw I will become extremely agnostic towards doing lunar new years the further I go
			MANNEQUIN_EQUIPSWAPFAILED = "Haha, it's not gonna fit!",															  
		},
		OPEN_CRAFTING =
		{
            PROFESSIONALCHEF = "After last time, I'll leave the cooking to those that know how.",
			SHADOWMAGIC = "It's like PSI, but evil!",
		},
        COOK =
        {
            GENERIC = "I'm in the middle of something.",
            INUSE = "I'll let them cook!",
            TOOFAR = "Can't reach!",
        },
        START_CARRAT_RACE =
        {
            NO_RACERS = "We can't have a race with no racers!",
        },

		DISMANTLE =
		{
			COOKING = "Something smells good! Let's wait for it first.",
			INUSE = "Someone's using it.",
			NOTEMPTY = "Let's eat first!",
        },
        FISH_OCEAN =
		{
			TOODEEP = "I don't think it'll work in the rough ocean waters.",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "I should use something much simpler.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_waxwell_and_wicker",
            NOBIRDS = "only_used_by_waxwell_and_wicker",
            NOWATERNEARBY = "only_used_by_waxwell_and_wicker",
            TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            NOFIRES =       "only_used_by_waxwell_and_wicker",
            NOSILVICULTURE = "only_used_by_waxwell_and_wicker",
            NOHORTICULTURE = "only_used_by_waxwell_and_wicker",
            NOTENTACLEGROUND = "only_used_by_waxwell_and_wicker",
            NOSLEEPTARGETS = "only_used_by_waxwell_and_wicker",
            TOOMANYBEES = "only_used_by_waxwell_and_wicker",
            NOMOONINCAVES = "only_used_by_waxwell_and_wicker",
            ALREADYFULLMOON = "only_used_by_waxwell_and_wicker",
        },

        GIVE =
        {
            GENERIC = "It's won't hold.",
            DEAD = "Haha, what's a dead person gonna do with this?!",
            SLEEPING = "I'll let them enjoy their nap.",
            BUSY = "They look busy.",
            ABIGAILHEART = "Can't blame me for thinking outside the box!",
            GHOSTHEART = "Wait, Ness that's a bad guy, not your friend! Oh, man, that wouldn't have been good, haha!",
            NOTGEM = "I shouldn't do put that there!",
            WRONGGEM = "That's not the right gem.",
            NOTSTAFF = "It doesn't quite fit...",
            MUSHROOMFARM_NEEDSSHROOM = "Looks like it needs a mushroom!",
            MUSHROOMFARM_NEEDSLOG = "Looks like it needs a living log!",
            MUSHROOMFARM_NOMOONALLOWED = "Huh. They won't grow here! Oh well.",
            SLOTFULL = "It's occupied!",
            FOODFULL = "Let's eat first!",
            NOTDISH = "It won't like that. More for me!",
            DUPLICATE = "Hey, I know this already!",
            NOTSCULPTABLE = "Hmmm. I dunno what to do.",
            NOTATRIUMKEY = "This isn't right.",
            CANTSHADOWREVIVE = "It's not responding.",
            WRONGSHADOWFORM = "I uh. Did something. Not right. Haha!",
            NOMOON = "I need to see the moon.",
			PIGKINGGAME_MESSY = "It's way to messy to play.",
			PIGKINGGAME_DANGER = "Let's take care of these bad guys first!",
			PIGKINGGAME_TOOLATE = "There's no time.",
			CARNIVALGAME_INVALID_ITEM = "It wants a token.",
			CARNIVALGAME_ALREADY_PLAYING = "Someone's already playing.",
            SPIDERNOHAT = "I can't carry both of you!",
            TERRARIUM_REFUSE = "You don't want that?",
            TERRARIUM_COOLDOWN = "Nothing's happening.",
            NOTAMONKEY = "Sorry, but not can do my primate friend!",
            QUEENBUSY = "I'll wait for you to be ready!",
        },
        GIVETOPLAYER =
        {
            FULL = "Haha, you've got your hands full, it seems!",
            DEAD = "Actually, I'll keep it safe for you.",
            SLEEPING = "I'll let them nap.",
            BUSY = "I'll wait for when you're not busy.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Haha, you've got your hands full, it seems!",
            DEAD = "Actually, I'll keep it safe for you.",
            SLEEPING = "I'll let them nap.",
            BUSY = "I'll wait for when you're not busy.",
        },
        WRITE =
        {
            GENERIC = "I don't have any better ideas for what to write.",
            INUSE = "They'll write something much nicer than I could!",
        },
		REPAIRBOAT =		
			GENERIC = "There's nothing to patch up, haha!								 
        DRAW =
        {
            NOIMAGE = "I'm not artist: I need a reference!",
        },
        CHANGEIN =
        {
            GENERIC = "My outfit is fine!",
            BURNING = "Ah, fire!",
            INUSE = "I'll let them change first.",
            NOTENOUGHHAIR = "Needs... furs...",
            NOOCCUPANT = "I should hitch an animal first.",
        },
        ATTUNE =
        {
            NOHEALTH = "I REALLY shouldn't do that right now...",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "Uh. Now's a bad time.",
            INUSE = "Looks occupied.",
			SLEEPING = "Sorry to bother you, but we got work to do!",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "I shouldn't get in the middle of that.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "Learnt that!",
            CANTLEARN = "Way too smart for me!",

            --MapRecorder/MapExplorer
            WRONGWORLD = "Hm. None of this looks familiar...",

			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "I can't make any of this out!",--Likely trying to read messagebottle treasure map in caves

            STASH_MAP_NOT_FOUND = "Wait, there's no treasure marked! Hm.",-- Likely trying to read stash map  in world without stash
        },
        WRAPBUNDLE =
        {
            EMPTY = "I should wrap something up with it.",
        },
        PICKUP =
        {
			RESTRICTION = "I really wouldn't know what to do with it, heh.",
			INUSE = "They got it!",
            NOTMINE_SPIDER = "only_used_by_webber",
            NOTMINE_YOTC =
            {
                "You remind me of an exit mouse!",
                "You know the way outta this wildness, buddy?",
            },
			NO_HEAVY_LIFTING = "only_used_by_wanda",
            FULL_OF_CURSES = "Looks evil to me.",
        },
        SLAUGHTER =
        {
            TOOFAR = "Oops, I lost 'em!",
        },
        REPLATE =
        {
            MISMATCH = "Wrong kinda dish!",
            SAMEDISH = "I think we have that dish already.",
        },
        SAIL =
        {
        	REPAIR = "It's in great shape, actually!",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Whoops!",
            BAD_TIMING1 = "Darn!",
            BAD_TIMING2 = "Ah, I splashed myself!",
        },
        LOWER_SAIL_FAIL =
        {
            "Haha, I really shouldn't be messing with this!",
            "Sailing can't be that hard!",
            "Whoops!",
        },
        BATHBOMB =
        {
            GLASSED = "It's too glassy!",
            ALREADY_BOMBED = "I bombed it good already!",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "Wait, I know how to make this! I'm so forgetful sometimes!",
		},
		COMPARE_WEIGHABLE =
		{
            FISH_TOO_SMALL = "Wow, the scale doesn't even register you!",
            OVERSIZEDVEGGIES_TOO_SMALL = "Wow, the scale doesn't even register you!",
		},
        BEGIN_QUEST =
        {
            ONEGHOST = "only_used_by_wendy",
        },
		TELLSTORY =
		{
			GENERIC = "only_used_by_walter",
			NOT_NIGHT = "only_used_by_walter",
			NO_FIRE = "only_used_by_walter",
		},
        SING_FAIL =
        {
            SAMESONG = "only_used_by_wathgrithr",
        },
        PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "I've learned everything I can!",
            FERTILIZER = "I've learned everything I can!",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "Oh yeaaaah, plants hate salt water...",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "Oops, out of water!",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Oops, out of water!",
        },
        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "That won't work.",
            BEEF_BELL_ALREADY_USED = "It's someone's pet!",
            BEEF_BELL_HAS_BEEF_ALREADY = "I have a pet of my own!",
        },
        HITCHUP =
        {
            NEEDBEEF = "I need a pet Beefalo!",
            NEEDBEEF_CLOSER = "Where'd my pet go?",
            BEEF_HITCHED = "All hitched up!",
            INMOOD = "Um. Maybe not now...",
        },
        MARK =
        {
            ALREADY_MARKED = "I've already made my pick.",
            NOT_PARTICIPANT = "I've got no steak in this contest.",
        },
        YOTB_STARTCONTEST =
        {
            DOESNTWORK = "I guess they don't support the arts here.",
            ALREADYACTIVE = "He must be busy with another contest somewhere.",
        },
        YOTB_UNLOCKSKIN =
        {
            ALREADYKNOWN = "I'm seeing a familiar pattern... I've learned this already!",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "Dang, just messed 'em!",
        },
        HERD_FOLLOWERS =
        {
            WEBBERONLY = "I don't' speak spider. Not after last time I tried...",
        },
        BEDAZZLE =
        {
            BURNING = "only_used_by_webber",
            BURNT = "only_used_by_webber",
            FROZEN = "only_used_by_webber",
            ALREADY_BEDAZZLED = "only_used_by_webber",
        },
        UPGRADE =
        {
            BEDAZZLED = "only_used_by_webber",
        },
		CAST_POCKETWATCH =
		{
			GENERIC = "only_used_by_wanda",
			REVIVE_FAILED = "only_used_by_wanda",
			WARP_NO_POINTS_LEFT = "only_used_by_wanda",
			SHARD_UNAVAILABLE = "only_used_by_wanda",
		},
        DISMANTLE_POCKETWATCH =
        {
            ONCOOLDOWN = "only_used_by_wanda",
        },

        ENTER_GYM =
        {
            NOWEIGHT = "only_used_by_wolfang",
            UNBALANCED = "only_used_by_wolfang",
            ONFIRE = "only_used_by_wolfang",
            SMOULDER = "only_used_by_wolfang",
            HUNGRY = "only_used_by_wolfang",
            FULL = "only_used_by_wolfang",
        },

        APPLYMODULE =
        {
            COOLDOWN = "only_used_by_wx78",
            NOTENOUGHSLOTS = "only_used_by_wx78",
        },
        REMOVEMODULES =
        {
            NO_MODULES = "only_used_by_wx78",
        },
        CHARGE_FROM =
        {
            NOT_ENOUGH_CHARGE = "only_used_by_wx78",
            CHARGE_FULL = "only_used_by_wx78",
        },

        HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "It ignores me.",
        },
		CAST_SPELLBOOK =
		{
			NO_TOPHAT = "only_used_by_waxwell",
		},

		CASTAOE =
		{
			NO_MAX_SANITY = "only_used_by_waxwell",
		},
    },

	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "Hmmm, something's missing!",
		NO_TECH = "I don't understand how to make this!",
		NO_STATION = "I need somewhere to make it",
	},

	ACTIONFAIL_GENERIC = "No can do!",
	ANNOUNCE_MAGIC_FAIL = "Hmmm, maybe a hamburger or two would help me concentrate!",
	ANNOUNCE_BOAT_LEAK = "Um, the water should be OUTSIDE the boat, right?",																
	ANNOUNCE_BOAT_SINK = "D-don't worry, I-I'm a great swimmer...!",
	ANNOUNCE_DIG_DISEASE_WARNING = "It looks better already.", --removed
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, is it supposed to smell like that?", --removed
	ANNOUNCE_ADVENTUREFAIL = "Of course I'll try again!",
    ANNOUNCE_MOUNT_LOWHEALTH = "My pet needs Lifeup, stat!",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_NOWATERNEARBY = "only_used_by_waxwell_and_wicker",

	--waxwell specific
	ANNOUNCE_SHADOWLEVEL_ITEM = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T1 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T2 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T3 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T4 = "only_used_by_waxwell",		
	
    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_EXITGYM = {
        MIGHTY = "only_used_by_wolfang",
        NORMAL = "only_used_by_wolfang",
        WIMPY = "only_used_by_wolfang",
    },

	ANNOUNCE_BEES = "Don't sting me don't sting me!!",
	ANNOUNCE_BOOMERANG = "Youch, just missed it!",
	ANNOUNCE_CHARLIE = "I know you're there!",
	ANNOUNCE_CHARLIE_ATTACK = "H-hey! No fair, show yourself!",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific
	ANNOUNCE_COLD = "I can hear... my teeth... ch-ch-chattering!",
	ANNOUNCE_HOT = "It's Dusty Dunes... all over again!",
	ANNOUNCE_CRAFTING_FAIL = "I'm missing something!",
	ANNOUNCE_DEERCLOPS = "We got trouble.",
	ANNOUNCE_CAVEIN = "A cave-in!",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"Who's using PK Ground?!",
		"Earthquake!",
		"Uh oh!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "I got a shiny rock for you!",
        "Here you go!",
        "Do you like it?",
	},
	ANNOUNCE_SACREDCHEST_YES = "Great!",
	ANNOUNCE_SACREDCHEST_NO = "Hmmmm.",
    ANNOUNCE_DUSK = "Sun's going down!",

    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Mmmmmmmm!",
		PAINFUL = "I shouldn't have eaten that...",
		SPOILED = "Oh yeah, that definitely went bad...",
		STALE = "Well, better not to waste food.",
		INVALID = "That's not food!",
        YUCKY = "I found something even I won't eat!",

        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },

	ANNOUNCE_FOODMEMORY = "only_used_by_warly",										
    ANNOUNCE_ENCUMBERED =
    {
        "Put... your back into it!",
        "I... got it!",
        "Almost there... hopefully...",
        "Well... it'll keep me... in shape!",
        "It's not that heavy... *huff* ...really!",
        "Nothing... an Eagle Scout can't handle!",
        "I can handle it...!",
        "Maybe... a little... lunch break?",
        "I'll get there... eventually!",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"That's not good!",
		"Uh oh.",
		"To safety!",
	},
    ANNOUNCE_RUINS_RESET = "We got more bad guys to bash!",
    ANNOUNCE_SNARED = "H-hey, that hurts!",
    ANNOUNCE_SNARED_IVY = "Um, I might need a little help.",
    ANNOUNCE_REPELLED = "It's too tough!",
	ANNOUNCE_ENTER_DARK = "I'm blind! Blind!",
	ANNOUNCE_ENTER_LIGHT = "Phew...",
	ANNOUNCE_FREEDOM = "Hah! Can't keep me down forever!",
	ANNOUNCE_HIGHRESEARCH = "Look at what I know~",
	ANNOUNCE_HOUNDS = "Something's hunting us!",
	ANNOUNCE_WORMS = "Something's hunting us!",
	ANNOUNCE_SHARX = "I'm not alone out here!",																	 
	ANNOUNCE_HUNGRY = "I could go for a nice steak right about now!",
	ANNOUNCE_HUNT_BEAST_NEARBY = "It's close.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Hmmmm, I think I lost the trail.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "This makes tracking it impossible!",
	ANNOUNCE_INV_FULL = "I'm stuffed to the brim, haha!",
	ANNOUNCE_KNOCKEDOUT = "Ugh, what happened...?",
	ANNOUNCE_LOWRESEARCH = "Huh. I felt like I knew most of that.",
	ANNOUNCE_MOSQUITOS = "Hey, they must be hungry!",
    ANNOUNCE_NOWARDROBEONFIRE = "Well, I certainly won't be changing now!",
    ANNOUNCE_NODANGERGIFT = "Let's deal with these monsters before we get to the gifts!",
    ANNOUNCE_NOMOUNTEDGIFT = "Sure, let me just hop off the ol' beefalo first!",
	ANNOUNCE_NODANGERSLEEP = "I can't sleep with evil about!",
	ANNOUNCE_NODAYSLEEP = "Why sleep in on such a beautiful day?",
	ANNOUNCE_NODAYSLEEP_CAVE = "Not feeling so sleepy.",
	ANNOUNCE_NOHUNGERSLEEP = "Haha, who could sleep on an empty stomach?",
	ANNOUNCE_NOSLEEPONFIRE = "I should do something about the fire!",
    ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "only_used_by_wx78",
	ANNOUNCE_NODANGERSIESTA = "I'll take care of the monsters first!",
	ANNOUNCE_NONIGHTSIESTA = "I don't feel like relaxing.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I don't feel like relaxing.",
	ANNOUNCE_NOHUNGERSIESTA = "I want a bite to eat first!",
	ANNOUNCE_NODANGERAFK = "I'm capable of anything!",
	ANNOUNCE_NO_TRAP = "Huh. Was kinda expecting an explosion or something!",
	ANNOUNCE_PECKED = "Hey, watch the noggin!",
	ANNOUNCE_QUAKE = "Everything's shaking!",
	ANNOUNCE_RESEARCH = "Look at me go!",
	ANNOUNCE_SHELTER = "Ah, shelter!",
	ANNOUNCE_THORNS = "Oops, pokey pokey!",
	ANNOUNCE_BURNT = "Ah, that's hot, real hot!",
	ANNOUNCE_TORCH_OUT = "My light!",
	ANNOUNCE_THURIBLE_OUT = "My light!",
	ANNOUNCE_FAN_OUT = "It broke.",
    ANNOUNCE_COMPASS_OUT = "I think it's broken.",
	ANNOUNCE_TRAP_WENT_OFF = "I KNEW it was too good to be true!",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "I've had worse ideas.",
	ANNOUNCE_TOWNPORTALTELEPORT = "It's like teleport!",
	ANNOUNCE_CANFIX = "\nI'll fix it!",
	ANNOUNCE_ACCOMPLISHMENT = "Look at me go!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Mom and Dad would be proud...",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "I think it needs more fertilizer!",
	ANNOUNCE_TOOL_SLIP = "Haha, slipped right outta my hands!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "That was close!",
	ANNOUNCE_TOADESCAPING = "I guess he's not interested.",
	ANNOUNCE_TOADESCAPED = "Goodbye!",


	ANNOUNCE_DAMP = "I'm a bit damp.",
	ANNOUNCE_WET = "So uh, I should probably find shelter, huh?",
	ANNOUNCE_WETTER = "I'm soaked!",
	ANNOUNCE_SOAKED = "Too much water, too much!!",
	ANNOUNCE_TREASURE = "Treasure? I wonder if it'll help on my adventure!",
	ANNOUNCE_MORETREASURE = "This'll be handy, haha!",
	ANNOUNCE_OTHER_WORLD_TREASURE = "Hmmm, I think I'm just going in circles!",
	ANNOUNCE_OTHER_WORLD_PLANT = "This soil is no good!",
	ANNOUNCE_MESSAGEBOTTLE = 
	{
		"I can't make anything out. Ugh.",
	},
	ANNOUNCE_WASHED_ASHORE = "Haha, maybe I'll be next careful next time!",
    ANNOUNCE_DESPAWN = "Looks like my time here is up!",
	ANNOUNCE_BECOMEGHOST = "oOooOooo!!",
	ANNOUNCE_GHOSTDRAIN = "It's time for me to move on...",
	ANNOUNCE_PETRIFED_TREES = "Who's doing that screaming?",
	ANNOUNCE_KLAUS_ENRAGE = "You might be bigger, but you're still no match for the Chosen Boy!",
	ANNOUNCE_KLAUS_UNCHAINED = "Now the real fight begins!",
	ANNOUNCE_KLAUS_CALLFORHELP = "More bad guys!",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "I sense something inside.",
		GLASS_LOW = "I see it!",
		GLASS_REVEAL = "There we go!",
		IDOL_MED = "I sense something inside.",
		IDOL_LOW = "I see it!",
		IDOL_REVEAL = "There we go!",
		SEED_MED = "I sense something inside.",
		SEED_LOW = "I see it!",
		SEED_REVEAL = "There we go!",
	},
	ANNOUNCE_VOLCANO_ERUPT = "Ah! Are we in the Lost Underworld?!",
	ANNOUNCE_MAPWRAP_WARN = "Who's out there!",
	ANNOUNCE_MAPWRAP_LOSECONTROL = "It's a riptide!",
	ANNOUNCE_MAPWRAP_RETURN = "I'm all turned around...",
	ANNOUNCE_CRAB_ESCAPE = "You win this time!",
	ANNOUNCE_TRAWL_FULL = "It's stuffed to the brim!",
	ANNOUNCE_BOAT_DAMAGED = "My boat's damaged!",
	ANNOUNCE_BOAT_SINKING = "Hold on just a longer, please...?",
	ANNOUNCE_BOAT_SINKING_IMMINENT = "My journey can't end here!!",
	ANNOUNCE_WAVE_BOOST = "Whoooa!!",

	ANNOUNCE_WHALE_HUNT_BEAST_NEARBY = "It's close now!",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL = "Haha, the ocean's kinda big, huh?",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL_SPRING = "Water's too rough for this!",	

	-- PORKLAND SPEECH
	ANNOUCE_UNDERLEAFCANOPY = "Ahhh, that's nice.",
	ANNOUCE_ALARMOVER = "Looks safe now!",	
	ANNOUCE_BATS = "Bad guys...",
	ANNOUCE_OTHERWORLD_DEED = "It doesn't mean much here, haha!",
	ANNOUNCE_TOOLCORRODED = "Someone was a little too brittle, hahaha!",
	ANNOUNCE_TURFTOOHARD = "I can't really dig it out!",
	ANNOUNCE_GAS_DAMAGE = "*Gasp* Wait... I can't... breathe...!",
	ANNOUNCE_GNATS_DIED = "Sorry Buzz Buzz, but these bugs I'm not a fan of!",	
	ANNOUNCE_SNEEZE = "Ah-ah! Ahhhhh CHOOO!!",	
	ANNOUNCE_HAYFEVER = "I think this place is making me sick...",	
	ANNOUNCE_HAYFEVER_OFF = "Much better!",	
	ANNOUNCE_PICKPOOP = {"This is too gross for even me...", "I'll never be clean again...", "Ewwww..."},	
	ANNOUNCE_TOO_HUMID = {"It's way too humid for %s...","This %s is too hot."},	
	ANNOUNCE_DEHUMID = {"Much more comfy."},	
	ANNOUNCE_PUGALISK_INVULNERABLE = {"You'll break eventually", "Nothing is too strong for me!"},
	ANNOUNCE_MYSTERY_FOUND = "What's this?",
	ANNOUNCE_MYSTERY_NOREWARD = "A dead end.",
	ANNOUNCE_MYSTERY_DOOR_FOUND = "What's on the other side?",
	ANNOUNCE_MYSTERY_DOOR_NOT_FOUND = "Nothing's behind here!",
	ANNOUNCE_TAXDAY = "No wonder why Mayor Pirkle is so insistent on reelection!",
	ANNOUNCE_HOUSE_DOOR = "I should ask for a permit!",
	ANNOUNCE_ROOM_STUCK = "Someone forgot the door!",
	ANNOUNCE_NOTHING_FOUND = "Nothing.",
	ANNOUNCE_SUITUP = "Ah, looks like it's time to save the world again!",																			
    --hallowed nights
    ANNOUNCE_SPOOKED = "Aah! Spooky!",
	ANNOUNCE_BRAVERY_POTION = "Hah, homesick? Not me!",
	ANNOUNCE_MOONPOTION_FAILED = "Oops...",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "It'd be wrong to eat all this food without friends...",
	ANNOUNCE_WINTERS_FEAST_BUFF = "I love this time of year!",
	ANNOUNCE_IS_FEASTING = "Happy Winter's Feast!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "Over before you know it, like always.",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Let me help you.",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "Good as new!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Much better, thank-you.",

    ANNOUNCE_FLARE_SEEN = "Whoa, a flare!",
    ANNOUNCE_MEGA_FLARE_SEEN = "The whole sky is lit up!",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Is it another kraken??",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD =
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD =
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING =
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --walter specfic
	ANNOUNCE_SLINGHSOT_OUT_OF_AMMO =
	{
		"only_used_by_walter",
		"only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_FIREWENTOUT =
	{
        "only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_NOT_NIGHT =
	{
        "only_used_by_walter",
	},

    -- wx specific
    ANNOUNCE_WX_SCANNER_NEW_FOUND = "only_used_by_wx78",
    ANNOUNCE_WX_SCANNER_FOUND_NO_DATA = "only_used_by_wx78",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "Those ingredients didn't make anything.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "I left it on too long.",
    QUAGMIRE_ANNOUNCE_LOSE = "I have a bad feeling about this.",
    QUAGMIRE_ANNOUNCE_WIN = "Time to go!",

    ANNOUNCE_ROYALTY =
    {
        "Your majesty.",
        "Your highness.",
        "My liege!",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "I'm teeming with the power of PK Flash!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "Offense up!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Nothing like a little PSI Shield!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "I feel so focused!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "I can never get wet now!",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "Much better than coffee!",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "All the electricity's gone now.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Offense down...",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "Ow! Turns out I'm quite vulnerable!",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "I don't feel like working anymore.",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Well, I guess never wasn't the right word...",
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "Time for a nap!",

	ANNOUNCE_OCEANFISHING_LINESNAP = "Darn, the line snapped!",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "Oops, looks like I let too much line out!",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "Haha, that fish really didn't want to be caught!",
	ANNOUNCE_OCEANFISHING_BADCAST = "Oops! Sorry!",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE =
	{
		"I've never been fishing before!",
		"Hmmmm... I've not gotten any bites...",
		"La da la la...",
		"Any minute now...",
	},

	ANNOUNCE_WEIGHT = "Weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nI caught the big one!",

	ANNOUNCE_WINCH_CLAW_MISS = "Off target!",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "Darn, nothing at all!",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK =
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
		BOOK_SILVICULTURE = "only_used_by_wurt",
		BOOK_HORTICULTURE = "only_used_by_wurt",

        BOOK_FISH = "only_used_by_wurt",
        BOOK_FIRE = "only_used_by_wurt",
        BOOK_WEB = "only_used_by_wurt",
        BOOK_TEMPERATURE = "only_used_by_wurt",
        BOOK_LIGHT = "only_used_by_wurt",
        BOOK_RAIN = "only_used_by_wurt",

        BOOK_HORTICULTURE_UPGRADED = "only_used_by_wurt",
        BOOK_RESEARCH_STATION = "only_used_by_wurt",
        BOOK_LIGHT_UPGRADED = "only_used_by_wurt",
    },
    ANNOUNCE_WEAK_RAT = "Awwww, it looks sick...",

    ANNOUNCE_CARRAT_START_RACE = "Rock on, let's race!",

    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "Hahah, that's the wrong way!",
        "Other way, silly!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "We can nap after the race!",
    ANNOUNCE_CARRAT_ERROR_WALKING = "Haha, you gotta run!",
    ANNOUNCE_CARRAT_ERROR_STUNNED = "Shake it off!",

    ANNOUNCE_GHOST_QUEST = "only_used_by_wendy",
    ANNOUNCE_GHOST_HINT = "only_used_by_wendy",
    ANNOUNCE_GHOST_TOY_NEAR = {
        "only_used_by_wendy",
    },
	ANNOUNCE_SISTURN_FULL = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_DEATH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_RETRIEVE = "only_used_by_wendy",
	ANNOUNCE_ABIGAIL_LOW_HEALTH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_SUMMON =
	{
		LEVEL1 = "only_used_by_wendy",
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_GHOSTLYBOND_LEVELUP =
	{
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_NOINSPIRATION = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_TAUNT_BUFF = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_PANIC_BUFF = "only_used_by_wathgrithr",

    ANNOUNCE_WANDA_YOUNGTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOOLD = "only_used_by_wanda",
    ANNOUNCE_WANDA_OLDTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOYOUNG = "only_used_by_wanda",

	ANNOUNCE_POCKETWATCH_PORTAL = "At least I don't have to turn into a robot this time!",

	ANNOUNCE_POCKETWATCH_MARK = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_RECALL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = "only_used_by_wanda",

    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "So that's how they do things!",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "So that's how- wait, I knew this, haha!",
    ANNOUNCE_ARCHIVE_NO_POWER = "It doesn't seem to have any power.",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "I see, I know so much now!",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "What kinda plant is it?",

    ANNOUNCE_FERTILIZER_RESEARCHED = "I know more than I'd like now!",

	ANNOUNCE_FIRENETTLE_TOXIN =
	{
		"Hotter than it looks, way hotter than it looks!!",
		"Hot hot hot hot hot hot!!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "Ah... That wasn't TOO bad!",

	ANNOUNCE_TALK_TO_PLANTS =
	{
        "Rock on, little guy!",
        "Let's rock!",
		"I had no idea plants had such a personality!",
        "Hope you get lots of sunlight!",
        "Why hello, mr. plant!",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "3, 2, 1... Ready or not, here I come!",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "Aww, they're playing hide and seek.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND =
	{
		"Found you!",
		"There you are.",
		"I knew you'd be hiding there!",
		"I see you!",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "Now where's that last one hiding?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "I found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "{name} found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "These little guys must be getting impatient...",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "I guess they don't want to play any more...",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "They probably wouldn't hide this far away, would they?",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "The kitcoons should be nearby.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "Awwww, hi little one!",

	ANNOUNCE_TICOON_START_TRACKING	= "He's caught the scent!",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "Looks like he couldn't find anything.",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "I should follow him!",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "He really wants me to follow him.",
	ANNOUNCE_TICOON_NEAR_KITCOON = "He must have found something!",
	ANNOUNCE_TICOON_LOST_KITCOON = "Looks like someone else found what he was looking for.",
	ANNOUNCE_TICOON_ABANDONED = "I'll find those little guys on my own.",
	ANNOUNCE_TICOON_DEAD = "Poor guy... Now where was he leading me?",

    -- YOTB
    ANNOUNCE_CALL_BEEF = "Come on over!",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "The judge won't be able to see my beefalo from here.",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "My mind has been filled with beefalo styling inspiration!",

    -- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "It's totally evil! I'll handle it!",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "I knew you'd come back for more!",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Haha, until next time!",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "No escape? We'll see about that!",
    ANNOUNCE_MONKEY_CURSE_1 = "Anyone else really craving bananas right now?",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "What's with all this Monki-Ness, haha, haha-oo oo!",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "Ah, human again!",

    ANNOUNCE_PIRATES_ARRIVE = "We've got bad guys on the way!",

    ANNOUNCE_BOOK_MOON_DAYTIME = "only_used_by_waxwell_and_wicker",

	ANNOUNCE_OFF_SCRIPT = "Uhhhh, what's my line again? Haha!",																	
	BATTLECRY =
	{
		GENERIC = "I'll deal with 'em!",
		PIG = "Let's fight!",
		PREY = "Gotcha!",
		SPIDER = "Time to bash!",
		SPIDER_WARRIOR = "You're no match for me!",
		DEER = "Gotcha!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "You're tougher than you look...",
		PIG = "Okay, okay, you win!",
		PREY = "I... didn't getcha!",
		SPIDER = "Phew... bashing didn't work...",
		SPIDER_WARRIOR = "I guess he was up to par!",
	},

	DESCRIBE =
	{
		WILDBOREGUARD = "They're not too keen on being my friend!",							
		MULTIPLAYER_PORTAL = "So this is where I came from?",
        MULTIPLAYER_PORTAL_MOONROCK = "It's teeming with unearthly power!",
        MOONROCKIDOL = "It begs to be offered.",
        CONSTRUCTION_PLANS = "I dunno what we're up to, but I'll be sure to help out!",

        ANTLION =
        {
            GENERIC = "I feel like it wants a gift!",
            VERYHAPPY = "Nice and happy!",
            UNHAPPY = "I REALLY think it wants something!",
        },
        ANTLIONTRINKET = "I betcha it'd make a neat souvenir!",
        SANDSPIKE = "Hey, that's not nice!",
        SANDBLOCK = "It's... pretty firm, for sand!",
        GLASSSPIKE = "Now that's much nicer!",
        GLASSBLOCK = "Wow!",
        ABIGAIL_FLOWER =
        {
            GENERIC ="It makes me sad...",
			LEVEL1 = "Hello? Sad flower? Are you there?",
			LEVEL2 = "I sense you, I sense you!",
			LEVEL3 = "Hi! Someone's looking nice and strong!",

			-- deprecated
            LONG = "It's in pain.",
            MEDIUM = "There's something fighting within!",
            SOON = "It's almost here!",
            HAUNTED_POCKET = "This is baaaad luck.",
            HAUNTED_GROUND = "I don't like it.",
        },

        BALLOONS_EMPTY = "I love balloons!",
        BALLOON = "I wanna rub it in my hair!",
		BALLOONPARTY = "It's a balloon, but even more awesome!",
		BALLOONSPEED =
        {
            DEFLATED = "Awww...",
            GENERIC = "I'm extra speedy now!",
        },
		BALLOONVEST = "Haha, are you sure that'll work...?",
		BALLOONHAT = "I can feel the PK Flash charging up!",

        BERNIE_INACTIVE =
        {
            BROKEN = "It's no good now.",
            GENERIC = "You're all burnt...",
        },

        BERNIE_ACTIVE = "Hey, Paula has teddy bears like you!",
        BERNIE_BIG = "Now this, this would have been great against Giygas' forces!",

		BOOKSTATION =
		{
			GENERIC = "We can keep all my town maps here!",
			BURNT = "What a waste.",
		},
        BOOK_BIRDS = "It's very... avion!",
        BOOK_TENTACLES = "Hmmmm, I don't about this one!",
        BOOK_GARDENING = "Now this has some good stuff!",
		BOOK_SILVICULTURE = "Now this has some good stuff!",
		BOOK_HORTICULTURE = "Now this has some good stuff!",
        BOOK_SLEEP = "The proper napping tool, hahaha!",
        BOOK_BRIMSTONE = "Did Giygas write this one?",

        BOOK_FISH = "I bet fishermen will love this!",
        BOOK_FIRE = "Make sure to remember your fire safety!",
        BOOK_WEB = "Spiders? Neat!",
        BOOK_TEMPERATURE = "I don't really get this one.",
        BOOK_LIGHT = "It's magic, all right.",
        BOOK_RAIN = "Do I have to do a rain dance while I read?",
        BOOK_MOON = "Oh this, this rocks!!",
        BOOK_BEES = "I wonder if it'll work on Buzz Buzz!",
        
        BOOK_HORTICULTURE_UPGRADED = "Now this is extra good stuff!",
        BOOK_RESEARCH_STATION = "For studying books.",
        BOOK_LIGHT_UPGRADED = "Don't forget sunglasses!",

        FIREPEN = "Rock on!",

        PLAYER =
        {
            GENERIC = "Hiya, %s!",
            ATTACKER = "%s, might you be under Giygas' influence?",
            MURDERER = "Watch out %s, I'll bash the evil right out of ya!",
            REVIVER = "Haha, guess I owe ya, %s!",
            GHOST = "I don't think there's any hospitals out here, %s!",
            FIRESTARTER = "Hey, make sure you practice fire safety, %s!",
        },
		GRAMNESS =
        {
            GENERIC = "Whoa, are you like, a clone?",
            ATTACKER = "Looks like someone didn't defeat our nightmare yet!",
            MURDERER = "Is this what's to become of me if I fail...?",
            REVIVER = "Thanks... me! Hahaha!",
            GHOST = "You of all people know you can count on me!",
            FIRESTARTER = "What would mom say about us playing with fire?!",
        },
		NESS =
        {
            GENERIC = "Whoa, you're totally me! And yet, not at the same time!",
            ATTACKER = "Looks like someone didn't defeat our nightmare yet!",
            MURDERER = "Is this what's to become of me if I fail...?",
            REVIVER = "Thanks... me! Hahaha!",
            GHOST = "You of all people know you can count on me!",
            FIRESTARTER = "What would mom say about us playing with fire?!",
        },
		GRAMNINTEN =
        {
            GENERIC = "Black hair. Baseball caps. Likes rock music. We might be the same person, Ninten, haha!",
            ATTACKER = "Whoaaa Ninten, no need to get so worked up!",
            MURDERER = "What's gotten into you?!",
            REVIVER = "Thanks Ninten! When we get out of here, prime ribs for life, on me!",
            GHOST = "Don't worry, I won't leave another rockstar hanging!",
            FIRESTARTER = "Ninten, careful with the fires!",
        },
		GRAMPORA =
        {
            GENERIC = "We'll get through this, Paula!",
            ATTACKER = "This place is getting to you...",
            MURDERER = "Stop. I don't wanna fight you.",
            REVIVER = "I could always count on you!",
            GHOST = "I don't think there's any hospitals out here, Paula!",
            FIRESTARTER = "I think the PK Fire needs a bit of practice!",
        },
		LUCAS =
        {
            GENERIC = "Always glad to have another psychic out here, Lucas!",
            ATTACKER = "Whoa. You sure you're okay?",
            MURDERER = "Something's wrong with you, and I'm afraid I might have to bash it out!",
            REVIVER = "Glad I can rely on you, Lucas.",
            GHOST = "We still need you, Lucas, I'll get you in tip top shape!",
            FIRESTARTER = "I thought you'd of all people would be wary of forest fires!",
        },
		CLAUS =
        {
            GENERIC = "Two psychics for the price one?! Kidding, kidding, haha!",
            ATTACKER = "...Claus?",
            MURDERER = "...Just what are you really?",
            REVIVER = "Thanks, Claus.",
            GHOST = "I'll make things right, don't you worry!",
            FIRESTARTER = "Careful, you'll burn the whole forest down if you're not careful!",
        },
        WILSON =
        {
            GENERIC = "I wonder if you're smarter than Dr. Andonuts, %s!",
            ATTACKER = "I wonder if %s is being influenced.",
            MURDERER = "Don't think you'll be getting out of here in that state of mind, %s!",
            REVIVER = "I owe ya, %s!",
            GHOST = "Sorry, looks like there's no hospitals out here %s!",
            FIRESTARTER = "Be careful with the fires, okay?",
        },
        WOLFGANG =
        {
            GENERIC = "Heya, %s!",
            ATTACKER = "H-hey, use that strength for good!",
            MURDERER = "I'm tougher than I look, %s!",
            REVIVER = "Thanks for the help, %s, haha!",
            GHOST = "I'll get you back to life, don't you worry!",
            FIRESTARTER = "Careful with the fires, man!",
        },
        WAXWELL =
        {
            GENERIC = "Hi %s!!",
            ATTACKER = "Hmmm.",
            MURDERER = "I knew there was something up with you!",
            REVIVER = "I guess you're not as evil as you look, haha!",
            GHOST = "I guess I should help you out, haha!",
            FIRESTARTER = "Someone like you really shouldn't play with fires, %s!",
        },
        WX78 =
        {
            GENERIC = "Ooh, ooh, WX, did you know I was a robot once? It was awesome!",
            ATTACKER = "Guess %s really meant it when they said they had no empathy module...",
            MURDERER = "You're not the first robot I've gone up against, %s!",
            REVIVER = "Oh wow, thanks %s!",
            GHOST = "I'll fix you, %s!",
            FIRESTARTER = "Fires are bad, bad, %s!",
        },
        WILLOW =
        {
            GENERIC = "Nice to see you, %s!",
            ATTACKER = "I bet she'd love to use PK Fire right about now...",
            MURDERER = "Whoa, burning people alive is usually a figure of speech, %s!!",
            REVIVER = "Haha! I guess I owe ya, %s!",
            GHOST = "Hm. I don't know, %s, I doubt there's any hospitals out here!",
            FIRESTARTER = "I think %s likes fires a bit too much...",
        },
        WENDY =
        {
            GENERIC = "Nice seeing ya, %s!",
            ATTACKER = "%s! No need to be so down!",
            MURDERER = "Don't make me put a stop to you, %s!",
            REVIVER = "Wow, thank you %s!",
            GHOST = "Huh? You like being a ghost? Don't be silly, %s!",
            FIRESTARTER = "Be careful the fires, %s!",
        },
        WOODIE =
        {
            GENERIC = "Hiya, %s!",
            ATTACKER = "%s, what's with the fighting, eh?",
            MURDERER = "It's my job as Chosen Boy to put a stop to the likes of you, %s!",
            REVIVER = "I'm alive? Thank you, %s!",
            GHOST = "Looks like %s needs a hospital!",
            BEAVER = "%s's part beaver?",
            BEAVERGHOST = "Looks like %s needs a hospital... or maybe an animal one...",
            MOOSE = "%s, you're a moose now!",
            MOOSEGHOST = "Looks like %s needs a hospital... or maybe an animal one...",
            GOOSE = "That's a goose! %s's a goose!",
            GOOSEGHOST = "Looks like %s needs a hospital... or maybe an animal one...",
            FIRESTARTER = "Forest fires are dangerous, %s.",
        },
        WICKERBOTTOM =
        {
            GENERIC = "We could use someone knowledgeable like you, %s!",
            ATTACKER = "Whoa. I didn't think %s had so much fight in her!",
            MURDERER = "I knock Giygas' influence right out of ya!",
            REVIVER = "Hey, I owe ya, %s!",
            GHOST = "You can count on me!",
            FIRESTARTER = "Are you sure this fire is under control?",
        },
        WES =
        {
            GENERIC = "%s! Know any balloon tricks?",
            ATTACKER = "Now that's an angry mime. Haha, you remind me of my own adventures!",
            MURDERER = "%s isn't clowning around!",
            REVIVER = "Wow, %s, you saved me!",
            GHOST = "I'll save you, %s!",
            FIRESTARTER = "Be careful with the fire tricks, %s!",
        },
        WEBBER =
        {
            GENERIC = "It's my friend %s!",
            ATTACKER = "Hey hey hey, break it up, %s!",
            MURDERER = "You need to control your evil tendencies, %s. I would hate to have to do something about it!",
            REVIVER = "Thanks for saying me, %s, I owe ya!",
            GHOST = "We'll find a way to save you, %s!",
            FIRESTARTER = "Playing with fire isn't good, %s!",
        },
        WATHGRITHR =
        {
            GENERIC = "Hmmmm, %s, you think your spear would make for a decent bat?",
            ATTACKER = "Hahaha, %s, time to stop with the act! Haha... Ha...",
            MURDERER = "%s! I'll defeat you!",
            REVIVER = "Great job, %s! You would've been a great memeber of the Chosen Four!",
            GHOST = "We gotta get %s to a hospital, stat!",
            FIRESTARTER = "Make sure you're more careful with fire, %s.",
        },
        WINONA =
        {
            GENERIC = "Hiya %s!",
            ATTACKER = "Watch how you swing that wrench, %s!",
            MURDERER = "I'll bash the evil right out of ya, %s!",
            REVIVER = "Thanks, I owe ya, %s!",
            GHOST = "Count on me, %s!",
            FIRESTARTER = "Be careful, fires can get out of hand, %s!",
        },
        WORTOX =
        {
            GENERIC = "Oh, hi, %s!",
            ATTACKER = "Hmmmm... I'm pretty sure you're evil, haha!",
            MURDERER = "Yup! Time to bash another bad guy!",
            REVIVER = "Oh, thanks for saving me %s!",
            GHOST = "Let's find you another life, %s!",
            FIRESTARTER = "You shouldn't mess around with fires.",
        },
        WORMWOOD =
        {
            GENERIC = "Hey %s!",
            ATTACKER = "Be more careful, %s!",
            MURDERER = "You're not the first plant I've beat up!",
            REVIVER = "I'm alive? Thank you so much, %s!",
            GHOST = "Huh. How does one revive a plant...",
            FIRESTARTER = "Fire is very much not good for you!!",
        },
        WARLY =
        {
            GENERIC = "Got any more tasty meals, %s? I'm a growing boy!",
            ATTACKER = "Can't we all just get along and eat?",
            MURDERER = "Well, I don't think that was necessary...",
            REVIVER = "%s, you saved me! Thanks!",
            GHOST = "I don't think there's any hospitals out here, haha!",
            FIRESTARTER = "Keep the fires on the grill, %s!",
        },

        WURT =
        {
            GENERIC = "Hi %s!",
            ATTACKER = "What's got you upset?",
            MURDERER = "Guess I gotta beat the evil right out of ya!",
            REVIVER = "I'm glad I can count on you, %s!",
            GHOST = "Sorry %s, I'm pretty sure there's no hospitals here!",
            FIRESTARTER = "Let's be more careful with starting fires.",
        },

        WALTER =
        {
            GENERIC = "Wonderful day for camping, %s! Although... I guess this isn't really camping, haha!",
            ATTACKER = "Hey! There's other ways to resolve despites without violence, %s!",
            MURDERER = "Ah, who am I kidding. Beating the evil out of people's never failed me!",
            REVIVER = "Thank you %s, I owe you!",
            GHOST = "I'll save you %s, just count on me!",
            FIRESTARTER = "Too much fire!!",
        },

        WANDA =
        {
            GENERIC = "Hi %s! I've time traveled before to defeat Giygas. It was neat!",
            ATTACKER = "Could you go back to a time before you did that, please?",
            MURDERER = "It doesn't matter what time we're in, I'll put a stop to you!",
            REVIVER = "Thanks for bringing me back, %s!",
            GHOST = "How come you just don't time travel back to being alive, %s?",
            FIRESTARTER = "Fire safety, fire safety!",
        },

        WONKEY =
        {
            GENERIC = "Are you a psychic monkey? Could you teach me teleport again?",
            ATTACKER = "Hey! Don't hit others!",
            MURDERER = "Don't make me base you!",
            REVIVER = "Haha! Thanks, monkey!",
            GHOST = "Maybe I should help them.",
            FIRESTARTER = "Fire is bad, bad!",
        },

        MIGRATION_PORTAL =
        {
        --    GENERIC = "If I had any friends, this could take me to them.",
        --    OPEN = "If I step through, will I still be me?",
        --    FULL = "It seems to be popular over there.",
        },
        GLOMMER =
        {
            GENERIC = "Awwww, you remind me of Buzz Buzz!",
            SLEEPING = "Good night!",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "What a nice flower.",
            DEAD = "It doesn't look too good...",
        },
        GLOMMERWINGS = "Now you REALLY remind me of Buzz Buzz...",
        GLOMMERFUEL = "Ew!",
        BELL = "It still works.",
        STATUEGLOMMER =
        {
            GENERIC = "What kinda bug are you?",
            EMPTY = "I think I broke it.",
        },

        LAVA_POND_ROCK = "Reminds me of Fire Spring!",
		LAVA_POND_ROCK2 = "Reminds me of Fire Spring!",
		LAVA_POND_ROCK3 = "Reminds me of Fire Spring!",					   
		LAVA_POND_ROCK4 = "Reminds me of Fire Spring!",					   
		LAVA_POND_ROCK5 = "Reminds me of Fire Spring!",					   
		LAVA_POND_ROCK6 = "Reminds me of Fire Spring!",					   
		LAVA_POND_ROCK7 = "Reminds me of Fire Spring!",					   

		WEBBERSKULL = "What kind of skull is this?",
		WORMLIGHT = "It glows so very bright!",
		WORMLIGHT_LESSER = "It looks a little dull.",
		WORM =
		{
		    PLANT = "A berry!",
		    DIRT = "Something's down there...",
		    WORM = "Monster! I'll take you on!",
		},
        WORMLIGHT_PLANT = "A berry!",
		MOLE =
		{
			HELD = "Let's find you a new home.",
			UNDERGROUND = "Whatcha looking for down there?",
			ABOVEGROUND = "Hi there!",
		},
		MOLEHILL = "A cute home for a mole!",
		MOLEHAT = "It smells... Well, I'd rather not wear it, let's leave it at that...",

		EEL = "Mmmmm, you look tasty!",
		EEL_COOKED = "Now you smell tasty!",
		UNAGI = "I could make a nice meal from you!",
		EYETURRET = "You're a real help!",
		EYETURRET_ITEM = "Where to place you?",
		MINOTAURHORN = "Phew! It's been a while since I've had a nice challenge like that!",
		MINOTAURCHEST = "I wonder what's inside!",
		THULECITE_PIECES = "Little alien rock bits.",
		POND_ALGAE = "Algae!",
		GREENSTAFF = "It's real effecient!",
		GIFT = "To: Ness... aw, how thoughtful!",
        GIFTWRAP = "All wrapped up!",
		POTTEDFERN = "It'd look nice in a lawyer's office!",
        SUCCULENT_POTTED = "It'd look great in a lawyer's office!",
		SUCCULENT_PLANT = "I wonder what kinda plant you are.",
		SUCCULENT_PICKED = "It's not very sustaining.",
		SENTRYWARD = "It's some sort of gizmo.",
        TOWNPORTAL =
        {
			GENERIC = "Teleportation for non-psychics! ...And me.",
			ACTIVE = "Let's go!",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "Teleportation for non-psychics! ...And me.",
			ACTIVE = "Do I need a running start?",
		},
        WETPAPER = "Now to let it dry.",
        WETPOUCH = "The contents are probably all soggy too...",
        MOONROCK_PIECES = "Looks breakable!",
        MOONBASE =
        {
            GENERIC = "It can hold something, it seems!",
            BROKEN = "What's this supposed to be?",
            STAFFED = "Hmmm.",
            WRONGSTAFF = "...I don't think this'll do anything.",
            MOONSTAFF = "Wow, it transformed!",
        },
        MOONDIAL =
        {
			GENERIC = "It measures the moon!",
			NIGHT_NEW = "New moon!",
			NIGHT_WAX = "Waxing!",
			NIGHT_FULL = "Full moon!",
			NIGHT_WANE = "Waning!",
			CAVE = "Haha! How am I supposed to measure the moon down here?",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
			GLASSED = "Who's there?",
        },
		THULECITE = "It's very firm!",
		ARMORRUINS = "It's not as heavy as you'd expect!",
		ARMORSKELETON = "It's magic.",
		SKELETONHAT = "It's pure evil!",
		RUINS_BAT = "It'll bash monsters real good!",
		RUINSHAT = "I feel extra safe now!",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "I'm not sensing anything.",
            WARN = "There's a presence.",
            WAXING = "The power is growing rapidly!",
            STEADY = "The power maxed out!",
            WANING = "It's weakening!",
            DAWN = "The presence is on its way out.",
            NOMAGIC = "There's nothing to sense.",
		},
		BISHOP_NIGHTMARE = "You don't scare me!",
		ROOK_NIGHTMARE = "Don't get crushed!",
		KNIGHT_NIGHTMARE = "Bring it on!",
		MINOTAUR = "What sanctuary are you guarding?",
		SPIDER_DROPPER = "You almost got me! Not this time!",
		NIGHTMARELIGHT = "It bellows out temptation. Luckily, I'm the Chosen Boy!",
		NIGHTSTICK = "Dual purpose: now that's handy!",
		GREENGEM = "It's some sort of emerald.",
		MULTITOOL_AXE_PICKAXE = "Dual purpose: how effecient!",
		ORANGESTAFF = "I can cover so much distance now!",
		YELLOWAMULET = "It shines so brightly!",
		GREENAMULET = "How resourceful!",
		SLURPERPELT = "Sorry!",

		SLURPER = "I don't like the way you're drooling at me!",
		SLURPER_PELT = "Sorry!",
		ARMORSLURPER = "It helps me stay full!",
		ORANGEAMULET = "This would be great for cleaning my room!",
		YELLOWSTAFF = "PK Dwarf Star!",
		YELLOWGEM = "Yellow mellow.",
		ORANGEGEM = "What a pretty orange!",
        OPALSTAFF = "PK Freeze!",
        OPALPRECIOUSGEM = "It's freezing!",
        TELEBASE =
		{
			VALID = "Let's teleport!",
			GEMS = "It needs fuel.",
		},
		GEMSOCKET =
		{
			VALID = "Ready to rock and roll!",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "It's hot to the touch!",
        STAFFCOLDLIGHT = "How does it get so cold?",

        ANCIENT_ALTAR = "What purpose did you serve?",

        ANCIENT_ALTAR_BROKEN = "Whatever this is, ain't much anymore.",

        ANCIENT_STATUE = "There's a presence to this statue...",

        LICHEN = "Lichen.",
		CUTLICHEN = "If you have to eat it, it'll do.",

		CAVE_BANANA = "You can never go wrong with a little banana.",
		CAVE_BANANA_COOKED = "I made it realy mushy!",
		CAVE_BANANA_TREE = "I had no idea you could grow all the way down here.",
		ROCKY = "They're pretty friendly!",

		COMPASS =
		{
			GENERIC="It'll help me find the north pole!",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "What a sharp fang!",
        ARMORSNURTLESHELL = "Now I can be the turtle!",
        BAT = "These bats are much more dangerous!",
        BATBAT = "This isn't what I had in mind when I said I needed a bat, haha!",
        BATWING = "How does bat taste?",
        BATWING_COOKED = "I'll give it a try!",
        BATCAVE = "Bats sleep there.",
        BEDROLL_FURRY = "Cozy! Almost feels like home.",
        BUNNYMAN = "Hi Mr. Bunny!",
        FLOWER_CAVE = "At least we have light down here!",
        GUANO = "Don't get too handsy with that!",
        LANTERN = "This'll be much more useful than a torch!",
        LIGHTBULB = "Wow, so bright!",
        MANRABBIT_TAIL = "I'll keep it as a memento.",
        MUSHROOMHAT = "Haha! I look so silly!",
        MUSHROOM_LIGHT2 =
        {
            ON = "Neat!",
            OFF = "I'm pretty we got one of these lying around the basement somewhere back home!",
            BURNT = "Darn.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "Neat!",
            OFF = "I've seen this design before! It's pretty retro!",
            BURNT = "Darn.",
        },
        SLEEPBOMB = "I call it the nap bomb. I might need one myself, haha!",
        MUSHROOMBOMB = "It's gonna blow!",
        SHROOM_SKIN = "It's all slick and bumpy!",
        TOADSTOOL_CAP =
        {
            EMPTY = "Helllooo? Echo, echo!",
            INGROUND = "Something's there!",
            GENERIC = "What kinda mushroom is that?",
        },
        TOADSTOOL =
        {
            GENERIC = "Looks like this is a job for Ness!",
            RAGE = "You're strong, I'll give you that! But so am I!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "You know, mushrooms are pretty great on pizza!",
            BURNT = "Wow, that smell is strong! Haha!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "Big and blue!",
            BLOOM = "It's in bloom!",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "Green is good!",
            BLOOM = "Smells like mushroom, all right!",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "Red equals dead!",
            BLOOM = "Look at the all the spores!",
        },
        MUSHTREE_TALL_WEBBED = "Guess the spiders own it now, hahaha!",
        SPORE_TALL =
        {
            GENERIC = "It's bright and blue!",
            HELD = "It tickles!",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "It makes me feel so calm.",
            HELD = "Keep still in there, hehehe!",
        },
        SPORE_SMALL =
        {
            GENERIC = "It feels so fuzzy!",
            HELD = "My pocket's glowing red now!",
        },
        RABBITHOUSE =
        {
            GENERIC = "Haha, I wonder who lives here!",
            BURNT = "Oops.",
        },
        SLURTLE = "You're pretty big for a snail!",
        SLURTLE_SHELLPIECES = "All that's left.",
        SLURTLEHAT = "I'm gonna need a shower after this!",
        SLURTLEHOLE = "Those turtle slug guys live here!",
        SLURTLESLIME = "It is indeed, very slimey!",
        SNURTLE = "You're pretty big for a snail!",
        SPIDER_HIDER = "This one has a real strong shell!",
        SPIDER_SPITTER = "Ow! I'll bash you for that!",
        SPIDERHOLE = "Property of spiders!",
        SPIDERHOLE_ROCK = "A home for spiders.",
        STALAGMITE = "Cave rocks!",
		STALAGMITE_FULL = "Is it stalagmite, or stalagtite?",
		STALAGMITE_LOW = "I feel like I learned about these in Earth science.",
		STALAGMITE_MED = "I wonder how they form!",
		STALAGMITE_TALL_FULL = "Echo... echo... echo!",
        STALAGMITE_TALL = "It's pretty big!",
		STALAGMITE_TALL_LOW = "It's not THAT massive!",
		STALAGMITE_TALL_MED = "This one's just right!",
        TURF_CARPETFLOOR = "Reminds me of home.",
        TURF_CHECKERFLOOR = "I've seen these around diners.",
		--No.
        TURF_DIRT = "Turf.",
        TURF_FOREST = "Turf.",
        TURF_GRASS = "Turf.",
        TURF_MARSH = "Turf.",
        TURF_METEOR = "It's otherworldly.",
        TURF_PEBBLEBEACH = "Turf.",
        TURF_ROAD = "All roads lead...",
        TURF_ROCKY = "Turf.",
        TURF_SAVANNA = "Turf.",
        TURF_WOODFLOOR = "Floorboards.",

		TURF_CAVE="Turf.",
		TURF_FUNGUS="Turf.",
		TURF_FUNGUS_MOON = "Turf.",
		TURF_ARCHIVE = "Turf.",
		TURF_SINKHOLE="Turf.",
		TURF_UNDERROCK="Turf.",
		TURF_MUD="Turf.",

		TURF_DECIDUOUS = "Turf.",
		TURF_SANDY = "Turf.",
		TURF_BADLANDS = "Turf.",
		TURF_DESERTDIRT = "Turf.",
		TURF_FUNGUS_GREEN = "Turf.",
		TURF_FUNGUS_RED = "Turf.",
		TURF_DRAGONFLY = "It's fireproof!",

        TURF_SHELLBEACH = "Turf.",

		TURF_RUINSBRICK = "Turfy!",
		TURF_RUINSBRICK_GLOW = "Turfy!",
		TURF_RUINSTILES = "Turfy!",
		TURF_RUINSTILES_GLOW = "Turfy!",
		TURF_RUINSTRIM = "Turfy!",
		TURF_RUINSTRIM_GLOW = "Turfy!",
 
        TURF_MONKEY_GROUND = "Turf.",
		
		TURF_CARPETFLOOR2 = "Turfy!",
        TURF_MOSAIC_GREY = "Turfy!",
        TURF_MOSAIC_RED = "Turfy!",
        TURF_MOSAIC_BLUE = "Turfy!",

		POWCAKE = "It's not that bad, you guys!",
        CAVE_ENTRANCE = "There's something beneath here!",										
        CAVE_ENTRANCE_RUINS = "There's something beneath here!",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "Maybe when I'm more prepared!",
            OPEN = "Adventure awaits!",
            FULL = "There's no room for Ness to get down!",
        },
        CAVE_EXIT =
        {
            GENERIC = "I've got more work to do down here!",
            OPEN = "To the surface! To sunlight!",
            FULL = "I can't get back up right now!",
        },

		MAXWELLPHONOGRAPH = "Ugh. Someone put on some rock music!",--single player
		BOOMERANG = "They're pretty cool!",
		PIGGUARD = "He's protecting something!",
		ABIGAIL =
		{
            LEVEL1 =
            {
                "Bows are cute!",
                "Bows are cute!",
            },
            LEVEL2 =
            {
                "Bows are cute!",
                "Bows are cute!",
            },
            LEVEL3 =
            {
                "Bows are cute!",
                "Bows are cute!",
            },
		},
		ADVENTURE_PORTAL = "Looks like I'm needed on the other side!",
		AMULET = "It's brimming with Lifeup!",
		ANIMAL_TRACK = "Something left these tracks!",
		ARMORGRASS = "I think a PSI should would be more effective... and comfortable, haha!",
		ARMORMARBLE = "I can barely move in it!",
		ARMORWOOD = "I'm pretty sure I've seen this in a cartoon once.",
		ARMOR_SANITY = "It's evil, but it'll protect you!",
		ASH =
		{
			GENERIC ="Nothing but ashes.",
			--You tried to use the teleportato / Maxwell's door with these in your inventory
			--AKA singleplayer stuff
			REMAINS_GLOMMERFLOWER = "The teleportation destroyed it!",
			REMAINS_EYE_BONE = "At least I'm okay, this time!",
			REMAINS_THINGIE = "The teleportation destroyed it!",
		},
		AXE = "I can gather wood now!",
		BABYBEEFALO =
		{
			GENERIC = "D'aw, aren't you adorable!",
		    SLEEPING = "Sleep tight!",
        },
        BUNDLE = "Don't worry, I made the knot nice and tight!",
        BUNDLEWRAP = "Combined with my bag, there's so much I can carry now!",
		BACKPACK = "I never leave home without it!",
		BACONEGGS = "I could never say no to such a meal!",
		BANDAGE = "It'll help with boo-boos!", --I think this is healing salve??
		BASALT = "That's too strong to break through!", --removed
		BEARDHAIR = "Bleck! It gets everywhere!",
		BEARGER = "Whoa, you're big! And hungry, haha!",
		BEARGERVEST = "It makes for such a cozy blanket!",
		ICEPACK = "Now I can bring a fresh lunch wherever I go!",
		BEARGER_FUR = "It's really soft!",
		BEDROLL_STRAW = "I could get some decent shut eye now!",
		BEEQUEEN = "Wow, you weren't kidding: that's a queen of bees, all right!",
		BEEQUEENHIVE =
		{
			GENERIC = "That's way too much honey, haha!",
			GROWING = "Huh? Where'd  you come from?",
		},
        BEEQUEENHIVEGROWN = "That's a massive beehive!",
        BEEGUARD = "Those guys look serious!",
        HIVEHAT = "Look at me, I'm royalty!",
        MINISIGN =
        {
            GENERIC = "I wrote a nice little mesage!",
            UNDRAWN = "What to write...",
        },
        MINISIGN_ITEM = "Signs make for decent blunt weapons, by the way!",
		BEE =
		{
			GENERIC = "A little honey-gatherer!",
			HELD = "I'm great with bugs, don't you worry!",
		},
		BEEBOX =
		{
			READY = "Mmmmmm, I can just taste that honey!",
			FULLHONEY = "Maybe just a little lick!",
			GENERIC = "What a nice home we built!",
			NOHONEY = "There's no honey to take.",
			SOMEHONEY = "Go bees go!",
			BURNT = "I'm sorry...",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "One mushroom pizza, coming up!",
			LOTS = "I could cook up something nice with all these mushrooms!",
			SOME = "Look at them grow!",
			EMPTY = "I need something to get them growing!",
			ROTTEN = "Hm. I don't think the log has any nutrients left to give!",
			BURNT = "Aw, what happened?",
			SNOWCOVERED = "It's too cold to grow anything.",
		},
		BEEFALO =
		{
			FOLLOWER = "It's like my pet!",
			GENERIC = "You remind of those buffalo in Dusty Dunes! Yeaah, they're weren't the nicest...",
			NAKED = "Sorry, haha! You look great still, promise!",
			SLEEPING = "Nighty night!",
            --Domesticated states:
            DOMESTICATED = "It's trained!",
            ORNERY = "Training must've been rough!",
            RIDER = "You're really fast!",
            PUDGY = "He's jolly. Just like me, haha!",
            MYPARTNER = "You remind me of King! Sorta.",
		},

		BEEFALOHAT = "It's got a... unique smell, haha!",
		BEEFALOWOOL = "It's thick and smelly.",
		BEEHAT = "I've always wondered what it's like being a beekeeper!",
        BEESWAX = "Bleh! It doesn't taste good.",
		BEEHIVE = "A honey vault!",
		BEEMINE = "This doesn't seem nice.",
		BEEMINE_MAXWELL = "Bottled mosquito rage!",--removed
		BERRIES = "Well, they smell okay! They can't possibly be harmful.",
		BERRIES_COOKED = "I just made them mushier, haha!",
        BERRIES_JUICY = "They're plump!",
        BERRIES_JUICY_COOKED = "Tasty!",
		BERRYBUSH =
		{
			BARREN = "It needs nutrients!",
			WITHERED = "It won't grow in this drought!",
			GENERIC = "Berries? I'm saved!",
			PICKED = "Come back soon!",
			DISEASED = "It looks pretty sick.",--removed
			DISEASING = "Err, something's not right.",--removed
			BURNING = "Fire! Someone do something!",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "It needs nutrients!",
			WITHERED = "Nothing's growing in the drought!",
			GENERIC = "One decent shake should knock a bunch of them down!",
			PICKED = "Grow back soon!",
			DISEASED = "It looks pretty sick.",--removed
			DISEASING = "Err, something's not right.",--removed
			BURNING = "Fire, fire! Someone help!",
		},
		BIGFOOT = "So you're the one responsible for Giant Step!",--removed
		BIRDCAGE =
		{
			GENERIC = "Open vacancy!",
			OCCUPIED = "I hope you enjoy your stay!",
			SLEEPING = "G'night!",
			HUNGRY = "Hungry?",
			STARVING = "Oh! I'll get you something to eat right away!",
			DEAD = "...I see why I wasn't allowed a goldfish now.",
			SKELETON = "I'm sorry little guy.",
		},
		BIRDTRAP = "Birds aren't harmed. But boy do they hate it!",
		CAVE_BANANA_BURNT = "Oops!",
		BIRD_EGG = "One scrambled egg coming up!",
		BIRD_EGG_COOKED = "Haha, I forgot to scramble it!",
		BISHOP = "Evil robot! I'll dismantle you!",
		BLOWDART_FIRE = "This should be useful!",
		BLOWDART_SLEEP = "I'll be careful!",
		BLOWDART_PIPE = "I've always wanted to try darts!",
		BLOWDART_YELLOW = "Ouch! It shocked me!",
		BLUEAMULET = "Now I can feel like I'm back in Winters whenever I want!",
		BLUEGEM = "It's cold to the touch!",
		BLUEPRINT =
		{
            COMMON = "I could study that!",
            RARE = "I could study that!",
        },
        SKETCH = "Seems sketchy. Hahaha!",
		COOKINGRECIPECARD = 
		{
			GENERIC = "Haha, even with pictures I don't get it!",
		},			  
		BLUE_CAP = "Smells fine...",
		BLUE_CAP_COOKED = "I made the smell worse! Oops!",
		BLUE_MUSHROOM =
		{
			GENERIC = "A blue mushroom!",
			INGROUND = "It's dug in good!",
			PICKED = "Maybe another will grow back!",
		},
		BOARDS = "I made them nice and flat!",
		BOAT = "To sea!",										 
		BONESHARD = "Remains.",
		BONESTEW = "Mmmmm, looks delicious!",
		BUGNET = "Call me the bug catcher!",
		BUSHHAT = "This'll be great for napping in private!",
		BUTTER = "Butter makes anything taste better! -Wait...!",
		BUTTERFLY =
		{
			GENERIC = "It's not magic, but it's still relaxing!",
			HELD = "I love your wings!",
		},
		BUTTERFLYMUFFIN = "Dersert? Don't mind if I do!",
		BUTTERFLYWINGS = "I'm gonna show them off!",
		BUZZARD = "Oh, hi! What're you doing here?",

		SHADOWDIGGER = "I knew something was up with that guy!",
		SHADOWDANCER = "Do me, do me! A waltz with your own shadow sounds fun!",													

		CACTUS =
		{
			GENERIC = "They really don't wanna be touched!",
			PICKED = "Owwww...",
		},
		CACTUS_MEAT_COOKED = "I think I got all of them!",
		CACTUS_MEAT = "I should remine the spines!",
		CACTUS_FLOWER = "I bet Paula would love it!",

		COLDFIRE =
		{
			EMBERS = "The's fire's almost gone!",
			GENERIC = "Brrr! Chilly!",
			HIGH = "Too cold!",
			LOW = "Chilly!",
			NORMAL = "Brrr! Chilly!",
			OUT = "There's no fire left.",
		},
		CAMPFIRE =
		{
			EMBERS = "The fire's almost gone!",
			GENERIC = "I'm all safe and warm now!",
			HIGH = "We should really contain that!!",
			LOW = "It keeps the dark away.",
			NORMAL = "I'm all safe and warm now!",
			OUT = "There's no fire left.",
		},
		CANE = "It's real useful for hikes!",
		CATCOON = "Hi little dude!",
		CATCOONDEN =
		{
			GENERIC = "It's something's den! I shouldn't mess with it, then.",
			EMPTY = "It looks abandoned.",
		},
		CATCOONHAT = "Much comfier than my winter hat back home!",
		COONTAIL = "Sorry, little dude.",
		CARROT = "It's how my eye sight is so good, haha!",
		CARROT_COOKED = "Roasted carrots are great!",
		CARROT_PLANTED = "It's a carrot!",
		CARROT_SEEDS = "It's a seed.", --Klei wants players to use the farm hat to research seeds
		CARTOGRAPHYDESK =
		{
			GENERIC = "I'm not the best artist, but I'll do my best!",
			BURNING = "We should be that out before it spreads!",
			BURNT = "Oops.",
		},
		WATERMELON_SEEDS = "It's a seed.",
		CAVE_FERN = "It's a fern.",
		CHARCOAL = "Barbeque time!",
        CHESSPIECE_PAWN = "I've haven't played much chess!",
        CHESSPIECE_ROOK =
        {
            GENERIC = "We could use a castle in these parts, haha!",
            STRUGGLE = "...Are you alive?",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "This is my favorite chess piece!",
            STRUGGLE = "...Are you alive?",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "Looks like a chess bishop!",
            STRUGGLE = "...Are you alive?",
        },
        CHESSPIECE_MUSE = "Haha! Don't lose your head!",
        CHESSPIECE_FORMAL = "It must be representing the disjointed nature of monarchy! Kidding, kidding, I have no idea what this is!",
        CHESSPIECE_HORNUCOPIA = "I could really go for a buffet right about now...",
        CHESSPIECE_PIPE = "Seems like something the mayor'd have!",
        CHESSPIECE_DEERCLOPS = "You were tough! But luckily, I'm the Chosen Boy!",
        CHESSPIECE_BEARGER = "It was a lot bigger up close.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "I can still hear you, you know!",
        },
        CHESSPIECE_DRAGONFLY = "She did NOT like me, haha!",
		CHESSPIECE_MINOTAUR = "Another Sanctuary Guardian down!",
        CHESSPIECE_BUTTERFLY = "So relaxing...",
        CHESSPIECE_ANCHOR = "Don't let it weight you down!",
        CHESSPIECE_MOON = "Pretty!",
        CHESSPIECE_CARRAT = "We have a winner!",
        CHESSPIECE_MALBATROSS = "I think I preferred the kraken, haha!",
        CHESSPIECE_CRABKING = "Okay, when I said we could use a castle, I did not mean you, haha!",
        CHESSPIECE_TOADSTOOL = "Tough frog! No match for me though!",
        CHESSPIECE_STALKER = "You were pure evil, haha!",
        CHESSPIECE_KLAUS = "You certainly had the holiday spirit, hahaha!",
        CHESSPIECE_BEEQUEEN = "She was loud. And angry!",
        CHESSPIECE_ANTLION = "Very bossy!",
        CHESSPIECE_BEEFALO = "How rugged!",
		CHESSPIECE_KITCOON = "Cute!",
		CHESSPIECE_CATCOON = "Hi!",
        CHESSPIECE_GUARDIANPHASE3 = "That thing had me worried for a second!",
        CHESSPIECE_EYEOFTERROR = "Creepy.",
        CHESSPIECE_TWINSOFTERROR = "They remind me of Octobots!",

        CHESSJUNK1 = "It's all broken up.",
        CHESSJUNK2 = "It's all broken up.",
        CHESSJUNK3 = "It's all broken up.",
		CHESTER = "How are you?",
		CHESTER_EYEBONE =
		{
			GENERIC = "Haha, don't look at me like that!",
			WAITING = "Wake up soon!",
		},
		COOKEDMANDRAKE = "Sorry, but I gotta eat!",
		COOKEDMEAT = "It's not the same as mom's...",
		COOKEDMONSTERMEAT = "This stuff is no good, I can sense it.",
		COOKEDSMALLMEAT = "It'll distract me, I guess...",
		COOKPOT =
		{
			COOKING_LONG = "I can't wait!",
			COOKING_SHORT = "Mmmm, smelling good!",
			DONE = "Finally!",
			EMPTY = "I wonder if I could cook something nice!",
			BURNT = "We're gonna have to cancel dinner plans.",
		},
		CORN = "It's a great side!",
		CORN_COOKED = "Popcorn!",
		CORN_SEEDS = "It's a seed.",
        CANARY =
		{
			GENERIC = "A canary!",
			HELD = "Hi!",
		},
        CANARY_POISONED = "Uhhh, are you okay?",

		CRITTERLAB = "I see you in there!",
        CRITTER_GLOMLING = "How about I call you Buzz Buzz 2?",
        CRITTER_DRAGONLING = "You're cute when you're not 20 feet tall and trying to burn me alive!",
		CRITTER_LAMB = "Watch where you sneeze!",
        CRITTER_PUPPY = "A puppy!",
        CRITTER_KITTEN = "A kitty!",
        CRITTER_PERDLING = "Come with me!",
		CRITTER_LUNARMOTHLING = "Still not magical, haha!",

		CROW =
		{
			GENERIC = "At least this one's not spiteful!",
			HELD = "I think he might be a little spiteful now!",
		},
		CUTGRASS = "Smells like grass!",
		CUTREEDS = "Reeds.",
		CUTSTONE = "I made them as square as I possibly could!",
		DEADLYFEAST = "Fool me twice...!", --unimplemented
		DEER =
		{
			GENERIC = "I wonder how they get around.",
			ANTLER = "Neat, their antlers came in!",
		},
        DEER_ANTLER = "Oops! You lost something, haha!",
        DEER_GEMMED = "Poor thing is being used against its will!",
		DEERCLOPS = "Hey! Don't think you can push me around!",
		DEERCLOPS_EYEBALL = "Hah! Bested you!",
		EYEBRELLAHAT =	"Wow, this is great for keeping me dry!",
		DEPLETED_GRASS =
		{
			GENERIC = "A grass tuft.",
		},
        GOGGLESHAT = "Ooh, ooh! We should try to find swim goggles!",
        DESERTHAT = "Anyone wanna test if they'll protect against PK Flash?",
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "What's this?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.", --singleplayer
			GENERIC = "It's some kind of homing device.", --singleplayer
			HOT = "This thing's going crazy!", --singleplayer
			WARM = "I'm headed in the right direction.", --singleplayer
			WARMER = "Getting close!", --singleplayer
		},
		DIVININGRODBASE =
		{
			GENERIC = "I bet Jeff'd know how it works!", --singleplayer
			READY = "It needs something!", --singleplayer
			UNLOCKED = "It's up and at em'!", --singleplayer
		},
		DIVININGRODSTART = "That rod looks useful!", --singleplayer
		DRAGONFLY = "She's very territorial!",
		ARMORDRAGONFLY = "This would have been useful in Fire Spring!",
		DRAGON_SCALES = "Wow, your scales are big!",
		DRAGONFLYCHEST = "It'll keep my things from burning up!",
		DRAGONFLYFURNACE =
		{
			HAMMERED = "I don't think it's supposed to look like that.",
			GENERIC = "Ahhhh, that feels great.", --no gems
			NORMAL = "Is it winking at me?", --one gem
			HIGH = "It's scalding!", --two gems
		},

        HUTCH = "Hi! Thanks for holding my stuff!",
        HUTCH_FISHBOWL =
        {
            GENERIC = "I was never allowed a goldfish, haha!",
            WAITING = "Yup. I think I see why I wasn't allowed to have a goldfish!",
        },
		LAVASPIT =
		{
			HOT = "Hot hot hot!",
			COOL = "Hey, that burned!",
		},
		LAVA_POND = "I can feel the heat from here!",
		LAVAE = "They're very protective of their mom!",
		LAVAE_COCOON = "It turned to stone!",
		LAVAE_PET =
		{
			STARVING = "I'll find you something to eat soon!",
			HUNGRY = "I think it's hungry!",
			CONTENT = "Awwww, it's happy!",
			GENERIC = "Hi little guy!",
		},
		LAVAE_EGG =
		{
			GENERIC = "She left an egg? What should I do?",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "It needs heat.",
			COMFY = "Much better!",
		},
		LAVAE_TOOTH = "Hey, it's your tooth!",

		DRAGONFRUIT = "I've heard of this fruit before!",
		DRAGONFRUIT_COOKED = "I wonder how it tastes.",
		DRAGONFRUIT_SEEDS = "It's a seed.",
		DRAGONPIE = "Smells delicious!",
		DRUMSTICK = "A leg of chicken.",
		DRUMSTICK_COOKED = "Don't mind if I do!",
		DUG_BERRYBUSH = "I should plant it somewhere.",
		DUG_BERRYBUSH_JUICY = "I should plant it somewhere.",
		DUG_GRASS = "I should plant it somewhere.",
		DUG_MARSH_BUSH = "I should plant it somewhere.",
		DUG_SAPLING = "I should plant it somewhere.",
		DURIAN = "It doesn't smell that bad!",
		DURIAN_COOKED = "Oh, JEEZ!",
		DURIAN_SEEDS = "It's a seed.",
		EARMUFFSHAT = "You don't want frostbite on the ears!",
		EGGPLANT = "I've never tried one! Wonder why they call it that.",
		EGGPLANT_COOKED = "Seems fine.",
		EGGPLANT_SEEDS = "It's a seed.",

		ENDTABLE =
		{
			BURNT = "Whoops!",
			GENERIC = "Decor just doesn't feel the same out here.",
			EMPTY = "An empty table.",
			WILTED = "Aw, the plant's not looking too great.",
			FRESHLIGHT = "Nice and bright!",
			OLDLIGHT = "Light's getting a bit dull.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "Hopefully it doesn't get out of hand!",
			BURNT = "It looks like me after a failed teleport attempt, haha!",
			CHOPPED = "	Wow, I chopped the whole thing up!",
			POISON = "Hopefully it doesn't explode when I defeat it!",
			GENERIC = "They're very pretty during Fall!",
		},
		ACORN = "It's how trees make more trees!",
        ACORN_SAPLING = "It's growing!",
		ACORN_COOKED = "Delicious and nutricious!",
		BIRCHNUTDRAKE = "Ah! It bites!",
		EVERGREEN =
		{
			BURNING = "Hopefully it doesn't get out of hand!",
			BURNT = "It looks like me after a failed teleport attempt, haha!",
			CHOPPED = "Wow, I chopped the whole thing down!",
			GENERIC = "It's nice being around nature, sometimes!",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Hopefully it doesn't get out of hand!",
			BURNT = "It looks like me after a failed teleport attempt, haha!",
			CHOPPED = "Wow, I chopped the whole thing down!",
			GENERIC = "It's nice being around nature, sometimes!",
		},
		TWIGGYTREE =
		{
			BURNING = "Hopefully it doesn't get out of hand!",
			BURNT = "It looks like me after a failed teleport attempt, haha!",
			CHOPPED = "Chopped up!",
			GENERIC = "It looks pretty frail!",
			DISEASED = "It looks sick. More so than usual.", --unimplemented
		},
		TWIGGY_NUT_SAPLING = "It'll grow up nice and strong!",
        TWIGGY_OLD = "Looks too weak to climb!",
		TWIGGY_NUT = "It'll grow into a tree if you plant it!",
		EYEPLANT = "There's more to it than what meets the eye.",
		INSPECTSELF = "I think I'm fine, haha!",
		FARMPLOT =
		{
			GENERIC = "For growing crops!",
			GROWING = "It'll grow into something delicious!",
			NEEDSFERTILIZER = "We're missing something!",
			BURNT = "My fooood!!",
		},
		FEATHERHAT = "They're kinda cool!",
		FEATHER_CROW = "It's black and silky.",
		FEATHER_ROBIN = "It's bright red.",
		FEATHER_ROBIN_WINTER = "So soft!",
		FEATHER_CANARY = "Yellow!",
		FEATHERPENCIL = "A fancy pencil! Now this rocks!",
        COOKBOOK = "Now I'll remember my recipes!",
		FEM_PUPPET = "She's trapped!", --single player
		FIREFLIES =
		{
			GENERIC = "Ooooh, I love fireflies!",
			HELD = "Hehehe, look at them glow!",
		},
		FIREHOUND = "He's got a fiery temper!",
		FIREPIT =
		{
			EMBERS = "The fire's gonna go out!",
			GENERIC = "It'll keep me safe from the night!",
			HIGH = "It's almost too hot to handle!",
			LOW = "It keeps the dark away.",
			NORMAL = "Ahhh, warm and cozy.",
			OUT = "Nothing but ashes!",
		},
		COLDFIREPIT =
		{
			EMBERS = "The fire's gonna go out!",
			GENERIC = "It'll keep me safe from the night!",
			HIGH = "It's so chilling!",
			LOW = "It keeps the dark away",
			NORMAL = "Ahhh, that feels nice with this heat.",
			OUT = "Nothing but ashes!",
		},
		FIRESTAFF = "I can use PK Fire now!",
		FIRESUPPRESSOR =
		{
			ON = "It's like a sprinkler but more awesome!",
			OFF = "It's off.",
			LOWFUEL = "We should refuel it!",
		},

		FISH = "I gotcha!",
		FISHINGROD = "I can go fishing now!",
		FISHSTICKS = "Fish sticks rock!",
		FISH_MED = "Fish outta water!",
		FISH_MED_COOKED = "Mmmm, bet you taste great!",
		FISHTACOS = "Yummy yum yum!",
		FISH3 = "Pretty!",		
		FISH3_COOKED = "Now, I eat!",							 
		FISH_COOKED = "I cooked it well, I think.",
		FLINT = "It's sharp!",
		FLOWER =
		{
            GENERIC = "They smell nice!",
            ROSE = "A love flower!",
        },
        FLOWER_WITHERED = "Aw, it's dead.",
		FLOWERHAT = "It makes my hair smell like flowers!",
		FLOWER_EVIL = "This isn't your normal flower...",
		FOLIAGE = "Plants.",
		FOOTBALLHAT = "Baseball is more my thing!",
        FOSSIL_PIECE = "It's like the bones at the musuem!",
        FOSSIL_STALKER =
        {
			GENERIC = "I'm making a dinosaur!",
			FUNNY = "That's not a dinosaur...",
			COMPLETE = "Still not a dinosaur, but it'll do, haha!",
        },
        STALKER = "It's evil, very evil!",
        STALKER_ATRIUM = "I've bested worst, and I'll best you! I am Ness, Chosen Boy!",
        STALKER_MINION = "I'll bash you!",
        THURIBLE = "Creepy!",
        ATRIUM_OVERGROWTH = "It reminds me of Scarbia!",
		FROG =
		{
			DEAD = "Sorry!",
			GENERIC = "Territorial toad!",
			SLEEPING = "Night night!",
		},
		FROGGLEBUNWICH = "Well, I'm always down to try new things!",
		FROGLEGS = "I got your legs!",
		FROGLEGS_COOKED = "Mmph. That's not bad, you know!",
		FRUITMEDLEY = "I made salad!",
		FURTUFT = "Bunches of fur!",
		GEARS = "Maybe I could build myself a robot body again!",
		GHOST = "I've fought ghosts before!",
		GHOST_SAILOR = "It must be lonely out at sea...",							  
		GOLDENAXE = "This axe is awesome!",
		GOLDENPICKAXE = "It's a super pickaxe!",
		GOLDENPITCHFORK = "Nice!",
		GOLDENSHOVEL = "I'll dig a nice pool!",
		GOLDNUGGET = "I've struck gold!",
		GRASS =
		{
			BARREN = "I gotta fertlize it!",
			WITHERED = "Nothing's gonna grow in this heat!",
			BURNING = "Ground fire, ground fire!",
			GENERIC = "Real tall grass. I could probably hide in it!",
			PICKED = "There's not that much grass now.",
			DISEASED = "It looks pretty sick.", --unimplemented
			DISEASING = "Err, something's not right.", --unimplemented
		},
		GRASSGEKKO =
		{
			GENERIC = "It's a grassy lizard!",
			DISEASED = "It looks really sick.", --unimplemented
		},
		GREEN_CAP = "A green cap!",
		GREEN_CAP_COOKED = "It relaxes me.",
		GREEN_MUSHROOM =
		{
			GENERIC = "Hi little mushroom!",
			INGROUND = "I can't pick it until it sprouts!",
			PICKED = "Just a hole now.",
		},
		GUNPOWDER = "It gets all over my hands, haha!",
		HAMBAT = "A meat bat? Genius!",
		HAMMER = "We smash things down to bring them back up!",
		HEALINGSALVE = "It stings just right!",
		HEATROCK =
		{
			FROZEN = "It's freezing!",
			COLD = "It's cold.",
			GENERIC = "It holds on to heats, I think!",
			WARM = "Getting warm.",
			HOT = "Careful, it's hot!",
		},
		HOME = "Who lives here?",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "Nothing's there.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "Nothing's there.",
			BURNT = "\"Don't play with matches.\"",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "Nothing's there.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Mmmmm, I love honey!",
		HONEYCOMB = "Cool!",
		HONEYHAM = "Ohhhh-ho-ho-hooooo, let's eat already!",
		HONEYNUGGETS = "I'm a happy boy with these!",
		HORN = "A beefalo horn.",
		HOUND = "Bad, bad dog! I'll bash you!",
		HOUNDCORPSE =
		{
			GENERIC = "Got it!",
			BURNING = "JEEZ.",
			REVIVING = "Zombie dogs? Oh no!",
		},
		HOUNDBONE = "Remains.",
		HOUNDMOUND = "Those hounds are protecting it!",
		ICEBOX = "Nice my meals stay fresh!",
		ICEHAT = "And Jeff says my ideas are dumb!",
		ICEHOUND = "His bite is icy!",
		INSANITYROCK =
		{
			ACTIVE = "It wants to reawaken my nightmare!",
			INACTIVE = "What's a speed bump doing out here?",
		},
		JAMMYPRESERVES = "My fingers are all sticky now!",

		KABOBS = "I love kabobs!",
		KILLERBEE =
		{
			GENERIC = "It's gonna sting me!",
			HELD = "Sorry, but I'll be holding to you for now!",
		},
		KNIGHT = "It's a robot and it doesn't like me. What's new?",
		KOALEFANT_SUMMER = "I found you!",
		KOALEFANT_WINTER = "I found you!",
		KRAMPUS = "I guess I've been bad.",
		KRAMPUS_SACK = "It's much larger than my backpack!",
		LEIF = "A moving tree?",
		LEIF_SPARSE = "A moving tree?",
		LIGHTER  = "Don't play with it!",
		LIGHTNING_ROD =
		{
			CHARGED = "It's charged up!",
			GENERIC = "This'll keep me safe during thunderstorms!",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "Wow, you're full of electricity!",
			CHARGED = "It looks mad.",
		},
		LIGHTNINGGOATHORN = "I can feel the static electricity.",
		GOATMILK = "Delicious!",
		LITTLE_WALRUS = "Your dad sures love to hunt!",
		LIVINGLOG = "It just mumbling gibberish in my head.",
		LOCKEDWES = "Someone really hates mimes, haha!,													 
		LOG =
		{
			BURNING = "Our supplies!",
			GENERIC = "I think with some practice, I could fashion a baseball bat out of you!",
		},
		LUCY = "That axe is alive!",
		LUREPLANT = "It traps living things.",
		LUREPLANTBULB = "Maybe I could use it?",
		MALE_PUPPET = "He's trapped!", --single player
		MANDRAKE = 
		{
			DEAD = "Is it edible?",
			GENERIC = "What is that thing?",
			PICKED = "Hahaha! You're very loud!",
		},
		MANDRAKE_ACTIVE = "Hahaha! You're very loud!",
		MANDRAKE_PLANTED = "What is that thing?",
		MANDRAKE = "Mmmm, maybe I can eat it.",

        MANDRAKESOUP = "I made a stew out of that weird plant guy!",
        MANDRAKE_COOKED = "Smells funny.",
        MAPSCROLL = "I could draw a map if I had a table!",
        MARBLE = "Rocks for fancy people.",
        MARBLEBEAN = "You can't grow marble! I think.",
        MARBLEBEAN_SAPLING = "I planted it.",
        MARBLESHRUB = "A marble tree!",
        MARBLEPILLAR = "It's made of solid marble.",
        MARBLETREE = "It's made of solid marble.",
        MARSH_BUSH =
        {
			BURNT = "It's less dangerous now.",
            BURNING = "That seems even more dangerous!!",
            GENERIC = "Careful, it's dangerous.",
            PICKED = "That hurt!",
        },
        BURNT_MARSH_BUSH = "It's no longer on fire!",
        MARSH_PLANT = "It's a plant.",
        MARSH_TREE =
        {
            BURNING = "It's on fire!",
            BURNT = "It's less dangerous now.",
            CHOPPED = "All chopped!",
            GENERIC = "Careful, it's dangerous.",
        },
        MAXWELL = "He must be working for a certain someone.",--single player
        MAXWELLHEAD = "You're not my first giant disembodied head!",--removed
        MAXWELLLIGHT = "It's fun messing with them!",--single player
        MAXWELLLOCK = "What's it holding?",--single player
        MAXWELLTHRONE = "Just what is this place?",--single player
        MEAT = "I shouldn't eat it raw!",
        MEATBALLS = "Some pasta would go great right about now",
        MEATRACK =
        {
            DONE = "It's ready!",
            DRYING = "It'll be ready soon enough.",
            DRYINGINRAIN = "I think the rain is making things harder, haha!",
            GENERIC = "I can dry stuff there!",
            BURNT = "It looks like me after a failed teleport attempt, haha!",
            DONE_NOTMEAT = "It's ready!",
            DRYING_NOTMEAT = "Just gotta wait for it to dry!",
            DRYINGINRAIN_NOTMEAT = "The rain is probably gonna make drying things harder, haha!",
        },
        MEAT_DRIED = "Beef jerky rocks!",
        MERM = "He doesn't like me.",
        MERMHEAD =
        {
            GENERIC = "Oh no.",
            BURNT = "Oh no!",
        },
        MERMHOUSE =
        {
            GENERIC = "Reminds me of the house I bought at Beak Point, haha!",
            BURNT = "Now it REALLY reminds me of it!",
        },
        MINERHAT = "Hands free light! What will they think of next...",
        MONKEY = "Do you know how to teleport?",
        MONKEYBARREL = "Those monkey guys live there!",
        MONSTERLASAGNA = "Now I know I say I'll eat anything, BUT...",
        FLOWERSALAD = "The flower makes it pretty!",
        ICECREAM = "You can never go wrong with ice cream!",
        WATERMELONICLE = "A sweet Summer treat!",
        TRAILMIX = "You'll want these for hikes!",
        HOTCHILI = "I love the way it burns!",
        GUACAMOLE = "Mmmm, guacamole!",
        MONSTERMEAT = "Is this stuff good to eat?",
        MONSTERMEAT_DRIED = "I don't like how it looks.",
        MOOSE = "Wow, you're big, haha!",
        MOOSE_NESTING_GROUND = "A big nest for a big bird!",
        MOOSEEGG = "Imagine the lifetime supply of scrambled eggs for this bad boy!",
        MOSSLING = "Hi!",
        FEATHERFAN = "It creates such a relaxing breeze!",
        MINIFAN = "I love playing with them!",
		TROPICALFAN = "It's really useful in this sort of weather!",
        GOOSE_FEATHER = "It tickles!",
        STAFF_TORNADO = "PK Cyclone!",
        MOSQUITO =
        {
            GENERIC = "It's hungry for blood!",
            HELD = "Mom says to not scratch the bumps you give me.",
        },
        MOSQUITOSACK = "Cool!",
        MOUND =
        {
            DUG = "...Sorry.",
            GENERIC = "Maybe there's a secret passage inside it!",
        },
        NIGHTLIGHT = "It's fueled by thoughts",
        NIGHTMAREFUEL = "It's the remains of my nightmare.",
        NIGHTSWORD = "I think I prefer my bat, haha!",
        NITRE = "Some weird rock.",
        ONEMANBAND = "Now this rocks!",
        OASISLAKE =
		{
			GENERIC = "Water, water!",
			EMPTY = "There's nothing there.",
		},
        PANDORASCHEST = "What's inside?",
        PANFLUTE = "I'll play a lullaby.",
        PAPYRUS = "Ancient paper!",
        WAXPAPER = "I made it waxy!",
        PENGUIN = "Oh, hello!",
        PERD = "It really likes berries, haha!",
        PEROGIES = "Don't mind if I do!",
        PETALS = "I used to love playing with petals!",
        PETALS_EVIL = "I probably should be playing with these.",
        PHLEGM = "Ew.",
        PICKAXE = "I can smash rocks now!",
        PIGGYBACK = "It's heavy, but much bigger than my backpack!",
        PIGHEAD =
        {
            GENERIC = "Oh my.",
            BURNT = "Oh my!",
        },
        PIGHOUSE =
        {
            FULL = "Anyone home?",
            GENERIC = "Someone lives here!",
            LIGHTSOUT = "Guess he doesn't wanna talk!",
            BURNT = "Maybe I could build him a new home!",
        },
        PIGKING = "Hi Mr. King!",
        PIGMAN =
        {
            DEAD = "He is very much dead.",
            FOLLOWER = "We're friends!",
            GENERIC = "Hello piggy!",
            GUARD = "He protects the king!",
            WEREPIG = "It's evil now!",
        },
        PIGSKIN = "What to do with this?",
        PIGTENT = "Smells like bacon.",
        PIGTORCH = "Those guards insist on keeping it lit!",
        PINECONE = "A pine tree seed!",
        PINECONE_SAPLING = "It'll grow into the perfect pine tree!",
        LUMPY_SAPLING = "It'll grow into the perfect pine tree!",
        PITCHFORK = "I've never actually seen one of these before, haha!",
        PLANTMEAT = "It tastes like meat!",
        PLANTMEAT_COOKED = "It tastes like meat!",
        PLANT_NORMAL =
        {
            GENERIC = "Cream of the crop!",
            GROWING = "It'll mature eventually!",
            READY = "Time to harvest!",
            WITHERED = "It's not gonna grow in this heat!",
        },
        POMEGRANATE = "Never forget to eat your frutis!",
        POMEGRANATE_COOKED = "I cooked it!",
        POMEGRANATE_SEEDS = "It's a seed.",
        POND = "A little dip sounds in the pond sounds great right about now!",
        POOP = "It smells!",
        FERTILIZER = "Plants love it!",
        PUMPKIN = "I wanna carve a face!",
        PUMPKINCOOKIE = "These rock!",
        PUMPKIN_COOKED = "Roasted pumpkin, don't mind if I do!",
        PUMPKIN_LANTERN = "Threed at last!",
        PUMPKIN_SEEDS = "It's a seed.",
        PURPLEAMULET = "Haha, you won't influence me!",
        PURPLEGEM = "There's a lot of evil inside.",
        RABBIT =
        {
            GENERIC = "It's a rabbit!",
            HELD = "Aw, don't be scared!",
        },
        RABBITHOLE =
        {
            GENERIC = "Rabbits live here!",
            SPRING = "Must be off on vacation.",
        },
        RAINOMETER =
        {
            GENERIC = "I'll know when it'll rain now!",
            BURNT = "It's not gonna be measuring anything now, haha!",
        },
        RAINCOAT = "It'll keep me dry!",
        RAINHAT = "I don't wanna get sick out here!",
        RATATOUILLE = "Veggies!",
        RAZOR = "I'll need it when I'm older!",
        REDGEM = "Pretty!",
        RED_CAP = "It's not ramblin', but I dunno about the evil part.",
        RED_CAP_COOKED = "Definitely not ramblin' now!",
        RED_MUSHROOM =
        {
            GENERIC = "Is it a Ramblin' Evil Mushroom?",
            INGROUND = "What's that?",
            PICKED = "Nothing there now.",
        },
        REEDS =
        {
            BURNING = "Fire, fire!",
            GENERIC = "Swampy reeds!",
            PICKED = "All the useful reeds have already been picked.",
        },
        RELIC = "Ancient remains!",
        RUINS_RUBBLE = "Rubble.",
        RUBBLE = "Rubble.",
        RESEARCHLAB =
        {
            GENERIC = "It teaches me things!",
            BURNT = "Someone failed a teleport, haha!",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "It's like Andonuts' lab all over again!",
            BURNT = "Oops.",
        },
		--Don't get confused this is actually the Shadow Manipulator
        RESEARCHLAB3 =
        {
            GENERIC = "It's doesn't feel right to use this.",
            BURNT = "Phew!",
        },
		--And THIS is the Prestihatitator
        RESEARCHLAB4 =
        {
            GENERIC = "Haha, what a funny name!",
            BURNT = "Someone failed a teleport, haha!",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "Haha, we have officially lost it with this!",
            BURNT = "Good riddance.",
        },
        RESURRECTIONSTONE = "It has Healing properties, I sense it!",
        ROBIN =
        {
            GENERIC = "A red bird!",
            HELD = "Hello!",
        },
        ROBIN_WINTER =
        {
            GENERIC = "Don't feel like flying south?",
            HELD = "I like your feathers!",
        },
        ROBOT_PUPPET = "They're trapped!", --single player
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",--removed
            OUT = "Looks fragile.",--removed
            LOW = "The lava's crusting over.",--removed
            NORMAL = "Nice and comfy.",--removed
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "It's a boulder!",
            RAISED = "I can't get to that rock.",
        },
        ROCK = "Now this boulder rocks, eheheh!",
        PETRIFIED_TREE = "Why isn't it a tree anymore?",
        ROCK_PETRIFIED_TREE = "Why isn't it a tree anymore?",
        ROCK_PETRIFIED_TREE_OLD = "It looks scared stiff.",
        ROCK_ICE =
        {
            GENERIC = "Don't stick your tongue to it!",
            MELTED = "It's a puddle.",
        },
        ROCK_ICE_MELTED = "It's a puddle.",
        ICE = "I just need a soda now!",
        ROCKS = "I could practice my pitching with these!",
        ROOK = "He looks angry!",
        ROPE = "I only know basic knots, haha!",
        ROTTENEGG = "This is egg is no good!",
        ROYAL_JELLY = "What makes it so royal?",
        JELLYBEAN = "It's no rockcandy, but I like it!",
        SADDLE_BASIC = "I wonder what I could ride with this!",
        SADDLE_RACE = "The wings add to the aerodynamics!",
        SADDLE_WAR = "Now I just need a ride!",
        SADDLEHORN = "It lets you remove saddles safely!",
        SALTLICK = "Mmmmm, salty!",
        BRUSH = "Hair care is a must!",
		SANITYROCK =
		{
			ACTIVE = "It seems to play with your mind. Hm.",
			INACTIVE = "It's not doing much.",
		},
		SAPLING =
		{
			BURNING = "Put it out, put it out!",
			WITHERED = "It won't be growing in the heat!",
			GENERIC = "It's just a bunch of twigs!",
			PICKED = "No twigs left!",
			DISEASED = "It looks pretty sick.", --removed
			DISEASING = "Err, something's not right.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "Reminds me of Threed!",
			BURNING = "Oh no, a fire!",
			BURNT = "Whoops, haha!",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "For sculpting!",
			BLOCK = "There's a pretty statue inside!",
			SCULPTURE = "Look at that!",
			BURNT = "Oops!",
   		},
        SCULPTURE_KNIGHTHEAD = "What do we have here?",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "What a funny statue!",
			UNCOVERED = "I don't get it.",
			FINISHED = "Ohhhhhh. I still don't get it.",
			READY = "Huh? It's... alive?",
		},
        SCULPTURE_BISHOPHEAD = "It looks like it's a part of something!",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "This statue is weird, haha!",
			UNCOVERED = "There! I don't get it.",
			FINISHED = "Um, still don't get it, heheh...",
			READY = "It's alive?",
		},
        SCULPTURE_ROOKNOSE = "What's this doing here?",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "It's some weird marble rock.",
			UNCOVERED = "Oh, it's not some marble rock, it's some marble jumk!",
			FINISHED = "Haha, that was dumb!",
			READY = "Oh. It's very much alive.",
		},
        GARGOYLE_HOUND = "Wow, look at its fangs!",
        GARGOYLE_WEREPIG = "Haha, who made this decoration...?",
		SEEDS = "It'll grow into something yummy!",
		SEEDS_COOKED = "I roasted them!",
		SEWING_KIT = "For fixing clothing!",
		SEWING_TAPE = "It'll fix everything but broken relationships!",
		SHOVEL = "For digging or beating up bad guys, haha!",
		SILK = "Silky!",
		SKELETON = "Haha, I'm gonna die out here!",
		SCORCHED_SKELETON = "Dying wasn't enough?",
		SKELETON_PLAYER = "I have a rockin' skeleton, haha!",
		SKULLCHEST = "I'm not sure if I want to open it.", --removed									
		SMALLBIRD =
		{
			GENERIC = "Haha, it's cute!",
			HUNGRY = "It needs food!",
			STARVING = "We gotta feed it!",
			SLEEPING = "Sleep tight!",
		},
		SMALLMEAT = "Tiny meat!",
		SMALLMEAT_DRIED = "It's a good snack, but a growing boy like me demands more!",
		SPAT = "What kinda sheep are you?",
		SPEAR = "The Romans used these in their sports instead of bats. What a fun time!",
		SPEAR_WATHGRITHR = "Don't run with it, now, haha!",
		WATHGRITHRHAT = "It's funny looking!",
		SPIDER =
		{
			DEAD = "Squashed!",
			GENERIC = "The spiders here are massive!",
			SLEEPING = "It's asleep!",
		},
		SPIDERDEN = "Spiders live there!",
		SPIDEREGGSACK = "Wow, awesome!",
		SPIDERGLAND = "I don't think it's venomous!",
		SPIDERHAT = "Now this, this is a little weird!",
		SPIDERQUEEN = "That's a rockin' spider!",
		SPIDER_WARRIOR =
		{
			DEAD = "Well fought!",
			GENERIC = "It's protective!",
			SLEEPING = "It's sleeping!",
		},
		SPOILED_FOOD = "What a waste...",
        STAGEHAND =
        {
			AWAKE = "I knew you were following me!",
			HIDING = "How'd this table get out here?",
        },
        STATUE_MARBLE =
        {
            GENERIC = "This statue is pretty rockin'!",
            TYPE1 = "No head, no cool!",
            TYPE2 = "What a statue!",
            TYPE3 = "A rockin' statue!", --bird bath type statue
        },
		STATUEHARP = "How about a statue of an electric guitar?",
		STATUEMAXWELL = "Haha, you're in for a world of pain one of these days!",
		STEAMEDHAMSANDWICH = "Mmmmmmm!",											 
		STEELWOOL = "It's very metalic.",
		STINGER = "A bee's stinger.",
		STRAWHAT = "I'd prefer a baseball cap!",
		STUFFEDEGGPLANT = "Yum!",
		SWEATERVEST = "Ready for school pictures!",
		REFLECTIVEVEST = "It reflects heat!",
		HAWAIIANSHIRT = "Summers, here I come!",
		TAFFY = "It gets stuck in my teeth!",
		TALLBIRD = "That's the biggest bird I've ever seen!",
		TALLBIRDEGG = "It's a big bird egg!",
		TALLBIRDEGG_COOKED = "It's gotta taste great!",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Should I sit on it?",
			GENERIC = "Better!",
			HOT = "It's got too much heat!",
			LONG = "It might take a while to hatch.",
			SHORT = "It's gotta hatch eventually, right?",
		},
		TALLBIRDNEST =
		{
			GENERIC = "Its egg!",
			PICKED = "Just a nest!",
		},
		TEENBIRD =
		{
			GENERIC = "It's almost an adult, like me!",
			HUNGRY = "It gets hungry a lot. It really is like me, haha!",
			STARVING = "Yep, hungry and angry, been there!",
			SLEEPING = "Nighty-night!",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "Are you sure I don't need a robot body this time?", --single player
			GENERIC = "It uses the same technology as the Phase Distorter!", --single player
			LOCKED = "Were the Mr. Saturn here?", --single player
			PARTIAL = "It's missing something! I don't think I'll find any meteros out there, though...", --single player
		},
		TELEPORTATO_BOX = "Phase Distorter parts!", --single player
		TELEPORTATO_CRANK = "A crank, for cranking, of course!", --single player
		TELEPORTATO_POTATO = "Whoever came with this must be a real genius!", --single player
		TELEPORTATO_RING = "A part of the Phase Distorter!", --single player
		TELESTAFF = "It'll do until I learn Teleport again!",
		TENT =
		{
			GENERIC = "It's not the coziest, but it's shelter!",
			BURNT = "I won't be sleeping in it now!",
		},
		SIESTAHUT =
		{
			GENERIC = "I could use some down time!",
			BURNT = "The ashes help with relaxation, right?",
		},
		TENTACLE = "I knew something was up with this swamp!",
		TENTACLESPIKE = "The spikes give it character!",
		TENTACLESPOTS = "Weird.",
		TENTACLE_PILLAR = "I very much prefer Deep Darkness.",
        TENTACLE_PILLAR_HOLE = "Well, there's only one way to find out what's at the bottom!",
		TENTACLE_PILLAR_ARM = "I'll bash you!",
		TENTACLE_GARDEN = "I'll bash you!",
		TOPHAT = "It's not my baseball cap, but nice!",
		TORCH = "I can see in the dark now!",
		TRANSISTOR = "It's some electrical parts!",
		TRAP = "We made these in Kindergarten! I caught my very own Leprechaun!",
		TRAP_TEETH = "It'll help against monsters!",
		TRAP_TEETH_MAXWELL = "Careful, Ness!", --single player
		TREASURECHEST =
		{
			GENERIC = "I'll keep whatever I can't fit in my backpack there!",
			BURNT = "That's not good.",
		},
		TREASURECHEST_TRAP = "I wonder what's inside?",
		SACRED_CHEST =
		{
			GENERIC = "It wants an offering!",
			LOCKED = "So? What do you think?",
		},
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.", --removed

		TRINKET_1 = "Someone was playing with fire!", --Melted Marbles
		TRINKET_2 = "Awwww, it doesn't work...", --Fake Kazoo
		TRINKET_3 = "I'll untie it!", --Gord's Knot
		TRINKET_4 = "Protector of gardens!", --Gnome
		TRINKET_5 = "I'll need it to defeat the Starman fleet!", --Toy Rocketship
		TRINKET_6 = "Electrical junk.", --Frazzled Wires
		TRINKET_7 = "I loved this game growing up!", --Ball and Cup
		TRINKET_8 = "I used to drive mom crazy when I little, playing with this during bath time, haha!", --Rubber Bung
		TRINKET_9 = "The mismatched buttons add character!", --Mismatched Buttons
		TRINKET_10 = "You shouldn't play with them, who knows whose mouth they'be been in!", --Dentures
		TRINKET_11 = "This robot is programmed to lie, so you just gotta not ask for the truth!", --Lying Robot
		TRINKET_12 = "That's just asking to be experimented on.", --Dessicated Tentacle
		TRINKET_13 = "Protector of gardens!", --Gnomette
		TRINKET_14 = "It's chipped!", --Leaky Teacup
		TRINKET_15 = "I'd love to try chess!", --Pawn
		TRINKET_16 = "I'd love to try chess!", --Pawn
		TRINKET_17 = "I'll bend it back in shape with my mind!", --Bent Spork
		TRINKET_18 = "There's always more than what meets the eye!", --Trojan Horse
		TRINKET_19 = "Awww, it's all wonky!", --Unbalanced Top
		TRINKET_20 = "It'll make for a decent bat!", --Backscratcher
		TRINKET_21 = "It's not the best whacking tool, but I can work with it!", --Egg Beater
		TRINKET_22 = "Kitties and boys named Ness love it!", --Frayed Yarn
		TRINKET_23 = "Neat.", --Shoehorn
		TRINKET_24 = "I've seen some buffets with this!", --Lucky Cat Jar
		TRINKET_25 = "Old car smell.", --Air Unfreshener
		TRINKET_26 = "This. Rock! What will the world think of next?", --Potato Cup
		TRINKET_27 = "For hanging my coats!", --Coat Hanger
		TRINKET_28 = "The best chess piece!", --Rook
        TRINKET_29 = "The besy chess piece!", --Rook
        TRINKET_30 = "Yeehaw!", --Knight
        TRINKET_31 = "Yeehaw!", --Knight
        TRINKET_32 = "Trinkety.", --Cubic Zirconia Ball
        TRINKET_33 = "I love these rings!", --Spider Ring
        TRINKET_34 = "It's brings fortune, I hear!", --Monkey Paw
        TRINKET_35 = "An empty bottle.", --Empty Elixir
        TRINKET_36 = "I'll bite ya!", --Faux fangs
        TRINKET_37 = "Mosnsters of Threed, watch out!", --Broken Stake
        TRINKET_38 = "Now I can see super far!", -- Binoculars Griftlands trinket
        TRINKET_39 = "It's a style thing I hear.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "Haha! I like it.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "This rocks!", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "I had a toy like this! It was my favorite!", -- Toy Cobra Hot Lava trinket
        TRINKET_43 = "Ah, memories!", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "What kinda junk?", -- Broken Terrarium ONI trinket
        TRINKET_45 = "Hello? I think it's getting a signal, I just can't make out anything!", -- Odd Radio ONI trinket
        TRINKET_46 = "It's a hairdryer!", -- Hairdryer ONI trinket

        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_2  = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_7  = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_10 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_11 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_14 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_18 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_19 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_42 = "I'm sure there's a perfectly scientific explanation for that.",
        LOST_TOY_43 = "I'm sure there's a perfectly scientific explanation for that.",

        HALLOWEENCANDY_1 = "Moms appreciate it!", --Candy Apple
        HALLOWEENCANDY_2 = "I can eat them!", --Candy Corn
        HALLOWEENCANDY_3 = "Hey, that's not candy!", --Not-So-Candy Corn
        HALLOWEENCANDY_4 = "Yum!", --Gummy Spider
        HALLOWEENCANDY_5 = "I'll take some!", --Catcoon Candy
        HALLOWEENCANDY_6 = "Hahaha! You almost got me there!", --Not Raisins
        HALLOWEENCANDY_7 = "Oh, come on, this doesn't count as candy!", --Raisins
        HALLOWEENCANDY_8 = "They're fun to suck on!", --Ghost Pop
        HALLOWEENCANDY_9 = "I'll eat it!", --Jelly Worm
        HALLOWEENCANDY_10 = "I'll give it a lick!", --Tentacle Lolli
        HALLOWEENCANDY_11 = "Mmmm, chocolate...", --Choco Pigs
        HALLOWEENCANDY_12 = "What kinda candy is this?", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Ouch, they don't call them jaw breakers for nothing, haha!", --Griftlands themed candy
        HALLOWEENCANDY_14 = "Don't mind if I do!", --Hot Lava pepper candy
        CANDYBAG = "There's bound to be some goodies inside!",

		HALLOWEEN_ORNAMENT_1 = "OoOooO, ghostly!", --Ghost 
		HALLOWEEN_ORNAMENT_2 = "He's sizing up the situation.", --Bat
		HALLOWEEN_ORNAMENT_3 = "Creepy crawly decor!", --Spider
		HALLOWEEN_ORNAMENT_4 = "Spooky!", --Tentacle
		HALLOWEEN_ORNAMENT_5 = "Creepy crawlies to get into the spirit of things!", --Depth Dweller
		HALLOWEEN_ORNAMENT_6 = "A spite crow decoration!", --Crow

		HALLOWEENPOTION_DRINKS_WEAK = "It's not very strong.",
		HALLOWEENPOTION_DRINKS_POTENT = "Yeesh, that's a strong potion, haha!",
        HALLOWEENPOTION_BRAVERY = "I don't so homesick now!",
		HALLOWEENPOTION_MOON = "I'll be a werewolf!",
		HALLOWEENPOTION_FIRE_FX = "PK Fire in a bottle!",
		MADSCIENCE_LAB = "Where's Dr. Andonuts when you need him?",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.",
		LIVINGTREE_SAPLING = "It screams in the wind!",
		--SKIP
        DRAGONHEADHAT = "So who gets to be the head?",
        DRAGONBODYHAT = "I'm middling on this middle piece.",
        DRAGONTAILHAT = "Someone has to bring up the rear.",
        PERDSHRINE =
        {
            GENERIC = "I feel like it wants something.",
            EMPTY = "I've got to plant something there.",
            BURNT = "That won't do at all.",
        },
        REDLANTERN = "This lantern feels more special than the others.",
        LUCKY_GOLDNUGGET = "What a lucky find!",
        FIRECRACKERS = "Filled with explosion science!",
        PERDFAN = "It's inordinately large.",
        REDPOUCH = "Is there something inside?",
        WARGSHRINE =
        {
            GENERIC = "I should make something fun.",
            EMPTY = "I need to put a torch in it.",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "It burned down.",
        },
        CLAYWARG =
        {
        	GENERIC = "A terror cotta monster!",
        	STATUE = "Did it just move?",
        },
        CLAYHOUND =
        {
        	GENERIC = "It's been unleashed!",
        	STATUE = "It looks so real.",
        },
        HOUNDWHISTLE = "This'd stop a dog in its tracks.",
        CHESSPIECE_CLAYHOUND = "That thing's the leashed of my worries.",
        CHESSPIECE_CLAYWARG = "And I didn't even get eaten!",

		PIGSHRINE =
		{
            GENERIC = "More stuff to make.",
            EMPTY = "It's hungry for meat.",
            BURNT = "Burnt out.",
		},
		PIG_TOKEN = "This looks important.",
		PIG_COIN = "This'll pay off in a fight.",
		YOTP_FOOD1 = "A feast fit for me.",
		YOTP_FOOD2 = "A meal only a beast would love.",
		YOTP_FOOD3 = "Nothing fancy.",

		PIGELITE1 = "What are you looking at?", --BLUE
		PIGELITE2 = "He's got gold fever!", --RED
		PIGELITE3 = "Here's mud in your eye!", --WHITE
		PIGELITE4 = "Wouldn't you rather hit someone else?", --GREEN

		PIGELITEFIGHTER1 = "What are you looking at?", --BLUE
		PIGELITEFIGHTER2 = "He's got gold fever!", --RED
		PIGELITEFIGHTER3 = "Here's mud in your eye!", --WHITE
		PIGELITEFIGHTER4 = "Wouldn't you rather hit someone else?", --GREEN

		CARRAT_GHOSTRACER = "That's... disconcerting.",

        YOTC_CARRAT_RACE_START = "It's a good enough place to start.",
        YOTC_CARRAT_RACE_CHECKPOINT = "You've made your point.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "It's really more of a finish circle than a line.",
            BURNT = "It's all gone up in flames!",
            I_WON = "Ha HA! Science prevails!",
            SOMEONE_ELSE_WON = "Sigh... congratulations, {winner}.",
        },

		YOTC_CARRAT_RACE_START_ITEM = "Well, it's a start.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "That checks out.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "The end's in sight.",

		YOTC_SEEDPACKET = "Looks pretty seedy, if you ask me.",
		YOTC_SEEDPACKET_RARE = "Hey there, fancy-plants!",

		MINIBOATLANTERN = "How illuminating!",

        YOTC_CARRATSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Hm... what does a carrat like to eat?",
            BURNT = "Smells like roasted carrots.",
        },

        YOTC_CARRAT_GYM_DIRECTION =
        {
            GENERIC = "This'll get things moving in the right direction.",
            RAT = "You would make an excellent lab rat.",
            BURNT = "My training regimen crashed and burned.",
        },
        YOTC_CARRAT_GYM_SPEED =
        {
            GENERIC = "I need to get my carrat up to speed.",
            RAT = "Faster... faster!",
            BURNT = "I may have overdone it.",
        },
        YOTC_CARRAT_GYM_REACTION =
        {
            GENERIC = "Let's train those carrat-like reflexes!",
            RAT = "The subject's response time is steadily improving!",
            BURNT = "A small loss to take in the pursuit of science.",
        },
        YOTC_CARRAT_GYM_STAMINA =
        {
            GENERIC = "Getting strong now!",
            RAT = "This carrat... will be unstoppable!!",
            BURNT = "You can't stop progress! But this will delay it...",
        },

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "I'd better get training!",
        YOTC_CARRAT_GYM_SPEED_ITEM = "I'd better get this assembled.",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "This should help improve my carrat's stamina",
        YOTC_CARRAT_GYM_REACTION_ITEM = "This should improve my carrat's reaction time considerably.",

        YOTC_CARRAT_SCALE_ITEM = "This will help car-rate my car-rat.",
        YOTC_CARRAT_SCALE =
        {
            GENERIC = "Hopefully the scales tip in my favor.",
            CARRAT = "I suppose no matter what, it's still just a sentient vegetable.",
            CARRAT_GOOD = "This carrat looks ripe for racing!",
            BURNT = "What a mess.",
        },

        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Hm... what makes a beefalo?",
            BURNT = "Smells like barbeque.",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "There's no beefalo here to groom.",
            OCCUPIED = "Let's beautify this beefalo!",
            BURNT = "I styled my beefalo in the hottest fashions... and paid the price.",
        },
        BEEFALO_GROOMER_ITEM = "I'd better set this up somewhere.",
		--Back to regularly scheduled dialogue
		BISHOP_CHARGE_HIT = "Ha ha-ow!!",
		TRUNKVEST_SUMMER = "It'll help keep me warm!",
		TRUNKVEST_WINTER = "I won't freeze out here now!",
		TRUNK_COOKED = "Steak...!",
		TRUNK_SUMMER = "Got your nose!",
		TRUNK_WINTER = "Got your nose!",
		TUMBLEWEED = "Not a care in the world!",
		TURKEYDINNER = "Ah-ha-ha, stop teasing me and let's eat!",
		TWIGS = "I'm a twig collector!",
		UMBRELLA = "I'll stay nice and dry now!",
		GRASS_UMBRELLA = "It's not the perfect umbrella, but I tried!",
		PALMLEAF_UMBRELLA = "It keeps me KINDA dry...!",
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.",
		WAFFLES = "Yummy!",
		WALL_HAY =
		{
			GENERIC = "It's technically a wall!",
			BURNT = "Whoops!",
		},
		WALL_HAY_ITEM = "Hey, at least you can't say I didn't try, haha!",
		WALL_STONE = "Walls of Babylon, arise!",
		WALL_STONE_ITEM = "Keeps me and the bad guys separated!",
		WALL_RUINS = "Who knows how long these walls have been around!",
		WALL_RUINS_ITEM = "I can build my ancient walls!",
		WALL_WOOD =
		{
			GENERIC = "That'll keep intruders out!",
			BURNT = "Well.",
		},
		WALL_WOOD_ITEM = "Now to place them!",
		WALL_MOONROCK = "Reminds me of Stonehege Base!",
		WALL_MOONROCK_ITEM = "Alien walls!",
		FENCE = "A fence!",
        FENCE_ITEM = "Now to place it!",
        FENCE_GATE = "A fence needs a gate!",
        FENCE_GATE_ITEM = "All we need to build a nice, sturdy gate.",
		WALRUS = "I think he's hunting me, haha!",
		WALRUSHAT = "It's not for me to be honest!",
		WALRUS_CAMP =
		{
			EMPTY = "Something or someone was here!",
			GENERIC = "A house for hunters!",
		},
		WALRUS_TUSK = "Now who's the hunted?",
		WARDROBE =
		{
			GENERIC = "For holding clothes.",
            BURNING = "We should contain that!",
			BURNT = "It's not doing much now, heheh...",
		},
		WARG = "He's very mean!",
        WARGLET = "It's small, but just as mean!",

		WASPHIVE = "Killer bees? I probably don't wanna get stung!",
		WATERBALLOON = "Now I just need a catapult!",
		WATERMELON = "Sweet and sticky!",
		WATERMELON_COOKED = "I just made it stickier, haha",
		WATERMELONHAT = "I've always wanted to try this!",
		WAXWELLJOURNAL = "That book is no good.",
		WETGOOP = "That is not food!",
        WHIP = "Let me, eheh, 'whip' you into shape, eheheh.",
		WINTERHAT = "Keeps the brain warm!",
		WINTEROMETER =
		{
			GENERIC = "It measures the temperature!",
			BURNT = "Oops.",
		},

        WINTER_TREE =
        {
            BURNT = "It's okay, the holidays are what you make of them!",
            BURNING = "Uh oh.",
            CANDECORATE = "Decorating the tree is my favorite part!",
            YOUNG = "Seen it'll be big enough to decorate!",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "Now for a tree to plant!",
            BURNT = "Awww.",
		},
        WINTER_ORNAMENT = "I'll put it on the tree!",
        WINTER_ORNAMENTLIGHT = "It'll make things festive!",
        WINTER_ORNAMENTBOSS = "It's beautiful",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",

        WINTER_FOOD1 = "I always feel bad eating them, haha!", --gingerbread cookie
        WINTER_FOOD2 = "Mmmmmm!", --sugar cookie
        WINTER_FOOD3 = "They look so fancy!", --candy cane
        WINTER_FOOD4 = "Haha, what is wrong people?", --fruitcake
        WINTER_FOOD5 = "Thankfully my metabolism is great, ahahaha!", --yule log cake
        WINTER_FOOD6 = "I'll take twelve!", --plum pudding
        WINTER_FOOD7 = "Mmmmmmhmhmmmm, you're spoiling me now!", --apple cider
        WINTER_FOOD8 = "Hot cocoa, hot cocoa! I want it!", --hot cocoa
        WINTER_FOOD9 = "Don't mind if I do!", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "Now we can make proper meals!",
			COOKING = "Now we wait!",
			ALMOST_DONE_COOKING = "Mmmmmmm...!",
			DISH_READY = "It's ready!",
		},
		BERRYSAUCE = "Looks great!",
		BIBINGKA = "It's fun to poke!",
		CABBAGEROLLS = "Delicous and nutricious!",
		FESTIVEFISH = "I'll have some!",
		GRAVY = "Gravy goes with everything!",
		LATKES = "I'll eat anything!",
		LUTEFISK = "Looks yummy!",
		MULLEDDRINK = "I'll help myself to some punch!",
		PANETTONE = "Some yummy bread!",
		PAVLOVA = "Whatever it is, I want it!",
		PICKLEDHERRING = "I'm gonna gain so much weight...",
		POLISHCOOKIE = "Cookies!!",
		PUMPKINPIE = "Haha, I can't wait to stuff my face!",
		ROASTTURKEY = "Ugh, I could just east the whole thing!",
		STUFFING = "Gimmie gimmie!",
		SWEETPOTATO = "I love eating...",
		TAMALES = "I can't stop, I can't stop drooling, aha, ahaha!",
		TOURTIERE = "Mmmmm...",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "A buffet table. Haha!",
			HAS_FOOD = "Looks... so good...!",
			WRONG_TYPE = "The holidays are over. I could just cry. Cry!",
			BURNT = "Aw....",
		},

		GINGERBREADWARG = "Forget bashing, I'm just gonna eat ya, haha!",
		GINGERBREADHOUSE = "What a nice house!",
		GINGERBREADPIG = "Hm? What do you want?",
		CRUMBS = "Crumbs?",
		WINTERSFEASTFUEL = "The spirit of the season!",

        KLAUS = "I'll show you my holiday spirit!",
        KLAUS_SACK = "What's inside?",
		KLAUSSACKKEY = "Now I can open the sack!",
		WORMHOLE =
		{
			GENERIC = "Weird!",
			OPEN = "Only one way to find out what awaits me!",
		},
		WORMHOLE_LIMITED = "Super weird!",
		ACCOMPLISHMENT_SHRINE = "I don't gloat often, BUT...", --single player
		LIVINGTREE = "Haha, that tree is not your typical one!",
		ICESTAFF = "It harnesses the power of PK Freeze!",
		REVIVER = "It'll bring another back.",
		SHADOWHEART = "Wow!",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "They look so sad...",
			LINE_2 = "...",
			LINE_3 = "Something evil happened here...",
			LINE_4 = "It must've been 'him.'",
			LINE_5 = "It's a city..",
		},
        ATRIUM_STATUE = "It's a part of this world and not a part of it.",
        ATRIUM_LIGHT =
        {
			ON = "It's powered by an evil energy...",
			OFF = "It's off.",
		},
        ATRIUM_GATE =
        {
			ON = "It's active!",
			OFF = "I don't know if it works.",
			CHARGING = "I... did something?",
			DESTABILIZING = "It's not stable!",
			COOLDOWN = "Well that was fun! H-ha... ha...",
        },
        ATRIUM_KEY = "It looks important!",
		LIFEINJECTOR = "It'll make you feel much better!",
		SKELETON_PLAYER =
		{
			MALE = "That look like it hurt, %s!",
			FEMALE = "That look like it hurt, %s!",
			ROBOT = "That look like it hurt, %s!",
			DEFAULT = "That look like it hurt, %s!",
		},
		HUMANMEAT = "Oh.",
		HUMANMEAT_COOKED = "Oh no.",
		HUMANMEAT_DRIED = "Look, I said I'd eat anything, but come on!",
		ROCK_MOON = "It's otherworldy!",
		MOONROCKNUGGET = "It's otherworldy!",
		MOONROCKCRATER = "It's got a little socket!",
		MOONROCKSEED = "What do we have?",

        REDMOONEYE = "I can sense where it is at all times!",
        PURPLEMOONEYE = "I sense it and it senses me!",
        GREENMOONEYE = "I can sense where it is at all times!",
        ORANGEMOONEYE = "I sense it and it senses me!",
        YELLOWMOONEYE = "I can sense where it is at all times!",
        BLUEMOONEYE = "I can sense where it is at all times!",

		FLOTSAM = "I betcha it's hiding all sorts of secrets!",
		
		SUNKEN_BOAT = 
		{
			GENERIC = "Someone had a bit of a wreck!",
			ABANDONDED = "Polly's not home!",
		},
		SUNKEN_BOAT_BURNT = "How do you light a boat on fire underwater??",
   		SUNKEN_BOAT_TRINKET_1 = "Math's never been my specialty haha!", --sextant
		SUNKEN_BOAT_TRINKET_2 = "Fun at the beach!", --toy boat
		SUNKEN_BOAT_TRINKET_3 = "There's no wax left!", --candle
		SUNKEN_BOAT_TRINKET_4 = "Cool!", --sea worther
		SUNKEN_BOAT_TRINKET_5 = "Someone's missing this!", --boot
		
		--- CAPY DLC ------------------------------------------------------------------------------------------------
		
		--STUFFEDEGGPLANT = "I'll be stuffed after eating this!",
		SUNKBOAT = "Sheesh, I oughta be careful!",
		--BANANAPOP = "No, not brain freeze! I need that for science!",
		--BISQUE = "Cooking that sure kept me bisque-y!",
		--CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.",
		--SEAFOODGUMBO = "It's a jumbo seafood gumbo.",
		--SURFNTURF = "It's perf!",
		SHARKFINSOUP = "It's a delicacy in Summers!",
		--LOBSTERDINNER = "If I eat it in the morning is it still dinner?",
		--LOBSTERBISQUE = "Could use more salt, but that's none of my bisque-ness.",
		JELLYOPOP = "So yummmy!",
		--SWEATERVEST = "This vest is dapper as all get-out.",
		--REFLECTIVEVEST = "Keep off, evil sun!",
		--HAWAIIANSHIRT = "It's not lab safe!",
		--TAFFY = "My dentist'd get mad if I ate this... but I don't have one.",

		ANTIVENOM = "It's a shame my PSI Healing doesn't seem to work...",
		VENOMGLAND = "It could be useful, in a pinch.",
		BLOWDART_POISON = "Poisoning isn't nice, but when it comes to self-defense!",
		OBSIDIANMACHETE = "The obisdian makes it super strong!.",
		SPEARGUN_POISON = "I'm like a scorpion with it!",
		OBSIDIANSPEARGUN = "It's like one of Jeff's gadgets!",
		LUGGAGECHEST = "Dad uses it all the time.",
		PIRATIHATITATOR =
		{
			GENERIC = "The pirate hat is necessary, yes.",
			BURNT = "Oops.",
		},
		COFFEEBEANS = "Mmmmm, smells like home!",
		COFFEE = "I love coffee!",
		COFFEEBEANS_COOKED = "Nice and roasted!",
		COFFEEBUSH =
		{
			BARREN = "It needs nutrients!",
			WITHERED = "Too hot? I agree, haha!",
			GENERIC = "Coffee!",
			PICKED = "Nature takes time!",
		},
		COFFEEBOT = "I could start my own cafe, you know!",
		MUSSEL = "Tasty.",
		MUSSEL_FARM =
		{
			 GENERIC = "Clams!",
			 STICKPLANTED = "Hopefully I catch something!"
		},

		MUSSEL_STICK = "I made specially for clam fishing!",
		LOBSTER = "You make for fancy dinners!",
		LOBSTERHOLE = "There's lobsters down there!",
		SEATRAP = "Hopefully I catch something!",
		SAND_CASTLE =
		{
			SAND = "Me and Tracy always make the best sand castles!",
			GENERIC = "Me and Tracy always make the best sand castles!"
		},
		BOATREPAIRKIT = "I could fix my boat with this!",

		BALLPHIN = "Hi!",
		BOATCANNON = "It's the real deal!",
		BOTTLELANTERN = "Cool...",
		BURIEDTREASURE = "Let's hope there's a juicy burger inside!",
		BUSH_VINE =
		{
			BURNING = "Uh oh!",
			BURNT = "Whoops!",
			CHOPPED = "I got all the vines I can muster!",
			GENERIC = "I could use vines for... something!",
		},
		CAPTAINHAT = "Time for me to find a kraken!",
		COCONADE =
		{
			BURNING = "Take cover!",
			GENERIC = "Andonuts is the munitions expert!",
		},
		CORAL = "This is pretty cool!",
		CORALREEF = "Whoa.",
		CRABHOLE = "Come on out, little guy!",
		CUTLASS = "I think I'd make a pretty rockin' pirate!",
		DUBLOON = "Pirate money!",
		FABRIC = "It'll be useful for patching up my clothes!",
		FISHINHOLE = "Fish seem to gather here!",
		GOLDENMACHETE = "I'll cut through Deep Darkness no problem!",
		JELLYFISH = "I uh. Heard of what to do if you get stung. I think it'd be best if we just avoid that altogether!",
		JELLYFISH_DEAD = "Aw...",
		JELLYFISH_COOKED = "I think it's edible...",
		JELLYFISH_PLANTED = "Um. Yeah.",
		JELLYJERKY = "It can't be that bad!",

		LIMPETROCK =
		{
			GENERIC = "I found Escargo Express HQ, hahahaha!",
			PICKED = "This boulder rocks!",
		},
		LOGRAFT = "I think it'll hold my weight!",
		MACHETE = "It'll be useful inside the jungle!",
		MESSAGEBOTTLEEMPTY = "I just need a tiny ship!",
		MOSQUITO_POISON = "Mosquitos carry disease!",
		OBSIDIANCOCONADE = "It's much more powerful than the bombs Jeff used!",
		OBSIDIANFIREPIT =
		{
			EMBERS = "From embers to ash...",
			GENERIC = "It gives off plenty of heat.",
			HIGH = "The fires of Fire Spring!!",
			LOW = "Even low it's so hot!",
			NORMAL = "It gives off plenty of heat!",
			OUT = "All ashes now!",
		},
		OX = "Hi big guy!",
		PIRATEHAT = "Haha, I look so goofy!",
		RAFT = "Hopefully it holds up in open sea!.",
		ROWBOAT = "I think I can get somewhere in this!",
		SAIL = "Sailing can't be too hard!",
		SANDBAG_ITEM = "They keep the water out!",
		SANDBAG = "They keep the water out!",
		SEASACK = "Salt is a great preservative!",
		SEASHELL_BEACHED = "It's good luck!",
		SEAWEED = "It's real yucky in my hair!",

		SEAWEED_PLANTED = "Look at it grow!",
		SLOTMACHINE = "I think I prefer the Sanchez brothers.",
		SNAKE_POISON = "Looks dangerous!",
		SNAKESKIN = "It's a fashion statement... somewhere.",
		SNAKESKINHAT = "The skin is actually waterproof!",
		SOLOFISH = "Haha, what a funny fish!",
		SPEARGUN = "It's little too on the dangerous side for me!",
		--SPOILED_FISH = "I'm not terribly curious about the smell.",
		SWORDFISH = "It's an angry fish! I'll tame it!",
		TRIDENT = "Haha, I'm like a god of the sea!",
		--TRINKET_13 = "What is this substance?",
		--TRINKET_14 = "This thing gives me the creeps...",
		--TRINKET_15 = "Incredible! This guitar has undergone shrinkification!",
		--TRINKET_16 = "How did this get all the way out here?",
		--TRINKET_17 = "Where's the other one?",
		--TRINKET_18 = "A relic of a bygone era!",
		--TRINKET_19 = "Clouding of the brain. Never heard of it...",
		TURBINE_BLADES = "So that's what was causing all that mess!",
		TURF_BEACH = "Sandy.",
		TURF_JUNGLE = "Some ground.",
		VOLCANO_ALTAR =
		{
			GENERIC = "Looks like it's happy!",
			OPEN = "Should I give it something?",
		},
		VOLCANO_ALTAR_BROKEN = "I don't think I did that!",
		WHALE_BLUE = "A blue whale? Haha!",
		WHALE_CARCASS_BLUE = "Sorry.",
		WHALE_CARCASS_WHITE = "Sorry.",

		ARMOR_SNAKESKIN = "It'll keep me dry when the weather gets rough!",
		CLOTHSAIL = "It'll make travel much much better!",
		DUG_COFFEEBUSH = "You're coming with me!",
		LAVAPOOL = "Hot! Hot lava!",
		BAMBOO = "Bamboo is pretty awesome!",
		AERODYNAMICHAT = "Reminds me of the Sharks!",
		POISONHOLE = "That's bad gas. The uh, real bad kind, haha!",
		BOAT_LANTERN = "It'll help me find my way in the dark!",
		DEAD_SWORDFISH = "Phew, I won!",
		LIMPETS = "They're not that bad, you know!",
		OBSIDIANAXE = "It's real good at chopping!",
		COCONUT = 
		{
		    GENERIC = "It's too heavy for baseball!",
		    PLANTED = "I planted it.",
		},
		COCONUT_COOKED = "Mmmm!",
		BERMUDATRIANGLE = "Huh.",
		SNAKE = "I've bashed plenty of mean snakes in my days, you know!",
		SNAKEOIL = "I thought this stuff was a myth!",
		ARMORSEASHELL = "It's not sturdy, but it should protect my organs a little bit, haha!",
		SNAKE_FIRE = "Is that snake smoldering?", --idk if this is implemented
		MUSSEL_COOKED = "I think it's cooked!",

		PACKIM_FISHBONE = "Smells... less than pleasant...",
		PACKIM = "Thanks for holding my stuff!",

		ARMORLIMESTONE = "It's not TOO heavy!",
		TIGERSHARK = "Don't make me bash you!",
		WOODLEGS_KEY1 = "A key!",
		WOODLEGS_KEY2 = "Maybe it'll unlock something good!",
		WOODLEGS_KEY3 = "I got a key!",
		WOODLEGS_CAGE = "I'll free you!",
		OBSIDIAN_WORKBENCH = "Hmmm, what to make?",

		NEEDLESPEAR = "Haha, watch where you poke that thing!",
		LIMESTONE = "Limestone!",
		DRAGOON = "Someone's got a fiery temper!",

		ICEMAKER = 
		{
			OUT = "It needs fuel!",
			VERYLOW = "It needs fuel!",
			LOW = "Power's getting low.",
			NORMAL = "My very own ice machine!",
			HIGH = "Ready to rock!",
		},

		DUG_BAMBOOTREE = "Let's find you a new home!",
		BAMBOOTREE =
		{
			BURNING = "It's a fire! A fire!",
			BURNT = "Oops.",
			CHOPPED = "All chopped up!",
			GENERIC = "Real bamboo!",
		},
		JUNGLETREE =
		{
			BURNING = "It's all burning!",
			BURNT = "Sigh...",
			CHOPPED = "I chopped it!",
			GENERIC = "It's got nothing on Deep Darkness!",
		},
		SHARK_GILLS = "Fish gills?",
		TREEGUARD = "A moving palm tree?",
		OBSIDIAN = "Cooled lava.",
		BABYOX = "Aren't you just precious!",
		STUNGRAY = "YEESH, that smell!",
		SHARK_FIN = "I dunno what I'm doing with it, but I have it!",
		FROG_POISON = "I should be careful with these frogs.",
		ARMOUREDBOAT = "SS Ness, ready to sail!",
		ARMOROBSIDIAN = "It's a little heavy... and hot!",
		BIOLUMINESCENCE = "Reminds me of Lumine Hall...",
		SPEAR_POISON = "I gave it an extra kick!",
		SPEAR_OBSIDIAN = "Obsidian is much more sturdy than flint!",
		SNAKEDEN =
		{
			BURNING = "Uh oh!",
			BURNT = "Whoops!",
			CHOPPED = "I got all the vines I can muster!",
			GENERIC = "I could use vines for... something!",
		},
		TOUCAN = "What vibrant colors!",
		--MESSAGEBOTTLE = "Maybe it's a treasure map!",
		SAND = "I got sand!",
		SANDHILL = "Piles and piles of sand!",
		PEACOCK = "Peacocks are so pretty!",
		VINE = "It might have SOME use!",
		SUPERTELESCOPE = "I can see for miles and miles!",
		SEAGULL = "They're almost as spiteful as crows!",
		SEAGULL_WATER = "They're almost as spiteful as crows!",
		PARROT = "Big fan of your feathers, little guy!",
		ARMOR_LIFEJACKET = "Safety first!",
		WHALE_BUBBLES = "What's with the bubbles?",
		EARRING = "It's missing an ear!",
		ARMOR_WINDBREAKER = "No PK Hurricane can stop me now!",
		SEAWEED_COOKED = "It's fine, I guess!",
		CARGOBOAT = "I can carry so much with it!",
		GASHAT = "I'll need if I go anywhere really dangerous!",
		ELEPHANTCACTUS = "A territorial cactus!",
		DUG_ELEPHANTCACTUS = "You think it'll make for good defenses?",
		ELEPHANTCACTUS_ACTIVE = "It's armed!!",
		ELEPHANTCACTUS_STUMP = "Will it grow back?",
		FEATHERSAIL = "Light as a feather, free as a bird!",
		WALL_LIMESTONE_ITEM = "I should place these.",
		JUNGLETREESEED =
        {
            GENERIC = "A jungle seed!",
            PLANTED = "It's just a baby.",
        },
		VOLCANO = "It's just like Fire Spring!",
		IRONWIND = "I can make a proper speed boat, haha!",
		SEAWEED_DRIED = "Dried kelp.",
		TELESCOPE = "I can found my way now!",
		
		DOYDOY = "This really is the Lost Underworld!",
		DOYDOYBABY = "Adorable.",
		DOYDOYEGG = "There's life inside!",
		DOYDOYEGG_CRACKED = "That's not good.",
		DOYDOYFEATHER = "What pretty colors!",

		PALMTREE =
		{
			BURNING = "Oh no!",
			BURNT = "Awww...",
			CHOPPED = "I chopped it!",
			GENERIC = "It's very fitting for a paradise.",
		},
		PALMLEAF = "What massive leaves!",
		CHIMINEA = "How tropical.",
		DOUBLE_UMBRELLAHAT = "Nice, it keeps my head dry and my hands free!",
		CRAB = 
		{
			GENERIC = "It's a tinee crab!",
			HIDDEN = "Sorry I scared ya, haha!",
		},
		TRAWLNET = "Looks like its time to sea fish!",
		TRAWLNETDROPPED = 
		{
			SOON = "Oh no, it's sinking!",
			SOONISH = "I better empty it fast!",
			GENERIC = "Take a gander at my catches!",
		},
		VOLCANO_EXIT = "That's the way back down!",
		SHARX = "You don't scare me!",
		SEASHELL = "Sea shells!",
		WHALE_BUBBLES = "What's with the bubbles?",
		MAGMAROCK = "Pretty rockin,' haha!",
		MAGMAROCK_GOLD = "Rockin' pretty, haha!",
		CORAL_BRAIN_ROCK = "It makes my brain pulse all funny, hehe!",
		CORAL_BRAIN = "I feel your power!",
		SHARKITTEN = "D'awww!",
		SHARKITTENSPAWNER = 
		{
			GENERIC = "I guess those kittens live here!",
			INACTIVE = "Anyone home?",
		},
		LIVINGJUNGLETREE = "That's not your average tree!",
		WALLYINTRO_DEBRIS = "I really need someone to stop me and my dumb ideas, haha!",
		MERMFISHER = "They're not too fond of humans!",
        PRIMEAPE = "Do you know how to teleport?",
        PRIMEAPEBARREL = "Much less confusing than Monkey Cave!",
        REDBARREL = "If only Jeff were here!",
        PORTAL_SHIPWRECKED = "Seems like it doesn't do anythign.",
		MARSH_PLANT_TROPICAL = "Swampy!",
		TELEPORTATO_SW_POTATO = "It's a fake potato.",
		PIKE_SKULL = "Oh.",
		PALMLEAF_HUT = "Perfect.",
		FISH_RAW_SMALL_COOKED = "This'll never fill a growing boy like me, haha!",
		LOBSTER_DEAD = "I hear it tastes great!",
		MERMHOUSE_FISHER = "Someone really oughta clean this place up!",
		WILDBORE = "You're all muddy!",
		PIRATEPACK = "It prints money!",
		TUNACAN = "I don't mind tuna!",
		MOSQUITOSACK_YELLOW = "It smells less than pleasant.",
		SANDBAGSMALL = "Now I can keep the water out!",
		FLUP = "Nice ambush!",
		OCTOPUSKING = "I think it wants something!",
		OCTOPUSCHEST = "No need to thank me!",
		GRASS_WATER = "Some sea grass!",
		WILDBOREHOUSE = "I like your home!",
		FISH_RAW_SMALL = "It's so tiny!",
		TURF_SWAMP = "Turf.",
		FLAMEGEYSER = "Mother Nature is scary!.",
		KNIGHTBOAT = "I'll bash you!",
		MANGROVETREE_BURNT = "Oh.",
		TIDAL_PLANT = "Sea plants.",
		WALL_LIMESTONE = "Now I'm sorta... safe!",
		FISH_RAW = "Tasty fish.",
		LOBSTER_DEAD_COOKED = "I'm ready to eat!",
		BLUBBERSUIT = "Haha, that's silly!",
		BLOWDART_FLUP = "Hey, you dropped something!",
		TURF_MEADOW = "Turf.",
		TURF_VOLCANO = "Turf.",
		SWEET_POTATO = "I love sweet potato!",
		SWEET_POTATO_COOKED = "This place is gonna fatten me up, haha!",
		SWEET_POTATO_PLANTED = "Is that a sweet potato?",
		SWEET_POTATO_SEEDS = "Sweet potato seeds!",
		BLUBBER = "It's all... weird!",
		TELEPORTATO_SW_RING = "A part of the Phase Distorter!",
		TELEPORTATO_SW_BOX = "It's some sort of Phase Distorter part!",
		TELEPORTATO_SW_CRANK = "A crank for cranking, of course!",
		TELEPORTATO_SW_BASE = "It's the Phase Distorter!",
		VOLCANOSTAFF = "I really shouldn't have this sort of power, haha!",
		THATCHPACK = "My backpack is better!",
		TURF_DESERTDIRT = "Turf.",
		SHARK_TEETHHAT = "I wore something like it in Newport!", --Only novel reference I swear
 		TURF_ASH = "Ashy!",
		TURF_FUNGUS_GREEN = "Mushroom turf!",
		BOAT_TORCH = "Sailing in the dark would be pretty dangerous without it!",
		MANGROVETREE = "They seem to only grow in the water!",
		HAIL_ICE = "Hail?",
		TROPICAL_FISH = "Pretty.",
		TIDALPOOL = "So many fish!",
		WHALE_WHITE = "I found you!",
		VOLCANO_SHRUB = "Some plants prefer this atmosphere!",
		ROCK_OBSIDIAN = "I don't even think my PSI could break it!",
		ROCK_CHARCOAL = "It's massive!",
		DRAGOONDEN = "Those dragon guys live there!",
		WILBUR_UNLOCK = "Haha, a monkey king?",
		WILBUR_CROWN = "It's definitely not meant for my head!",
		TWISTER = "Take cover... and hold onto something!",
		TWISTER_SEAL = "Haha, you're a menace!",
		MAGIC_SEAL = "I can feel the magic!",
		SAIL_STICK = "It has the power to change the winds!",
		WIND_CONCH = "You can hear the ocean inside it!",
		DRAGOONEGG = "Haha, you nearly crushed me!",
		BUOY = "Look at it float!", 
		TURF_SNAKESKINFLOOR = "Turf.",
        DOYDOYNEST = "A prehistoric home!",
		ARMORCACTUS = "Become the catcus!",
		BIGFISHINGROD = "I don't think I've ever been sea fishing!",
		BRAINJELLYHAT = "It might make my PSI a little TOO potent!",
		COCONUT_HALVED = "It cracked under the pressure!",
		CRATE = "Someone's missing some supplies!",
		DEPLETED_BAMBOOTREE = "All gone!",
		DEPLETED_BUSH_VINE = "All gone!",
		DEPLETED_GRASS_WATER = "All gone!",
		DOYDOYEGG_COOKED = "Sorry but I gotta eat!",
		DRAGOONHEART = "Who knows what I'm doing with it, haha!",
		DRAGOONSPIT = "Someone's angry!",
		DUG_BUSH_VINE = "I'll find it a nice home!",
		--FRESHFRUITCREPES = "Sugary fruit! Part of a balanced breakfast.",
		KRAKEN = "You're uh. Much bigger than the last Kraken I beat. Haha!",
		KRAKENCHEST = "Nothing's no match for me!",
		KRAKEN_TENTACLE = "Show no fear!",
		MAGMAROCK_FULL = "Pretty rockin', haha!",
		MAGMAROCK_GOLD_FULL = "Rockin' pretty, haha!",
		MONKEYBALL = "Wee, haha!",
		--MONSTERTARTARE = "There's got to be something else to eat around here.",
		MUSSELBOUILLABAISE = "Mmmm, I'll never say no to a good meal!",
		MYSTERYMEAT = "Is it safe?",
		OXHAT = "I became the ox!",
		OX_FLUTE = "I invoke the power of Mother Nature!",
		OX_HORN = "I like it!",
		PARROT_PIRATE = "Haha, you're rude!",
		PEG_LEG = "Mmmmm. Not a bad baseball bat, actually!",
		PIRATEGHOST = "It must be lonely out here.",
		SANDBAGSMALL_ITEM = "Now I can separate me from the rain!",
		SHADOWSKITTISH_WATER = "That's big trouble.",
		SHIPWRECKED_ENTRANCE = "I can't say no!",
		SHIPWRECKED_EXIT = "I've had enough paradise.",
		SNAKESKINSAIL = "Snake skin is pretty useful, it turns out, haha!",
		SPEAR_LAUNCHER = "Seems like something Jeff would use!",
		SWEETPOTATOSOUFFLE = "It's not bad!",
		SWIMMINGHORROR = "Eek!",
		TIGEREYE = "Got your eye!",
		--TRINKET_20 = "I'm not sure what it is, but it makes me feel smarter!",
		--TRINKET_21 = "I ought to measure it to ensure it's to scale.",
		--TRINKET_22 = "I'm sure someone would like this.",
		TURF_FUNGUS_RED = "Fungal flooring!",
		TURF_MAGMAFIELD = "Huh.",
		TURF_TIDALMARSH = "Soggy turf.",
		VOLCANO_ALTAR_TOWER = "Who built this?",
		WATERYGRAVE = "It must be awful to die out here...",
		WHALE_TRACK = "You can't hide forever down there!",
		WILDBOREHEAD = "Oh my.",
		WOODLEGSBOAT = "What a nice ship!",
		WOODLEGSHAT = "Do I look the part?",
		WOODLEGSSAIL = "It's all in the sail!",
		WRECK = "I really gotta be careful out here.",
		INVENTORYGRAVE = "Huh?",
        INVENTORYMOUND = "Huh?",
		LIMPETS_COOKED = "Don't knock it until you try it.",
		RAWLING = "Haha! What a good friend.",
		--CALIFORNIAROLL = "But I don't have chopsticks.",



	--- 5C DLC ------------------------------------------------------------------------------------------------

        ENCRUSTEDBOAT = "I'm not a physics guy, so I'm not gonna question it!",
        BABYOX = "Aren't you precious!",
        BALLPHINHOUSE = "Majestic!",
        DORSALFIN = "Oops!",
        NUBBIN = "The start of something magical!",
        CORALLARVE = "Baby coral.",
        RAINBOWJELLYFISH = "So vibrant!",
        RAINBOWJELLYFISH_PLANTED = "Don't ask.",
        RAINBOWJELLYFISH_DEAD = "Poor thing.",
        RAINBOWJELLYFISH_COOKED = "It can't be that bad.",
        RAINBOWJELLYJERKY = "Hmmmm, I'm sure it's edible!",
        WALL_ENFORCEDLIMESTONE = "I made it sturdy!",
        WALL_ENFORCEDLIMESTONE_ITEM = "I made it sturdy!",
        CROCODOG = "Well aren't you angry!",
        POISONCROCODOG = "It's not just its personality that's poisonous!",
        WATERCROCODOG = "I'm gonna bash you!",
        QUACKENBEAK = "Haha, take that!",
        QUACKERINGRAM = "Ramming speeeeeed!!",
    
    --- DLC ------------------------------------------------------------------------------------------------    

        CAVIAR = "It's not so bad!",
        CORMORANT = "Hiya!",

        --FISH3 = "Surf and turf, hold the turf.",
        FISH4 = "Fish are so pretty!", --Pierrot Fish
        FISH5 = "Fish are so pretty!", --Neon Quattro

        FISH3_COOKED = "Time to eat!",
        FISH4_COOKED = "Time to eat!",
        FISH5_COOKED = "Time to eat!",

        FISH_FARM = 
        {
        	EMPTY = "Hmmm, I'm gonna need some eggs!",
			STOCKED = "Now we wait!",
			ONEFISH = "The fish are here!",
			TWOFISH = "Look at all of them!",
			REDFISH = "My very own fish farm!",
			BLUEFISH  = "My ver own fish farm!",
        },

        ROE = "Fish eggs.",
        ROE_COOKED = "It's not very filling.",
        
        SEA_YARD =
       	{
            ON = "I can repair my boat!",
            OFF = "Needs fuel!",
            LOWFUEL = "Power's running out!",
        },

        SEA_CHIMINEA = 
        {
            EMBERS = "It won't be much longer!",
			GENERIC = "Ahhh, that feels nice.",
			HIGH = "So much fire!",
			LOW = "Maybe a little fuel wouldn't hurt!",
			NORMAL = "Ahhh, that feels nice.",
			OUT = "No fire left!",
        }, 

        TAR = "It's super sticky, haha!",
        TAR_EXTRACTOR =
        {
            ON = "Extracting tar!",
            OFF = "Out of fuel!",
            LOWFUEL = "It's running out of fuel!",
        },
        TAR_POOL = "Hmmmm, what's this stuff?",

        TARLAMP = "Now I can light my way!",
        TARSUIT = "I'm all bouncy wearing it, haha!",
        TAR_TRAP = "One of my more genius ideas! I think.",

        TROPICALBOUILLABAISSE = "Yummy soup!",

        RESEARCHLAB5 = "This is more Jeff's forte.",
        WATERCHEST = "I'll be needing it!",

		--PORKLAND SPEECH STARTS HERE

		PIG_PALACE = "Abode a la royalty!",
		PIGMAN_QUEEN = "Your majesty, ahaha!",
        PIG_SCEPTER = "People can know you're in charge when you bop them on the head with it!",
        PIGCROWNHAT = "I've never been the royal type!",
		PIGMAN_BEAUTICIAN = 
		{
			GENERIC = "A beautician, huh?",
			SLEEPING = "They're asleep!",
		},
		PIGMAN_ROYALGUARD = 
		{
			GENERIC = "Protect and serve!",
			SLEEPING = "Even the law needs rest!",
		},
		PIGMAN_COLLECTOR = 
		{
			GENERIC = "Hi!",
			SLEEPING = "Good night!",
		},
		PIGMAN_MAYOR = 
		{
			GENERIC = "Anything I can do to help?",
			SLEEPING = "They're asleep!",
		},
		PIGMAN_BANKER = 
		{
			GENERIC = "It's a shame there's no ATMs out here!",
			SLEEPING = "Someone's sleepy, haha!",
		},
		PIGMAN_MINER = 
		{
			GENERIC = "How's your day, Mr. Miner?",
			SLEEPING = "Good night!",
		},
		PIGMAN_MECHANIC = 
		{
			GENERIC = "Hiya!",
			SLEEPING = "Rest well!",
		},
		PIGMAN_FARMER = 
		{
			GENERIC = "Another great day, right?",
			SLEEPING = "Haha, get some sleep!",
		},
		PIGMAN_FLORIST = 
		{
			GENERIC = "How's your day?",
			SLEEPING = "They're alseep!",
		},
		PIGMAN_STOREOWNER = 
		{
			GENERIC = "Selling anything good?",
			SLEEPING = "Someone's sleepy, haha!",
		},
		PIGMAN_ERUDITE = 
		{
			GENERIC = "Ah, the ocult? I understand you!",
			SLEEPING = "Good night!",
		},
		PIGMAN_HATMAKER = 
		{
			GENERIC = "I wonder if she can sow me a baseball cap!",
			SLEEPING = "Sleep well!",
		},
		PIGMAN_PROFESSOR = 
		{
			GENERIC = "Huh? You want me to collect artifacts?",
			SLEEPING = "They're asleep!",
		},
		PIGMAN_HUNTER =
		{
			GENERIC = "A weapons expert!",
			SLEEPING = "Rest easy!",
		},
		RECONSTRUCTION_PROJECT = 
		{
			SCAFFOLD = "It'll be good as new soon enough!",
			RUBBLE = "We can rebuild... right?",
		},
		PIG_SHOP_FLORIST = 
		{
			GENERIC = "It smells lovely!",
			BURNING = "Nobody panic!",
		},
        PIG_SHOP_GENERAL = 
        {
        	GENERIC = "All things general go here!",
        	BURNING = "Uh oh. Uh oh!",
		},
        PIG_SHOP_HOOFSPA = 
        {
        	GENERIC = "It might be nice to relax!",
        	BURNING = "Uh oh. Uh oh!",
		},
        PIG_SHOP_PRODUCE = 
        {
        	GENERIC = "Fresh produce whenever needed!",
        	BURNING = "A fire, a fire!!",
		},
        PIG_SHOP_ARCANE = 
        {
        	GENERIC = "I wonder if I could get something to help with my PSI!",
        	BURNING = "Nobody panic!",
        },
        PIG_SHOP_WEAPONS = 
        {
        	GENERIC = "My bat should be enough for me!",
        	BURNING = "Oh no, someone do something!",
        },
        PIG_SHOP_HATSHOP = 
        {
        	GENERIC = "All sorts of hats, and no baseball caps??",
        	BURNING = "Nobody panic!",
        },
        PIG_SHOP_ACADEMY = 
        {
        	GENERIC = "They're studying archaeology!",
        	BURNING = "Oh my!",
        },
        TREE_PILLAR = "What a tree!",
        PIGHOUSE_CITY = 
        {
        	GENERIC = "What a nice home!",
        	BURNING = "I gotta do something!",
		},
        PIGHOUSE_FARM = 
        {
        	GENERIC = "Farming seems tough!",
        	BURNING = "Uh oh. Uh oh!",
		},
		PIGHOUSE_MINE = 
        {
        	GENERIC = "They're looking for diamonds!",
        	BURNING = "A fire, a fire!!",
		},
        PIG_GUARD_TOWER = 
        {
        	GENERIC = "Even guards need a home!",   
        	BURNING = "That's probably not good!",
		},     
        CITY_LAMP = 
        {
        	GENERIC = "It really is a proper city!",
        	ON = "It really is a proper city!", --off
    	},
        DUNGBEETLE = 
        {
        	GENERIC = "Haha, it loves dung!",
        	UNDUNGED = "Where's your dung, hm?",
        	SLEEPING = "Sleep well!",
        	DEAD = "Poor thing.",
        },
        DUNGBALL = "Ew!",
        DUNGPILE = 
		{
			GENERIC = "Its smell rivals Master Belch...",
			PICKED = "I'll never be clean.",
		},
        PIGEON = 
        {
        	GENERIC = "Hello pigeon!",
        	SLEEPING = "It's asleep!",
        	DEAD = "Poor thing.",
        },
        SPIDER_MONKEY = 
        {
        	GENERIC = "Okay, now that's something!",
        	SLEEPING = "No need to wake up, haha!",
        	DEAD = "I feel kinda bad.",
        },

        SPIDER_MONKEY_TREE = "I think webbing that big is just a human trap!",
        SPIDER_MONKEY_NEST = "Home to some rather... large... spiders!",
        TOPIARY = "Looks nice.",
        LAWNORNAMENT = 
        {
        	GENERIC = "We could use some lawn decor back home!",
        	BURNING = "Oops!",
        	BURNT = "Oops...",
        },
        HEDGE = 
        {
        	GENERIC = "We were never fancy enough to have hedges!",
        	SHAVEABLE = "Someone needs a trimming!",
        	BURNING = "A fire!",
        	BURNT = "Awww...",
        },
        RAINFORESTTREE = 
        {
        	GENERIC = "Very pretty!",
        	CHOPPED = "It's chopped!",
        	BURNING = "Fire!",
        	BURNT = "Dang.",
        },
        RAINFORESTTREE_ROT = "It doesn't look right...",
        
        FLOWER_RAINFOREST = "How exotic!",
        HALBERD = "I'll be careful, don't worry, haha!",
        CHICKEN = --Not used
        {
        	GENERIC = "Baak baak baaaak!",
        	SLEEPING = "Sleep tight.",
        	DEAD = "Well. Anyone for dinner?",
        },
        RUIN_GIANT_HEAD = "I wonder where the rest of you went!",
        RUINS_ARTICHOKE = "I wonder what this ancient civilization was like!",
        PIG_RUINS_ENTRANCE = 
        {
        	GENERIC = "Maybe it's like Scarbia!",
        	LOCKED = "I have to find a way in!",
        },
        PIG_RUINS_EXIT = "A way out!",
        PIG_COIN = "It's money!",
        GRASS_TALL = 
        {
        	GENERIC = "It's way firmer than it looks!",
        	PICKED = "All cut up!",
        	BURNING = "A fire!",
        },
        GLOWFLY = 
        {
        	GENERIC = "It's pretty!",
        	SLEEPING = "Sleep tight! Don't let the... you, bite, haha!",
        	DEAD = "Aw.",
        },
        GLOWFLY_COCOON = "Whatcha doing in there?",
        CHITIN = "It's bug skin.",
        HANGING_VINE = "Bet I could climb it!",
        GRABBING_VINE = "Bet I could- hey!",
        VENUS_STALK = "Hmmmm!",
        WALKINGSTICK = "I look pretty fancy!",
        ADULT_FLYTRAP = 
        {
        	GENERIC = "I seen way worse in Deep Darkness!",
        	SLEEPING = "Pay no mind to me!",
        	DEAD = "I've bested it!",
        },
        MEAN_FLYTRAP = 
        {
        	GENERIC = "Hah, come and get me!",
        	SLEEPING = "I'll leave you alone, for now!",
        	DEAD = "I've bested it!",
        },
        SNAPDRAGON = --Unimplemented
        {
        	GENERIC = "It looks like it hates human boys!",
        	SLEEPING = "I should be careful not to disturb.",
        	DEAD = "It's better that way.",
        },
        LILYPAD = "A lilypad!",

        ZEB = --Unimplemented
        {
        	GENERIC = "Oh, hello!",
        	SLEEPING = "Sleep well.",
        	DEAD = "Oh, I'm sorry.",
        },
        SCORPION = 
        {
        	GENERIC = "You're probably the biggest scorpion I've fought, but you're still no match!",
        	SLEEPING = "See, we can get along!",
        	DEAD = "Gotcha!",
        },

        PEAGAWK = 
        {
        	GENERIC = "What an eyeful, haha!", 
        	SLEEPING = "Good night!",
        	DEAD = "Poor thing.",
        },
        PEEKHEN = --Unimplemented 
        {
        	GENERIC = "Um, hi! It's looking at me. A lot.", 
        	SLEEPING = "So long as it's not staring, we're cool.",
        	DEAD = "Dead.",
        }, 
        PEAGAWKFEATHERHAT = "How do I look?",
        PEAGAWK_BUSH = "It sees me!",
        PEAGAWKFEATHER = "Hi!",
        PEAGAWKFEATHER_PRISM = "Hi!",
        ANTMAN = 
        {
        	GENERIC = "Don't worry, I'm keeping my distance!",
        	SLEEPING = "Sleep well, haha!",
        	DEAD = "Sorry!",
        },
        ANTHILL = "Those ant people live there!",
        ANTMASKHAT = "Maybe they'll think I'm one of them!",
        ANTSUIT = "Maybe they'll think I'm one of them!",
        ANTMAN_WARRIOR = "He's a real fighter!",
 		ANTCHEST = "So much honey!",
 		NECTAR_POD = "It makes honey!",
        
        PHEROMONESTONE = "Whoa I can understand bugs now!",
        PIKO = 
        {
        	GENERIC = "You're mischievous, haha!",
        	SLEEPING = "Night night!",
        	DEAD = "Poor thing.",
        },
        
        RELIC_1 = {
        	GENERIC = "Someone might enjoy it!",
        	SUNKEN = "What's that?",
        },
        RELIC_2 = {
        	GENERIC = "It seems important!",
        	SUNKEN = "What's that?",
        },
        RELIC_3 = {
         	GENERIC = "I wonder if I should take it!",
         	SUNKEN = "What's that?",
        },
        RELIC_4 = {
        	GENERIC = "It must be important to someone!",
        	SUNKEN = "What's that?",
        },
        RELIC_5 = {
         	GENERIC = "An old relic?",
         	SUNKEN = "What's that?",
        },

        REEDS_WATER = "Water reeds!",
        LOTUS = "Very pretty!", 

		LOTUS_FLOWER ="Look at what I got!",
        LOTUS_FLOWER_COOKED ="I don't why, but I cooked it!",

        VAMPIREBAT = 
        {
        	GENERIC = "You're very big for a bat!",
        	SLEEPING = "You uh, sizing up the situation?",
        	DEAD = "Got ya!",
        },
        VAMPIREBATCAVE = "All sorts of horros gotta be in there!",  

        FROGLEGS_POISON = "Some frog legs?",
        FROGLEGS_POISON_COOKED = "Hmmm, smells funny.",
		FROG_POISON =
		{
        	GENERIC = "It looks poisonous!",
        	SLEEPING = "Rest well!",
        	DEAD = "Poor thing.",
        },

        PIG_RUINS_TORCH_WALL = "Very ancient looking.",
        PIG_RUINS_TORCH = "Very ancient looking.",
        PIG_RUINS_HEAD = "I could climb it no problem!",
        PIG_RUINS_ARTICHOKE = "...Intersting.",

        OINC = "I got some coins!",
        OINC10 = "I'll buy a nice, juicy hamburger!",
        OINC100 = "So much money, haha!",

        RABID_BEETLE = 
		{
        	GENERIC = "Stay back! Don't make me bash you!",
        	SLEEPING = "Sleep tight.",
        	DEAD = "I win!",
        },

        PARROT_BLUE = 
		{
        	GENERIC = "Parrots are cool!",
        	SLEEPING = "Night night!",
        	DEAD = "Poor thing.",
        },
        KINGFISHER = 
		{
        	GENERIC = "Aren't you vibrant, haha!",
        	SLEEPING = "Rest well!",
        	DEAD = "Poor thing.",
        },

        BURR = "It's a jungle tree seed!",   
        BURR_SAPLING = "Still a baby, but don't worry!",
        {
			BURNING = "Oops!",
			WITHERED = "It's not feeling good!",
			GENERIC = "Still a baby, but don't worry!",
			PICKED = "All picked!",
		},        	

        PIG_LATIN_1 = "It says \"Ightlay iresfay\"", -- light fires in pig latin

		DECO_RUINS_BEAM_ROOM ="It doesn't seem too sturdy.",
		DECO_CAVE_BEAM_ROOM = "It doesn't seem too sturdy.",
        DECO_CAVE_BAT_BURROW = "It's where those horrible bats come from!",
        DECO_RUINS_BEAM_ROOM_BLUE = "It doesn't seem too sturdy.",        		

        SMASHINGPOT = "Hiding any goodies?",

        HIPPOPOTAMOOSE ="Hey there big guy!",
		PIGGHOST = "Spooky, er, sorta. Haha!",        

        ANTCOMBHOME = "Home to ants!",        
        SECURITYCONTRACT = "Anyone looking to help out the Chosen Boy?",
        
        PLAYERHOUSE_CITY = {
        	BURNT = "Oh...",
        	FORSALE = "Somewhere to stay might be a nice change of pace...",
        	SOLD = "Home sweet home!"
        },

        JELLYBUG = "It's alive!",
        JELLYBUG_COOKED = "It's not that fullfilling, huh?",
        SLUGBUG = "I've eaten weirder!",
        SLUGBUG_COOKED = "Just don't think about it!",

        PLAYER_HOUSE_COTTAGE_CRAFT = "Home is what you make of it!",
        PLAYER_HOUSE_VILLA_CRAFT = "Home is what you make of it!",           
		PLAYER_HOUSE_TUDOR_CRAFT = "Home is what you make of it!",
        PLAYER_HOUSE_GOTHIC_CRAFT = "Home is what you make of it!",           
		PLAYER_HOUSE_TURRET_CRAFT = "Home is what you make of it!",
        PLAYER_HOUSE_BRICK_CRAFT = "Home is what you make of it!",
		PLAYER_HOUSE_MANOR_CRAFT = "Home is what you make of it!",        

        CLIPPINGS = "Hedge clippings!",

        CUTNETTLE = "It really frees up the airways!",

        NETTLE =
        {
        	WITHERED = "It's too hot right now!",
        	MOIST = "Ready to pick!",
        	EMPTY = "Grow back soon!",
        	DEFAULT = "Nettles? I think it helps with allergies!",
        },

        DECO_RUINS_FOUNTAIN = "Oh, I love these!", -- this is a "wishing well". You throw coins in it and it might randomly heal you. 
        PUGALISK = "You're not my first giant serpent!",        
        SNAKE_BONE = "I've come out on top!", 
        SNAKEBONESOUP = "Don't mind if I dig in!", 

        BANDITMAP = "So that's where you're stashing your stolen goods!", 
        BANDITTREASURE = "If only I knew who the rightful owners of these items were!", 

        BLUNDERBUSS = "It's a bit overkill if you ask me!", 

        PUGALISK_FOUNTAIN = "Weird!", 
        PUGALISK_RUINS_PILLAR = "How strange!", 
        PUGALISK_TRAP_DOOR = "Hmmmm...",  

        TEA = "It's kinda calming!",      
        TEATREE = "I've never seen this sorta tree before!",    
        TEATREE_SAPLING = "It's a baby tree!",    
        TEATREE_NUT = "I can make more tea trees now.",    

        WALL_PIG_RUINS = "Left behind by ancients!", 

        PIG_RUINS_DART_TRAP = "Haha, that's totally a trap!", 
        PIG_RUINS_SPEAR_TRAP = "Better watch my step!", 
        PIG_RUINS_SPEAR_TRAP_TRIGGERED = "Whoa, close one, haha!", 
        PIG_RUINS_SPEAR_TRAP_BROKEN = "It's won't be springing now!", 
        PIG_RUINS_PRESSURE_PLATE = "I should be careful!",
        PIG_RUINS_DART_STATUE = "Take cover!",                                           
        
        DISARMING_KIT = "It'll help me get past any traps!", 

        BALLPEIN_HAMMER = "It's very delicate.",

        GOLD_DUST = "Tinee bits of gold.",

        ALOE = "Aloe is very useful in medicine, I hear!", 
        ALOE_COOKED = "I don't believe that's the proper to use it, haha!", 
        ALOE_PLANTED = "Aloe there, haha!",

        --ASPARAGUS = "A vegetable.", 
        --ASPARAGUS_COOKED = "Science says it's good for me.", 
        --ASPARAGUS_PLANTED = "I should pick those!", 

        RADISH = "It's not the best veggie...", 
        RADISH_COOKED = "I'll eat it if I have to!",
        RADISH_PLANTED = "A radish!", 

        SNAKE_AMPHIBIOUS = "Don't make me bash you!", 
        
        GASMASKHAT = "It'll be useful if I go anywhere really dangerous!",
        PITHHAT = "It might be useful in that hot jungle weather!", 
        
        BILL = 
        {
        	GENERIC = "Awww, I'd hug it if it weren't so spiny!",
        	SLEEPING = "Get some rest!",
        	DEAD = "Poor thing.",
        },
        
        ROCK_ANTCAVE = "Cave rocks.",
        ANT_CAVE_LANTERN = "It holds lights!",
        PROP_DOOR = "It's a door.",

        PIKO_ORANGE = "Watch out, it's mischievous!",

        TURF_PIGRUINS = "Old turf.",
        TURF_RAINFOREST = "Turf.",
        TURF_DEEPRAINFOREST = "Turf.",
        TURF_LAWN = "Turf.",
        TURF_GASJUNGLE = "Turf.",
        TURF_MOSS = "Turf.",
        TURF_FIELDS = "Turf.",
        TURF_FOUNDATION = "Turf.",
        TURF_COBBLEROAD = "Paving.",

        MANDRAKEMAN = "Hello!",
        MANDRAKEHOUSE = "What a quaint home!",

         -- HOME DECO ITEMS
        INTERIOR_FLOOR_MARBLE = "How... proper!",
        INTERIOR_FLOOR_CHECK = "Hmmm, very fancy!",
        INTERIOR_FLOOR_PLAID_TILE = "How... proper!",
        INTERIOR_FLOOR_SHEET_METAL = "I wouldn't call it the most homely, haha!",
        INTERIOR_FLOOR_WOOD = "Very homely!",
        INTERIOR_FLOOR_GARDENSTONE = "Much too fancy, haha!",        
        INTERIOR_FLOOR_GEOMETRICTILES = "Hmmm, very fancy!",
        INTERIOR_FLOOR_SHAG_CARPET = "Reminds me of home...",
        INTERIOR_FLOOR_TRANSITIONAL = "Home is what you make of it, I guess!",
        INTERIOR_FLOOR_WOODPANELS = "It's not the most comfortable!",
        INTERIOR_FLOOR_HERRINGBONE = "I don't really think it fits me!",
        INTERIOR_FLOOR_HEXAGON = "How... proper!",
        INTERIOR_FLOOR_HOOF_CURVY = "Much too fancy, haha!",
        INTERIOR_FLOOR_OCTAGON = "I don't think it fits me!",

        INTERIOR_WALL_WOOD = "Home is what you make of it, I guess!",
        INTERIOR_WALL_CHECKERED = "It's nice.",
        INTERIOR_WALL_FLORAL = "It looks nice.",
        INTERIOR_WALL_SUNFLOWER = "Very homely!",
        INTERIOR_WALL_HARLEQUIN = "How... proper!",
        INTERIOR_WALL_PEAGAWK = "Hmmm, very fancy!",
        INTERIOR_WALL_PLAIN_DS = "Perfect.",
        INTERIOR_WALL_PLAIN_ROG = "Perfect.",
        INTERIOR_WALL_ROPE = "Weird.",
        INTERIOR_WALL_CIRCLES = "How... proper!",
        INTERIOR_WALL_MARBLE = "Much too fancy, haha!",
        INTERIOR_WALL_MAYORSOFFICE = "Not for me, haha!",
        INTERIOR_WALL_FULLWALL_MOULDING = "It'll work!",
        INTERIOR_WALL_UPHOLSTERED = "I don't think it fits me!",   

        DECO_CHAIR_CLASSIC = "Finally, somewhere to sit!",
        DECO_CHAIR_CORNER = "Haha, about time I get someone to rest!",
        DECO_CHAIR_BENCH = "I've missed civilization, haha!",
        DECO_CHAIR_HORNED = "Sharp. Hahaha!",
        DECO_CHAIR_FOOTREST = "What a nice chair!",
        DECO_CHAIR_LOUNGE = "Time to lounge around!",
        DECO_CHAIR_MASSAGER = "Time to relax!",
        DECO_CHAIR_STUFFED = "I could use one in my room!",
        DECO_CHAIR_ROCKING = "This chair rocks!",
        DECO_CHAIR_OTTOMAN = "Finally, somewhere to sit!",

        DECO_LAMP_FRINGE = "How... proper!",
        DECO_LAMP_STAINGLASS = "Hmmm, very fancy!",
        DECO_LAMP_DOWNBRIDGE = "How... proper!",
        DECO_LAMP_2EMBROIDERED = "How... proper!",
        DECO_LAMP_CERAMIC = "Nice!",
        DECO_LAMP_GLASS = "It might be my rowdy baseball kid instincts, but glass PROBABLY isn't a good idea.",
        DECO_LAMP_2FRINGES = "How fancy!",
        DECO_LAMP_CANDELABRA = "How... proper!",
        DECO_LAMP_ELIZABETHAN = "It's not my personality!",
        DECO_LAMP_GOTHIC = "It doesn't really fit me, you know?",
        DECO_LAMP_ORB = "How... proper!",
        DECO_LAMP_BELLSHADE = "Nothing fancy! Good.",
        DECO_LAMP_CRYSTALS = "Mmm, I dunno!",
        DECO_LAMP_UPTURN = "Quite fancy!",
        DECO_LAMP_2UPTURNS = "How fancy!",
        DECO_LAMP_SPOOL = "How... proper!",
        DECO_LAMP_EDISON = "Haha!",
        DECO_LAMP_ADJUSTABLE = "Nice!",
        DECO_LAMP_RIGHTANGLES = "How... proper!",
        DECO_LAMP_HOOFSPA = "It definitely isn't my style!",

        DECO_CHAISE = "Chaise? Haha!",

        DECO_PLANTHOLDER_BASIC = "Hi there, plant!",
        DECO_PLANTHOLDER_WIP = "It kinda works!",
        DECO_PLANTHOLDER_FANCY = "Very proper!",
        DECO_PLANTHOLDER_BONSAI = "It's an acquired taste!",
        DECO_PLANTHOLDER_DISHGARDEN = "Hello, plant!",
        DECO_PLANTHOLDER_PHILODENDRON = "What plant are you?",
        DECO_PLANTHOLDER_ORCHID = "Hi plant!",
        DECO_PLANTHOLDER_DRACEANA = "Hmmmm, it's not my type of style!",
        DECO_PLANTHOLDER_XEROGRAPHICA = "It's okay!",
        DECO_PLANTHOLDER_BIRDCAGE = "Interesting!",
        DECO_PLANTHOLDER_PALM = "Hello, plant!",
        DECO_PLANTHOLDER_ZZ = "Hi there, plant!",
        DECO_PLANTHOLDER_FERNSTAND = "Very homely!",
        DECO_PLANTHOLDER_FERN = "It's a fern!",
        DECO_PLANTHOLDER_TERRARIUM = "It's not my style.",
        DECO_PLANTHOLDER_PLANTPET = "Hi plant!",
        DECO_PLANTHOLDER_TRAPS = "I'd love one for my room in Onett!",
        DECO_PLANTHOLDER_PITCHERS = "How... proper!",
        DECO_PLANTHOLDER_MARBLE = "Haha, it's a little too fancy!",

        DECO_PLANTHOLDER_WINTERFEASTTREEOFSADNESS = "It feels so empty.",  
        DECO_PLANTHOLDER_WINTERFEASTTREE = "I love the holidays.",

        DECO_TABLE_ROUND = "For holding things!",
        DECO_TABLE_BANKER = "It holds my stuff!",
        DECO_TABLE_DIY = "And mom doesn't trust my craftiness!",
        DECO_TABLE_RAW = "It's technically a table!",
        DECO_TABLE_CRATE = "A table is what you make of it!",
        DECO_TABLE_CHESS = "Check mate, haha!",

        DECO_ANTIQUITIES_WALLFISH = "Haha, I love this!",        
        DECO_ANTIQUITIES_BEEFALO = "Its eyes follow you!",
        DECO_WALLORNAMENT_PHOTO = "Whose photo is this?",
        DECO_WALLORNAMENT_FULLLENGTH_MIRROR = "Hi, Ness!",
        DECO_WALLORNAMENT_EMBROIDERY_HOOP = "Home sweet home!",
        DECO_WALLORNAMENT_MOSAIC = "What nice decor!",
        DECO_WALLORNAMENT_WREATH = "Home sweet home!",
        DECO_WALLORNAMENT_AXE = "It's very rustic!",
        DECO_WALLORNAMENT_HUNT = "It's not very fitting, hm?",
        DECO_WALLORNAMENT_PERIODIC_TABLE = "Haha, Jeff probably understands it better!",
        DECO_WALLORNAMENT_GEARS_ART = "It's decor!",
        DECO_WALLORNAMENT_CAPE = "How... proper!",
        DECO_WALLORNAMENT_NO_SMOKING = "No smoking!",
        DECO_WALLORNAMENT_BLACK_CAT = "Some say it's bad luck!",

        WINDOW_ROUND_CURTAINS_NAILS = "Some sunlight is always nice!",
        WINDOW_ROUND_BURLAP = "Natural lighting at its best!",
        WINDOW_SMALL_PEAKED = "Some sunlight is always nice!",
        WINDOW_LARGE_SQUARE = "What a view!",
        WINDOW_TALL = "What a view!",
        WINDOW_LARGE_SQUARE_CURTAIN = "Ah, very homely.",
        WINDOW_TALL_CURTAIN = "Ah, very homely.",
        WINDOW_SMALL_PEAKED_CURTAIN = "Natural lighting at its best.",
        WINDOW_GREENHOUSE = "Haha, it's a little  too large!",
        WINDOW_ROUND = "Some sunlight is always nice!",

        DECO_WOOD_CORNERBEAM = "Stability!",
        DECO_MARBLE_CORNERBEAM = "Fancy stability!",
        DECO_WOOD       = "Stability!",
        DECO_MILLINERY  = "Stability!",
        DECO_ROUND      = "Stability!",
        DECO_MARBLE     = "Fancy stability!",

        SWINGING_LIGHT_BASIC_BULB = "Some lighting!",
        SWINGING_LIGHT_FLORAL_BLOOMER = "It's not really my type!",
        SWINGING_LIGHT_CHANDALIER_CANDLES = "A bit too fancy, haha!",
        SWINGING_LIGHT_ROPE_1 = "Some lighting!",
        SWINGING_LIGHT_ROPE_2 = "Some lighting!",
        SWINGING_LIGHT_FLORAL_BULB = "Well, it's not my style!",
        SWINGING_LIGHT_PENDANT_CHERRIES = "How... proper!",
        SWINGING_LIGHT_FLORAL_SCALLOP = "Well, it's not my style!",
        SWINGING_LIGHT_FLORAL_BLOOMER = "Well, it's not my style!",
        SWINGING_LIGHT_BASIC_METAL = "Some lighting!",
        SWINGING_LIGHT_TOPHAT = "Haha!",
        SWINGING_LIGHT_DERBY = "Haha!",
        SWINGING_LIGHT1 = "Some lighting!",

        RUG_ROUND = "Home sweet home!",
        RUG_SQUARE = "It wouldn't be home without a rug!",
        RUG_OVAL = "Home sweet home!",
        RUG_RECTANGLE = "Now it's a home!",
        RUG_FUR = "I could lay down on it forever, haha!",
        RUG_HEDGEHOG = "Home sweet home!",
        RUG_PORCUPUSS = "It wouldn't be home without a rug!",
        RUG_HOOFPRINT = "Haha, it's a bit much!",
        RUG_OCTAGON = "Now it's a home!",
        RUG_SWIRL = "It has a certain feel to it!",
        RUG_CATCOON = "You're very soft!",
        RUG_RUBBERMAT = "Haha!",
        RUG_WEB = "Weird!",
        RUG_METAL = "It's more a plate than a rug.",
        RUG_WORMHOLE = "Haha, weird!",
        RUG_BRAID = "Home sweet home!",
        RUG_BEARD = "Haha! Hahaha!",
        RUG_NAILBED = "No thanks!",
        RUG_CRIME = "Hahaha!",
        RUG_TILES = "Now it's a home!",

        SHELVES_WOOD = "For holding my stuff!",
        SHELVES_CINDERBLOCKS = "Well, it holds my stuff!",
        SHELVES_MARBLE = "For holding my stuff!",
        SHELVES_MIDCENTURY = "For holding my stuff!",
        SHELVES_GLASS = "For holding my stuff!",
        SHELVES_LADDER = "For holding my stuff!",
        SHELVES_HUTCH = "For holding my stuff!",
        SHELVES_INDUSTRIAL = "For holding my stuff!",
        SHELVES_ADJUSTABLE = "For holding my stuff!",
        SHELVES_WALLMOUNT = "For holding my stuff!",
        SHELVES_AFRAME = "For holding my stuff!",
        SHELVES_CRATES = "For holding my stuff!",
        SHELVES_FRIDGE = "For holding my stuff!",
        SHELVES_HOOKS = "For holding my stuff!",
        SHELVES_PIPE = "For holding my stuff!",
        SHELVES_HATTREE = "For holding my hats!",
        SHELVES_PALLET = "For holding my stuff!",
        SHELVES_BASIC = "For holding my stuff!",
        SHELVES_FLOATING = "For holding my stuff!",
        SHELVES_METAL = "For holding my stuff!",

        WOOD_DOOR = "A door!",
		STONE_DOOR = "How gothic!",
		ORGANIC_DOOR = "It has style, I guesss!",
		IRON_DOOR = "Home is what you make of it!",
		PILLAR_DOOR = "How proper!",
		CURTAIN_DOOR = "How proper!",
		ROUND_DOOR = "A door!",
		PLATE_DOOR = "A door!",

        ROCK_FLIPPABLE = "I bet all sorts of little creatures are under there!",

        PLAYER_HOUSE_COTTAGE = "Home is what you make of it!",
        PLAYER_HOUSE_VILLA = "Home is what you make of it!",  
        PLAYER_HOUSE_TUDOR = "Home is what you make of it!",
        PLAYER_HOUSE_MANOR = "Home is what you make of it!",              
        PLAYER_HOUSE_GOTHIC = "Home is what you make of it!",                
        PLAYER_HOUSE_BRICK = "Home is what you make of it!",  
        PLAYER_HOUSE_TURRET = "Home is what you make of it!",
        
        BRAMBLESPIKE = "Haha, better be careful!",

		SUNKEN_RELIC = "Maybe I could retrieve it somehow!",  

        IRON = "Looks like iron.",
        
        CLAWPALMTREE = "What a funny tree!",  
        DUG_NETTLE = "You'll come with me!", 

        THUNDERBIRD = "It doesn't want me to get close!", 
        THUNDERBIRDNEST = "Home to some PK Thunderbirds!",

        FEATHER_THUNDER = "Ah! It shocked me, haha!", 
        THUNDERHAT = "I harnessed the power of PK Thunder!",

        WEEVOLE = "You're an angry little bug, huh?",
        WEEVOLE_CARAPACE = "Sorry, but no one stops me!",
        ARMOR_WEEVOLE = "It'll protect me, I think!",
        
        TUBERTREE = "What a funny tree!",
        CORK = "What a cork.",

        CANDLEHAT = "I'm such a genius.", 
        CORK_BAT = "Batter up!",

        LEATHER = "I'll make a baseball!",
        BAT_HIDE = "I'm sure I'll find a use!",

        ANCIENT_ROBOT_RIBS = "Someone lose a giant robot?",
        ANCIENT_ROBOT_CLAW = "Where's the rest of you?",
        ANCIENT_ROBOT_LEG = "At least you have a leg to stand on!",    
        ANCIENT_ROBOT_HEAD = "Don't lose your head, haha!", 

        TEATREE_NUT_COOKED = "I could eat these all day, haha!",

        DEED = "My third home, haha!",
        CONSTRUCTION_PERMIT = "I can finally expand!",
        DEMOLITION_PERMIT = "All these permits... adulting sure is something!",
		
		CLAWPALMTREE_SAPLING = "You'll grow to be big and strong!",

        CORKBOAT = "Look at it float!",
        CORKCHEST = "Now my stuff is safe!",

        BANDITHAT = "Hmmm!",
        PIGBANDIT = "Haha, be careful who you mess with!",

        PIG_RUINS_CREEPING_VINES = "I gotta get rid of these vines!.", 

        MAGNIFYING_GLASS = "I wonder what to do with it!",

        SEDIMENTPUDDLE = "It's got all sorts of minerals!",
        GOLDPAN = "I can find gold now!",

        PORKLAND_ENTRANCE = "A new adventure awaits!",
        PORKLAND_EXIT = "A new adventure awaits!",

        POG = 
        {
        	GENERIC = "Oh my gosh, I love you!",
        	FOLLOWER = "Come with my little guy, I'll find us both snacks!",
        	SLEEPING = "Rest well!",
        	APORKALYPSE = "Oh no!",
        },

        PANGOLDEN = "You hungry?",

        ROC_LEG = "Watch out!",
        ROC_HEAD = "Please don't eat me!",
        ROC_TAIL = "Oh my...",

        GNATMOUND = "Pesty pests!",
        GNAT = "Pesty pests!",
        
        PORKLAND_INTRO = "Haha, you're funny!",

        ROC_NEST_TREE1 = "I really hate this place...",
        ROC_NEST_TREE2 = "Someone get me out of here!",
        ROC_NEST_BUSH = "I think it's time to go!",
        ROC_NEST_BRANCH1 = "It's a branch.",
        ROC_NEST_BRANCH2 = "I could snap it!",
        ROC_NEST_TRUNK = "So creepy...",
        ROC_NEST_HOUSE = "I don't like this.",
        ROC_NEST_RUSTY_LAMP = "I need to find a way out!",

        ROC_NEST_EGG1 = "It's rock solid...",
        ROC_NEST_EGG2 = "It's rock solid...",
        ROC_NEST_EGG3 = "It's rock solid...",
        ROC_NEST_EGG4 = "It's rock solid...",

        ROC_ROBIN_EGG = "It's very durable.",

        TUBER_CROP = "It's... funny...",
        TUBER_BLOOM_CROP = "It's edible...",
        TUBER_CROP_COOKED = "I have limits, you know!",
        TUBER_BLOOM_CROP_COOKED = "Edible indeed...",

        ALLOY = "It's like a brick. But heavier. And more potent!",

        ARMOR_METALPLATE = "This'll protect me for sure!",
        METALPLATEHAT = "I'm looking like a real medieval soldier!",

        SMELTER = "It makes ingots!",

        BUGREPELLENT = "Wish we had some for Deep Darkness!",
        
        HOGUSPORKUSATOR = "Very silly!",

        GASCLOUD = "That looks unsafe!",

        SHEARS = "For all your gardening needs!",
    	BATHAT = "Well, it's a hat for sure!",
    	
    	WATERDROP = "It's full of Lifeup!",

    	LIFEPLANT = "I feel your attachment to my heart.",

    	TRINKET_GIFTSHOP_1 = "A souvenir?",
    	TRINKET_GIFTSHOP_3 = "A souvenir?",        

	    KEY_TO_CITY = "Wow, thanks!",

    	PEDESTAL_KEY = "Don't mind if I do!",

    	ROYAL_GALLERY = "It means a lot to them!",

    	APORKALYPSE_CLOCK = "Hey, stop spinning. Stop spinning!!",
    	ANCIENT_HERALD = "You're not the first all-powerful being to want me dead!",

    	--ASPARAGUSSOUP = "Smells like it tastes.",
    	SPICYVEGSTINGER = "Nothing's too spicy for me!",
    	FEIJOADA = "I'll eat it if I have ot!",
    	HARDSHELL_TACOS = "Just don't think about it and its delicious!",
    	GUMMY_CAKE = "Don't mind if I do!",
    	STEAMEDHAMSANDWICH = "Burgers!!",

    	ROC_NEST_DEBRIS1 = "Looks really brittle.",
    	ROC_NEST_DEBRIS2 = "I could snap it no problem.",
    	ROC_NEST_DEBRIS3 = "It's a stick.",
    	ROC_NEST_DEBRIS4 = "It's a stick.",

    	ANTQUEEN = "Hey, return that crown at once!",
    	ANTQUEEN_CHAMBERS = "The queen must live there.",
    	ANTQUEEN_THRONE = "It's her throne!",
    	ANTMAN_WARRIOR_EGG = "That's bad news!",
		
		PIG_SHOP_DELI =
        {
            GENERIC = "Got anything yummy?",
            BURNING = "NOOOO!!",
        },

        PIG_SHOP_CITYHALL =
         {
            GENERIC = "All things bureaucratic!",
            BURNING = "Nobody panic!",
        },
        PIG_SHOP_CITYHALL_PLAYER = 
         {
            GENERIC = "My own office, just like dad! Haha!",
            BURNING = "Oh no!",
        },
        PIG_GUARD_TOWER_PALACE =
        {
            GENERIC = "How royal!",   
            BURNING = "That's not great!",
        },

        PIG_RUINS_PIG = "Whoa.",
        PIG_RUINS_IDOL = "Who knows how old it is!",
        PIG_RUINS_PLAQUE = "I can't read it!",

        BASEFAN = "It feels great during allergy season!",
        SPRINKLER = "I love playing in them!",

        NETTLELOSANGE = "It keeps the airways nice and clear!",

        ICEDTEA = "Iced tea, please and thank you!",

        TRINKET_GIFTSHOP_4 = "I love these, haha!",

        WALLCRACK_RUINS = "There's something here!",

        DEFLATED_BALLOON = "It's deflated.",
		DEFLATED_BALLOON_BASKET = "It's all busted...",

		--SNAKE_FIRE = "Ugh! Stay away!",

		DISGUISEHAT = "If I were a monster, I'd need it!",

		ALOE_SEEDS = "Some seeds!",
		--ASPARAGUS_SEEDS = "It's asparagus seeds.",
		RADISH_SEEDS = "Some seeds!",

		CAVE_EXIT_ROC = "I feel something behind there!",

        PORKLAND_INTRO_BASKET = "It's all busted...",
        PORKLAND_INTRO_BALLOON = "It's deflated.",
        PORKLAND_INTRO_TRUNK = "Ruined. All ruined!",
        PORKLAND_INTRO_SUITCASE = "Ruined. All ruined!",
        PORKLAND_INTRO_FLAGS = "I'm not feeling festive anymore.",
        PORKLAND_INTRO_SANDBAG = "It's weighing me down.",

        TURF_BEARD_HAIR = "Haha!", 

        HIPPO_ANTLER = "Sorry, big guy!",
        BILL_QUILL = "Don't poke an eye out!",

        ANTLER = "Look at what I got!",

        PUGALISK_SKULL = "Whoa!",
        PUGALISK_CORPSE = "Haha, I've bested you!",
        BONESTAFF = "Don't stare at it, Ness!",
        CITY_HAMMER = "I do decree, haha!",
        TURF_PAINTED = "Turf.", 
		TURF_PLAINS = "Turf.", 

		PIG_SHOP_BANK = 
        {
          GENERIC = "For all your banking needs!",
          BURNING = "That's not good!",
        },
 	    PIGMAN_USHER = 
        {
          GENERIC = "Hi!",
          SLEEPING = "Sleep well!",
        },
        PIGMAN_ROYALGUARD_2 = 
        {
          GENERIC = "Protect and serve!",
          SLEEPING = "Upholding the law gets tiring!",
        },
        PIG_SHOP_ANTIQUITIES = 
        {
          GENERIC = "It's got all sorts of cool stuff!",
          BURNING = "Oh no. Oh no!",
        },

        PIG_RUINS_ENTRANCE2 = "I wonder what's inside!",
        PIG_RUINS_EXIT2 = "It's been fun and all, but!",
        PIG_RUINS_ENTRANCE3 = "I'll find all sorts of secrets, I bet!",   
        PIG_RUINS_ENTRANCE4 = "I'll explore it!",           
        PIG_RUINS_EXIT4 = "I miss fresh air, haha!.",
        PIG_RUINS_ENTRANCE5 = "It's just like Scarbia!",           
        PIG_RUINS_ENTRANCE_SMALL = "Hopefully there's bad guys for me to bash!",

        RO_BIN = "Hi!",
        RO_BIN_GIZZARD_STONE = "It'll follow me if I have it!",
        GIANTGRUB = "I'll bash you!",
        MUSSEL_BED = "Mussels!",
        SEAWEED_STALK = "I could grow seaweed with it!",
        HARPOON = "I shouldn't be trusted with it!",

		DECO_RUINS_ENDSWELL = "It seems dangerous.",
		QUACKENDRILL = "What should I do with it?",
		-------rewards update-------

		TURF_DEEPRAINFOREST_NOCANOPY = "Turf.",

		BRAMBLE_CORE = "It's always the prettiest flowers that are the most dangerous!",
        BRAMBLE_BULB = "Got it!",
        ROOTTRUNK_CHILD = "Creepy!",

		PIG_SHOP_TINKER =
        {
            GENERIC = "For all your workshop needs!",
            BURNING = "A fire, a fire!",
        },
        ARMORVORTEXCLOAK = "It so perfectly hones my PSI!",    
        ANCIENT_REMNANT = "Look at what I got!",

        GOGGLESNORMALHAT = "Haha, I can't see a thing now!",
        GOGGLESHEATHAT = "Haha, I can't see a thing now!",
        GOGGLESARMORHAT = "Haha, I can't see a thing now!",
        GOGGLESSHOOTHAT = "Haha, I can't see a thing now!",     
        THUMPER = "Thump thump thump!",
        TELEBRELLA = "I miss Teleport.",
        TELIPAD = "I miss Teleport!",
        TRUSTY_SHOOTER = "Pew pew pew!",
        WHEELER_TRACKER = "What a neat gadget!",

        ANCIENT_HULK = "I'll deal with it!",
        ROCK_BASALT = "Basalt.",
        LIVING_ARTIFACT = "I can be super hero!",
        INFUSED_IRON = "Creepy",

        TELEPORTATO_HAMLET_POTATO = "Whoever came up with this must be a real genius!",
        TELEPORTATO_HAMLET_RING = "A part of the Phase Disorter!",
        TELEPORTATO_HAMLET_BOX = "Phase Distorter parts!",
        TELEPORTATO_HAMLET_CRANK = "A crank, for cranking, of course!",
        TELEPORTATO_HAMLET_BASE = "Whoever came up with this must be a real genius!",

        ANCIENT_ROBOTS_ASSEMBLY = "I'm making... something!",

        HEDGE_BLOCK_ITEM = "I should make a hedge maze!",
        HEDGE_CONE_ITEM = "It'll make for rockin' decor!",
        HEDGE_LAYERED_ITEM = "Where to plant?",							 
        --Arena Event
        LAVAARENA_BOARLORD = "That's the guy in charge here.",
        BOARRIOR = "You sure are big!",
        BOARON = "I can take him!",
        PEGHOOK = "That spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "Its shell is so spiky!",
        SNAPPER = "This one's got bite.",
		RHINODRILL = "He's got a nose for this kind of work.",
		BEETLETAUR = "I can smell him from here!",

        LAVAARENA_PORTAL =
        {
            ON = "I'll just be going now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those enemies are coming from.",

        HEALINGSTAFF = "It conducts regenerative energy.",
        FIREBALLSTAFF = "It calls a meteor from above.",
        HAMMER_MJOLNIR = "It's a heavy hammer for hitting things.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "That weapon's for throwing.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This'll keep those monsters held for a little while.",
		LAVAARENA_BERNIE = "He might make a good distraction for us.",
		SPEAR_LANCE = "It gets to the point.",
		BOOK_ELEMENTAL = "I can't make out the text.",
		LAVAARENA_ELEMENTAL = "It's a rock monster!",

   		LAVAARENA_ARMORLIGHT = "Light, but not very durable.",
		LAVAARENA_ARMORLIGHTSPEED = "Lightweight and designed for mobility.",
		LAVAARENA_ARMORMEDIUM = "It offers a decent amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'd have energy for a few more stunts wearing that.",
		LAVAARENA_ARMORHEAVY = "That's as good as it gets.",
		LAVAARENA_ARMOREXTRAHEAVY = "This armor has been petrified for maximum protection.",

		LAVAARENA_FEATHERCROWNHAT = "Those fluffy feathers make me want to run!",
        LAVAARENA_HEALINGFLOWERHAT = "The blossom interacts well with healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "My strikes would hurt a little more wearing that.",
        LAVAARENA_STRONGDAMAGERHAT = "It looks like it packs a wallop.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Looks like it amplifies healing expertise.",
        LAVAARENA_EYECIRCLETHAT = "It has a gaze full of science.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quicken my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "That could cause some major destruction.",

		LAVAARENA_ARMOR_HP = "That should keep me safe.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "A sharp looking instrument.",

        --Quagmire
        QUAGMIRE_ALTAR =
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",

        QUAGMIRE_HOE = "It's a farming instrument.",

        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",

        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",

		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
		QUAGMIRE_SUGARWOODTREE =
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB =
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},

		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE =
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",


		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",


		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",

        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },

        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",

        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",

        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",

        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "This rocks! Literally, hahaha!",
        	OFF = "It's off now!",
        	BURNING = "We should contain that!",
        	BURNT = "Oops, haha!",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "Now I'm in the spotlight, haha!",
        	OFF = "It's off now!",
        	BURNING = "Now it's extra bright!",
        	BURNT = "We can just make another, don't worry!",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "Now we just need things to power!",
        	LOWPOWER = "Sounds like it's running low on fuel!",
        	OFF = "It's a generator!",
        	BURNING = "We need to contain that!",
        	BURNT = "Whoops, haha!",
        },
        WINONA_BATTERY_HIGH =
        {
        	GENERIC = "It's more a power plant than a generator, haha!",
        	LOWPOWER = "It's running low on fuel!",
        	OFF = "It's a generator!",
        	BURNING = "Let's hope it doesn't get out of hand!",
        	BURNT = "Oops!",
        },

        --Wormwood
        COMPOSTWRAP = "Plants gotta eat too!",
        ARMOR_BRAMBLE = "That'll teach those monsters!",
        TRAP_BRAMBLE = "Looks painful, thankfully you're on our side, haha!",

        BOATFRAGMENT03 = "A shipwreck!",
        BOATFRAGMENT04 = "A shipwreck!",
        BOATFRAGMENT05 = "A shipwreck!",
		BOAT_LEAK = "We gotta patch that up!",
        MAST = "It holds the sail!",
        SEASTACK = "Rocky rocks that sink careless sailors!",
        FISHINGNET = "I wonder what booby traps I could set up with it!", --unimplemented
        ANTCHOVIES = "It's an acquired taste.", --unimplemented
        STEERINGWHEEL = "Starboard 10! Starboard 15! Starboard... haha, I have no idea what these words mean!",
        ANCHOR = "Boat brakes.",
        BOATPATCH = "Boat band-aid!",
        DRIFTWOOD_TREE =
        {
            BURNING = "That's on fire!",
            BURNT = "All burnt up!",
            CHOPPED = "Nothing but stump!",
            GENERIC = "A dead tree that washed up on shore!",
        },

        DRIFTWOOD_LOG = "Driftwood!",

        MOON_TREE =
        {
            BURNING = "We should contain that!",
            BURNT = "It looks like me after a failed teleport attempt, haha!",
            CHOPPED = "That was a pretty thick tree.",
            GENERIC = "Uh, I've seen the moon landing and it does NOT look like that up there!",
        },
		MOON_TREE_BLOSSOM = "Pretty!",

        MOONBUTTERFLY =
        {
        	GENERIC = "It's ALMOST magic!",
        	HELD = "Hi!",
        },
		MOONBUTTERFLYWINGS = "What nice wings!",
        MOONBUTTERFLY_SAPLING = "Ohhhhh!",
        ROCK_AVOCADO_FRUIT = "It's rocky!",
        ROCK_AVOCADO_FRUIT_RIPE = "This fruit rocks!",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "It won't hurt my jaw if I eat now!",
        ROCK_AVOCADO_FRUIT_SPROUT = "It'll grow into a bush!",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "It's not gonna grow anything.",
			WITHERED = "It's too hot to grow anything!",
			GENERIC = "I guess it comes from the moon, haha!",
			PICKED = "Nothing there now!",
			DISEASED = "It looks pretty sick.", --unimplemented
            DISEASING = "Err, something's not right.", --unimplemented
			BURNING = "We should contain that!",
		},
        DEAD_SEA_BONES = "Sea animal remains.",
        HOTSPRING =
        {
        	GENERIC = "It's nature's hot tub!",
        	BOMBED = "Bubbles!!",
        	GLASS = "It's just glass now.",
			EMPTY = "There's not water left.",
        },
        MOONGLASS = "It makes my reflection look all funny!",
        MOONGLASS_CHARGED = "It's full of power!",
        MOONGLASS_ROCK = "I don't look too bad!",
        BATHBOMB = "Bubble bath time!",
        TRAP_STARFISH =
        {
            GENERIC = "A totally unassuming starfish I'm sure!",
            CLOSED = "Haha, maybe next time little guy!",
        },
        DUG_TRAP_STARFISH = "Maybe I could use you, friend!",
        SPIDER_MOON =
        {
        	GENERIC = "An otherworldly spider!",
        	SLEEPING = "Even aliens need sleep!",
        	DEAD = "Bashed it!",
        },
        MOONSPIDERDEN = "An alien home.",
		FRUITDRAGON =
		{
			GENERIC = "What a majestic lizard!",
			RIPE = "It's ripe!",
			SLEEPING = "They're cold blooded!",
		},
        PUFFIN =
        {
            GENERIC = "A sea bird!",
            HELD = "Hiya!",
            SLEEPING = "Goodnight!",
        },

		MOONGLASSAXE = "It'll slice through wood real easy!",
		GLASSCUTTER = "For when bashing fails!",

        ICEBERG =
        {
            GENERIC = "An iceburg!", --unimplemented
            MELTED = "They're a lot bigger under the water.", --unimplemented
        },
        ICEBERG_MELTED = "They're a lot bigger under the water", --unimplemented

        MINIFLARE = "For when I get lost at sea!",
        MEGAFLARE = "I could just PK Flash at this point, haha!",

		MOON_FISSURE =
		{
			GENERIC = "Is it possible to be TOO good?",
			NOLIGHT = "Don't step on a crack!",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "It's not quite done yet!",
            GENERIC = "Haha! You're funny!",
        },

        MOON_ALTAR_IDOL = "It's very heavy!",
        MOON_ALTAR_GLASS = "What to do with it?",
        MOON_ALTAR_SEED = "I have to carry it? Why?",

        MOON_ALTAR_ROCK_IDOL = "I see something!",
        MOON_ALTAR_ROCK_GLASS = "I see something!",
        MOON_ALTAR_ROCK_SEED = "I see something!",

        MOON_ALTAR_CROWN = "It's very heavy!",
        MOON_ALTAR_COSMIC = "I'm gonna throw my back out carrying all this stuff, haha!",

        MOON_ALTAR_ASTRAL = "What to do with it?",
        MOON_ALTAR_ICON = "Now what to do with it...",
        MOON_ALTAR_WARD = "What do I do with it?",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I wonder if the sailors of Toto use it!",
            BURNT = "Burned by the kraken, I'm sure...!",
        },
        BOAT_ITEM = "Off to Scarbia!",
        BOAT_GRASS_ITEM = "It probably floats!",
        STEERINGWHEEL_ITEM = "Obviously I need to steer the thing!",
        ANCHOR_ITEM = "Boat brakes to break in the boat!",
        MAST_ITEM = "Sails ahoy!",
        MUTATEDHOUND =
        {
        	DEAD = "That'll teach you!",
        	GENERIC = "You're not my first zombie dog!",
        	SLEEPING = "Even the undead need rest!",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "That'll teach you!",
			GENERIC = "It looks a lot angrier!",
			SLEEPING = "A hot temper really tires ya out, haha!",
		},
        CARRAT =
        {
        	DEAD = "That's the end of that.",
        	GENERIC = "Are carrots supposed to have legs?",
        	HELD = "You're kind of ugly up close.",
        	SLEEPING = "It's almost cute.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Seaweed!",
            PICKED = "Nothing left to pick!",
        },
		BULLKELP_ROOT = "I could plant it!",
        KELPHAT = "It makes me feel horrible, haha!",
		KELP = "Now I just need sushi to wrap!",
		KELP_COOKED = "It won't come close to filling my bottemless stomach, haha!",
		KELP_DRIED = "I dried it!",

		GESTALT = "They really like my PSI!",
        GESTALT_GUARD = "They want to use me.",

		COOKIECUTTER = "Evil thing eats boats for fun!",
		COOKIECUTTERSHELL = "All that's left!",
		COOKIECUTTERHAT = "It's a very silly hat, haha!",
		SALTSTACK =
		{
			GENERIC = "It's very salty!",
			MINED_OUT = "Not much left to take!",
			GROWING = "Salt!",
		},
		SALTROCK = "It's fun to lick!",
		SALTBOX = "Now my meats stay nice and fresh!",

		TACKLESTATION = "For making fish tackle!",
		TACKLESKETCH = "Maybe I could make this!",

        MALBATROSS = "It's not very keen on sharing the fish, haha!",
        MALBATROSS_FEATHER = "Plucked from a fine feathered fiend.",
        MALBATROSS_BEAK = "Beaky!",
        MAST_MALBATROSS_ITEM = "A proper mast!",
        MAST_MALBATROSS = "It makes for a great sail!",
		MALBATROSS_FEATHERED_WEAVE = "All weaved up!",

        GNARWAIL =
        {
            GENERIC = "Hi!",
            BROKENHORN = "You lost your horn?",
            FOLLOWER = "It's my friend!",
            BROKENHORN_FOLLOWER = "Maybe we could tape it back on...!",
        },
        GNARWAIL_HORN = "It's like a lance!",

        WALKINGPLANK = "It's sort of a diving board!",
        WALKINGPLANK_GRASS = "It's sort of a diving board!",
        OAR = "Row, row, row your boat...",
		OAR_DRIFTWOOD = "Row, row, row your boat...",

		OCEANFISHINGROD = "Deep sea fishing? Sure!",
		OCEANFISHINGBOBBER_NONE = "Shouldn't I have some sort of bobber?",
        OCEANFISHINGBOBBER_BALL = "I can see when something's biting now!",
        OCEANFISHINGBOBBER_OVAL = "I can see when something's biting now!",
		OCEANFISHINGBOBBER_CROW = "I can see when something's biting now!",
		OCEANFISHINGBOBBER_ROBIN = "I can see when something's biting now!",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "I can see when something's biting now!",
		OCEANFISHINGBOBBER_CANARY = "I can see when something's biting now!",
		OCEANFISHINGBOBBER_GOOSE = "I can see when something's biting now!",
		OCEANFISHINGBOBBER_MALBATROSS = "I can see when something's biting now!",

		OCEANFISHINGLURE_SPINNER_RED = "I need to bait the fish, haha!",
		OCEANFISHINGLURE_SPINNER_GREEN = "I need to bait the fish, haha!",
		OCEANFISHINGLURE_SPINNER_BLUE = "I need to bait the fish, haha!",
		OCEANFISHINGLURE_SPOON_RED = "I need to bait the fish, haha!",
		OCEANFISHINGLURE_SPOON_GREEN = "I need to bait the fish, haha!",
		OCEANFISHINGLURE_SPOON_BLUE = "I need to bait the fish, haha!",
		OCEANFISHINGLURE_HERMIT_RAIN = "I'm not a fishing expert, but it more useful in rain!",
		OCEANFISHINGLURE_HERMIT_SNOW = "For winter fishing!",
		OCEANFISHINGLURE_HERMIT_DROWSY = "It'll be helpful!",
		OCEANFISHINGLURE_HERMIT_HEAVY = "I'll catch something twice my size!",

		OCEANFISH_SMALL_1 = "An easy catch!",
		OCEANFISH_SMALL_2 = "Haha, that was easy!",
		OCEANFISH_SMALL_3 = "I gotcha!",
		OCEANFISH_SMALL_4 = "Tinee tiny!",
		OCEANFISH_SMALL_5 = "Haha, it looks like popcorn!",
		OCEANFISH_SMALL_6 = "It's planty!",
		OCEANFISH_SMALL_7 = "I got it!",
		OCEANFISH_SMALL_8 = "Pretty!",
        OCEANFISH_SMALL_9 = "Haha, it keeps squirting me!",

		OCEANFISH_MEDIUM_1 = "It's covered in mud!",
		OCEANFISH_MEDIUM_2 = "Look at my catch!",
		OCEANFISH_MEDIUM_3 = "Look at my catch!",
		OCEANFISH_MEDIUM_4 = "Haha, I finally got it!",
		OCEANFISH_MEDIUM_5 = "Corny!",
		OCEANFISH_MEDIUM_6 = "Koi are very pretty!",
		OCEANFISH_MEDIUM_7 = "Koi are very pretty!",
		OCEANFISH_MEDIUM_8 = "Icey!",
        OCEANFISH_MEDIUM_9 = "Haha, is it really a fish?",

		PONDFISH = "I caught it!",
		PONDEEL = "Mmmmm, you look tasty!",

        FISHMEAT = "Fish meat!",
        FISHMEAT_COOKED = "Yummy!",
        FISHMEAT_SMALL = "Fishy bits!",
        FISHMEAT_SMALL_COOKED = "It won't fill up a growing boy like me, haha!",
		SPOILED_FISH = "Ew, it smells awful, haha!",

		FISH_BOX = "It keeps the fish fresh!",
        POCKET_SCALE = "Weigh on  the go!",

		TACKLECONTAINER = "I can keep my fishing stuff here.",
		SUPERTACKLECONTAINER = "It can hold a lot!",

		TROPHYSCALE_FISH =
		{
			GENERIC = "For measuring fish!",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nWhat a catch!",
			BURNING = "It needs to be contained!",
			BURNT = "Burnt to a crisp!",
			OWNER = "\nWeight: {weight}\nCaught by: {owner}",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nWhat a catch!",
		},

		OCEANFISHABLEFLOTSAM = "Just some muddy grass.",

		CALIFORNIAROLL = "I'll have some!",
		SEAFOODGUMBO = "Don't mind if I do!",
		SURFNTURF = "The fin gives personality!",

        WOBSTER_SHELLER = "Rockin' Rock Lobster!",
        WOBSTER_DEN = "Rockin' Rock Lobsters!",
        WOBSTER_SHELLER_DEAD = "Gotcha!",
        WOBSTER_SHELLER_DEAD_COOKED = "Let's rock!",

        LOBSTERBISQUE = "I'm ready to eat!",
        LOBSTERDINNER = "Mmmm!",

        WOBSTER_MOONGLASS = "I can see your insides!",
        MOONGLASS_WOBSTER_DEN = "Moon Rockin' Rock Lobsters!",

		TRIDENT = "Call me Poseidon, haha!",

		WINCH =
		{
			GENERIC = "It's like one of those claw arcade games!",
			RETRIEVING_ITEM = "Come on, bring up the prize!",
			HOLDING_ITEM = "Lookie here!",
		},

        HERMITHOUSE = {
            GENERIC = "Aw, it's all run down!",
            BUILTUP = "Much better!",
        },

        SHELL_CLUSTER = "A whole lot of shells!",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "This shell rocks!",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "Alto-nate means of music, hahaha!",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "I'm a bit of a soprano, too!",
        },

        CHUM = "I really don't wanna be eating that!",

        SUNKENCHEST =
        {
            GENERIC = "Sunken treasure? Hopefully it's not cursed, haha!",
            LOCKED = "I gotta open it, somehow!",
        },

        HERMIT_BUNDLE = "Wow, thanks!",
        HERMIT_BUNDLE_SHELLS = "This rocks. Thanks!",

        RESKIN_TOOL = "Haha, cleanliness is a must even out here!",
        MOON_FISSURE_PLUGGED = "It keeps my head clear.",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG =
        {
            "Holy moly, haha, you're massive now!",
            "Now this, this rocks!",
        },
        WOBYSMALL =
        {
            "Awww, I love dogs!",
            "You're much more lively than King!",
        },
		WALTERHAT = "Eagle Scout Ness, reporting for duty!",
		SLINGSHOT = "I prefer my bat, personally speaking!",
		SLINGSHOTAMMO_ROCK = "It'll be useful with a slingshot!",
		SLINGSHOTAMMO_MARBLE = "Marbles, anyone?",
		SLINGSHOTAMMO_THULECITE = "You're gonna use that for ammo, huh?",
        SLINGSHOTAMMO_GOLD = "Bet that'd hurt to get hit by!",
        SLINGSHOTAMMO_SLOW = "It's magical!",
        SLINGSHOTAMMO_FREEZE = "It harnesses the power of PSI!",
		SLINGSHOTAMMO_POOP = "Well, anything will do I guess, haha!",
        PORTABLETENT = "It's like we're camping!",
        PORTABLETENT_ITEM = "Let's set it up!",

        -- Wigfrid
        BATTLESONG_DURABILITY = "I've been in a play before! It rocked!",
        BATTLESONG_HEALTHGAIN = "I've been in a play before! It rocked!",
        BATTLESONG_SANITYGAIN = "I've been in a play before! It rocked!",
        BATTLESONG_SANITYAURA = "I've been in a play before! It rocked!",
        BATTLESONG_FIRERESISTANCE = "I've been in a play before! It rocked!",
        BATTLESONG_INSTANT_TAUNT = "I've been in a play before! It rocked!",
        BATTLESONG_INSTANT_PANIC = "I've been in a play before! It rocked!",

        -- Webber
        MUTATOR_WARRIOR = "Hm, doesn't taste too bad!",
        MUTATOR_DROPPER = "I could eat it, you know!",
        MUTATOR_HIDER = "I'll never say no to cookies!",
        MUTATOR_SPITTER = "Hm, doesn't taste too bad!",
        MUTATOR_MOON = "I could eat it, you know!",
        MUTATOR_HEALER = "I'll never say no to cookies!",
        SPIDER_WHISTLE = "Hm, doesn't taste too bad!",
        SPIDERDEN_BEDAZZLER = "I could eat it, you know!",
        SPIDER_HEALER = "I'll never say no to cookies!",
        SPIDER_REPELLENT = "Hm, doesn't taste too bad!",
        SPIDER_HEALER_ITEM = "I could eat it, you know!",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "How paranormal!",
		GHOSTLYELIXIR_FASTREGEN = "Ghostly!",
		GHOSTLYELIXIR_SHIELD = "This might've been useful back in Threed, haha!",
		GHOSTLYELIXIR_ATTACK = "How paranormal!",
		GHOSTLYELIXIR_SPEED = "Ghostly!",
		GHOSTLYELIXIR_RETALIATION = "This might've been useful back in Threed, haha!",
		SISTURN =
		{
			GENERIC = "What do we have here?",
			SOME_FLOWERS = "Someone's been decorating, haha!",
			LOTS_OF_FLOWERS = "Now that's a flower shower, ahaha!",
		},

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Yummy yummy!",
            DONE = "Yummy yummy!",

			COOKING_LONG = "I can't wait!",
			COOKING_SHORT = "Mmmmm, smelling good!",
			EMPTY = "We should cook something!",
        },

        PORTABLEBLENDER_ITEM = "A smoothie does sound rockin' about now, haha!",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "Spice is what gives food LIFE!!",
            DONE = "A little condiments never hurt anyone!",
        },
        SPICEPACK = "Got any ketchup?",
        SPICE_GARLIC = "Bad for the breath, great for the taste, haha!",
        SPICE_SUGAR = "Sugary!",
        SPICE_CHILI = "Spicy!",
        SPICE_SALT = "Salty!",
        MONSTERTARTARE = "I guess I could give it a try.",
        FRESHFRUITCREPES = "I knew fruit was good for you, but this, this is a whole new level of good!",
        FROGFISHBOWL = "It's fancy!",
        POTATOTORNADO = "Much tastier than potato chips!",
        DRAGONCHILISALAD = "I'll be a real fire breather after this one!",
        GLOWBERRYMOUSSE = "Mmmmm!",
        VOLTGOATJELLY = "It's fun to play with!",
        NIGHTMAREPIE = "Haha, if only it weren't so evil!",
        BONESOUP = "Very yummy!",
        MASHEDPOTATOES = "Goes great with everything!",
        POTATOSOUFFLE = "More please!",
        MOQUECA = "More please!",
        GAZPACHO = "I think I gained weight just looking at it!",
        ASPARAGUSSOUP = "It's not my favorite veggie!",
        VEGSTINGER = "Delicious!",
        BANANAPOP = "Fruity! What a wonderful treat!",
        CEVICHE = "Haha, I'm gonna need much more!",
        SALSA = "Let's eat!",
        PEPPERPOPPER = "Let's eat!",

        TURNIP = "Turnips!",
        TURNIP_COOKED = "Roasted!",
        TURNIP_SEEDS = "Some seeds!",

        GARLIC = "Smells funny!",
        GARLIC_COOKED = "It tastes fine, actually!",
        GARLIC_SEEDS = "Some seeds!",

        ONION = "It's got a lot of layers!",
        ONION_COOKED = "It's got a strong smell I love!",
        ONION_SEEDS = "Some seeds!",

        POTATO = "You can make all sorts of yummy stuff with potatos!",
        POTATO_COOKED = "Hey, that's not french fries! ...I guess you still need to know how to cook, haha!",
        POTATO_SEEDS = "Some seeds!",

        TOMATO = "Maybe if I squish it really good, I'll get ketchup!",
        TOMATO_COOKED = "Haha, someone needs to stop me!",
        TOMATO_SEEDS = "Some seeds!",

        ASPARAGUS = "Asparagus!",
        ASPARAGUS_COOKED = "Mmmm, maybe I'll find something else!",
        ASPARAGUS_SEEDS = "Some seeds!",

        PEPPER = "I love spicy!",
        PEPPER_COOKED = "How spicy can we get?",
        PEPPER_SEEDS = "Some seeds!",

        WEREITEM_BEAVER = "Maybe Jeff could explain it!",
        WEREITEM_GOOSE = "Gives me major Foggyland vibes!",
        WEREITEM_MOOSE = "Lake Tessie was fun, haha!",

        MERMHAT = "Haha, well, it works as a disguise!",
        MERMTHRONE =
        {
            GENERIC = "Now we need a monarch!",
            BURNT = "Oops, haha!",
        },
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "It's a secret project!",
            BURNT = "So secret...!",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "Hey, you should build a house like that for us, haha!",
            BURNT = "We can build another!",
        },

        MERMWATCHTOWER_REGULAR = "The royal guards live here!",
        MERMWATCHTOWER_NOKING = "The royal guards live here!",
        MERMKING = "You can he's the king by the crown!",
        MERMGUARD = "They don't COMPLETELY hate me, haha!",
        MERM_PRINCE = "The next in the line!",

        SQUID = "Hello, squid!",

		GHOSTFLOWER = "An otherworldly gift!",
        SMALLGHOST = "It's sad!",

        CRABKING =
        {
            GENERIC = "Haha, it's the kraken all over again!",
            INERT = "Who made this castle?",
        },
		CRABKING_CLAW = "It'll tear my boat to shreds!",

		MESSAGEBOTTLE = "Someone's sending messages?",
		MESSAGEBOTTLEEMPTY = "Now I have a bottle!",

        MEATRACK_HERMIT =
        {
			DONE = "It's ready!",
            DRYING = "It'll be ready soon enough.",
            DRYINGINRAIN = "I think the rain is making things harder, haha!",
            GENERIC = "I can dry stuff there!",
            BURNT = "It looks like me after a failed teleport attempt, haha!",
            DONE_NOTMEAT = "It's ready!",
            DRYING_NOTMEAT = "Just gotta wait for it to dry!",
            DRYINGINRAIN_NOTMEAT = "The rain is probably gonna make drying things harder, haha!",
        },
        BEEBOX_HERMIT =
        {
            READY = "Mmmmmm, I can just taste that honey!",
			FULLHONEY = "Maybe just a little lick!",
			GENERIC = "What a nice home we built!",
			NOHONEY = "There's no honey to take.",
			SOMEHONEY = "Go bees go!",
			BURNT = "I'm sorry...",
        },

        HERMITCRAB = "Some people prefer to be alone, I guess...",

        HERMIT_PEARL = "Ah, it'll make for a great baseball! Kidding, kidding!",
        HERMIT_CRACKED_PEARL = "Ahahah... I'm terrible...!",

        -- DSEAS
        WATERPLANT = "They don't like to be disturbed!",
        WATERPLANT_BOMB = "It's a bomb!",
        WATERPLANT_BABY = "A teeney plant!",
        WATERPLANT_PLANTER = "It grows in the ocean!",

        SHARK = "Well, I've dealt with worse at sea!",

        MASTUPGRADE_LAMP_ITEM = "You don't wanna be caughg out there in the dark!.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "PK Flash rod!",

        WATERPUMP = "The last thing I need is my boat catching on fire, haha!",

        BARNACLE = "Ew!",
        BARNACLE_COOKED = "Well, it can't be that bad!",

        BARNACLEPITA = "Much better!",
        BARNACLESUSHI = "Um. Sure, I'll try it!",
        BARNACLINGUINE = "Could I just have some normal pasta?",
        BARNACLESTUFFEDFISHHEAD = "Mmmmmm, maybe not...",

        LEAFLOAF = "It's actually more vegetable than meat!",
        LEAFYMEATBURGER = "It's not quite a hamburger, but pass the ketchup!",
        LEAFYMEATSOUFFLE = "Haha, sure I'll eat!",
        MEATYSALAD = "Don't mind if I do!",

        -- GROTTO

		MOLEBAT = "Aren't bats blind?",
        MOLEBATHILL = "Anyone home?",

        BATNOSE = "It's quite... nasaly!",
        BATNOSE_COOKED = "I'm always okay with trying new things",
        BATNOSEHAT = "Haha, this is great!",

        MUSHGNOME = "It's not quite Ramblin', but it sure is Evil!",

        SPORE_MOON = "It's a mushroom spore!",

        MOON_CAP = "It's not Ramblin' or Evil at all!",
        MOON_CAP_COOKED = "Smells sleepy!",

        MUSHTREE_MOON = "Huh.",

        LIGHTFLIER = "This rocks!",

        GROTTO_POOL_BIG = "It's beautiful!",
        GROTTO_POOL_SMALL = "It's beautiful!",

        DUSTMOTH = "They sure love dust!",

        DUSTMOTHDEN = "What a rockin' home!",

        ARCHIVE_LOCKBOX = "Who knows what secrets it holds!",
        ARCHIVE_CENTIPEDE = "Haha, this all was seeming too easy!",
        ARCHIVE_CENTIPEDE_HUSK = "It's not moving.",

        ARCHIVE_COOKPOT =
        {
            COOKING_LONG = "I can't wait!",
			COOKING_SHORT = "Mmmm, smelling good!",
			DONE = "Finally!",
			EMPTY = "I wonder if I could cook something nice!",
			BURNT = "We're gonna have to cancel dinner plans.",
        },

        ARCHIVE_MOON_STATUE = "Isn't it weird? They worship the moon, but there's no way you'd be able to see it down here...",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "Haha, I can't read it!",
            LINE_2 = "I can't even begin to understand this!",
            LINE_3 = "Nope, can't read ancient!",
            LINE_4 = "I can't read it, haha!",
            LINE_5 = "I can't understand it, haha!",
        },

        ARCHIVE_RESONATOR = {
            GENERIC = "Haha, where we're going, who knows!",
            IDLE = "It doesn't sense anything. Or maybe it's broken!",
        },

        ARCHIVE_RESONATOR_ITEM = "Let's find some nice treasures!",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "There's no power down here!",
          GENERIC =  "It's on!",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "There's no power down here!",
            GENERIC = "Haha, it's doing something!",
        },

        ARCHIVE_SECURITY_PULSE = "What a lame security system!",

        ARCHIVE_SWITCH = {
            VALID = "Power ON! This rocks!",
            GEMS = "Looks like it's missing something!",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "It's got no power!",
            GENERIC = "Must be broken!",
        },

        WALL_STONE_2 = "What a rockin' wall, haha!",
        WALL_RUINS_2 = "It's very fancy for something so ancient!",

        REFINED_DUST = "Ah... very dusty.",
        DUSTMERINGUE = "Moths will love it!",

        SHROOMCAKE = "It is indeed, a mushroom cake!",

        NIGHTMAREGROWTH = "Evil growths!",

        TURFCRAFTINGSTATION = "It works by magic!",

        MOON_ALTAR_LINK = "Whatszat?",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "It smells very much like a farm now, haha!",
            WET = "Too soggy!",
            DRY = "Too dry!",
            BALANCED = "Just right!",
            BURNT = "Oops!",
        },
        COMPOST = "Crops love it!",
        SOIL_AMENDER =
		{
			GENERIC = "It's gotta ferment!",
			STALE = "It's gotten niiiice and rotten!",
			SPOILED = "It looks real rotten now!",
		},

		SOIL_AMENDER_FERMENTED = "*Cough* ACK! Yeah... yeah, it's ready...!",

        WATERINGCAN =
        {
            GENERIC = "My crops will need water!",
            EMPTY = "Out of water!",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "Pretty fancy for a watering can, don'tcha think?",
            EMPTY = "Out of water!",
        },

		FARM_PLOW = "It breaks up the ground real good!",
		FARM_PLOW_ITEM = "Ready to garden!",
		FARM_HOE = "For tilling!",
		GOLDEN_FARM_HOE = "It'll get the job done!",
		NUTRIENTSGOGGLESHAT = "I can understand my crops better!",
		PLANTREGISTRYHAT = "For research, obviously!",

        FARM_SOIL_DEBRIS = "That stuff is no good!",

		FIRENETTLES = "I can handle it!",
		FORGETMELOTS = "No good weeds!",
		SWEETTEA = "Tea sounds great!",
		TILLWEED = "No good weeds!",
		TILLWEEDSALVE = "It's not all bad!",
        WEED_IVY = "No good weeds!",
        IVY_SNARE = "It's dangerous!",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "For measuring my produce!",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nIt'll feed me for weeks!",
            HAS_ITEM_LIGHT = "Too light to measure, haha!",
			BURNING = "We should contain that!",
			BURNT = "Looks like someone failed a teleport, ahahaaaa, we're gonna die out here!",
        },

        CARROT_OVERSIZED = "You'll make a whole colony of rabbits very happy, haha!",
        CORN_OVERSIZED = "Mmmmm, I'm gonna make so much popcorn!",
        PUMPKIN_OVERSIZED = "You'll make for a great pumpkin pie!",
        EGGPLANT_OVERSIZED = "What a big veggie!",
        DURIAN_OVERSIZED = "Oh my- the smell!",
        POMEGRANATE_OVERSIZED = "What a big fruit!",
        DRAGONFRUIT_OVERSIZED = "Haha! Hahaha!",
        WATERMELON_OVERSIZED = "Summer time is here!",
        TOMATO_OVERSIZED = "Pasta sauce, ketchup, you're gonna do great things!",
        POTATO_OVERSIZED = "I'll make the world's largest hashbrown, haha!",
        ASPARAGUS_OVERSIZED = "Awwww, okay!",
        ONION_OVERSIZED = "What am I go do with this bad boy?!",
        GARLIC_OVERSIZED = "I'll have bad breath for weeks!",
        PEPPER_OVERSIZED = "I'll eat it no problem!",

        VEGGIE_OVERSIZED_ROTTEN = "It's no good now...",

		FARM_PLANT =
		{
			GENERIC = "Growing food!",
			SEED = "The seed of something beautiful, I'm sure!",
			GROWING = "It's growing!",
			FULL = "Harvest ready!",
			ROTTEN = "It's not good now...",
			FULL_OVERSIZED = "Haha, it's massive!",
			ROTTEN_OVERSIZED = "It's no good now...",
			FULL_WEED = "Weeds aren't good!",

			BURNING = "That's a bad fire, bad bad bad!",
		},

        FRUITFLY = "It'll sap the life outta our crops!",
        LORDFRUITFLY = "Finally, I was wondering when my next challenge would show up!",
        FRIENDLYFRUITFLY = "They help the crops!",
        FRUITFLYFRUIT = "Those fly guys love it!",

        SEEDPOUCH = "Nice and organized!",

		-- Crow Carnival
		CARNIVAL_HOST = "I love carnivals!",
		CARNIVAL_CROWKID = "They're not spiteful at all!",
		CARNIVAL_GAMETOKEN = "What game to play, what game to play?!",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "I'm gonna need more.",
			GENERIC_SMALLSTACK = "I can get something nice I bet!",
			GENERIC_LARGESTACK = "I'm a natural!",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "The chicks pop out from there!",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "Hmm, I'm sure I have a token somewhere!",
			PLAYING = "Let's play!",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "Time to set up!",
		CARNIVALGAME_FEEDCHICKS_FOOD = "It's like whack a mole, but less violent!",

		CARNIVALGAME_MEMORY_KIT = "Time to set up!",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "I gotta have a token somewhere, haha!",
			PLAYING = "Time to play!",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "The eggs come up from there!",
			PLAYING = "This one's the ticket!",
		},

		CARNIVALGAME_HERDING_KIT = "Time to set up!",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "I think I got some tokens lying around",
			PLAYING = "I'll catch them all!",
		},
		CARNIVALGAME_HERDING_CHICK = "Hah, you can't outrun me!",

		CARNIVALGAME_SHOOTING_KIT = "Time to set up!",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "I got a token somewhere I'm sure, haha!",
			PLAYING = "Let's play",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "Targets pop up from there!",
			PLAYING = "If I could pitch, I'd hit the bullseye!",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "I need a token, I think!",
			PLAYING = "I just gotta push the button, right?",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "Let's set up!",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "Haha, what'd I do with those tokens, again?",
			PLAYING = "The stronger you spin, the better the prize! Probably.",
		},

		CARNIVALGAME_PUCKDROP_KIT = "Let's set up!",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "Hmm, I'm sure I have a token somewhere!",
			PLAYING = "It's all in the finess!",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "Let's set up!",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "Leave it to me! I'm great at the arcade, haha!",
		},

		CARNIVALCANNON_KIT = "Once it gets in your hair, it stays there~ That's just science, right, Wilson? Haha!",
		CARNIVALCANNON =
		{
			GENERIC = "Ready and loaded!",
			COOLDOWN = "Weeeee!!",
		},

		CARNIVAL_PLAZA_KIT = "Time for the carnival to begin!",
		CARNIVAL_PLAZA =
		{
			GENERIC = "I'm gonna have to do some decorating, haha!",
			LEVEL_2 = "We're getting somewhere!",
			LEVEL_3 = "What a rockin' carnival!",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "I'll put it somewhere nice!",
		CARNIVALDECOR_EGGRIDE = "I could enjoy it with a shrink ray!",

		CARNIVALDECOR_LAMP_KIT = "This'll add to the festivities!",
		CARNIVALDECOR_LAMP = "Oooooo!",
		CARNIVALDECOR_PLANT_KIT = "A minature tree? Sure!",
		CARNIVALDECOR_PLANT = "It's cute!",
		CARNIVALDECOR_BANNER_KIT = "I'll set it up!",
		CARNIVALDECOR_BANNER = "Lookin' rockin'!",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "Haha, I beat the odds!",
			UNCOMMON = "It's less common!",
			GENERIC = "You'll be seeing this a lot!",
		},
		CARNIVALDECOR_FIGURE_KIT = "It'll be something great this time!",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "It'll be something great this time!",

        CARNIVAL_BALL = "Nice!", --unimplemented
		CARNIVAL_SEEDPACKET = "Come on, you guys, it's not THAT bad!",
		CARNIVALFOOD_CORNTEA = "That's no how high fructose corn syrup works, haha!",

        CARNIVAL_VEST_A = "It's... kinda scratchy!",
        CARNIVAL_VEST_B = "It's not my style, haha!",
        CARNIVAL_VEST_C = "Mmmm. Haha, I guess it's technically clothes!",

        -- YOTB
        YOTB_SEWINGMACHINE = "Sewing can't be that hard... can it?",
        YOTB_SEWINGMACHINE_ITEM = "There looks to be a bit of assembly required.",
        YOTB_STAGE = "Strange, I never see him enter or leave...",
        YOTB_POST =  "This contest is going to go off without a hitch! Well, figuratively speaking.",
        YOTB_STAGE_ITEM = "It looks like a bit of building is in order.",
        YOTB_POST_ITEM =  "I'd better get that set up.",


        YOTB_PATTERN_FRAGMENT_1 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_2 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_3 = "If I put some of these together, I bet I could make a beefalo costume.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },

        WAR_BLUEPRINT = "How ferocious!",
        DOLL_BLUEPRINT = "My beefalo will look as cute as a button!",
        FESTIVE_BLUEPRINT = "This is just the occasion for some festivity!",
        ROBOT_BLUEPRINT = "This requires a suspicious amount of welding for a sewing project.",
        NATURE_BLUEPRINT = "You really can't go wrong with flowers.",
        FORMAL_BLUEPRINT = "This is a costume for some Grade A beefalo.",
        VICTORIAN_BLUEPRINT = "I think my grandmother wore something similar.",
        ICE_BLUEPRINT = "I usually like my beefalo fresh, not frozen.",
        BEAST_BLUEPRINT = "I'm feeling lucky about this one!",

        BEEF_BELL = "I can make friends with a beefalo now!",

		-- YOT Catcoon
		KITCOONDEN =
		{
			GENERIC = "You'd have to be pretty small to fit in there.",
            BURNT = "NOOOO!",
			PLAYING_HIDEANDSEEK = "Now where could they be...",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Not much time left! Where are they?!",
		},

		KITCOONDEN_KIT = "The whole kit and caboodle.",

		TICOON =
		{
			GENERIC = "He looks like he knows what he's doing!",
			ABANDONED = "I'm sure I can find them on my own.",
			SUCCESS = "Hey, he found one!",
			LOST_TRACK = "Someone else found them first.",
			NEARBY = "Looks like there's something nearby.",
			TRACKING = "I should follow his lead.",
			TRACKING_NOT_MINE = "He's leading the way for someone else.",
			NOTHING_TO_TRACK = "It doesn't look like there's anything left to find.",
			TARGET_TOO_FAR_AWAY = "They might be too far away for him to sniff out.",
		},

		YOT_CATCOONSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Maybe it would like a feather to play with...",
            BURNT = "Smells like scorched fur.",
        },

		KITCOON_FOREST = "Aren't you the cutest little cat thing!",
		KITCOON_SAVANNA = "Aren't you the cutest little cat thing!",
		KITCOON_MARSH = "I must collect more... for research!",
		KITCOON_DECIDUOUS = "Aren't you the cutest little cat thing!",
		KITCOON_GRASS = "Aren't you the cutest little cat thing!",
		KITCOON_ROCKY = "I must collect more... for research!",
		KITCOON_DESERT = "I must collect more... for research!",
		KITCOON_MOON = "I must collect more... for research!",
		KITCOON_YOT = "I must collect more... for research!",

        -- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "Finally, a Sanctuary Guardian worth a challenge!",
            DEAD = "Haha! I was expecting more!",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "You've got some fight left in you? So do I!",
            DEAD = "Stay down!",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "Almost got me, haha!",
        ALTERGUARDIAN_PHASE3 = "Let's finish this!",
        ALTERGUARDIAN_PHASE3TRAP = "I'm the Chosen Boy! Don't think, *yawn...* that'll... work on... me...",
        ALTERGUARDIAN_PHASE3DEADORB = "I win!",
        ALTERGUARDIAN_PHASE3DEAD = "Next stop, freedom!",

        ALTERGUARDIANHAT = "My wisdom is unmatched with it.",
        ALTERGUARDIANHATSHARD = "Infinite possibilities, and it knows of all of them at once.",

        MOONSTORM_GLASS = {
            GENERIC = "I don't sense anything!",
            INFUSED = "This energy... it's otherworldly!"
        },

        MOONSTORM_STATIC = "It makes my hair all frizzy!",
        MOONSTORM_STATIC_ITEM = "Give me a poke, you're in for a shock, haha!",
        MOONSTORM_SPARK = "It's not as potent as PK Flash, but still pretty dangerous!",

        BIRD_MUTANT = "Ah! Poor thing...",
        BIRD_MUTANT_SPITTER = "It's very much evil now!",

        WAGSTAFF_NPC = "He might be smarter than Andonuts!",
        ALTERGUARDIAN_CONTAINED = "Haha, told you it was no match for me!",
		--Not having with these this time around...
        WAGSTAFF_TOOL_1 = "Mr. Wagstaff needs it!",
        WAGSTAFF_TOOL_2 = "Mr. Wagstaff needs it!",
        WAGSTAFF_TOOL_3 = "Mr. Wagstaff needs it!",
        WAGSTAFF_TOOL_4 = "Mr. Wagstaff needs it!",
        WAGSTAFF_TOOL_5 = "Mr. Wagstaff needs it!",

        MOONSTORM_GOGGLESHAT = "Never doubt a scientist, haha!",

        MOON_DEVICE = {
            GENERIC = "It's potent with energy!",
            CONSTRUCTION1 = "I'm working on it!",
            CONSTRUCTION2 = "Leave it to me!",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "She's using Phase Distorter technology!",
			RECHARGING = "It must pull a lot of power!",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "Huh, I thought the Phase Disorter didn't work with organic matter. This must be much more advanced, haha!",
			RECHARGING = "Time travel is tiring!",
		},

        POCKETWATCH_WARP = {
			GENERIC = "It's very much like the Phase Distorter!",
			RECHARGING = "It needs to recharge!",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "It uses Phase Distorter technology!",
			RECHARGING = "It draws a lot of power!",
			UNMARKED = "only_used_by_wanda",
			MARKED_SAMESHARD = "only_used_by_wanda",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "Time travel rocks!",
			RECHARGING = "It's gotta recharge!",
			UNMARKED = "only_used_by_wanda unmarked",
			MARKED_SAMESHARD = "only_used_by_wanda same shard",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "It'll make me old and grumpy, probably, haha!",
			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "I'm not a scientist, but looks very sciency!",
        POCKETWATCH_DISMANTLER = "It might be useful!",

        POCKETWATCH_PORTAL_ENTRANCE =
		{
			GENERIC = "I don't need a robot body, right?",
			DIFFERENTSHARD = "I don't need a robot body, right?",
		},
        POCKETWATCH_PORTAL_EXIT = "I'm sure it's not too bad!",

        -- Waterlog
        WATERTREE_PILLAR = "Am I back in the Lost Underworld?",
        OCEANTREE = "They must be some sort of mangrove!",
        OCEANTREENUT = "It's bursting with nutrients!",
        WATERTREE_ROOT = "It's a tree root!",

        OCEANTREE_PILLAR ="Wow...",

        OCEANVINE = "Seems strong enough for swinging!",
        FIG = "Yum!",
        FIG_COOKED = "Yum yum in my tum!",

        SPIDER_WATER = "Wow, that's a pretty sweet spider!",
        MUTATOR_WATER = "I'll never say no to cookies!",
        OCEANVINE_COCOON = "I shouldn't bother them!",
        OCEANVINE_COCOON_BURNT = "Nothing to bother now!",

        GRASSGATOR = "Don't go causing trouble and I won't have to bash you!",

        TREEGROWTHSOLUTION = "It'll make trees grow like no tomorrow!",

        FIGATONI = "I mean, I'll eat it!",
        FIGKABAB = "It's very filling!",
        KOALEFIG_TRUNK = "Let's give it a try!",
        FROGNEWTON = "It can't be that bad!",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "What a weird snow globe!",
            CRIMSON = "I did something to it!",
            ENABLED = "It's magical!",
			WAITING_FOR_DARK = "Hmmmm. What do you want now?",
			COOLDOWN = "It's out of power!",
			SPAWN_DISABLED = "It doesn't work!",
        },

        -- Wolfgang
        MIGHTY_GYM =
        {
            GENERIC = "Haha, I guess exercise would be good!",
            BURNT = "Whoops, haha!",
        },

        DUMBBELL = "I can lift it!",
        DUMBBELL_GOLDEN = "It's a little too heavy for me!",
		DUMBBELL_MARBLE = "I won't be lifting that until I'm a little older!",
        DUMBBELL_GEM = "Way too heavy, haha!",
        POTATOSACK = "Ooh, ooh! Let's have potato sack races!",


        TERRARIUMCHEST =
		{
			GENERIC = "Hmm, what's in the chest?",
			BURNT = "It's all burnt up!",
			SHIMMER = "Huh?",
		},

		EYEMASKHAT = "It protects me through intimidation!",

        EYEOFTERROR = "Another bad guy! I'll bash you!",
        EYEOFTERROR_MINI = "I'll knock you into next week!",
        EYEOFTERROR_MINI_GROUNDED = "That seems bad!",

        FROZENBANANADAIQUIRI = "A very yummy treat!",
        BUNNYSTEW = "Rabbit stew, don't mind if I do!",
        MILKYWHITES = "Haha, that's nasty!",

        CRITTER_EYEOFTERROR = "It's cute in a creepy way.",

        SHIELDOFTERROR ="It makes for a good weaspon!",
        TWINOFTERROR1 = "Return of Octobot!!",
        TWINOFTERROR2 = "Return of Octobot!!",

        -- Year of the Catcoon
        CATTOY_MOUSE = "Mice with wheels, what will science think up next?",
        KITCOON_NAMETAG = "I should think of some names! Let's see, Wilson Jr., Wilson Jr. 2...",

		KITCOONDECOR1 =
        {
            GENERIC = "It's not a real bird, but the kits don't know that.",
            BURNT = "Combustion!",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Those kits are so easily distracted. Now what was I doing again?",
            BURNT = "It went up in flames.",
        },

		KITCOONDECOR1_KIT = "It looks like there's some assembly required.",
		KITCOONDECOR2_KIT = "It doesn't look too hard to build.",

        -- WX78
        WX78MODULE_MAXHEALTH = "Robo-Ness probably had these parts!",
        WX78MODULE_MAXSANITY1 = "Robo-Ness probably had these parts!",
        WX78MODULE_MAXSANITY = "Robo-Ness probably had these parts!",
        WX78MODULE_MOVESPEED = "Robo-Ness probably had these parts!",
        WX78MODULE_MOVESPEED2 = "Robo-Ness probably had these parts!",
        WX78MODULE_HEAT = "Robo-Ness probably had these parts!",
        WX78MODULE_NIGHTVISION = "Robo-Ness probably had these parts!",
        WX78MODULE_COLD = "Robo-Ness probably had these parts!",
        WX78MODULE_TASER = "Robo-Ness probably had these parts!",
        WX78MODULE_LIGHT = "Robo-Ness probably had these parts!",
        WX78MODULE_MAXHUNGER1 = "Robo-Ness probably had these parts!",
        WX78MODULE_MAXHUNGER = "Robo-Ness probably had these parts!",
        WX78MODULE_MUSIC = "Robo-Ness probably had these parts!",
        WX78MODULE_BEE = "Robo-Ness probably had these parts!",
        WX78MODULE_MAXHEALTH2 = "Robo-Ness probably had these parts!",

        WX78_SCANNER =
        {
            GENERIC ="Why is that robot so interested in living things?",
            HUNTING = "Do you want some help?",
            SCANNING = "It's doing something!",
        },

        WX78_SCANNER_ITEM = "Haha, it's reading my matter!",
        WX78_SCANNER_SUCCEEDED = "Let's see it!",

        WX78_MODULEREMOVER = "I shouldn't touch what's not mine!",

        SCANDATA = "Robots love it!",

		-- QOL 2022
		JUSTEGGS = "Nice and runny, just how I like it!",
		VEGGIEOMLET = "I'll take two, please!",
		TALLEGGS = "Mmmm!",
		BEEFALOFEED = "It's not very edible!",
		BEEFALOTREAT = "I tried eating King's dog treats once. I don't think I wanna try that here...",	 			
        -- Pirates
        BOAT_ROTATOR = "It's like a fun little ride, now!",
        BOAT_ROTATOR_KIT = "I'll spin that boat like now other!",
        BOAT_BUMPER_KELP = "Now my boat can take more of a beating!",
        BOAT_BUMPER_KELP_KIT = "I wouldn't want my boat to get too knocked up at sea!",
        BOAT_BUMPER_SHELL = "Now my boat has a shield of its own, haha!",
        BOAT_BUMPER_SHELL_KIT = "It'll keep my boat intact at sea!",
        BOAT_CANNON = {
            GENERIC = "That'll teach those pirates!",
            AMMOLOADED = "Fire away!",
            NOAMMO = "No one better mess with me now!",
        },
        BOAT_CANNON_KIT = "I'll put it on my boat!",
        CANNONBALL_ROCK_ITEM = "Cannonball!!",

        OCEAN_TRAWLER = {
            GENERIC = "Call me the fisherman, haha!.",
            LOWERED = "It's all the patience, I hear!",
            CAUGHT = "I got it, I got it!",
            ESCAPED = "Aww...",
            FIXED = "That'll do for next time!",
        },
        OCEAN_TRAWLER_KIT = "Now to find some fish!",

        BOAT_MAGNET =
        {
            GENERIC = "Opposites attract!",
            ACTIVATED = "Oh yeah, baby!",
        },
        BOAT_MAGNET_KIT = "It's a magnet!",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "The source of magnetism!",
            ACTIVATED = "Now we're talking!",
        },
        DOCK_KIT = "A proper dock in the making!",
        DOCK_WOODPOSTS_ITEM = "It'll all coming together now!",

        MONKEYHUT =
        {
            GENERIC = "What a rockin' home!",
            BURNT = "These monkeys aren't teleport experts clearly, haha!",
        },
        POWDER_MONKEY = "Don't make me bash you!",
        PRIME_MATE = "I'm not afraid to monkey around!",
		LIGHTCRAB = "Awesome!",
        CUTLESS = "It's fun to play pretend, haha!",
        CURSED_MONKEY_TOKEN = "I don't like the looks of that!",
        OAR_MONKEY = "You'll be my backup bat!",
        BANANABUSH = "Bananas grow here!",
        DUG_BANANABUSH = "I should plant it, haha!",
        PALMCONETREE = "Half palm, half pine. Cool!",
        PALMCONE_SEED = "A tree seed!",
        PALMCONE_SAPLING = "You'll grow to be nice and strong!",
        PALMCONE_SCALE = "It makes for a neat drum!",
        MONKEYTAIL = "I'll hold on to it!",
        DUG_MONKEYTAIL = "I'll hold on to it!",							

        MONKEY_MEDIUMHAT = "Do I look the part?",
        MONKEY_SMALLHAT = "I'd rather have my baseball cap!",
        POLLY_ROGERSHAT = "Pretty rockin'!",
        POLLY_ROGERS = "You're very helpful, haha!",

        MONKEYISLAND_PORTAL = "That's where those monkeys came from!",
        MONKEYISLAND_PORTAL_DEBRIS = "Maybe he knows Dr. Andonuts!",
        MONKEYQUEEN = "Royalty!",
        MONKEYPILLAR = "How rockin'!",
        PIRATE_FLAG_POLE = "This is how you know it's their territory!",

        BLACKFLAG = "Haha, I make for a silly pirate, don'tcha think?",
        PIRATE_STASH = "A treasure stash?",
        STASH_MAP = "It might lead somewhere useful!",
										 
        BANANAJUICE = "Mm. That's not bad!",
													 
        FENCE_ROTATOR = "For fancy stabbing!",
		
		CHARLIE_STAGE_POST = "Finally, my chance practice my standup routine!",
        CHARLIE_LECTURN = "It has a script!",
		CHARLIE_HECKLER = "They don't like my jokes, haha!",
        PLAYBILL_THE_DOLL = "C.W., huh?",
        STATUEHARP_HEDGESPAWNER = "Wow, what nice flowers!",
        HEDGEHOUND = "You're not the first plant I've bashed!",
        HEDGEHOUND_BUSH = "Shrubbery!",

        MASK_DOLLHAT = "It's a doll mask.",
        MASK_DOLLBROKENHAT = "It's a cracked doll mask.",
        MASK_DOLLREPAIREDHAT = "It was a doll mask at one point.",
        MASK_BLACKSMITHHAT = "It's a blacksmith mask.",
        MASK_MIRRORHAT = "It's a mask, but it looks like a mirror.",
        MASK_QUEENHAT = "It's a Queen mask.",
        MASK_KINGHAT = "It's a King mask.",
        MASK_TREEHAT = "It's a tree mask.",
        MASK_FOOLHAT = "It's a fool's mask.",

        COSTUME_DOLL_BODY = "It's a doll costume.",
        COSTUME_QUEEN_BODY = "It's a Queen costume.",
        COSTUME_KING_BODY = "It's a King costume.",
        COSTUME_BLACKSMITH_BODY = "It's a blacksmith costume.",
        COSTUME_MIRROR_BODY = "It's a costume.",
        COSTUME_TREE_BODY = "It's a tree costume.",
        COSTUME_FOOL_BODY = "It's a fool's costume.",

        STAGEUSHER =
        {
            STANDING = "Haha, hello!",
            SITTING = "Are you there?",
        },
        SEWING_MANNEQUIN =
        {
            GENERIC = "All dressed up and nowhere to go.",
            BURNT = "All burnt up and nowhere to go.",
        },														   
		-- Waxwell
		MAGICIAN_CHEST = "I've always wanted to be a magician!",
		TOPHAT_MAGICIAN = "I bet I'd look great in it!",										 
    },

    DESCRIBE_GENERIC = "I'm not sure what it is!",
    DESCRIBE_TOODARK = "I can't see it!",
    DESCRIBE_SMOLDERING = "It's gonna catch on fire!",

    DESCRIBE_PLANTHAPPY = "This plant is well takne care of!",
    DESCRIBE_PLANTVERYSTRESSED = "It's stressed out!",
    DESCRIBE_PLANTSTRESSED = "It's getting stressed.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "There's too much weeds!",
    DESCRIBE_PLANTSTRESSORFAMILY = "I should plant more friends!",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "There's not enough room to go around!",
    DESCRIBE_PLANTSTRESSORSEASON = "The weather isn't good for this plant...",
    DESCRIBE_PLANTSTRESSORMOISTURE = "The soil is too dry!",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "The soil is lacking nutrients...",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "Let's talk to it!",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "I feel bad...",
		WINTERSFEASTFUEL = "I love... food...!",
    },
}
