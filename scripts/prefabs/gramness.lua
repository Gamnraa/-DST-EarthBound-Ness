local MakePlayerCharacter = require "prefabs/player_common"
require "components/lootdropper"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

local prefabs = {
}

local favoritefood = "leafymeatburger"

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.GRAMNESS = {
	"offense_up_ness",
	"pk_flash",
	"baseball_cap_ninten",
	"backpack",
}

local start_item_images = {
	offense_up_ness = {atlas = "images/inventoryimages/offense_up.xml", image = "offense_up.tex"},
	pk_flash = {atlas = "images/inventoryimages/pk_flash.xml"},
	baseball_cap_ninten = {atlas = "images/inventoryimages/baseball_cap_ninten.xml"},
}
TUNING.STARTING_ITEM_IMAGE_OVERRIDE = type(TUNING.STARTING_ITEM_IMAGE_OVERRIDE) == "table" and MergeMaps(TUNING.STARTING_ITEM_IMAGE_OVERRIDE, start_item_images) or start_item_images


local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.GRAMNESS
end

local exemptiontags = {"stump"}

local function doresourcefulattempt(inst, data)
	if (data.victim and (data.victim:HasTag("epic") or not data.victim.components.lootdropper)) or data.action == ACTIONS.NET then return end

	local homesickness = inst.components.homesickness
	if homesickness.resourcefulness[1] < 1 then return end
	
	local number = math.random(100)
	print("rolled " .. number)
	local numDrops = 0
	
	if number <= homesickness.resourcefulness[2] then
		numDrops = 2
		if data.victim then numDrops = 1 end
	elseif number <= homesickness.resourcefulness[1] then
		numDrops = 1
	end
	
	if numDrops == 0 then return end
	local target = data.victim or data.target	
	
	if target then
		--for _, v in pairs(exemptiontags) do
		--	if target:HasTag(v) then return end
		--end
		
		if data.action and target:HasTag("stump") and data.action == ACTIONS.DIG then return end
		
		print("Dropping extra loot")
		local lootdropper = target.components.lootdropper
		if not lootdropper then return end
		local pos = target:GetPosition()
		local loots = GRAMNESS_SPECIALDROPS[target.prefab]
		
		if loots and #loots == 0 then return end
		--Different tables that the loot could be stored on based on the entity
		--Each one is structured differently too
		--Mildy irritating
		target:DoTaskInTime(.2, function() 
		if not loots then 
			loots = {}
			if lootdropper.chanceloottable then
				local t = LootTables[lootdropper.chanceloottable]
				if t then
					for k, v in pairs(LootTables[lootdropper.chanceloottable]) do
						table.insert(loots, v[1])
					end
				end
			end
			
			if lootdropper.randomloot then
				for k, v in pairs(lootdropper.randomloot) do
					table.insert(loots, v.prefab)
				end
			end
			
			if lootdropper.loot then
				print(lootdropper.loot)
				for k, v in pairs(lootdropper.loot) do
					print(k, v)
					table.insert(loots, v)
				end
			end
		end
		
		if #loots < 1 then return end
		--If it proves too inconsistent, simply creating a 'master table' that combines all them will do
		for i =1, numDrops, 1 do
			print(i)
			local loot = loots[math.random(#loots)]
			loot = SpawnPrefab(loot)
			lootdropper:FlingItem(loot, pos)
		end
		end)
	end
end

local function docritattempt(inst, data)
	--The Baseball Bat will handle its own crits
	if inst.components.homesickness.guts < 1 or inst:HasTag("homerunner") then return end
	local roll = math.random(100)

	
	local isdead = data.target.components.health:IsDead()
	
	if roll <= inst.components.homesickness.guts then
		local fx = SpawnPrefab("crit_fx")
		local pos = data.target:GetPosition()
		fx.Transform:SetPosition(pos.x, pos.y + 4, pos.z)
		fx:kill_fx()
		data.target.components.health:DoDelta(-data.damage)
		
		if not isdead then isdead = data.target.components.health:IsDead() end
		
		if isdead then
			if data.target:HasTag("epic") then
				print("killed a boss with a critical hit, extra special drop")
				local lootdropper = data.target.components.lootdropper
				--if math.random(2) == 1 then
					local baseball = SpawnPrefab("baseball_cap_ninten")
					lootdropper:FlingItem(baseball)
				--end
				if GRAMNESS_SPECIALDROPS[data.target.prefab] then
					local index = math.random(#GRAMNESS_SPECIALDROPS[data.target.prefab])
					local loot = SpawnPrefab(GRAMNESS_SPECIALDROPS[data.target.prefab][index])
					lootdropper:FlingItem(loot)	
				end
			else
				doresourcefulattempt(inst, {victim = data.target})
			end
		end
	end
end

local function oneatfood(inst, data)
	if not data.food then return end
	
	local function ontimerdone(inst, isFavoriteFood)
		print("End of homesickness buff")
		if isFavoriteFood then
			inst.components.homesickness.favoritefoodbuff = nil
			inst.components.talker:Say("The good feelings never last...")
		else
			inst.components.homesickness.foodbuff = nil
			inst.components.talker:Say("Sigh... guess I could eat more, haha!")
		end
		--Fake a change in sanity so the homesickness level updates
		inst:PushEvent("sanitydelta", {oldpercent = inst.components.sanity:GetPercent(), newpercent = inst.components.sanity:GetPercent()})
	end
	
	local sanity = inst.components.sanity:GetPercent()
	
	local dialog = nil
	if data.food.components.edible:GetHunger(inst) >= 75 then
		print("reduced homesickness by 1 level for 90 seconds")
		inst.components.homesickness.foodbuff = inst:DoTaskInTime(90, function() ontimerdone(inst, false) end)
		inst:PushEvent("sanitydelta", {oldpercent = sanity, newpercent = sanity})
		dialog = "Filling my stomach always makes me feel a little better..."
	end
	
	if data.food.prefab == favoritefood then
		print("reduced homesickness by 1 level for 420 seconds")
		inst.components.homesickness.foodbuff = inst:DoTaskInTime(90, function() ontimerdone(inst, false) end)
		inst.components.homesickness.favoritefoodbuff = inst:DoTaskInTime(420, function() ontimerdone(inst, true) end)
		inst:PushEvent("sanitydelta", {oldpercent = sanity, newpercent = sanity})
		dialog = "It almost reminds me of home..."
	end
	
	if dialog then
		inst.components.talker:Say(dialog)
	end
end

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "gramness_speed_mod", 1)
	inst.components.homesickness:Enable()
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "gramness_speed_mod")
   inst.components.homesickness:Disable()
end

-- When loading or spawning the character
local function onload(inst, data)
    inst.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED)
	inst.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "gramness.tex" )
	--inst:ListenForEvent("playeractivated", onPlayerSpawn)
	inst:AddTag("nesscraft")
	inst:AddTag("psychic")
