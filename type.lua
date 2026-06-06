
---@param a any
---@return boolean
local function isBoolean(a) return type(a) == "boolean" end

---@param a any
---@return boolean
local function isNumber(a) return type(a) == "number" end

---@param a any
---@return boolean
local function isString(a) return type(a) == "string" end

---@param a any
---@return boolean
local function isFunction(a) return type(a) == "function" end

---@param a any
---@return boolean
local function isTable(a) return type(a) == "table" end

---@param a any
---@return boolean
local function isUserData(a) return type(a) == "userdata" end

---@param a any
---@return boolean
local function isNil(a) return a == nil end

return {

    isBoolean = isBoolean,              isNumber = isNumber,            isString = isString,
    isFunction = isFunction,            isTable = isTable,              isUserData = isUserData,
    isNil = isNil

}
