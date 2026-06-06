-- Convert a numeric value into a Vector when appropriate.
---@param x number|table
---@return number|Vector
local function value(x) end

-- Returns the quantity that fits within a size, preserving vector shapes.
---@param x number|table
---@param size number|table
---@return number|Vector
local function quantityIn(x, size) end

-- Calculates the center offset for element placement.
---@param quantityIn number|table
---@return number|Vector
local function centerOffset(quantityIn) end

return {
    value = value,
    quantityIn = quantityIn,
    centerOffset = centerOffset,
}
