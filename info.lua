
-- The date when it was released.
---@alias VersionDate string

-- The id of the release.
---@alias ID string

---@class AstroInfo
---@field VersionDate VersionDate
---@field ID ID

---@return AstroInfo
local function info() end

---@class Astro
local Astro = { info = info }