-- Returns module information.
local function info()
end

---@param path string?
return function(path)
    Astro = {}
    Astro.Path = path or './'
    Astro.info = info
end
