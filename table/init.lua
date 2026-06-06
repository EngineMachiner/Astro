---@class pair
---@field key any
---@field value any

---@param to table
---@param from table
---@return table
local function deepMerge(to, from) end

---@param to table
---@param from table
---@return table
local function merge(to, from) end

-- Returns an array with all the table keys.
---@param tbl table
---@return table
local function keys(tbl) end

-- Returns an array with all the table values.
---@param tbl table
---@return table
local function values(tbl) end

---@param tbl table
---@return any random which is a random value in the table.
local function random(tbl) end

--- Returns a pair table if the value is found.
---@param tbl table
---@param x any The x parameter can be the function to compare or the value to search.
---@return pair
local function find(tbl, x) end

---@param tbl table
---@param x any
---@return boolean
local function contains(tbl, x) end

---@param tbl table
---@param x any
---@return table
local function filter(tbl, x) end

---@param a table
---@param b table
---@return table c table containing values from `a` without entries present in `b`.
local function sub(a, b) end

-- Returns table minus the first found value.
---@param tbl table
---@param val any
---@return table
local function minus(tbl, val) end

---@param t table
---@return boolean
local function isEmpty(t) end

---@param input table
---@param lib table
---@return table
local function tableFactory(input, lib) end

---@class Table
---@field Array Array
---@field Copy Copy
---@field Meta Meta
local Table = {
    deepMerge = deepMerge,
    merge = merge,
    keys = keys,
    values = values,
    random = random,
    find = find,
    contains = contains,
    filter = filter,
    sub = sub,
    minus = minus,
    isEmpty = isEmpty,
    table = tableFactory,
}
