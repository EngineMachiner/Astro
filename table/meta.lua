---@param tbl table
---@param __index table|function
---@return table
local function setIndex(tbl, __index) end

---@class Table
local Table = { setIndex = setIndex }
