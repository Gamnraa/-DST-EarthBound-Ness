local assets =
{
	Asset( "ANIM", "anim/gramness.zip" ),
	Asset( "ANIM", "anim/ghost_gramness_build.zip" ),
}

local skins =
{
	normal_skin = "gramness",
	ghost_skin = "ghost_gramness_build",
}

return CreatePrefabSkin("gramness_none",
{
	base_prefab = "gramness",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"GRAMNESS", "CHARACTER", "BASE"},
	build_name_override = "gramness",
	rarity = "Character",
})