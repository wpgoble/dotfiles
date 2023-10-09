local settings = {
    header = {
        type = "text",
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = require("startup.headers").doom_header,
        default_color = "#4CBB16",
        -- Tag for Eagles green, Constant for Doom blue, Identifier for Phillies Red
        highlight = "Constant",
        oldfiles_amount = 0,
    },
    header_2 = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Quote",
        margin = 5,
        content = require("startup.functions").quote(),
        highlight = "Identifier",
        default_color = "",
        oldfiles_amount = 0
    },
    clock = {
        type = "text",
        content = function()
            local clock = " " .. os.date("%I:%M %p")
            local date = " " .. os.date("%A %B %d")
            return { clock, date }
        end,
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "",
        margin = 5,
        highlight = "TSString",
        default_color = "#FFFFFF",
        oldfiles_amount = 10
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_line_between_mappings = true,
        disable_statusline = true,
        paddings = {2, 2},
    },
    colors = {
        background = "#1f2227",
        fold_section = "#56b6c2"
    },
    parts = {
        "header",
        "header_2",
    }
}

return settings
