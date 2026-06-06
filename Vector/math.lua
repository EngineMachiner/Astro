---@type string[]
local planeAxes = { 'x', 'y' }
---@type string[]
local spaceAxes = { 'x', 'y', 'z' }

---@param a table
---@return number
local function normSqr(a) end

---@param a table
---@return number
local function norm(a) end

---@param a Vector
---@return Vector
local function copy(a) end

---@param a Vector
---@return Vector
local function unit(a) end

---@param a Vector
---@return boolean
local function isZero(a) end

---@param a table
---@return number, number, number
local function unpack(a) end

---@param a table
---@return number
local function angle(a) end

---@param a Vector
---@param b Vector
---@return Vector
local function componentProduct(a, b) end

---@param a Vector
---@param b Vector
---@return Vector
local function componentDivision(a, b) end

---@param vector Vector
---@param key string
---@return Vector
local function componentVector(vector, key) end

---@param vector table
---@return table
local function maxComponent(vector) end

---@param vector table
---@return table
local function minComponent(vector) end

return {
    planeAxes = planeAxes,
    spaceAxes = spaceAxes,
    componentProduct = componentProduct,
    componentDivision = componentDivision,
    componentVector = componentVector,
    maxComponent = maxComponent,
    minComponent = minComponent,
    normSqr = normSqr,
    norm = norm,
    unit = unit,
    isZero = isZero,
    angle = angle,
    unpack = unpack,
    copy = copy,
}
