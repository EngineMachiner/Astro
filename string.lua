---@param s string
---@param i number
---@return string
local function subChar(s, i) end

---@param s string
---@return string
local function first(s) end

---@param s string
---@return string
local function last(s) end

---@param s string
---@return boolean
local function isEmpty(s) end

---@param s string
---@return boolean
local function isBlank(s) end

---@param s1 string
---@param s2 string
---@return boolean
local function startsWith(s1, s2) end

---@param s1 string
---@param s2 string
---@return boolean
local function endsWith(s1, s2) end

return {
    subChar = subChar,
    first = first,
    last = last,
    isEmpty = isEmpty,
    isBlank = isBlank,
    startsWith = startsWith,
    endsWith = endsWith,
}