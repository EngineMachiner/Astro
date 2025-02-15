
local astro = Astro.Type

local isNumber = astro.isNumber
local isString = astro.isString
local isTable = astro.isTable
local isNil = astro.isNil

astro = Astro.Table

local keys = {

    Astro = { "isEmpty" },        Lua = { "insert", "pack", "concat" }

}

local table = astro.std(keys)

--[[ 

    It concatenates any arguments including tables and 
    it has cycle detection and special formatting for readibility
    using the next constants.

]]--

local showID = false -- It shows the table address.
local showIndex = true -- It uses brackets for table keys and show the keys of array tables.
local wideMode = true -- It shows more new lines between tables.
local indentation = '\t' -- It's the value of indentation by default to be used.

local function brackets(s)

    return showIndex and '[' .. s .. ']' or s

end

local function quotes(a)

    local s = tostring(a)           local c = #s > 1 and '"' or "'"

    return isString(a) and c .. s .. c or s

end

local function key(k)
    
    local key = tostring(k)         local quotes = quotes(k)
    
    if isString(k) then key = quotes end
    
    if showIndex then key = brackets(quotes) else
      
        key = isNumber(k) and '' or key
      
    end

    return key

end

local function format(a)

    local s = tostring(a)

    if isString(a) then return quotes(s) end

    -- Remove the table address.
    
    if not showID and isTable(a) then return '' end

    return s

end

-- Get and format the name of a value.

local function name(a)
    
    local s = format(a)         local isEmpty = s == ''
    
    return isEmpty and s or s .. ' '

end

-- Returns a special copy of the table.

local function copy(tbl)

    local copy = {}         for k,v in pairs(tbl) do copy[k] = v end


    -- Parse indexed nil values to strings. This is why there's a copy.

	for i,v in ipairs(tbl) do if isNil(v) then copy[i] = tostring(nil) end end

    -- If you need to erase values, you should do it here.

    return copy

end

local function cycleName(name)

  if not showID then return '' end

  return ' ' .. name:sub( 1, #name - 1 )
  
end

local function hasValues(a)
    
    return isTable(a) and not table.isEmpty(a) 

end

local function pack(tbl)

    local former = tbl -- We need it later.

    local t = {} -- Table containing all the strings.


    -- Track tables we've already processed to avoid infinite recursion.

    local processed = {}
    
    local function wasProcessed(tbl)
    
        local id = tostring(tbl)      return processed[id]
      
    end
    

    local function isGap(a, b) 
  
        if not wideMode then return end
  
        if wasProcessed(a) or wasProcessed(b) then return end
  
        local isValid1 = hasValues(a) and not hasValues(b)
        local isValid2 = hasValues(b) and not hasValues(a)
        local isValid3 = hasValues(a) and hasValues(b)
      
        return isValid1 or isValid2 or isValid3
      
    end


    local function add( s, indent )
        
        indent = indent or 0            indent = indentation:rep(indent)
        
        table.insert( t, indent .. s )
    
    end

    local recursivePack

    local function addValue( v, indent )
    
        if isTable(v) then recursivePack( v, indent ) return end

        local name = format(v)        add(name)

    end

    recursivePack = function( tbl, indent )

        indent = indent or 0


        local copy = copy(tbl)          local name = name(copy)
        
        local isEmpty = table.isEmpty(copy)         local isFormer = tbl == former
        
        
        local id = tostring(tbl)        local cycleName = "<cycle>" .. cycleName(name)

        if processed[id] then add(cycleName) return end
        
        processed[id] = true
        

        if isFormer then indent = indent - 1 else add( name .. '{' ) end


        local firstKey, lastKey

        for k,v in pairs(copy) do


            local a, b = next( copy, k )        
            
            firstKey = firstKey or k            if isNil(a) then lastKey = k end
            
            local isFirst = k == firstKey           local isLast = k == lastKey
            
            
            local indent = indent + 1           local isGap = isGap(v, b)

            local n = wideMode and "\n\n" or '\n'
            

            if isFirst and not isFormer then add( n, indent ) end
            

            local key = key(k)        if #key > 0 then key = key .. " = " end

            add( key, indent )        addValue( v, indent )


            if isLast then if not isFormer then add(n) end else add(",\n") end
              
            if not isLast and isGap then add("\n") end

        end

        
        if isFormer then return end         if isEmpty then indent = 0 end
        
        add( '}', indent )
        
    end


    recursivePack(tbl)         return t

end

-- Older Lua versions don't have table.pack.

local function wrap(...)

    if not table.pack then return {...} end

    local tbl = table.pack(...)     tbl.n = nil

    return tbl
    
end

return function(...)

    local tbl = wrap(...)       tbl = pack(tbl)

	return table.concat(tbl)

end