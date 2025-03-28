PrefabFiles = {
	"gramness",
	"gramness_none",
	"offense_up_ness",
	"pk_flash",
	"baseball_bat_ness",
	"baseball_cap_ninten",
	
	"paralysis_ness",
	
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
TUNING.GRAMNESS_PARALYSIS_SANITY = GetModConfigData("GRAMNESS_PARALYSIS_SANITY")
TUNING.BASEBALL_BAT_NESS_DAMAGE = GetModConfigData("BASEBALL_BAT_NESS_DAMAGE")

TUNING.ENABLE_GRAMNESS_HOMESICKNESS = GetModConfigData("GRAMNESS_HOMESICKNESS")
-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("gramness", "MALE", skin_modes)

GLOBAL.GRAMNESS_SPECIALDROPS = {
	--Bosses
	["antlion"] = {"townportaltalisman"},
	["bearger"] = {"bearger_fur", "trunk_cooked"},
	["beequeen"] = {"hivehat", "royal_jelly"},
	["crabking"] = {"trident"},
	["deerclops"] = {"deerclops_eyeball", "trunk_cooked"},
	["dragonfly"] = {"dragon_scales", "redgem", "bluegem", "purplegem", "orangegem", "yellowgem", "greengem"},
	["eyeofterror"] = {"eyemaskhat", "icecream"},
	["twinofterror1"] = {"yellowgem"},
	["twinofterror2"] = {"greengem"},
	["lordfruitfly"] = {"dragonfruit_seeds"},
	["klaus"] = {"amulet"},
	["leif"] = {"livinglog"},
	["leif_sparse"] = {"livinglog"},
	["malbatross"] = {"malbatross_beak", "malbatross_beak", "bluegem", "bluegem", "bluegem", "yellowgem"},
	["minotaur"] = {"minotaurhorn"},
	["moose"] = {"goose_feather", "goose_feather", "turkeydinner"},
	["shadow_knight"] = {"nightmarefuel"},
	["shadow_bishop"] = {"nightmarefuel"},
	["shadow_rook"] = {"nightmarefuel"},
	["spiderqueen"] = {"spiderhat", "spidereggsack"},
	["stalker_forest"] = {"nightmarefuel"},
	["stalker"] = {"nightmarefuel"},
	["stalker_atrium"] = {"nightmarefuel", "nightmarefuel", "nightmarefuel", "nightmarefuel", "nightmarefuel", "nightmarefuel", "nightmarefuel", "nightmarefuel", "nightmarefuel", "armorskeleton"},
	["toadstool"] = {"blue_mushroomhat", "green_mushroomhat", "red_mushroomhat"},
	["daywalker"] = {"horrorfuel", "horrorfuel", "nightmarefuel"},
	
	--World objects that can be worked for loot
	["rock_ice"] = {"ice"},
	["moon_altar_rock_glass"] = {"rocks"},
	["moon_altar_rock_idol"] = {"rocks"},
	["moon_altar_rock_seed"] = {"rocks"},
	
	--Objects that should not drop extra loot
	["evergreen_stump"] = {},
	["lureplant"] = {},

	--All things random
	["koalefant_summer"] = {"meat", "meat", "trunk_summer", "trunk_summer", "trunk_summer"},
	["koalefant_winter"] = {"meat", "meat", "trunk_winter", "trunk_winter", "trunk_winter"},
	
}
--Stategraph fun!
local State = GLOBAL.State
local FRAMES = GLOBAL.FRAMES
local TimeEvent = GLOBAL.TimeEvent
local EventHandler = GLOBAL.EventHandler
require "stategraphs/commonstates"
local CommonHandlers = GLOBAL.CommonHandlers
local homesick_interrupt = State({
	name = "exasperated",
	tags = {"busy", "doing", "canrotate", "nopredict"},
	
	onenter = function(inst, data)
		
		inst:ClearBufferedAction()
		inst.components.playercontroller:Enable(false) 
		inst.components.locomotor:Stop()
		
		inst.AnimState:PlayAnimation("emote_sad", false)
	end,
	
	timeline = 
	{
		TimeEvent(3 * FRAMES, function(inst)
			inst:PerformBufferedAction()
			inst.sg:RemoveStateTag("busy")
		end),
	},
	
	ontimeout = function(inst)
		inst.sg:AddStateTag("idle")
	end,
	
	events =
    {
        EventHandler("animqueueover", function(inst)
            if inst.AnimState:AnimDone() then
                inst.sg:GoToState("idle")
            end
        end),
    },
	
	onexit = function(inst)
		inst.components.playercontroller:Enable(true) 
	end,
})
	
--We MIGHT be able to get away with using this for both server and client...
--I'm not an expert on stategraphs. First time writing them in DST
AddStategraphState("wilson",  homesick_interrupt)
AddStategraphState("wilson_client", homesick_interrupt)

modimport "scripts/baseball_bat_ness_common"
modimport "scripts/strings"

local Ness_ParalyzedEvent = function(inst, data)
    inst.sg:GoToState("paralyzed", {duration = data.duration})
end

local Ness_Paralyzed = State{
    name = "paralyzed",
    tags = {"busy"},

    onenter = function(inst, data)

        if inst.components.locomotor ~= nil then
            inst.components.locomotor:StopMoving()
        end

		if inst.brain then inst.brain:Stop() end

        inst.AnimState:PlayAnimation("frozen_loop_pst", true)
        --inst.SoundEmitter:PlaySound("dontstarve/common/freezecreature")
        --TODO lightning fx

        inst.sg:SetTimeout((data.duration or 6))
    end,

    ontimeout = function(inst)
		--inst.sg:RemoveStateTag("nointerrupt")
        inst.sg:GoToState(inst.sg.sg.states.hit ~= nil and "hit" or "idle")
        --inst:PushEvent("exitparalysis")
    end,

	--This needs to be a catch-all
	onexit = function(inst)
		if inst.brain then inst.brain:Start() end
		inst:PushEvent("exitparalysis")
	end
}

require("stategraphs/commonstates")
local csoa = GLOBAL.CommonHandlers.OnAttacked()

AddPrefabPostInitAny(function(inst) 
	if not GLOBAL.TheWorld.ismastersim then return end
	if not inst.sg then return end

	inst.sg.sg.states.paralyzed = Ness_Paralyzed
	inst.sg.sg.events.enterparalysis = EventHandler("enterparalysis", Ness_ParalyzedEvent)

	local old_onattacked = inst.sg.sg.events.attacked
	if not old_onattacked then return end
	inst.sg.sg.events.attacked = EventHandler("attacked", function(inst, ...)
		if inst:HasTag("Paralyzed") then
			return csoa.fn(inst, ...)
		end
		return old_onattacked.fn(inst, ...)
	end)
end)

local Ness_ButterflyState = State {
	name = "catch_magic_butterfly",
	tags = {"busy", "nointerrupt"},
	onenter = function(inst, data)
		inst.components.playercontroller:Enable(false) 
		inst.components.homesickness:Disable()
		inst.components.locomotor:StopMoving()

		local target = data.target
		if target then
			target.components.locomotor:StopMoving()
			target.brain:Stop()
			target.Transform:SetPosition(inst.Transform:GetWorldPosition())
			target.AnimState:PlayAnimation("idle_flight_loop", true)
			target.SetMotorVelOverride(0, .25, 0)
		end
		inst.AnimState:PlayAnimation("catch_magic_butterfly")
		--play sfx
	end,
	timeline = {
		TimeEvent(90 * FRAMES, function(inst)
			GLOBAL.TheNet:Announce(GLOBAL.subfmt("The Magic butterfly made {ness} relax.", {ness = inst.name}))
		end)
	},
	events = {
		EventHandler("animover", function(inst)
			inst.sg:GoToState("idle")
			inst.components.sanity:DoDelta(20)
			--Add debuff
		end)
	},
	onexit = function(inst)
		inst.components.homesickness:Enable()
		inst.components.playercontroller:Enable(true) 
	end,
}
AddStategraphState("wilson",  Ness_ButterflyState)
AddStategraphState("wilson_client", Ness_ButterflyState)

AddPrefabPostInit("bufferfly", function(inst)
	--spawn logic and vfx will come later
	inst:AddTag("magic")

	local task = inst:DoPeriodicTask(0, function()
		local pos = inst:GetPosition()
		local ents = GLOBAL.TheSim:FindEntities(pos.x, pos.y, pos.z, .25, {"nesscraft"})
		for _, v in pairs(ents) do v:GoToState("catch_magic_butterfly") return end
	end)

	inst:ListenForEvent("death", function() task:Cancel() end)
end)

AddCharacterRecipe("pk_flash",
	{Ingredient("purplegem", 1),
	 Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, 50)},
	 GLOBAL.TECH.MAGIC_THREE,
	 {
		product = "pk_flash",
		builder_tag = "nesscraft",
		numtogive = 1,
		atlas = "images/inventoryimages/pk_flash.xml",
		image = "pk_flash.tex"
	},
	{
		"MAGIC",
	})

