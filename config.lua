
-- Display the table address.
---@alias showID boolean

-- Display explicit keys with brackets and on array.
---@alias showIndex boolean

-- Display new lines between tables.
---@alias wideMode boolean

-- String to display indentation. 
---@alias indentation string

-- Display table keys between single and double quotes. 
---@alias keyQuotes boolean

---@class ConcatConfig
---@field showID showID
---@field showIndex showIndex
---@field wideMode wideMode
---@field indentation indentation
---@field keyQuotes keyQuotes

---@class Config
---@field Concat ConcatConfig