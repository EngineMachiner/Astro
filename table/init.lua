
local path = Astro.Path .. "table/"

local astro = Astro.Type

local isTable = astro.isTable
local isNil = astro.isNil

local function isEmpty(t)
  
    local next = next(t)      return isNil(next) 
    
end

local tbl = { isEmpty = isEmpty }

local keys = { "table", "create", "readOnly", "copy" }

for i,v in ipairs(keys) do tbl[v] = require( path .. v ) end

return tbl