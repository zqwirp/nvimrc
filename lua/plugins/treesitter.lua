require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "html", "css", "javascript", "json",
    "lua", "vimdoc", "vim",
    "tsx", "typescript",
    "c", "cpp", "go", "dockerfile",
    "python", "rust",
  },
  sync_install = false,
  auto_install = false,
  -- modules
  highlight = { enable = true },
  indent = { enable = true },
  -- incremental_selection = {
  --   enable = true,
  --   keymaps = {
  --     init_selection = "gnn", -- set to `false` to disable one of the mappings
  --     node_incremental = "grn",
  --     scope_incremental = "grc",
  --     node_decremental = "grm",
  --   },
  -- },
})

