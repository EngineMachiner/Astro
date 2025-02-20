--[[

    Returns a function to create a table that could 
    have the table functions by default.

]]

local astro = Astro.Table

return function(input)

    local table = astro.table(input)

    return function(t)
        
        local meta = getmetatable(t)

        local __index = meta and meta.__index
    
        if __index then astro.merge( __index, table ) else meta = table end

        t = t or {}         return setmetatable( t, meta ) 
    
    end

end