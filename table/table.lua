--[[

    The std function returns a table with both Lua and Astro table functions.
    It can be used to redefine a local table variable.

    Example: {
    
        local astro = Astro.Table

        local keys = {
        
            Lua =  { "isEmpty" },       Astro = { "concat" }
        
        } 

        local table = astro.table(keys)

    }

]]--

local function add( tbl, key, subKeys )

    local astro = Astro.Table           local pairs = { Astro = astro, Lua = table }

    if not subKeys then return end
    
    for i,v in ipairs(subKeys) do tbl[v] = pairs[key][v] end

end

return function(keys)

    local tbl = {}          for k,v in pairs(keys) do add( tbl, k, v ) end

    return tbl

end