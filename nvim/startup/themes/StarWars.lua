local settings = {
    header = {
        type = "header",
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 5,
        content = require("startup.headers").rebel,
        highlight = "Identifier",
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
    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_line_between_mappings = true,
        disable_statusline = true,
        padding = {2, 2},
    },
    colors = {
        background = "#1F2227",
        fold_section = "#56B6C2",
    },
    parts = {
        "header",
        "quotes",
    },
}

return settings
