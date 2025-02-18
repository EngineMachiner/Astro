-- This comment is a test.

return function(path)

    path = path or ''           require(path)(path)


    local concat = Astro.Table.concat
    local config = Astro.Config.Concat

    config.showIndex = false
    config.keyQuotes = false


    local file = io.open( path .. "info.lua", 'w' )

    local t = { VersionDate = os.date("%Y%m%d"), ID = id }

    local body = "return " .. concat(t)


    file:write(body)    file:flush()

    file:close()

end