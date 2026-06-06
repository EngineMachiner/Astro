
local astro = Astro.Table                   local safeDivision = Astro.Math.safeDivision

local planeAxes = { 'x', 'y' }              local spaceAxes = { 'x', 'y', 'z' }

---@param a table
---@return number
local function normSqr(a)

    local b = 0         for i,v in ipairs(spaceAxes) do b = b + a[v] ^ 2 end        return b

end

---@param a table
---@return number
local function norm(a) local normSqr = normSqr(a)          return math.sqrt(normSqr) end

---@param a table
---@return table
local function copy(a)

    local meta = getmetatable(a)        local b = setmetatable( {}, meta )

    for i,v in ipairs(spaceAxes) do b[v] = a[v] end         return b

end

---@param a table
---@return table
local function unit(a) return a / norm(a) end

---@param a table
---@return boolean
local function isZero(a)

    for i,v in ipairs(spaceAxes) do if a[v] ~= 0 then return false end end

    return true

end

---@param a table
---@return number, number, number
local function unpack(a) return a.x, a.y, a.z end

-- Get angle from a vector in degrees.

---@param a table
---@return number
local function angle(a)

    local vector = unit(a)
    
    local x, y = unpack(vector)             local angle = math.atan2( y, x )
    
    angle = math.deg(angle)                 return angle % 360

end

-- Returns component / Hadamard / element-wise / product and division between vectors.

---@param a table
---@param b table
---@return table
local function componentProduct( a, b )

    local c = copy(a)
    
    for i,v in ipairs(spaceAxes) do c[v] = c[v] * b[v] end          return c

end

---@param a table
---@param b table
---@return table
local function componentDivision( a, b )
    
    local c = copy(a)
    
    for i,v in ipairs(spaceAxes) do c[v] = safeDivision( c[v], b[v] ) end           return c

end

---@param vector table
---@param key string
---@return table
local function componentVector( vector, key ) -- Equivalent to a linear algebra vector projection.
    
    for i,v in ipairs(spaceAxes) do if v ~= key then vector[v] = nil end end            return vector

end

---@param vector table
---@return table
local function maxComponent(vector) -- Returns a key-value pair with the key and maximum value of a vector.

    local maxKey, maxValue

    for i,k in ipairs(spaceAxes) do
        
        local v = vector[k]         if not maxKey or v > maxValue then maxKey = k   maxValue = v end
    
    end

    return astro.pair( maxKey, maxValue )

end

---@param vector table
---@return table
local function minComponent(vector) -- Returns a key-value pair with the key and maximum value of a vector.

    local minKey, minValue

    for i,k in ipairs(spaceAxes) do
        
        local v = vector[k]         if not minKey or v < minValue then minKey = k   minValue = v end
    
    end

    return astro.pair( minKey, minValue )

end

return {

    planeAxes = planeAxes,          spaceAxes = spaceAxes,

    componentProduct = componentProduct,            componentDivision = componentDivision,
    componentVector = componentVector,              maxComponent = maxComponent,
    minComponent = minComponent,

    normSqr = normSqr,          norm = norm,            unit = unit,            isZero = isZero,
    angle = angle,              unpack = unpack,        copy = copy

}