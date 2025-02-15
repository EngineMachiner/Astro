
local astro = Astro.Type

local isNil = astro.isNil

local function isEmpty(t) 
  
    local next = next(t)      return isNil(next) 
    
end

--[[

    Returns a table with both Lua and Astro table functions.
    It can be used to redefine a local table variable.

    Example: {
    
        local astro = Astro.Table

        local keys = { 
        
            Lua =  { "isEmpty" },       Astro = { "concat" }
        
        } 

        local table = astro.std(keys)

    }

]]--

local function add( tbl, key, subKeys )

    local astro = Astro.Table

    local lib = { Astro = astro, Lua = table }

    if not subKeys then return end
    
    for i,v in ipairs(subKeys) do tbl[v] = lib[key][v] end

end

local function std(keys)

    local tbl = {}

    for k,v in pairs(keys) do add( tbl, k, v ) end

    return tbl

end

-- Create a table that could have the table functions by default.

local function table(keys)

    local t, meta = {}, { __index = std(keys) }
    
    return setmetatable( t, meta )

end

return {

    std = std,                      table = table,
    isEmpty = isEmpty

}