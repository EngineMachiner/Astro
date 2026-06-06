
local planeAxes = { 'x', 'y' }
local spaceAxes = { 'x', 'y', 'z' }

---@param a Astro.Vector
---@return number
local function normSqr(a) end

---@param a Astro.Vector
---@return number
local function norm(a) end

---@param a Astro.Vector
---@return Astro.Vector
local function copy(a) end

---@param a Astro.Vector
---@return Astro.Vector
local function unit(a) end

---@param a Astro.Vector
---@return boolean
local function isZero(a) end

---@param a Astro.Vector
---@return number, number, number
local function unpack(a) end

---@param a Astro.Vector
---@return number angle
local function angle(a) end

-- Returns component / Hadamard / element-wise / product between vectors.
---@param a Astro.Vector
---@param b Astro.Vector
---@return Astro.Vector
local function componentProduct(a, b) end

-- Returns component / Hadamard / element-wise / division between vectors.
---@param a Astro.Vector
---@param b Astro.Vector
---@return Astro.Vector
local function componentDivision(a, b) end

-- Returns vector equivalent to a linear algebra vector projection.
---@param vector Astro.Vector
---@param key string
---@return Astro.Vector
local function componentVector(vector, key) end

-- Returns a `pair` with the key and maximum value of a vector.
---@param vector table
---@return pair
local function maxComponent(vector) end

-- Returns a `pair` with the key and minimum value of a vector.
---@param vector table
---@return pair
local function minComponent(vector) end

---@class Vector
local Vector = {
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
