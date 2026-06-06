---@param a any
---@return boolean
local function isBoolean(a) end

---@param a any
---@return boolean
local function isNumber(a) end

---@param a any
---@return boolean
local function isString(a) end

---@param a any
---@return boolean
local function isFunction(a) end

---@param a any
---@return boolean
local function isTable(a) end

---@param a any
---@return boolean
local function isUserData(a) end

---@param a any
---@return boolean
local function isNil(a) end

return {
    isBoolean = isBoolean,
    isNumber = isNumber,
    isString = isString,
    isFunction = isFunction,
    isTable = isTable,
    isUserData = isUserData,
    isNil = isNil,
}
