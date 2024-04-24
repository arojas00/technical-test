--this function should start on upper case if it is global
function PrintSmallGuildNames(memberCount)
    -- this method is supposed to print names of all guilds that have less than memberCount max members
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;"
    local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))
    -- the result ID is used to retrieve the names obtained form the query
    local guildName = result.getString(resultId, "name")
    print(guildName)
    -- memory should be freed to avoid printing older results
    result.free(resultId)
end