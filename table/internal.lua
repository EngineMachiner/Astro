
-- Get and remove action.

local function action( tbl, key )
    
    local val = tbl[key]            tbl[key] = nil              return val
    
end

-- Keep the next table with the former metatable.

local function meta( to, from )

    local meta = action( from, "__meta" )           if meta == false then return end

    meta = getmetatable(from)           return setmetatable( to, meta )

end

return { action = action,       meta = meta }