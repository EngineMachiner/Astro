
return function(path)

    local subPath = path .. "Astro/"

    require(subPath)(path)


    local concat = Astro.Table.concat
    local config = Astro.Config.Concat

    config.showIndex = false
    config.keyQuotes = false


    local file = io.open( subPath .. "info.lua", 'w' )

    local t = { VersionDate = os.date("%Y%m%d"), ID = id }

    local body = "return " .. concat(t)


    file:write(body)    file:flush()

    file:close()

end