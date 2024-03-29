function CreateNoremap(type, opts)
    return function(lhs, rhs, bufnr)
        bufnr = bufnr or 0
        vim.api.nvim_buf_set_keymap(bufnr, type, lhs, rhs, opts)
    end
end

Nnoremap = CreateNoremap("n", {noremap = true})
Inoremap = CreateNoremap("i", {noremap = true})

require("rowario.options")
require("rowario.keybinds")
require("rowario.colors")
require("rowario.lualine")
require("rowario.lsp")
require("rowario.autopairs")
require("rowario.telescope")
require("rowario.treesitter")
require("rowario.comments")
require("rowario.presence")
require("rowario.indent")
