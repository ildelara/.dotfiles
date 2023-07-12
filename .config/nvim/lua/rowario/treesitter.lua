require "nvim-ts-autotag".setup {}

require "nvim-treesitter.configs".setup {
    ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "lua",
        "rust",
        "php",
        "c_sharp",
        "fish",
        "c",
        "json",
        "prisma",
        "html",
        -- "sql",
        "css",
		"go"
    },
    sync_install = true,
    highlight = {
        enable = true
    },
    indent = {
        enable = true,
		disable = {"typescript"}
    },
    autotag = {
        enable = true
    }
}

require "treesitter-context".setup {
    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
    trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
    patterns = {
        -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
        default = {
            "class",
            "function",
            "method",
            "for",
            "while",
            "if",
            "switch",
            "case"
        }
    },
    zindex = 20, -- The Z-index of the context window
    mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
    separator = nil -- Separator between context and content. Should be a single character string, like '-'.
}
