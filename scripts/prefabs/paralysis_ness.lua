--Refactoring from PSI Shield
--But doing it in a way that will save as much time rewriting code as possible here
--Should I ever want another PSI that works similarly to the two
local assets =
{
    Asset("ANIM", "anim/swap_paralysis_ness.zip"),
    Asset("ANIM", "anim/ground_paralysis_ness.zip"),
}

local psiLines = {
  "Paralysis!",
  "Not so fast!",
  "Haha, You're not going anywhere!",
}
	
local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_" .. inst.prefab, "swap_" .. inst.prefab)
	--owner.AnimState:OverrideSymbol("swap_object", "swap_four_d_slip", "swap_four_d_slip")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end


local function onAttachedSelf(inst, target)
    --SetExternalSpeedMultiplier(target, "paralysisselfbuff", 1.25)
    target:AddTag("supergutsy")
end

local function removeSelfBuff(inst, target)
    target.components.locomotor:SetExternalSpeedMultiplier(target, "paralysisselfbuff", 1.00)
    target:RemoveTag("supergutsy")
	target.components.talker:Say(GetString(target, "ANNOUNCE_PARALYSIS_SELF_BUFF_OVER"))
end

local function exitParalysis(inst, target)
	target:RemoveTag("Paralyzed")

	local function reparalyze(newtime, newval)
		target:DoTaskInTime(math.random(2,5), function() 
			target:AddDebuff("buff_paralysis", "buff_paralysis") 
			target:PushEvent("enterparalysis", {duration = 3})
			target.paralyzed_state = newval

			if target:HasTag("supergutsy") then
				target.components.locomotor:SetExternalSpeedMultiplier(target, "paralysisselfbuff", 1.25)
			end
		end)
	end
    
    if target.paralyzed_state == 1 then 
		if math.random(100) > 49 then
        	reparalyze(3)
		else
			target.paralyzed = nil
		end
		if target:HasTag("supergutsy") then
			target.components.talker:Say(GetString(target, "ANNOUNCE_CAST_PARALYSIS_ON_SELF"))
		end

	elseif target.paralyzed_state == 2 then
		if math.random(100) > 65 then
			reparalyze(5, 3)
		else
			target.paralyzed_state = nil
		end
		if target:HasTag("supergutsy") then
			target.components.talker:Say(GetString(target, "ANNOUNCE_CAST_PARALYSIS_ON_SELF"))
		end
	elseif target.paralyzed_state == 3 then 
		if math.random(100) > 32 then
			reparalyze(3)
		else
			target.paralyzed_state = nil
		end
		if target:HasTag("supergutsy") then
			target.components.talker:Say(GetString(target, "ANNOUNCE_CAST_PARALYSIS_ON_SELF_BAD_IDEA"))
		end
	else
		if target:HasTag("supergutsy") then
			target.components.talker:Say(GetString(target, "ANNOUNCE_CAST_PARALYSIS_ON_SELF_BAD_IDEA"))
		end
	end
    
    target.components.combat.externaldamagetakenmultipliers:RemoveModifier(target, "paralysis_ness")
    inst:Remove()
    target:DoTaskInTime(0, function() target.paralysisfx = nil end)
end

local function onAttached(inst, target)
	target:AddTag("Paralyzed")
	inst.entity:SetParent(target.entity)
	inst.Transform:SetPosition(0, 0, 0)
	inst:ListenForEvent("death", function()
		inst.components.debuff:Stop()
	end, target)

    inst:ListenForEvent("exitparalysis", function() inst.components.debuff:Stop() end, target)
	
	if target.components.combat then
		target.components.combat.externaldamagetakenmultipliers:SetModifier(target, 1.25, "paralysis_ness")
	end

	target.paralysisfx = SpawnPrefab("paralysis_fx")
	target.paralysisfx.entity:SetParent(target.entity)
end

local function onTimerDone(inst, data)
	if data.name == "selfparalysisover" then
		inst.components.debuff:Stop()
	end
end

-----------------------------------------
-- Function that calls when the player attempts to cast a spell with PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
-----------------------------------------
local function canPsi(inst, target)
	local caster = inst.components.inventoryitem.owner	
    if caster.components.sanity.current >= TUNING.GRAMNESS_PARALYSIS_SANITY then
		if target:HasTag("player") and caster ~= target and not TheNet:GetPVPEnabled() then
            caster.components.talker:Say(GetActionFailString(caster, "CAST_PSI", "CANT_CAST_FRIEND"))
            return
		end

        if target:HasTag("Paralyzed") then
            caster.components.talker:Say(GetActionFailString(caster, "CAST_PSI", "ALREADY_TARGETTED"))
            return
        end

		caster.components.talker:Say(psiLines[math.random(#psiLines)])
		caster.components.talker:Say(GetString(caster, "CAST_PARALYSIS", (caster == target and "SELF") or "OTHER"))
		caster.components.sanity:DoDelta(-TUNING.GRAMNESS_PARALYSIS_SANITY)

        target:PushEvent("enterparalysis", {inst.prefab == "paralysis_ness" and 6 or 8})
        if target == caster then
            caster:AddDebuff("buff_paralysis_self", "buff_paralysis_self")
        end

		target:AddDebuff("buff_paralysis", "buff_paralysis")
        --target:ListenForEvent("exitparalysis", exitParalysis, target)

		if inst.prefab == "paralysis_ness" then
			target.paralyzed_state = 1
		else
			target.paralyzed_state = 2
		end

		caster:PushEvent("castpsi", {doer = caster, cost = TUNING.GRAMNESS_PARALYSIS_SANITY})
	else 
		caster.components.talker:Say(GetActionFailString(caster, "CAST_PSI", "NOT_ENOUGH_SANITY")) 
    end
 
end

 local function createPsi(name, build)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddNetwork()
		
		MakeInventoryPhysics(inst)
		inst.AnimState:SetBank("ground_" .. build)
		inst.AnimState:SetBuild("ground_" .. build)
		inst.AnimState:PlayAnimation("idle")
		if not TheWorld.ismastersim then
			return inst
		end
		inst.entity:SetPristine()
		
		inst:AddComponent("spellcaster")	
		inst.components.spellcaster:SetSpellFn(canPsi)
		inst.components.spellcaster.canuseontargets = true	
		inst.components.spellcaster.canonlyuseoncombat = true
		inst.components.spellcaster.canonlyuseonlocomotors = true
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
        if duration then inst.components.timer:StartTimer("selfparalysisover", duration) end
        inst:ListenForEvent("timerdone", onTimerDone)

        return inst
	end
	return Prefab(name, fn, nil, prefabs)
end

STRINGS.NAMES.PARALYSIS_NESS = "Paralysis"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PK_FLASH = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.PK_FLASH = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNESS.DESCRIBE.PK_FLASH = "One of my many tricks up my sleeve, you know."

return createPsi("paralysis_ness", "paralysis_ness"),
       --createPsi("paralysis_ness_o"),
	   makeBuff("buff_paralysis", onAttached, exitParalysis, nil, 1, {"paralysis_fx"}),
       makeBuff("buff_paralysis_self", onAttachedSelf, removeSelfBuff, 180, 1, {"paralysis_fx"})


