--[[
    asuming the first parameter in setStorageValue() is the key, the releaseStorage() function should receive it through a parameter
    otherwise, it would release a hardcoded key, regardless of the one checked in OnLogout
--]]
local function releaseStorage(player, key)
    player:setStorageValue(key, -1)
end

--this function should start on upper case if it is global
function OnLogout(player)
    local key = 1000
    --as the releaseStorage sets the value on -1, this if statement should check if the value is other than that (-1).
    if player:getStorageValue(key) ~= -1 then
        addEvent(releaseStorage, 1000, player, key)
    end
    return true
end