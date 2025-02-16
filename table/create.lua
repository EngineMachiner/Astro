--[[

    Returns a function to create a table that could 
    have the table functions by default.

    Still need to see if this worth it.

]]--

return function(keys)

    local astro = Astro.Table           local meta = { __index = astro.table(keys) }
    
    return function(t) return setmetatable( t, meta ) end

end