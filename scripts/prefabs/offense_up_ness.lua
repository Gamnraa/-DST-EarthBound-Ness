--Refactoring from PSI Shield
--But doing it in a way that will save as much time rewriting code as possible here
--Should I ever want another PSI that works similarly to the two
local assets =
{
    Asset("ANIM", "anim/swap_offense_up_ness.zip"),
    Asset("ANIM", "anim/ground_offense_up.zip"),
	Asset("ANIM", "anim/ground_four_d_slip_o.zip"),
	Asset("ANIM", "anim/swap_four_d_slip_o.zip"),
}

local psiLines = {
  "Offense Up!"
}

local psiInsts = {}
	
local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_offense_up_ness", "swap_offense_up_ness")
	--owner.AnimState:OverrideSymbol("swap_object", "swap_four_d_slip", "swap_four_d_slip")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function onAttack(inst, data)
	inst.offenseupfx.AnimState:PlayAnimation("rehit")
end

local function removePsi(inst, target)
	psiInsts[target] = nil
	if target.components.homesickness then
		target:PushEvent("sanitydelta", {oldpercent = target.components.sanity:GetPercent(), newpercent = target.components.sanity:GetPercent()})
	end
	
	target.components.combat.nessdamagemods["offenseup"] = 1
	if target.components.talker and inst:HasTag("player") then	
		target.components.talker:Say("It was fun while it lasted.")
	end
	inst:RemoveEventCallback("onhitother", onAttack, target)
	--inst:Remove()
	target:DoTaskInTime(0, function()
		target.offenseupfx = nil
	end)
	
	if target.components.homesickness then
		print("End of homesickness buff")
		target.components.homesickness.offenseupbuff = nil
		target:RemoveTag("gutsy")
		target:PushEvent("sanitydelta", {oldpercent = target.components.sanity:GetPercent(), newpercent = target.components.sanity:GetPercent()})
	end
end

local function onAttached(inst, target)
	inst.entity:SetParent(target.entity)
	inst.Transform:SetPosition(0, 0, 0)
	inst:ListenForEvent("death", function()
		inst.components.debuff:Stop()
	end, target)
	
	if target.components.combat then
		target.components.combat.externaldamagemultipliers:SetModifier(target, 1.25, "offenseup")
		inst:ListenForEvent("onhitother", onAttack, target)
		target.offenseupfx = SpawnPrefab("offense_up_fx")
		target.offenseupfx.entity:SetParent(target.entity)
	end
	
	if target.components.homesickness then
		target:AddTag("gutsy")
		target.components.homesickness.offenseupbuff = true
	end
end

local function onTimerDone(inst, data)
	if data.name == "offenseupover" then
		inst.components.debuff:Stop()
	end
end
	

----------------------------------------
-- Function that is called when the player successfully performs PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
----------------------------------------
local function doPsi(inst, target, isOwner) 
	--[[if isOwner then
		target.components.combat.externaldamagemultipliers:SetModifier(target, psiVars["self"][inst.prefab], "offenseup")
	else
		target.components.combat.externaldamagemultipliers:SetModifier(target, psiVars["other"][inst.prefab], "offenseup")
	end]]

	if target.components.combat then
		target.components.combat.nessdamagemods["offenseup"] = 1.25
	end
	
	local duration = 240
	psiInsts[target] = target:DoTaskInTime(duration, function() removePsi(inst, target) end)
	
	if target.components.homesickness then
		target:AddTag("gutsy")
		target.components.homesickness.offenseupbuff = true
	end
	
	inst:ListenForEvent("onhitother", onAttack, target)
	target.offenseupfx = SpawnPrefab("offense_up_fx")

	target.offenseupfx.entity:SetParent(target.entity)

end

-----------------------------------------
-- Function that calls when the player attempts to cast a spell with PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
-----------------------------------------
local function canPsi(inst, target)
	local caster = inst.components.inventoryitem.owner
	if not target then target = caster end	
    if caster.components.sanity.current >= TUNING.GRAMNESS_OFFENSE_UP_SANITY then
		if target.offenseupfx then
			if caster == target then
				caster.components.talker:Say("I've got Offense Up already!")
				return
			end
			caster.components.talker:Say("I just gave them a helping hand!")
			return
		end
		caster.components.talker:Say(psiLines[math.random(#psiLines)])
		caster.components.sanity:DoDelta(-TUNING.GRAMNESS_OFFENSE_UP_SANITY)
		doPsi(inst, target, target == caster)
	else 
		caster.components.talker:Say("No can do!")	  
    end
 
end

 local function createPsi(name, build)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		
		MakeInventoryPhysics(inst)
		inst.AnimState:SetBank("ground_" .. build)
		inst.AnimState:SetBuild("ground_" .. build)
		inst.AnimState:PlayAnimation("idle")
		
		inst:AddComponent("betterspellcaster")	
		inst.components.betterspellcaster:SetSpellFn(canPsi)
		inst.components.betterspellcaster.canuseontargets = true	
		inst.components.betterspellcaster.canonlyuseonlocomotors = true
		inst.components.betterspellcaster.canusefrominventory = true
		--inst.components.spellcaster.quickcast = true
		--inst.OnLoad = onLoad
		--inst.OnSave = onSave
		
		inst:AddComponent("inspectable")
		inst:AddComponent("inventoryitem") 
		inst.inventory = inst.components.inventoryitem
		inst.inventory.imagename = build
		inst.inventory.atlasname = "images/inventoryimages/" .. build .. ".xml"		
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

local function makeBuff(name, attachedfn, detachedfn, duration, priority, prefabs)
	local function fn()
		local inst = CreateEntity()
		
		if not TheWorld.ismastersim then
			inst:DoTaskInTime(0, inst.Remove)
			return isnt
		end
		inst.entity:AddTransform()

        --[[Non-networked entity]]
        --inst.entity:SetCanSleep(false)
        inst.entity:Hide()
        inst.persists = false

        inst:AddTag("CLASSIFIED")

        inst:AddComponent("debuff")
        inst.components.debuff:SetAttachedFn(attachedfn)
        inst.components.debuff:SetDetachedFn(detachedfn)
        inst.components.debuff.keepondespawn = true

        inst:AddComponent("timer")
        inst.components.timer:StartTimer("offenseupover", duration)
        inst:ListenForEvent("timerdone", onTimerDone)

        return inst
	end
	return Prefab(name, fn, nil, prefabs)
end

STRINGS.NAMES.OFFENSE_UP_NESS  = "Offense Up"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.OFFENSE_UP_NESS = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.OFFENSE_UP_NESS = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNESS.DESCRIBE.OFFENSE_UP_NESS = "Pack an extra punch, at the snap of the fingers!"

return createPsi("offense_up_ness", "offense_up")
	  -- makeBuff("buff_offense_up_ness", onAttached, removePsi, 240, 1, {"offense_up_fx"})


