---@class Astro.Vector
---@field x number
---@field y number
---@field z number

---@param a Astro.Vector
---@param b Astro.Vector
---@return Astro.Vector
local function __add(a, b) end

---@param a Astro.Vector
---@param b Astro.Vector
---@return Astro.Vector
local function __sub(a, b) end

-- Scalar multiplication for vectors.
---@param a number
---@param b number
---@return Astro.Vector
local function __mul(a, b) end

-- Scalar division for vectors.
---@param a number
---@param b number
---@return Astro.Vector
local function __div(a, b) end

---@param a number
---@param b number
---@return Astro.Vector
local function __mod(a, b) end

-- Returns vector in opposite direction.
---@param a Astro.Vector
---@return Astro.Vector
local function __unm(a) end

---@param a Astro.Vector
---@param b Astro.Vector
---@return boolean
local function __eq(a, b) end

---@param a Astro.Vector
---@return string
local function __tostring(a) end

---@param a any
---@return boolean
local function isVector(a) end

---@param __index table?
---@return fun(...:any): Astro.Vector
local function builder(__index) end

---@class Astro.Vector
local Vector = {
    isVector = isVector,
    builder = builder,
}

return setmetatable( Vector, { __call = builder() } )
