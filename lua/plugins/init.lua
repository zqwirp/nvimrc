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

local lazy_opt = {
    install = {
        -- install missing plugins on startup. This doesn't increase startup time.
        missing = true,
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = nil,
    },
}

-- INITIALIZE PLUGINS WITH MANAGER
require("lazy").setup({
    -- REQUIRED
    {
        "nvim-lua/plenary.nvim",
        lazy = true,
    },

    {
        "tpope/vim-surround",
        -- lazy = true,

        -- event = "InsertEnter",
    },
    {
        "tpope/vim-commentary",
        -- lazy = true,
    },

    -- COLOR SCHEMES
    {
        "rebelot/kanagawa.nvim",
        lazy = true,
        priority = 1000,
    },
    {
        "AlexvZyl/nordic.nvim",
        lazy = true,
        priority = 1000,
        config = function()
            require("nordic").load()
        end
    },
    {
        "catppuccin/nvim",
        lazy = true,
        name = "catppuccin",
        priority = 1000
    },
    {
        "folke/tokyonight.nvim",
        lazy = true,
        priority = 1000,
        opts = {},
    },
    -- END OF COLOR SCHEMES

    -- INDENT LINE
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        lazy = true,

        -- keys = { "n", "<leader>be" },
        cmd = "IBLEnable",
    },

    -- GIT INTEGRATION
    {
        "tpope/vim-fugitive", -- premier vim plugin for git
        lazy = true,

        event = "CmdlineEnter",
        -- keys = { "n", "<leader>gp" },
    },

    -- GIT SIGNS
    {
        "lewis6991/gitsigns.nvim",
        opts = {},

        -- cmd = "Git",
        -- keys = { "n", "<leader>gp" },
    },

    -- COMPLETION
    {
        "honza/vim-snippets",
        lazy = true,
    },
    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "honza/vim-snippets",
        },

        config = function()
            require("luasnip.loaders.from_snipmate").lazy_load()
        end,

        -- build = "make install_jsregexp", -- install jsregexp (optional!).
    },

    -- NVIM CMP(COMPLETION)
    require("plugins.nvim-cmp"),

    -- LANGUAGE SERVER PROTOCOL
    require("plugins.nvim-lspconfig"),

    -- NVIM TREESITTER
    require("plugins.nvim-treesitter"),

    -- NVIM TELESCOPE
    require("plugins.nvim-telescope")["fzf-telescope"],
    require("plugins.nvim-telescope").telescope,

    -- NVIM TREE(FILE EXPLORER)
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = true,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({})

            -- Disable netrw when plugin loaded
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end,

        cmd = "NvimTreeToggle",
    },

    -- AUTOPAIR [](){}
    {
        "windwp/nvim-autopairs",
        lazy = true,
        
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
        -- cmd = "GoFmt",
    },

    -- HTML, CSS, JS
    {
        "prettier/vim-prettier",
        lazy = true,

        cmd = "Prettier",
    },

    {
        "nvim-tree/nvim-web-devicons",
        lazy = true,
    },

    {
        "dstein64/vim-startuptime",
        -- lazy-load on a command
        cmd = "StartupTime",
        -- init is called during startup. Configuration for vim plugins typically should be set in an init function
        init = function()
            vim.g.startuptime_tries = 10
        end,
    },
}, lazy_opt)
