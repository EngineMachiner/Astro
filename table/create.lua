--- Returns a table factory function.
--- A function to create a table that could have the table functions by default.
--- Be aware that it overrides the __index metamethod.
---@param input table
---@return fun(table?:table): table
return function(input)
    return function(t) end
end
