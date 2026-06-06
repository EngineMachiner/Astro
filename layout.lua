-- Convert a numeric value into a Vector when necessary.
---@param x number|Astro.Vector
---@return number|Astro.Vector
local function value(x) end

-- Returns the quantity that fits within a size, preserving vector shapes.
---@param x number|Astro.Vector
---@param size number|Astro.Vector
---@return number|Astro.Vector
local function quantityIn(x, size) end

-- Calculates the center offset vector for element placement.
---@param quantityIn number|Astro.Vector
---@return number|Astro.Vector
local function centerOffset(quantityIn) end

---@class Astro.Layout
local Layout = {
    value = value,
    quantityIn = quantityIn,
    centerOffset = centerOffset,
}
