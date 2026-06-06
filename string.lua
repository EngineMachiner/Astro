
---@param s string
---@param i number
---@return string
local function subChar( s, i ) return s:sub( i, i ) end

---@param s string
---@return string
local function first(s) return subChar(s, 1) end

---@param s string
---@return string
local function last(s) return subChar(s, #s) end

---@param s string
---@return boolean
local function isEmpty(s) return #s == 0 end

---@param s string
---@return boolean
local function isBlank(s)
    
    local clean = s:gsub(" ", "")        return isEmpty(clean)

end

---@param s1 string
---@param s2 string
---@return boolean
local function startsWith( s1, s2 ) return s1:match( '^' .. s2 ) end

---@param s1 string
---@param s2 string
---@return boolean
local function endsWith( s1, s2 ) return s1:match( s2 .. '$' ) end

local t = {

    subChar = subChar,      first = first,      last = last,        isEmpty = isEmpty,
    
    isBlank = isBlank,      startsWith = startsWith,        endsWith = endsWith

}

---@param s string
---@return table
string.Astro = function(s)

    local __index = function( table, key )
        
        local f = t[key]        if not f then return end

        return function( table, ... ) return f( s, ... ) end
    
    end

    local setIndex = Astro.Table.Meta.setIndex          return setIndex( {}, __index )

end

return t