-- Returns a table which contains the key-values on both tables.
---@param a table
---@param b table
---@param distinct boolean?
---@return table
local function intersect(a, b, distinct) end

---@class Astro.Table
local Table = { intersect = intersect }