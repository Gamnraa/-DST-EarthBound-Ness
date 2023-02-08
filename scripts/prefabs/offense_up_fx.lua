local assets =
{
    Asset("ANIM", "anim/offense_up_fx.zip")
}

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("offense_up_fx")
    inst.AnimState:SetBuild("offense_up_fx")
	inst:DoTaskInTime(0, function() inst.SoundEmitter:PlaySound("psisfx/psisfx/offenseup") end)
	inst.AnimState:PlayAnimation("anim")
    inst:AddTag("FX")
	
    return inst
end

return Prefab("offense_up_fx", fn, assets)