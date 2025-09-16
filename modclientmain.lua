PrefabFiles = {
	"gramness",
	"gramness_none",
	"offense_up_ness",
	"pk_flash",
	"baseball_bat_ness",
	"baseball_cap_ninten",
	
	"crit_fx",
	"offense_up_fx",
	"pk_flash_fx",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/gramness.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/gramness.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/gramness.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramness.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/gramness_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramness_silho.xml" ),

     Asset( "IMAGE", "bigportraits/gramness.tex" ),
    Asset( "ATLAS", "bigportraits/gramness.xml" ),

	Asset( "IMAGE", "bigportraits/gramness_none.tex" ),
    Asset( "ATLAS", "bigportraits/gramness_none.xml" ),

	Asset( "IMAGE", "bigportraits/ms_gramness_batter.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramness_batter.xml" ),

	Asset( "IMAGE", "bigportraits/ms_gramness_kraken.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramness_kraken.xml" ),

	Asset( "IMAGE", "bigportraits/ms_gramness_hallowed.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramness_hallowed.xml" ),
	
	Asset( "IMAGE", "images/map_icons/gramness.tex" ),
	Asset( "ATLAS", "images/map_icons/gramness.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_gramness.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_gramness.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_gramness.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_gramness.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_gramness.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_gramness.xml" ),
	
	Asset( "IMAGE", "images/names_gramness.tex" ),
    Asset( "ATLAS", "images/names_gramness.xml" ),
	
	Asset( "IMAGE", "images/names_gold_gramness.tex" ),
    Asset( "ATLAS", "images/names_gold_gramness.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/baseball_cap_ninten.tex" ),
    Asset( "ATLAS", "images/inventoryimages/baseball_cap_ninten.xml" ),

	Asset( "IMAGE", "images/inventoryimages/ms_baseball_cap_ninten_onett.tex" ),
    Asset( "ATLAS", "images/inventoryimages/ms_baseball_cap_ninten_onett.xml" ),

	Asset( "IMAGE", "images/inventoryimages/ms_ness_kraken_hat.tex" ),
    Asset( "ATLAS", "images/inventoryimages/ms_ness_kraken_hat.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/ms_ness_shark_hat.tex" ),
    Asset( "ATLAS", "images/inventoryimages/ms_ness_shark_hat.xml" ),	
	
	Asset( "IMAGE", "images/inventoryimages/baseball_bat_ness.tex" ),
    Asset( "ATLAS", "images/inventoryimages/baseball_bat_ness.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/offense_up.tex" ),
	Asset( "ATLAS", "images/inventoryimages/offense_up.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/pk_flash.tex" ),
	Asset( "ATLAS", "images/inventoryimages/pk_flash.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/pk_flash_o.tex" ),
	Asset( "ATLAS", "images/inventoryimages/pk_flash_o.xml" ),
	
	Asset("SOUNDPACKAGE", "sound/psisfx.fev"),
	Asset("SOUND", "sound/psisfx.fsb"),
	
	Asset("SOUNDPACKAGE", "sound/psisfx.fev"),
	Asset("SOUND", "sound/psisfx.fsb"),
	Asset("SOUNDPACKAGE", "sound/gramness.fev"),
	Asset("SOUND", "sound/gramness.fsb"),
}

ModdedCurios = {
	ms_ness_batterbg = {
		type = "loading",
		skin_tags = {"BATTER", "LOADING"},
		rarity = "ModMade",
		assets = {
			Asset("ATLAS", "images/bg_loading_ms_ness_batterbg.xml"),
			Asset("IMAGE", "images/bg_loading_ms_ness_batterbg.tex"),
			
			Asset("DYNAMIC_ANIM", "anim/dynamic/ms_ness_batterbg.zip"),
			Asset("PKGREF", "anim/dynamic/ms_ness_batterbg.dyn")
		},
	},
}

