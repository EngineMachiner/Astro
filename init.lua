
local debug = {}        Astro = { Debug = debug }

local function subRequire()

    local path = Astro.Path

    for i,v in ipairs { "Type", "Table", "Config" } do
    
        local path = path .. v:lower()          Astro[v] = require(path)
    
    end

    debug.concat = loadfile( path .. "debug/concat.lua" )

end

return function(path)

    path = path or ''           path = path .. "Astro/"

    Astro.Path = path           subRequire()

    Astro.readOnly = Astro.Table.readOnly           Astro = Astro:readOnly()

end