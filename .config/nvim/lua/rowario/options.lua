-- main
vim.o.clipboard = "unnamedplus"
vim.o.number = true
vim.o.relativenumber = true
vim.o.swapfile = false
vim.o.termguicolors = true
vim.o.scrolloff = 15
vim.o.wrap = false
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cursorline = true

-- markdown preview
vim.g.mkdp_filetypes = {'markdown'}

-- keybinds
vim.g.mapleader = ";"

-- terminal
vim.g.floaterm_width = 0.8
vim.g.floaterm_height = 0.8

-- autoformat
vim.g.formatdef_my_custom_cs = '"astyle --mode=cs --style=otbs --indent=tab=4 --indent=force-tab --indent-after-parens --indent-namespaces --indent-switches --indent-cases --indent-continuation=4 --indent-col1-comments --pad-oper --pad-comma --pad-header --remove-comment-prefix"'
vim.g.formatters_cs = {'my_custom_cs'}

vim.g.formatters_typescriptreact = {'prettier'}
vim.g.formatters_prisma = {'prettier'}
vim.g.formatters_jsonc = {'prettier'}
vim.g.formatters_json = {'prettier'}
