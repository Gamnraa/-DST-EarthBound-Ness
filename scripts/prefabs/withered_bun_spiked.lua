local Assets = { 
	-- Animation files for the item (showing it on the ground and swap symbols for the players).
   --[[ Asset("ANIM", "anim/withered_bun_spiked.zip"),
	Asset("ANIM", "anim/withered_bun_spiked_ground.zip"),

	-- Inventory image and atlas file used for the item.
    Asset("ATLAS", "images/inventoryimages/withered_bun_spiked.xml"),
    Asset("IMAGE", "images/inventoryimages/withered_bun_spiked.tex"),]]
}

local function OnEquip(inst, owner)
	-- This will override symbol "swap_body" of the equipping player with your custom build symbol.
	-- Here's what this function is overriding:
	-- owner.AnimState:OverrideSymbol(Player's_symbol, Your_build(*.zip_filename), Symbol_from_your_build(name_of_subfolder_with_art)
	owner.AnimState:OverrideSymbol("swap_object", "baseball_bat_ness", "swap_object")
	
	-- Players have 2 left arms - one of them is hidden when we are not holding an item and vice versa.
	-- Since we want to show an item on equip - hide ARM_normal and show ARM_carry.
	owner.AnimState:Show("ARM_carry")
	owner.AnimState:Hide("ARM_normal")
end

local function OnUnequip(inst, owner) 
	owner.AnimState:Hide("ARM_carry") 
	owner.AnimState:Show("ARM_normal") 
end

local function MainFunction()
	-- Functions which are performed both on Client and Server start here.
    local inst = CreateEntity()
	
	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()
	
	MakeInventoryPhysics(inst)
	
	-- Add minimap icon. Remember about its XML in modmain.lua!
	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon("baseball_bat_ness.tex")
	
	--[[ ANIMSTATE ]]--
	-- This is the name visible on the top of hierarchy in Spriter.
	inst.AnimState:SetBank("baseball_bat_ness_ground")
	-- This is the name of your compiled*.zip file.
	inst.AnimState:SetBuild("baseball_bat_ness_ground")
	-- This is the animation name while item is on the ground.
	inst.AnimState:PlayAnimation("anim")

	--[[ TAGS ]]--
	inst:AddTag("withered_bun_spiked")

    MakeInventoryFloatable(inst, "small", 0.05, {1.2, 0.75, 1.2})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
		-- If we're not the host - stop performing further functions.
		-- Only server functions below.
        return inst
    end

	inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "baseball_bat_ness"
    inst.components.inventoryitem.atlasname = "images/inventoryimages/baseball_bat_ness.xml"

	inst.components.inventoryitem.keepondeath = true
	inst.components.inventoryitem.keepondrown = true

	inst.components.inventoryitem.keepondeath = true
    
    inst:AddComponent("equippable")
	inst.components.equippable.restrictedtag = "warsho"
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.walkspeed = TUNING.CANE_SPEED_MULT, 500

	inst:AddComponent("finiteuses")

	inst:AddComponent("weapon")
	-- Durability = 500, resistance to damage = 70%
	inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(200)
    inst.components.finiteuses:SetUses(200)
    inst.components.finiteuses:SetOnFinished(inst.Remove)
	inst.components.weapon:SetDamage(120)
	

	inst.entity:AddLight() --light is not a component

    inst.Light:SetIntensity(.75)
    inst.Light:SetRadius(3)
    inst.Light:SetFalloff(0.5)
    inst.Light:SetColour(200/255, 170/255, 150/255)
	inst.Light:Enable(true)



	inst:AddComponent("blinkstaff")

	MakeHauntableLaunch(inst)

	

    return inst
end

return  Prefab("withered_bun_spiked", MainFunction, Assets)