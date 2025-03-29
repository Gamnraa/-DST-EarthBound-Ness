
local prefabs = {}


table.insert(prefabs, CreatePrefabSkin("gramness_none", {
	assets = {
		Asset("ANIM", "anim/gramness.zip"),
		Asset("ANIM", "anim/ghost_gramness_build.zip"),
	},
	
	skins = {
		normal_skin = "gramness",
		ghost_skin = "ghost_gramness_build",
	},
	
	base_prefab = "gramness",
	build_name_override = "gramness",
	type = "base",
	rarity = "Character",
	skin_tags = {"BASE", "GRAMNESS", "CHARACTER"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_gramness_batter", {
	assets = {
		Asset("ANIM", "anim/ms_gramness_batter.zip"),
		Asset("ANIM", "anim/ghost_gramness_build.zip"),
	},
	
	skins = {
		normal_skin = "ms_gramness_batter",
		ghost_skin = "ghost_gramness_build",
	},
	
	base_prefab = "gramness",
	build_name_override = "ms_gramness_batter",
	type = "base",
	rarity = "ModMade",
	skin_tags = {"BASE", "GRAMNESS", "CHARACTER"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_gramness_kraken", {
	assets = {
		Asset("ANIM", "anim/ms_gramness_kraken.zip"),
		Asset("ANIM", "anim/ghost_gramness_build.zip"),
	},
	
	skins = {
		normal_skin = "ms_gramness_kraken",
		ghost_skin = "ghost_gramness_build",
	},
	
	base_prefab = "gramness",
	build_name_override = "ms_gramness_kraken",
	type = "base",
	rarity = "ModMade",
	skin_tags = {"BASE", "GRAMNESS", "CHARACTER"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_baseball_cap_ninten_onett", { --The ID of our skin
    assets = { --Our assets
        Asset( "ANIM", "anim/ms_baseball_cap_ninten_onett.zip"),
    },
    base_prefab = "baseball_cap_ninten", --The prefab of the item/structure we're adding a skin for
    build_name_override = "ms_baseball_cap_ninten_onett",

    type = "item", --We are now creating a modded item/structure! Thus our skin's type is "item" (Note: there aren't different types for modded "structures", to the game there is no difference between skinning an item, a structure, or even a mob! (Yes you could create mob skins if you wanted!)
    rarity = "ModMade",

    skin_tags = {"BASEBALLCAPNINTEN"}, --Skin tags, you should add a tag matching the original prefab of the item/structure we're adding a skin for in full capitalization
}))



return unpack(prefabs)