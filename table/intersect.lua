
-- Returns the first table containing the values that are also in the second one.

return function( a, b, distinct )

    local t = {}

    local function isValid( k, v )

        if t[k] then return end         local key, val = k, v

        for k,v in pairs(b) do    if val == v then return true end    end
    
    end

    for k,v in pairs(a) do    if isValid(k, v) then t[k] = v end     end

    return t

end