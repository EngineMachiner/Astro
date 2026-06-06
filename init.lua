---@return nil
local function info()
    -- Returns module information.
end

---@param path string?
---@return nil
return function(path)
    Astro = {}
    Astro.Path = path or './'
    Astro.info = info
end
