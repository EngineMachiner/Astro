
local astro = Astro.Table;              local safeDivision = Astro.Math.safeDivision

local planeAxes = { 'x', 'y' }          local spaceAxes = { 'x', 'y', 'z' }

local function normSqr(a)

    local b = 0         for i,v in ipairs(spaceAxes) do b = b + a[v] ^ 2 end

    return b

end

local function norm(a)
    
    local normSqr = normSqr(a)          return math.sqrt(normSqr) 

end

local function copy(a)

    local meta = getmetatable(a)        local b = setmetatable( {}, meta )

    for i,v in ipairs(spaceAxes) do b[v] = a[v] end         return b

end

local function unit(a) return a / norm(a) end

local function isZero(a)

    for i,v in ipairs(spaceAxes) do if a[v] ~= 0 then return false end end

    return true

end

local function unpack(a) return a.x, a.y, a.z end

-- Get angle from a vector in degrees.

local function angle(a)

    if a.y == 0 then return 0 end

    local vector = copy(a)                  vector = unit(vector)
    
    local x, y = unpack(vector)             local angle = math.atan( y / x )
    
    angle = math.deg(angle)                 return angle % 360

end

-- Returns component / Hadamard / element-wise / product and division between vectors.

local function componentProduct( a, b )

    local c = copy(a);          for i,v in ipairs(spaceAxes) do c[v] = c[v] * b[v] end

    return c

end

local function componentDivision( a, b )
    
    local c = copy(a);          for i,v in ipairs(spaceAxes) do c[v] = safeDivision( c[v], b[v] ) end

    return c

end

return {

    planeAxes = planeAxes,          spaceAxes = spaceAxes,

    componentProduct = componentProduct,          componentDivision = componentDivision,

    normSqr = normSqr,          norm = norm,            unit = unit,            isZero = isZero,
    angle = angle,              unpack = unpack,        copy = copy

}