
local function info()

    local path = Astro.Path             local info = require( path .. "info.lua" )
    
    local out = "Astro - Version Date: " .. info.VersionDate .. " - " .. info.ID

    print(out)

end

local function subRequire()

    local path = Astro.Path

    for i,v in ipairs { "Type", "Table", "Config" } do
    
        local path = path .. v:lower()          Astro[v] = require(path)
    
    end

end

Astro = {}

return function(path)

    path = path or ''           path = path .. "Astro/"

    Astro.Path = path           subRequire()

    Astro.readOnly = Astro.Table.readOnly           Astro = Astro:readOnly()

end