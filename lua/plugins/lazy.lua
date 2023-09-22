-- "lazy" nvim plugin manager bootstrap
-- or                              , branch = '0.1.x',
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/plenary.nvim",

  "tpope/vim-surround",
  "tpope/vim-fugitive",
  "tpope/vim-commentary",

  "honza/vim-snippets",
  {
    "prettier/vim-prettier",
    ft = { "html", "css", "javascript" }
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      renderer = {
        icons = {
          show = {
            file = false,
            folder = false,
          }
        }
      }
    }
  },

  {
    "nvim-telescope/telescope.nvim", tag = "0.1.3",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

  "nanotech/jellybeans.vim",
  "sainnhe/everforest",
  "joshdick/onedark.vim",
  "rebelot/kanagawa.nvim",

  {
    "lewis6991/gitsigns.nvim",
    opts = {}
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
})
