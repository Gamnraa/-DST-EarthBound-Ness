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

	if data.object then
		local item = data.loot

		if not(item.prefab or item[1].prefab) then return end

		for i = 1, numDrops, 1 do
			inst:DoTaskInTime(.3, function() inst.components.inventory:GiveItem(SpawnPrefab(item.prefab or item[math.random(#item)].prefab)) end)
		end
		return
	end

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
				if math.random(128) < 27 then
					print("Good homesickness crit roll, -5")
					inst.components.homesickness:DoDelta(-5, {change = "FEEL_BETTER", reason = "KILL_WITH_CRIT"})
				end
			end
		elseif math.random(128) < 20 then
			print("good homesickness crit roll, -1")
			inst.components.homesickness:DoDelta(-3, {change = "FEEL_BETTER", reason = "LAND_CRIT"})
		end
	end
end

local function oneatfood(inst, data)
	if not data.food then return end
	if not TUNING.ENABLE_GRAMNESS_HOMESICKNESS then return end

	local dialog = nil
	if data.food.components.edible:GetHunger(inst) >= 75 and math.random(100) < 95 then
		inst.components.homesickness:DoDelta(-6, {change = "FEEL_BETTER", reason = "EAT_LARGE_PORTION"})
	end
	
	if data.food.prefab == favoritefood then
		inst.components.homesickness:DoDelta(-(math.random(10, 20)), {change = "FEEL_BETTER", reason = "EAT_FAVORITE_FOOD"})
	end
	
	if dialog then
		inst.components.talker:Say(dialog)
	end
end

local function ontimerdone(inst, data)
	if data.name == "nesssanityregenover" then
		for i = 1, #inst.sanity_tasks + 1, 1 do
			table.remove(inst.sanity_tasks, i)
		end
	end
end

local function kill_task(inst)
	inst.sanity_tasks[#inst.sanity_tasks][1]:Cancel()
	table.remove(inst.sanity_tasks, #inst.sanity_tasks)
end

local function oncastpsi(inst, data)
	if data.cost then
		inst:DoTaskInTime(1.5, function()
			table.insert(inst.sanity_tasks, {
				[0] = inst:DoTaskInTime((data.cost / 4) + .1, kill_task), 
				[1] = inst:DoPeriodicTask(.5, function() inst.components.sanity:DoDelta(1) end)
			})
		end)
	end
end

local function battlecrystring(combat, target)
	local weapon = combat.inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
	local pos = combat.inst:GetPosition()
	local friends = TheSim:FindEntities(pos.x, 0, pos.z, 15, {"player"}, {"playerghost"})

    return target ~= nil
        and target:IsValid()
        and GetString(
            combat.inst,
            "BATTLECRY",
			(target:HasTag("paralyzed") and "TARGET_PARALYZED") or
			(weapon and weapon:HasTag("nessbat") and  (
				(GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] and GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] > 1.5 and "SWING_BAT_SMALL_TARGET") or
				(GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] and GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] <= 1.5 and "SWING_BAT_BIG_TARGET") or
				(target:HasTag("epic") and 
					(math.random(100) < 67 and "SWING_BAT_BOSS") or
					(next(friends) and math.random(100) < 36 and "BOSS_ENCOURAGE_FRIENDS") or "BOSS"
				) or 
				"SWING_BAT_GENERIC")
			) or
            (target:HasTag("prey") and not target:HasTag("hostile") and "PREY") or
            (string.find(target.prefab, "pig") ~= nil and target:HasTag("pig") and not target:HasTag("werepig") and "PIG") or
			(target:HasTag("epic") and (
				(next(friends) and math.random(100) < 36 and "BOSS_ENCOURAGE_FRIENDS") or "BOSS"
			)) or
			(weapon and weapon.prefab == "hambat" and "SWING_HAMBAT") or
            target.prefab
        )
        or nil
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

local function onsave(inst, data)
	data.sanity_tasks = {}
	for k, v in pairs(inst.sanity_tasks) do
		table.insert(data.sanity_tasks, GetTaskRemaining(v[0]))
	end
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

	if not(data and data.sanity_tasks) then return end
	for k, v in pairs(data.sanity_tasks) do
		table.insert(inst.sanity_tasks, {
			[0] = inst:DoTaskInTime(v + .1, kill_task), 
			[1] = inst:DoPeriodicTask(.5, function() inst.components.sanity:DoDelta(1) end)
		})
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

	inst.OnSave = onsave
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
	inst:ListenForEvent("picksomething", doresourcefulattempt)
	inst:ListenForEvent("onhitother", docritattempt)
	inst:ListenForEvent("oneat", oneatfood)

	inst.sanity_tasks = {}
	inst:ListenForEvent("timerdone", ontimerdone)
	inst:ListenForEvent("castpsi", oncastpsi)

	inst.components.combat.GetBattleCryString = battlecrystring
	
end

return MakePlayerCharacter("gramness", prefabs, assets, common_postinit, master_postinit, start_inv)
