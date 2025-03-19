
local assets =
{
    Asset("ANIM", "anim/ground_pk_flash.zip"),
    Asset("ANIM", "anim/swap_pk_flash.zip"),
	Asset("ANIM", "anim/ground_pk_flash_o.zip"),
	Asset("ANIM", "anim/swap_pk_flash_o.zip"),
}

local psiLines = {
  "PK Flash!"
}
	
local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_" .. inst.prefab, "swap_" .. inst.prefab)
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

--Inst is a different context so we need a second timerdone function
local function onSanityRegenDone(inst, data)
	if data.name == "nesssanityregenover" then
		if inst.ness_sanity_regen then inst.ness_sanity_regen:Stop() end
		inst.ness_sanity_regen = nil
	end
end

----------------------------------------
-- Function that is called when the player successfully performs PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
----------------------------------------
local function doPsi(inst, target, pos) 
	local ents = TheSim:FindEntities(pos.x, pos.y, pos.z, 18, {"_combat"}, {"player", "companion", "shadow", --[["shadowminion",]] "shadowchesspiece"})
	
	inst.SoundEmitter:PlaySound("psisfx/psisfx/" .. inst.prefab)
	for _, v in pairs(ents) do
		
		v.pkflashfx = SpawnPrefab("pk_flash_fx")
		v.pkflashfx.entity:SetParent(v.entity)
		
		if v.components.hauntable then
			v.components.hauntable:Panic(5)
			v:DoTaskInTime(5.1, function()
				if v.components.combat:HasTarget() then
					v.components.combat:DropTarget()
				end
			end)
		elseif v.components.combat:HasTarget() then
			v.components.combat:DropTarget()
		end
		
		if v:HasTag("epic") and --[[v.components.health.maxhealth < 10000 and]] inst.prefab == "pk_flash_o" then
			local roll = math.random(100)
			print("epic instant kill roll " .. roll)
			if roll < 13 then
				if v.components.health.maxhealth < 10000 then
					v.components.health:Kill()
				else
					v.components.health:DoDelta(math.random(1000, 5000))
				end
			end
			local damage = math.random(30, 200)
			v:DoTaskInTime(.15, function() v.pkflashfx.AnimState:PlayAnimation("anim_omega") end)
			v.components.health:DoDelta(-damage)
		else
			local damage = 0
			if inst.prefab == "pk_flash" then
				damage = math.random(0, 30)
				v:DoTaskInTime(.15, function() v.pkflashfx.AnimState:PlayAnimation("anim_alpha") v.pkflashfx:kill_fx() end)
			else
				damage = math.random(30, 200)
				v:DoTaskInTime(.15, function() v.pkflashfx.AnimState:PlayAnimation("anim_omega") v.pkflashfx:kill_fx() end)
			end
			if v.components.health then
				v.components.health:DoDelta(-damage)
			end
		end
	end
end

-----------------------------------------
-- Function that calls when the player attempts to cast a spell with PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
-----------------------------------------
local function canPsi(inst, target)
	local caster = inst.components.inventoryitem.owner	
    if caster.components.sanity.current >= TUNING.GRAMNESS_OFFENSE_UP_SANITY then
		caster.components.sanity:DoDelta(-TUNING.GRAMNESS_OFFENSE_UP_SANITY)
		caster.components.talker:Say(psiLines[math.random(#psiLines)])
		--.SoundEmitter:PlaySound("psifx/psifx/" .. inst.prefab)
		doPsi(inst, target, caster:GetPosition())


		caster:PushEvent("castpsi", {doer = caster, cost = TUNING.GRAMNESS_PK_FLASH_SANITY})
	else 
		caster.components.talker:Say("No can do!")	  
    end
 
end

 local function createPsi(name)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddSoundEmitter()
		inst.entity:AddNetwork()
		
		MakeInventoryPhysics(inst)
		inst.AnimState:SetBank(name)
		inst.AnimState:SetBuild("ground_" .. name)
		inst.AnimState:PlayAnimation("idle")
		if not TheWorld.ismastersim then
			return inst
		end
		inst.entity:SetPristine()
		
		inst:AddComponent("spellcaster")	
		inst.components.spellcaster:SetSpellFn(canPsi)
		inst.components.spellcaster.canuseontargets = true	
		inst.components.spellcaster.canonlyuseoncombat = true
		inst.components.spellcaster.quickcast = true
		--inst.OnLoad = onLoad
		--inst.OnSave = onSave
		
		inst:AddComponent("inspectable")
		inst:AddComponent("inventoryitem") 
		inst.inventory = inst.components.inventoryitem
		inst.inventory.imagename = name
		inst.inventory.atlasname = "images/inventoryimages/" .. name .. ".xml"		
		inst:AddComponent("equippable")
		
		inst.components.equippable:SetOnEquip( onequip )
		inst.components.equippable:SetOnUnequip( onunequip )
		
		
		inst.components.inventoryitem.onputininventoryfn = function(inst, player)
			if player.components.inventory then
				local gowner = inst.components.inventoryitem:GetGrandOwner()
				if gowner.components.inventory and gowner.prefab ~= "gramness" then
					inst:DoTaskInTime(0.1, function()
						gowner.components.inventory:DropItem(inst)
						if gowner:HasTag("player") then
							gowner.components.talker:Say("I can't use this!")
						end
					end)
				end
			end
		end
		return inst
	end
    return Prefab(name, fn, assets)
end
STRINGS.NAMES.PK_FLASH = "PK Flash"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PK_FLASH = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.PK_FLASH = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNESS.DESCRIBE.PK_FLASH = "Don't stare directly into it!"

STRINGS.NAMES.PK_FLASH_O  = "PK Flash Omega"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PK_FLASH_O = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.PK_FLASH_O = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNESS.DESCRIBE.PK_FLASH_O = "Don't stare directly into it!"

return createPsi("pk_flash"),
	   createPsi("pk_flash_o")


