local settings = {
    header = {
        type = "text",
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = require("startup.headers").eagles_header,
        default_color = "#4CBB16",
        highlight = "Tag",
        oldfile_amount = 0,
    },
    header_2 = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Quote",
        margin = 5,
        content = require("startup.functions").quote(),
        highlight = "Constant",
        default_color = "",
        oldfile_amount = 0,
    },
    clock = {
        type = "text",
        content = function()
            local clock = " " .. os.date("%H:%M")
            local date = " " .. os.date("%m-%d-%y")
            return { clock, date }
        end,
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "",
        margin = 5,
        highlight = "TSString",
        default_color = "#FFFFFF",
        oldfile_amount = 10,
    },
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_line_between_mappings = true,
        disable_statusline = true,
        pagging = { 2, 2, 2 },
    },
    color = {
        background = "#1F2227",
        fold_section = "#56B6C2",
    },
    parts = {
        "header",
        "header_2",
        "clock",
    }
}

return settings
