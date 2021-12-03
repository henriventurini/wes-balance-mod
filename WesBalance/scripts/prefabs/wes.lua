local MakePlayerCharacter = require("prefabs/player_common")

local assets =
{
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
    Asset("ANIM", "anim/player_mount_wes.zip"),
    Asset("ANIM", "anim/player_mime.zip"),
}

local prefabs =
{
    "balloons_empty",
}

local function common_postinit(inst)
    inst:AddTag("mime")
    inst:AddTag("balloonomancer")
end

local function master_postinit(inst)
    inst.components.health:SetMaxHealth(130)
    inst.components.hunger:SetMax(150)
    inst.components.combat.damagemultiplier = 0.9
    inst.components.hunger:SetRate(0.207)
    inst.components.sanity:SetMax(155)
	inst.components.locomotor.runspeed = 8
end

return MakePlayerCharacter("wes", prefabs, assets, common_postinit, master_postinit, prefabs)