local pk_flash_o_recipe = AddRecipe("pk_flash_o",
	{Ingredient("purplegem", 1),
	 Ingredient("pk_flash", 1, "images/inventoryimages/pk_flash.xml", nil, "pk_flash.tex"),
	 Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, TUNING.GRAMNESS_SANITY)},
	 RECIPETABS.MAGIC, TECH.MAGIC_THREE, nil, nil, nil, 1, "nesscraft")
pk_flash_o_recipe.atlas= "images/inventoryimages/pk_flash_o.xml"
pk_flash_o_recipe.image = "pk_flash_o.tex"	
STRINGS.RECIPE_DESC.PK_FLASH_O = "PK Flash, but even better."

local baseball_bat_ness_recipe = AddRecipe("baseball_bat_ness",
	{Ingredient("log", 4),
	 Ingredient("rope", 1)},
	 RECIPETABS.MAGIC, TECH.SCIENCE_ONE, nil, nil, nil, 1, "nesscraft")
baseball_bat_ness_recipe.atlas= "images/inventoryimages/baseball_bat_ness.xml"
baseball_bat_ness_recipe.image = "baseball_bat_ness.tex"	
STRINGS.RECIPE_DESC.BASEBALL_BAT_NESS = "Knock 'em outta the park."


STRINGS.CHARACTERS.GRAMNESS.DESCRIBE.BASEBALL_CAP_NINTEN = "It's not quite my childhood cap, but it'll do!"
STRINGS.CHARACTERS.GRAMNESS.DESCRIBE.BASEBALL_BAT_NESS = "Batter up!"


