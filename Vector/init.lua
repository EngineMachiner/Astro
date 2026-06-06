---@param a table
---@param b table
---@return table
local function __add(a, b) end

---@param a table
---@param b table
---@return table
local function __sub(a, b) end

---@param a table|number
---@param b table|number
---@return table
local function __mul(a, b) end

---@param a table|number
---@param b table|number
---@return table
local function __div(a, b) end

---@param a table|number
---@param b table|number
---@return table
local function __mod(a, b) end

---@param a table
---@return table
local function __unm(a) end

---@param a table
---@param b table
---@return boolean
local function __eq(a, b) end

---@param a table
---@return string
local function __tostring(a) end

---@param a any
---@return boolean
local function isVector(a) end

---@param __index table?
---@return fun(...:any): table
local function builder(__index) end

local vector = {
    isVector = isVector,
    builder = builder,
}

return setmetatable(vector, { __call = builder() })
