---@param n number
---@return number
local function nextPowerOfTwo(n) end

---@param a number
---@param b number
---@return number
local function safeDivision(a, b) end

---@param a number
---@param b number
---@return number
local function safeModulo(a, b) end

---@param a number
---@return boolean
local function isEven(a) end

---@param a number
---@return boolean
local function isOdd(a) end

return {
    nextPowerOfTwo = nextPowerOfTwo,
    safeDivision = safeDivision,
    safeModulo = safeModulo,
    isEven = isEven,
    isOdd = isOdd,
}
