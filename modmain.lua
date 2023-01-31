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
	
	Asset("ANIM", "anim/ds_pig_elite.zip"),
	Asset("ANIM", "anim/player_emotes.zip"),
	Asset("ANIM", "anim/player_attack_prop.zip"),
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
STRINGS.CHARACTER_DESCRIPTIONS.gramness = "*Gifted with Powers, packs an extra punch\n*Resourceful\n*Gets homesick often"
STRINGS.CHARACTER_QUOTES.gramness = "\"Fuzzy Pickles!\""

-- Custom speech strings
STRINGS.CHARACTERS.GRAMNESS = require "speech_gramness"

-- The character's name as appears in-game 
STRINGS.NAMES.GRAMNESS = "Ness"

TUNING.GRAMNESS_HEALTH = GetModConfigData("GRAMNESS_HEALTH")
TUNING.GRAMNESS_SANITY = GetModConfigData("GRAMNESS_SANITY")
TUNING.GRAMNESS_HUNGER = GetModConfigData("GRAMNESS_HUNGER")

TUNING.GRAMNESS_PK_FLASH_SANITY = GetModConfigData("GRAMNESS_PK_FLASH_SANITY")
TUNING.GRAMNESS_OFFENSE_UP_SANITY = GetModConfigData("GRAMNESS_OFFENSE_UP_SANITY")
TUNING.BASEBALL_BAT_NESS_DAMAGE = GetModConfigData("BASEBALL_BAT_NESS_DAMAGE")
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
AddModCharacter("gramness")

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

	["twister"] = {"turbine_blades", "gears", "gears", "gears"},
	["tigershark"] = {"tigereye", "shark_gills", "shark_gills"},
	["pugalisk"] = {"redgem", "bluegem"},
	["kraken"] = {"ruinshat", "armorruins"},
	["antqueen"] = {"trunk_cooked"},
	["ancient_hulk"] = {"infused_iron"},
	["ancient_herald"] = {"ancient_remnant", "ancient_remnant", "nightmarefuel"},
	
	--World objects that can be worked for loot
	["rock_ice"] = {"ice"},
	["moon_altar_rock_glass"] = {"rocks"},
	["moon_altar_rock_idol"] = {"rocks"},
	["moon_altar_rock_seed"] = {"rocks"},

	["rainforesttree"] = {"log", "log", "foliage", "foliage", "bird_egg"},
	["rainforesttree_normal"] = {"log", "log", "foliage", "foliage", "bird_egg"},
	["rainforesttree_tall"] = {"log", "log", "foliage", "foliage", "foliage", "bird_egg"},
	["rainforesttree_short"] = {"log", "log", "foliage", "bird_egg"},
	
	--Objects that should not drop extra loot
	["evergreen_stump"] = {},
	
}
--Stategraph fun!
local State = GLOBAL.State

--Frames is 1/30
--For anyone that needs it, here is how to convert from spriter's millisecond measurements to stategraph frames
--x/y = 1000/30
--Where x is the milliseconds of your animation in spriter
--And y is the frames conversion you want
--PRESERVE 1000/30 AS A FRACTION, multiply x by 30, y by 1000
--So you get you 30x = 1000y
--(x should all ready be known since ideally you know how long the animation is if you made it)
--So determine y by doing 30x/1000 to figure out how long the timeline in the State should be
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
AddStategraphState("wilsonboating", homesick_interrupt)

modimport "scripts/baseball_bat_ness_common.lua"

--DLC Check
TUNING.DLC_ACTIVE = GLOBAL.IsDLCEnabled(1) or GLOBAL.IsDLCEnabled(2) or GLOBAL.IsDLCEnabled(3)
if TUNING.DLC_ACTIVE then
	AddPrefabPostInit("baseball_cap_ninten", function(inst)
		inst:AddComponent("waterproofer")
		inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)
	end)
end

TUNING.ALL_DLC_ACTIVE = GLOBAL.IsDLCEnabled(1) and GLOBAL.IsDLCEnabled(2) and GLOBAL.IsDLCEnabled(3)

--Spellcasting
local ActionHandler = GLOBAL.ActionHandler
local DSTCASTSPELL = GLOBAL.Action ( {mount_enabled=true},
									  1, --priority
									  false, --instant
									  true, --rmb
									  20) --range
