--[[
    this function should start on upper case if it is global, as well as use cammel case instead of snake case
    we can also change it to a more descriptive name
--]]
function RemoveMemberFromParty(playerId, membername)
    --this variable should start on upper case if it is global
    Player = Player(playerId)
    local party = Player:getParty()
    --variable k is unused
    for _,v in pairs(party:getMembers()) do
        --I assume Player() can handle either the ID or name of the player. Otherwise, it should be changed to the one it handles
        if v == Player(membername) then
            party:removeMember(Player(membername))
            --we can break from the for loop as the searched member has already been removed
            break
        end
    end
end