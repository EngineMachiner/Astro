---@param to table
---@param from table
---@return table
local function deepMerge(to, from) end

---@param to table
---@param from table
---@return table
local function merge(to, from) end

---@param tbl table
---@return table
local function keys(tbl) end

---@param tbl table
---@return table
local function values(tbl) end

---@param tbl table
---@return any
local function random(tbl) end

---@param tbl table
---@param x any
---@return table
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
---@return table
local function sub(a, b) end

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

local astro = {
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

return astro
