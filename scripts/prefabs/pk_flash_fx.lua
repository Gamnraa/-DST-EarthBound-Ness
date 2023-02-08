local assets =
{
    Asset("ANIM", "anim/pk_flash_fx.zip")
}

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("pk_flash_fx")
    inst.AnimState:SetBuild("pk_flash_fx")
    inst:AddTag("FX")
	--inst:DoTaskInTime(0, function() inst.SoundEmitter:PlaySound("psisfx/psisfx/offenseup") end)
	--inst.AnimState:PlayAnimation("anim")
	
    return inst
end

return Prefab("pk_flash_fx", fn, assets)