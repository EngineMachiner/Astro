-- Returns the last element of the array.
---@param tbl table
---@return any
local function last(tbl) end

-- Add elements from a table to another.
---@param to table
---@param from table
local function add(to, from) end

---@param a table
---@param b table
---@return table c array containing values from `a` without entries present in `b`.
local function sub(a, b) end

---@param t table
---@return table
local function reverse(t) end

-- Returns an array without repeated values.
---@param array table
---@param recursive boolean?
---@return table
local function distinct(array, recursive) end

---@class Array
local Array = {
    last = last,
    add = add,
    sub = sub,
    reverse = reverse,
    distinct = distinct,
}