DSTCASTSPELL.id = "DSTCASTSPELL"
DSTCASTSPELL.str = "Cast Spell"
DSTCASTSPELL.crosseswaterboundary = true
DSTCASTSPELL.fn = function(act)
    --For use with magical staffs
	print("Cast spell")
    local staff = act.invobject or act.doer.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
	--local act_pos = act:GetActionPoint()
    if staff and staff.components.betterspellcaster and staff.components.betterspellcaster:CanCast(act.doer, act.target, act.pos) then
        staff.components.betterspellcaster:CastSpell(act.target, act.pos, act.doer)
        return true
    end
end

AddAction(DSTCASTSPELL)

local quickcastspell = GLOBAL.State({
        name = "quickcastspell",
        tags = { "doing", "busy", "canrotate" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            if inst.components.rider:IsRiding() then
                inst.AnimState:PlayAnimation("player_atk")
                --inst.AnimState:PushAnimation("player_atk", false)
            else
				inst.AnimState:PlayAnimation("atk")
				--inst.AnimState:PushAnimation("atk", false)
            end
            inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_weapon")
        end,
		
        timeline =
        {
            GLOBAL.TimeEvent(9 * GLOBAL.FRAMES, function(inst)
                inst:PerformBufferedAction()
				inst.sg:RemoveStateTag("busy")
				inst.sg:AddStateTag("idle")
            end),
        },

        events =
        {
            GLOBAL.EventHandler("animqueueover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end),
        },
    })
AddStategraphState("wilson", quickcastspell)
AddStategraphState("wilsonboating", quickcastspell)

AddStategraphActionHandler("wilson", GLOBAL.ActionHandler(DSTCASTSPELL, function(inst, action)
	return action.invobject ~= nil
        and (
				(action.invobject:HasTag("quickcast") and "quickcastspell")
			)
		or "castspell"
	end))

AddStategraphActionHandler("wilsonboating", GLOBAL.ActionHandler(DSTCASTSPELL, function(inst, action)
	return action.invobject ~= nil
        and (
				(action.invobject:HasTag("quickcast") and "quickcastspell")
			)
		or "castspell"
	end))

--PK Flash fix
local flashBrains = {
	["antbrain"] = true,
	["antwarriorbrain"] = true,
	["babybeefalobrain"] = true,
	["babyoxbrain"] = true,
	["ballphinbrain"] = true,
	["batbrain"] = true,
	["beardbunnymanbrain"] = true,
	["beebrain"] = true,
	["beefalobrain"] = true,
	["birchnutdrakebrain"] = true,
	["birdbrain"] = true,
	["bishopbrain"] = true,
	["bunnymanbrain"] = true,
	["buzzardbrain"] = true,
	["catcoonbrain"] = true,
	["citypigbrain"] = true,
	["chickenbrain"] = true,
	["crabbrain"] = true,
	["crocodogbrain"] = true,
	["doydoybrain"] = true,
	["dragoonbrain"] = true,
	["dungbeetlebrain"] = true,
	["flupbrain"] = true,
	["flytrapbrain"] = true,
	["frogbrain"] = true,
	["giantgrubbrain"] = true,
	["glowflybrain"] = true,
	["hippopotamoosebrain"] = true,
	["houndbrain"] = true,
	["jellyfishbrain"] = true,
	["killerbeebrain"] = true,
	["knightboatbrain"] = true,
	["knightbrain"] = true,
	["koalefantbrain"] = true,
	["krampusbrain"] = true,
	["lightninggoatbrain"] = true,
	["mermbrain"] = true,
	["monkeybrain"] = true,
	["mosquitobrain"] = true,
	["mosslingbrain"] = true,
	["nightmaremonkeybrain"] = true,
	["nightmareprimeapebrain"] = true,
	["oxbrain"] = true,
	["packbotbrain"] = true,
	["packimbrain"] = true,
	["pangoldenbrain"] = true,
	["peagawkbrain"] = true,
	["peagawkbushbrain"] = true,
	["peekhenbrain"] = true,
	["penguinbrain"] = true,
	["perdbrain"] = true,
	["pigbanditbrain"] = true,
	["pigbrain"] = true,
	["pigguardbrain"] = true,
	["pigtraderbrain"] = true,
	["pikobrain"] = true,
	["pogbrain"] = true,
	["primeapebrain"] = true,
	["rabid_beetlebrain"] = true,
	["rabbitbrain"] = true,
	["rainbowjellyfishbrain"] = true,
	["rockybrain"] = true,
	["rookbrain"] = true,
	["royalpigguardbrain"] = true,
	["sharkittenbrain"] = true,
	["sharxbrain"] = true,
	["slurperbrain"] = true,
	["smallbirdbrain"] = true,
	["snakebrain"] = true,
	["snapdragonbrain"] = true,
	["spatbrain"] = true,
	["spiderapebrain"] = true,
	["spiderbrain"] = true,
	["werepigbrain"] = true,
	["stungraybrain"] = true,
	["swordfishbrain"] = true,
	["tallbirdbrain"] = true,
	["thunderbirdbrain"] = true,
	["vampirebatbrain"] = true,
	["walrusbrain"] = true,
	["weevolebrain"] = true,
	["wargbrain"] = true,
	["wildborebrain"] = true,
	["wormbrain"] = true,
	["zebbrain"] = true,
}

require "behaviours/panic"
local oldRegisterPrefabs = GLOBAL.RegisterPrefabs

local function AddFlashPanic(b)
	AddBrainPostInit(b, function(brain)
		local inst = brain.inst
		table.insert(brain.bt.root.children, 1,
			GLOBAL.WhileNode(function() return inst:HasTag("pkflashed") end, "Panic", GLOBAL.Panic(inst))
		)
	end)
end

if TUNING.ALL_DLC_ACTIVE then
	for k, _ in pairs(flashBrains) do
		AddFlashPanic(k)
	end
else
	GLOBAL.RegisterPrefabs = function(prefab, ...)
		if flashBrains[prefab.name .. "brain"] then
			AddFlashPanic(prefab.name .. "brain")
		end
		oldRegisterPrefabs(prefab, ...)
	end
end

--Combat changes

AddComponentPostInit("combat", function(combat)
	combat.nessdamagemods = {}

	combat.DropTarget = function(self, hasnexttarget)
		if self.target then
			--self:SetLastTarget(self.target)
			self:StopTrackingTarget(self.target)
			self.inst:StopUpdatingComponent(self)
			local oldtarget = self.target
			self.target = nil
			if not hasnexttarget then
				self.inst:PushEvent("droppedtarget", {target=oldtarget})
			end
			self.lastwasattackedbytargettime = 0
		end
	end

	oldCalcDamage = combat.CalcDamage
	combat.CalcDamage = function(self, target, weapon, multiplier)
		for _, v in pairs(self.nessdamagemods) do
			multiplier = multiplier * v
		end

		if multiplier then
			return oldCalcDamage(self, target, weapon, multiplier)
		else
			return oldCalcDamage(self, target, weapon)
		end
	end
end)

--I need an event listener that catches ALL forms of door use
--There doesn't seem to be one that catches going from one room to another, at least none that the player can listen to
AddComponentPostInit("interiorspawner", function(interiorspawner)
	old_fadeoutfinished = interiorspawner.FadeOutFinished
	interiorspawner.FadeOutFinished = function(self, dont_fadein)
		GLOBAL.GetPlayer():PushEvent("fadeout")
		return old_fadeoutfinished(self, dont_fadein)
	end
end)

--Hackable listener
AddComponentPostInit("hackable", function(hackable)
	oldHack = hackable.Hack
	hackable.Hack = function(self, hacker, numworks, shear_mult, from_shears)
		--oldHack handles reducing hacksleft
		if self.hacksleft <= 1 then
			hacker:PushEvent("finishedhack", {target = self.inst, product = self.product})
		end
		if shear_mult then
			oldHack(self, hacker, numworks, shear_mult, from_shears)
		else
			oldHack(self, hacker, numworks)
		end
	end
end)

AddComponentPostInit("dislodgeable", function(dislodgeable)
	oldDislodge = dislodgeable.Dislodge
	dislodgeable.Dislodge = function(self, dislodger)
		if self.product then
			dislodger:PushEvent("finishedhack", {target = self.inst, product = self.product})
		end

		oldDislodge(self, dislodger)
	end
end)

AddComponentPostInit("workable", function(workable)
	oldWorkedBy = workable.WorkedBy
	workable.WorkedBy = function(self, worker, numworks)
		if worker.components.homesickness then
			numworks = numworks or 1
			numworks = numworks * worker.components.homesickness.workfulness
		end
		oldWorkedBy(self, worker, numworks)
	end
end)

STRINGS.RECIPE_DESC.PK_FLASH_O = "PK Flash, but even better."
STRINGS.RECIPE_DESC.BASEBALL_BAT_NESS = "Knock 'em outta the park."