local SCRIPT_GRAMNESS1 = {
	cast = {"gramness"},
	lines = {
		{roles = {"gramness"}, duration = "3.0", line = "Hi everybody! I'm Ness!", anim="emoteXL_waving1"},
		{roles = {"gramness"}, duration = "3.0", line = "I hope you're all ready to bust your guts laughing,", anim="dial_loop"},
		{roles = {"gramness"}, duration = "3.0", line = "Because I have a great routine in store for you all, haha!", anim="dial_loop"},
		{roles = {"gramness"}, duration = "2.5", line = "So without further ado,", anim="dial_loop"},
		{roles = {"gramness"}, duration = "0.5", line = "Ahem,", anim="emote_annoyed_facepalm"}, 
		{roles = {"gramness"}, duration = "3.0", line = "How come zombies never say much?"},
		{roles = {"gramness"}, duration = "3.0", line = "Because they have a 'Tenda-'cy for being shy!", anim="emote_happycheer"},
		{roles = {"gramness"}, duration = "4.0", line = "Hahaha!", anim="emote_happycheer"},
		{roles = {"gramness"}, duration = "2.7", line = "Hm. Lemmie try another!", anim="dial_loop"},
		{roles = {"gramness"}, duration = "3.0", line = "What do you call a seasick Mook?"},
		{roles = {"gramness"}, duration = "3.0", line = "A 'puke!'", anim="emote_happycheer"},
		{roles = {"gramness"}, duration = "5.0", line = "Haha! Hahaha!", anim="emote_happycheer"},
		{roles = {"gramness"}, duration = "2.7", line = "Wow. Tough crowd, huh?", anim="dial_loop"},
		{roles = {"gramness"}, duration = "3.0", line = "Here, this one will tickle your funny bone for sure!", anim = "dial_loop"},
		{roles = {"gramness"}, duration = "3.0", line = "A Starman and an Octobot walk into a bar in Fourside."},
		{roles = {"gramness"}, duration = "3.0", line = "But when they go up to the bartender, they can't understand him. How come?"},
		{roles = {"gramness"}, duration = "2.3", line = "Because the bartender said,"},
		{roles = {"gramness"}, duration = "5.0", line = "'emocleW ot edisnooM!'", anim="emote_jumpcheer"},
		{roles = {"gramness"}, duration = "1.2", anim = "emote_sad"},
		{roles = {"gramness"}, duration = "2.0", line = "Um. I'm sure that made sense to someone...", anim="dial_loop"},
	}
}

local SCRIPT_GRAMNESS2 = {
		cast = {"gramness", "gramninten"},
		lines = {
			{roles = {"gramness"}, duration = "3.0", line = "Hahaha! I'm Ness again!", anim="emoteXL_waving1"},
			{roles = {"gramninten"}, duration = "2.0",},
			{roles = {"gramness"}, duration = "1.5", line = "Don't be shy: come on, introduce yourself!", anim="dial_loop"},
			{roles = {"gramninten"}, duration = "2.0", line = "I'm NOT shy, you're just being a dweeb.",}
		}
}

AddComponentPostInit("stageactingprop", function(inst)
	inst:AddGeneralScript("GRAMNESS1", SCRIPT_GRAMNESS1)
end)

		