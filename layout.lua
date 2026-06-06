-- Convert a numeric value into a Vector when necessary.
---@param x number|Vector
---@return number|Vector
local function value(x) end

-- Returns the quantity that fits within a size, preserving vector shapes.
---@param x number|Vector
---@param size number|Vector
---@return number|Vector
local function quantityIn(x, size) end

-- Calculates the center offset vector for element placement.
---@param quantityIn number|Vector
---@return number|Vector
local function centerOffset(quantityIn) end

return {
    value = value,
    quantityIn = quantityIn,
    centerOffset = centerOffset,
}
