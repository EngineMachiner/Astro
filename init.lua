
local debug = {}

Astro = { Debug = debug }

return function(path)

    path = path or ''       path = path .. "Astro/"

    for i,v in ipairs { "Type", "Table" } do
    
        local path = path .. v:lower()

        Astro[v] = require(path)
    
    end

    debug.concat = require( path .. "debug/concat" )

end