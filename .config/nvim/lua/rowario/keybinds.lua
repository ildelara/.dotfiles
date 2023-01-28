-- main
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<Leader>ex", "<cmd>Ex<CR>")
vim.keymap.set("n", "<F3>", "<cmd>noh<CR>")
vim.keymap.set("n", "<Leader>ff", "<cmd>Telescope find_files hidden=true<CR>")
vim.keymap.set("n", "<Leader>fg", "<cmd>Telescope live_grep hidden=true<CR>")
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references trim_text=true<CR>")
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions trim_text=true<CR>")
-- vim.keymap.set("n", "<Leader>d", "<cmd>Telescope diagnostics trim_text=true<CR>")
vim.keymap.set("n", "<Leader>rld", "<cmd>LspRestart<CR>")
vim.keymap.set("n", "<Leader>td", "<cmd>TodoTelescope<CR>")

-- terminal
vim.keymap.set("n", "<Leader>ft", "<cmd>FloatermToggle<CR>")
vim.keymap.set("t", "<Leader>ft", "<C-\\><C-n>:FloatermToggle<CR>")
vim.keymap.set("t", "<Leader>fn", "<cmd>FloatermNew<cr>")
vim.keymap.set("t", "<Leader>tn", "<cmd>FloatermNext<cr>")
vim.keymap.set("t", "<Leader>tp", "<cmd>FloatermPrev<cr>")
vim.keymap.set("t", "<Leader>tk", "<cmd>FloatermKill<cr>")

-- autoformat
vim.keymap.set("n", "<Leader>fmt", "<cmd>Autoformat<cr>")

-- emmet
vim.keymap.set("i", "<Leader>e", "<plug>(emmet-expand-abbr)")

-- start in browser
vim.keymap.set("n", "<Leader>sf", "<cmd>exe ':silent !firefox %'<CR>")

-- tree
vim.keymap.set("n", "<Leader>n", "<cmd>NvimTreeToggle<CR>")
