
-- All isValid functions are basically compare functions.

local path = Astro.Path .. "table/"

local astro = Astro.Type

local isTable = astro.isTable
local isNil = astro.isNil

local function merge( from, to )

    for k,v in pairs(from) do to[k] = v end

end

local function keys(tbl)
    
    local t = {}         for k,v in pairs(tbl) do table.insert( t, k ) end

    return t

end

local function values(tbl)
    
    local t = {}       for k,v in pairs(tbl) do table.insert( t, v ) end

    return t

end

local function random(tbl)
    
    local values = values(tbl)          local i = math.random( #values )

    return values[i]

end

local function isValid( tbl, x )

    local default = function(k) return tbl[k] == x end

    return isFunction(x) and x or default

end

-- Returns a value and key if the value is found.
-- The x parameter can be the function to compare or the value to search.

local function find( tbl, x )

    local isValid = isValid( tbl, x )

    for k,v in pairs(tbl) do    if isValid(k) then return v, k end  end
    
end

-- Returns filtered values using a function with the key as argument.

local function filter( tbl, x )

    local isValid = isValid( tbl, x )           local t = {}

    for k,v in pairs(tbl) do if isValid(k) then t[k] = v end end

    return t

end

local function sub( a, b )

    local function isValid(key)
    
        local val, inBoth = a[key]

        for k,v in pairs(b) do if val == v then inBoth = true end end
    
        return not inBoth

    end

    return filter( a, isValid )

end

-- Returns a table minus the value first found.

local function minus( tbl, val )

    local t = {}        local val, key = find( tbl, val )

    for k,v in pairs(tbl) do if k ~= key then t[k] = v end end

    return t

end

-- Returns a table minus all the found values.

local function minusAll( tbl, val )

    return filter( tbl, function(k) return tbl[k] ~= val end )

end

local function isEmpty(t)
  
    local next = next(t)      return isNil(next)
    
end


local tbl = {
    
    merge = merge,          keys = keys,        values = values,

    random = random,        find = find,        filter = filter,        
    
    minus = minus,      minusAll = minusAll,        isEmpty = isEmpty

}


local paths = { Array = "array",    Copy = "copy" }

local function name(key) return paths[key] or key end

local keys = { "Array", "Copy", "intersect", "table", "create", "readOnly" }

for i,v in ipairs(keys) do tbl[v] = require( path .. name(v) ) end

tbl.concat = loadfile( path .. "concat.lua" )


return tbl