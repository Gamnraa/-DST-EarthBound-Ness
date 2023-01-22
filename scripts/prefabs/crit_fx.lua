local assets =
{
    Asset("ANIM", "anim/crit_fx.zip")
}

local function killFX(inst)
	inst:DoTaskInTime(2, inst.Remove)
end

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("crit_fx")
    inst.AnimState:SetBuild("crit_fx")
	inst:DoTaskInTime(0, function() inst.SoundEmitter:PlaySound("psisfx/psisfx/crithit") end)
	inst.AnimState:PlayAnimation("anim")
	
	inst.kill_fx = killFX
    return inst
end

return Prefab("crit_fx", fn, assets)