-- BOOTSTRAP LAZY.NVIM
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- INITIALIZE PLUGINS WITH MANAGER
require("lazy").setup({
    -- REQUIRED
    "nvim-lua/plenary.nvim",

    "tpope/vim-surround",
    "tpope/vim-commentary",

    -- COLOR SCHEMES
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = true,
    --     priority = 1000,
    --     opts = {},
    -- },
    -- "rebelot/kanagawa.nvim",

    -- INDENT LINE
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        keys = { "n", "<leader>be" }
    },

    -- GIT INTEGRATION
    {
        "tpope/vim-fugitive", -- premier vim plugin for git

        keys = { "n", "<leader>gp" },
    },

    -- GIT SIGNS
    {
        "lewis6991/gitsigns.nvim",
        opts = {},

        keys = { "n", "<leader>gp" },
    },

    -- COMPLETION
    "honza/vim-snippets",
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
        },

        config = function()
            require("luasnip.loaders.from_snipmate").lazy_load()
        end,

        -- build = "make install_jsregexp", -- install jsregexp (optional!).
    },

    require("plugins.nvim-cmp"),

    -- LANGUAGE SERVER PROTOCOL
    require("plugins.nvim-lspconfig"),

    -- NVIM TREESITTER
    require("plugins.nvim-treesitter"),

    -- NVIM TELESCOPE
    require("plugins.nvim-telescope").telescope,
    require("plugins.nvim-telescope")["fzf-telescope"],

    -- AUTOPAIR [](){}
    {
        "windwp/nvim-autopairs",
        config = true,

        event = "InsertEnter",
    },

    -- GOLANG
    {
        "ray-x/go.nvim",
        lazy = true,
        dependencies = {
            -- "ray-x/guihua.lua", -- optional packages
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        build = ":lua require('go.install').update_all_sync()", -- if you need to install/update all binaries
        config = function()
            require("go").setup()
        end,

        ft = { "go", "gomod" },
        -- event = "CmdlineEnter",
        cmd = "GoFmt",
    },

    -- HTML, CSS, JS
    {
        "prettier/vim-prettier",
        cmd = "Prettier",
    },

    "nvim-tree/nvim-web-devicons",
})
