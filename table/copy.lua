---@param tbl table
---@return table
local function shallow(tbl) end

---@param tbl table
---@return table
local function deep(tbl) end

---@class Copy
local Copy = {
    shallow = shallow,
    deep = deep,
}
