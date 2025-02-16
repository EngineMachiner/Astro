
local isTable = Astro.Type.isTable

local function shallow(tbl)

    local t = {}        for k,v in pairs(tbl) do t[k] = v end

    return t

end

local function deep(tbl)

    local t = {}

    for k,v in pairs(tbl) do
        
        if isTable(v) then v = shallow(v) end       t[k] = v

    end

    return t

end

return { shallow = shallow,     deep = deep }