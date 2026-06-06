--- Returns a table factory function.
--- A function to create a table that could have the table functions by default.
--- Be aware that it overrides the __index metamethod.
---@param input table
---@return fun( t?:table ): table
local function create(input) return function(t) end end

---@class Astro.Table
local Table = { create = create }
