---@param x number|table
---@return number|table
local function value(x) end

---@param x number|table
---@param size number|table
---@return number|table
local function quantityIn(x, size) end

---@param quantityIn number|table
---@return number|table
local function centerOffset(quantityIn) end

return {
    value = value,
    quantityIn = quantityIn,
    centerOffset = centerOffset,
}
