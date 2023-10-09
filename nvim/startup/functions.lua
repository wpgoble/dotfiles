---@tag startup_nvim.functions
--@brief [[
-- These are rewritten functions so I can make them my own
-- All credit to github user max397574 for the original structure
-- @brief ]]
local functions = {}

-- Where I store the quote I want to see 
local quotes = require("startup.goble_quotes")

-- This was rewritten mainly so I can use my own quotes
function functions.quote()
    math.randomseed(os.clock())
    local index = math.random() * #quotes
    return quotes[math.floor(index) + 1]
end

return functions
