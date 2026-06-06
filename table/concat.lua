---@vararg any
---@return string
local function concat(...) end

---@param tbl table
---@return string
local function pack(tbl) end

---@class Astro.Table
local Table = { concat = concat, pack = pack }