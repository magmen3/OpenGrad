function construct.CanRoundNext()
    if #ReadDataMap("level_construct") ~= 0 then return true end
end

function construct.CanRandomNext() return false end

function construct.StartRoundSV()
    tdm.RemoveItems()

	for i,ply in pairs(team.GetPlayers(2)) do ply:SetTeam(1) end
	for i,ply in pairs(team.GetPlayers(3)) do ply:SetTeam(1) end

    for i,ply in pairs(team.GetPlayers(1)) do
        ply:Spawn()
    end

    SetGlobalBool("Can",true)

    return
end

function construct.RoundEndCheck()
    local alive = 0

    for i,ply in pairs(team.GetPlayers(1)) do
        if ply:Alive() then alive = alive + 1 end
    end

    if alive <= 1 then EndRound() end
end

function construct.EndRound()
    PrintMessage(3,"да я вообще делаю что хачу.")
end

function construct.PlayerSpawn(ply)
	ply:Give("weapon_hands")
    ply:Give("weapon_physgun")
    ply:Give("gmod_tool")
end

function construct.PlayerInitialSpawn(ply) ply:SetTeam(1) end

function construct.PlayerCanJoinTeam(ply,teamID)
    if teamID == 2 or teamID == 3 then return false end
end

function construct.ShouldFakePhysgun(ply,ent) return false end
--[[]
local validTypes = {
    prop = true
}
]]--
function construct.CanUseSpawnMenu(ply,class)
	-- if not validTypes[class] then return false end

    return GetGlobalVar("Can", true)
end