AddMinimapAtlas("images/map_icons/gramness.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TUNING = GLOBAL.TUNING
local RECIPETABS = GLOBAL.RECIPETABS
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH
local Vector3 = GLOBAL.Vector3


--if TUNING.GRAMNESS_VOICE == "gramness" then
	RemapSoundEvent( "dontstarve/characters/gramness/death_voice", "gramness/characters/gramness/death_voice" )
	RemapSoundEvent( "dontstarve/characters/gramness/hurt", "gramness/characters/gramness/hurt" )
	RemapSoundEvent( "dontstarve/characters/gramness/emote", "gramness/characters/gramness/emote" )
	RemapSoundEvent( "dontstarve/characters/gramness/yawn", "gramness/characters/gramness/yawn" )
	RemapSoundEvent( "dontstarve/characters/gramness/pose", "gramness/characters/gramness/pose" )
	RemapSoundEvent( "dontstarve/characters/gramness/ghost_LP", "gramness/characters/gramness/ghost_LP" )
	RemapSoundEvent( "dontstarve/characters/gramness/talk_LP", "gramness/characters/gramness/talk_LP" )
	RemapSoundEvent( "dontstarve/characters/gramness/carol", "gramness/characters/gramness/carol" )
	RemapSoundEvent( "dontstarve/characters/gramness/eye_rub_vo", "gramness/characters/gramness/eye_rub_vo" )
	RemapSoundEvent( "dontstarve/characters/gramness/sinking", "gramness/characters//gramness/sinking" )
--end

-- The character select screen lines
STRINGS.CHARACTER_TITLES.gramness = "The Chosen Boy"
STRINGS.CHARACTER_NAMES.gramness = "Ness"
STRINGS.CHARACTER_DESCRIPTIONS.gramness = "*PSI Powerhouse\n*Packs an extra punch\n*Resourceful\n*Gets homesick often"
STRINGS.CHARACTER_QUOTES.gramness = "\"Fuzzy Pickles!\""
STRINGS.CHARACTER_SURVIVABILITY.gramness = "Slim"

STRINGS.SKIN_DESCRIPTIONS.gramness_none = "Ness' favorite outfit."

STRINGS.SKIN_NAMES.ms_gramness_batter = "The Star Batter"
STRINGS.SKIN_DESCRIPTIONS.ms_gramness_batter = "The offical uniform of the newly renamed Onett Meteors. One of the town's many attempts to capitalize on newly opened tourism ventures following Ness' journey."
STRINGS.SKIN_QUOTES.ms_gramness_batter = "\"I think I prefer the old name, haha!\""

STRINGS.SKIN_NAMES.ms_gramness_kraken = "The Guest Honor"
STRINGS.SKIN_DESCRIPTIONS.ms_gramness_kraken = "Formal celebratory wear of the people of Newport, bestowed upon Ness for defeating the Kraken of the Sea."
STRINGS.SKIN_QUOTES.ms_gramness_kraken = "\"Hopefully they really like Papa's cooking!\""

STRINGS.SKIN_NAMES.ms_gramness_hallowed = "The Shark"
STRINGS.SKIN_DESCRIPTIONS.ms_gramness_hallowed = "Skate Punk outfit of the infamous Onett Sharks street gang, known for hanging out around the town's arcade."
STRINGS.SKIN_QUOTES.ms_gramness_hallowed = "\"Mom says it's just a phase!\""

STRINGS.SKIN_NAMES.ms_baseball_cap_ninten_onett = "Onett Meteors Baseball Cap"
STRINGS.SKIN_DESCRIPTIONS.ms_baseball_cap_ninten_onett = "An Onett Meteors baseball cap to compliement the uniform."
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/ms_baseball_cap_ninten_onett.xml"), "ms_baseball_cap_ninten_onett.tex")


STRINGS.SKIN_NAMES.ms_ness_kraken_hat = "Newport Formal Headdress"
STRINGS.SKIN_DESCRIPTIONS.ms_ness_kraken_hat = "A ceremonial headdress of the natives of Newport, saved for the most special occasions and a hallmark to their culture. Bestowed upon Ness for defeating the Kraken of the Sea."
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/ms_ness_kraken_hat.xml"), "ms_ness_kraken_hat.tex")

STRINGS.SKIN_NAMES.ms_ness_shark_hat = "Sharks Skate Punk Helmet"
STRINGS.SKIN_DESCRIPTIONS.ms_ness_shark_hat = "A rockin' helmet worn by nefarious Shark skateboarders."
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/ms_ness_shark_hat.xml"), "ms_ness_shark_hat.tex")

GLOBAL.ITEM_DISPLAY_BLACKLIST.ms_baseball_cap_ninten_kraken = true

STRINGS.SKIN_NAMES.ms_ness_batterbg = "Homerun!"
STRINGS.SKIN_DESCRIPTIONS.ms_ness_batterbg = "This Spider is outta here, folks!"

GLOBAL.baseball_cap_ninten_init_fn = function(inst, build_name)
    GLOBAL.basic_init_fn(inst, build_name, "baseball_cap_ninten" )
end

GLOBAL.baseball_cap_ninten_clear_fn = function(inst)
    GLOBAL.basic_clear_fn(inst, "baseball_cap_ninten" )
end

STRINGS.CHARACTER_ABOUTME.gramness = "Ness was once your ordinary Eaglelandian boy, until one fateful night when a crash-landing meteor changed the outlook of his life for good..."
STRINGS.CHARACTER_BIOS.gramness = {
 { title = "Birthday", desc = "September 10" },
 { title = "Favorite Food", desc = "Veggie Burger" },
 --Ness was offered a burger from Maxwell yes that is the canon lore we are running with
 { title = "His past...", desc = "Is yet to be revealed."},
}

-- Custom speech strings
STRINGS.CHARACTERS.GRAMNESS = require "speech_gramness"

-- The character's name as appears in-game 
STRINGS.NAMES.GRAMNESS = "Ness"
STRINGS.SKIN_NAMES.gramness_none = "Ness"

TUNING.GRAMNESS_HEALTH = GetModConfigData("GRAMNESS_HEALTH")
TUNING.GRAMNESS_SANITY = GetModConfigData("GRAMNESS_SANITY")
TUNING.GRAMNESS_HUNGER = GetModConfigData("GRAMNESS_HUNGER")

TUNING.GRAMNESS_PK_FLASH_SANITY = GetModConfigData("GRAMNESS_PK_FLASH_SANITY")
TUNING.GRAMNESS_OFFENSE_UP_SANITY = GetModConfigData("GRAMNESS_OFFENSE_UP_SANITY")
TUNING.BASEBALL_BAT_NESS_DAMAGE = GetModConfigData("BASEBALL_BAT_NESS_DAMAGE")

TUNING.ENABLE_GRAMNESS_HOMESICKNESS = GetModConfigData("GRAMNESS_HOMESICKNESS")
-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
TUNING.BASEBALL_CAP_PERISHTIME = 30 * 16 * 12 --12 days
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}


TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.GRAMNESS = {
	"offense_up_ness",
	"pk_flash",
	"baseball_cap_ninten",
	"backpack",
}

TUNING.STARTING_ITEM_IMAGE_OVERRIDE["offense_up_ness"] = {
    atlas = "images/inventoryimages/offense_up_ness.xml",
    image = "offense_up_ness.tex",
}

TUNING.STARTING_ITEM_IMAGE_OVERRIDE["pk_flash"] = {
    atlas = "images/inventoryimages/pk_flash.xml",
    image = "pk_flash.tex",
}
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["baseball_cap_ninten"] = {
    atlas = "images/inventoryimages/baseball_cap_ninten.xml",
    image = "baseball_cap_ninten.tex",
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("gramness", "MALE", skin_modes)

function SetUpvalue(fn, upvalue_name, set_upvalue)
	if fn == nil or upvalue_name == nil then
		return
	end
	
	local i = 1
	while true do
		local val, v = GLOBAL.debug.getupvalue(fn, i)
		
		if not val then
			break
		end
		if val == upvalue_name then
			if set_upvalue then
				GLOBAL.debug.setupvalue(fn, i, set_upvalue)
			end
			
			return v, i
		end
		i = i + 1
	end
end

local IsWhiteListedMod = SetUpvalue(GLOBAL.Sim.ReskinEntity, "IsWhiteListedMod")
local function IsSillyListedMod(...)
	local _IsWhiteListedMod = IsWhiteListedMod
	return true
end

SetUpvalue(GLOBAL.Sim.ReskinEntity, "IsWhiteListedMod", IsSillyListedMod)
		