---@vararg any
---@return table
table.pack = table.pack or function(...)
    return { n = select('#', ...), ... }
end

---@param t table
---@param i number?
---@param j number?
---@return ...
table.unpack = table.unpack or function(t, i, j)
    i = i or 1
    j = j or #t
    return unpack(t, i, j)
end
