local settings = {
    header = {
        type = "text",
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = require("startup.headers").phillies_header,
        highlight = "Identifier",
        default_color = "#E81828",
        oldfiles_amount = 0,
    },
    quotes = {
        type = "text",
        oldfiles_directory = true,
        align = "center",
        fold_section = false,
        title = "Quote",
        margin = 5,
        content = require("startup.functions").quote(),
        highlight = "Constant",
        oldfiles_amount = 0,
    },
    clock = {
        type = "text",
        content = function ()
            local clock = " " .. os.date("%I:%M %p")
            local date = " " .. os.date("%A %B %d")
            return {clock, date}
        end,
        align = "center",
        fold_section = false,
        title = "",
        margin = 5,
        highlight = "Constant"
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_line_between_mappings = true,
        disable_statusline = true,
        paddings = {2, 2, 2},
    },
    colors = {
        background = "#1F2227",
        fold_section = "#56B6C2",
    },
    parts = {
        "header",
        "quotes",
        "clock"
    },
}

return settings
