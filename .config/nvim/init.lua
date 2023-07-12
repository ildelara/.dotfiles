local install_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.fn.execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
end

require("packer").startup(
    function(use)
        use "ellisonleao/gruvbox.nvim"
        use "folke/tokyonight.nvim"
        use {"catppuccin/nvim", as = "catppuccin"}

        use "lukas-reineke/indent-blankline.nvim"

        use "andweeb/presence.nvim"
        use "ThePrimeagen/vim-be-good"
        use "mattn/emmet-vim"
        use "vim-autoformat/vim-autoformat"
        use "numToStr/Comment.nvim"
        use {"nvim-lualine/lualine.nvim", requires = {"kyazdani42/nvim-web-devicons", opt = true}}
        use "voldikss/vim-floaterm"
        use "wakatime/vim-wakatime"
        use "nvim-lua/plenary.nvim"
        use "nvim-telescope/telescope.nvim"
        use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
        use "nvim-treesitter/nvim-treesitter-context"
        use "neovim/nvim-lspconfig"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use "onsails/lspkind-nvim"
        use "hrsh7th/nvim-cmp"
        use "nvim-lua/lsp_extensions.nvim"
        use "L3MON4D3/LuaSnip"
        use "windwp/nvim-autopairs"
        use "windwp/nvim-ts-autotag"
        use "folke/todo-comments.nvim"
        use "norcalli/nvim-colorizer.lua"
        use "ryanoasis/vim-devicons"
    end
)

require("rowario")
