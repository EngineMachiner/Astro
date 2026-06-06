
Astro = {}          Astro.Path = path or './'


local paths = { Vector = true }

local modules = { "Config", "Type", "Math", "String", "Table", "Vector", "Layout" }

local function name(key) return paths[key] and key or key:lower() end

local path = Astro.Path

for _, v in ipairs(modules) do

    local path = path .. name(v)

    Astro[v] = require(path)

end


---@return AstroInfo
local function info() end

Astro.info = info