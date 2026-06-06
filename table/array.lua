---@param tbl table
---@return any
local function last(tbl) end

---@param to table
---@param from table
---@return nil
local function add(to, from) end

---@param a table
---@param b table
---@return table
local function sub(a, b) end

---@param t table
---@return table
local function reverse(t) end

---@param array table
---@param recursive boolean?
---@return table
local function distinct(array, recursive) end

return {
    last = last,
    add = add,
    sub = sub,
    reverse = reverse,
    distinct = distinct,
}
