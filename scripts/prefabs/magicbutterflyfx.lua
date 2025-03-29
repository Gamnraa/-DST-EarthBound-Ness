local assets =
{
    Asset("ANIM", "anim/magicbutterflyfx.zip")
}

local function killFX(inst)
	inst:DoTaskInTime(2, inst.Remove)
end

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("magicbutterflyfx")
    inst.AnimState:SetBuild("magicbutterflyfx")
	inst.AnimState:PlayAnimation("anim", true)
    inst.AnimState:SetDeltaTimeMultiplier(2)
    inst:AddTag("FX")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	
	inst.kill_fx = killFX
    return inst
end

return Prefab("magicbutterflyfx", fn, assets)