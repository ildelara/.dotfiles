require'nvim-treesitter.configs'.setup {
	ensure_installed = { "javascript", "typescript", "lua", "rust", "php", "c_sharp", "fish", "c", "json", "prisma", "html" },
	sync_install = true,
	highlight = {
		enable = true,
		use_languagetree = true,
		additional_vim_regex_highlighting = true,
	}
}

require'treesitter-context'.setup{
	enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
	max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
	trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
	patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
	-- For all filetypes
	-- Note that setting an entry here replaces all other patterns for this entry.
	-- By setting the 'default' entry below, you can control which nodes you want to
	-- appear in the context window.
	default = {
		'class',
		'function',
		'method',
		'for',
		'while',
		'if',
		'switch',
		'case',
	},
	-- Example for a specific filetype.
	-- If a pattern is missing, *open a PR* so everyone can benefit.
	--   rust = {
		--       'impl_item',
		--   },
	},
	exact_patterns = {
		-- Example for a specific filetype with Lua patterns
		-- Treat patterns.rust as a Lua pattern (i.e "^impl_item$" will
		-- exactly match "impl_item" only)
		-- rust = true,
	},

	-- [!] The options below are exposed but shouldn't require your attention,
	--     you can safely ignore them.

	zindex = 20, -- The Z-index of the context window
	mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
	separator = nil, -- Separator between context and content. Should be a single character string, like '-'.
}
