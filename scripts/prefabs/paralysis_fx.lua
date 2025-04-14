local assets =
{
    Asset("ANIM", "anim/paralysis_fx.zip")
}

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("paralysis_fx")
    inst.AnimState:SetBuild("paralysis_fx")
	inst:DoTaskInTime(0, function() inst.SoundEmitter:PlaySound("psisfx/psisfx/paralysis") end)
	inst.AnimState:PlayAnimation("anim")
    inst:AddTag("FX")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:DoTaskInTime(3, inst.Remove)
	
    return inst
end

return Prefab("paralysis_fx", fn, assets)