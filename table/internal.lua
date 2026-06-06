-- Internal function which conserves the next table with the former metatable.
---@param to table
---@param from table
---@param meta boolean?
---@return table
local function meta(to, from, meta) end

---@class Astro.Table
local Table = { Internal = { meta = meta } }