end
-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "gramness"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	inst.components.foodaffinity:AddPrefabAffinity(favoritefood, TUNING.AFFINITY_15_CALORIES_MED)
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.GRAMNESS_HEALTH)
	inst.components.hunger:SetMax(TUNING.GRAMNESS_HUNGER)
	inst.components.sanity:SetMax(TUNING.GRAMNESS_SANITY)
	inst.components.sanity.custom_rate_fn = function(inst) return inst.components.homesickness.sanitydrain end
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst:AddComponent("homesickness")
	
	inst.OnLoad = onload
    inst.OnNewSpawn = function()
		onload(inst)
		for _, v in pairs(inst.components.inventory.itemslots) do
			if v.prefab == "baseball_cap_ninten" then
				v.components.fueled:DoDelta(-3456) --LOL I love numbers
			end
		end
			
		inst.components.inventory:Equip(SpawnPrefab("backpack"))
	end
	
	inst:ListenForEvent("killed", doresourcefulattempt)
	inst:ListenForEvent("finishedwork", doresourcefulattempt)
	inst:ListenForEvent("onhitother", docritattempt)
	inst:ListenForEvent("oneat", oneatfood)
	
end

return MakePlayerCharacter("gramness", prefabs, assets, common_postinit, master_postinit, start_inv)
