
local function last(tbl) return tbl[#tbl] end

local function add( from, to )

    for k,v in ipairs(from) do table.insert( to, v ) end

end

local function reverse(t)

    local output = {}

    for i = #t, 1, -1 do table.insert( output, t[i] ) end

    return output

end

-- Returns an array without repeated values.

-- It's better to be aware on how you're adding things to the array instead.

local function distinct( array, recursive )

    local seen, output = {}, {}

    local function add(v)

        if seen[v] then return end          seen[v] = true
        
        if isTable(v) and recursive then v = distinct( v, true ) end

        table.insert( output, v )

    end

    for i,v in ipairs(array) do add(v) end           return output

end

return {

    last = last,        add = add,      reverse = reverse,
    
    distinct = distinct

}