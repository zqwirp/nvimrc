local M = {
    "nvim-treesitter/nvim-treesitter",
    lazy = true,

    build = ":TSUpdate",

    config = function(_, opts)
        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup(opts)
    end,
}

M.opts = {
    ensure_installed = {
        "bash", "python",
        "html", "css",
        "typescript", "javascript",
        "c", "go",
    },
    auto_install = true,

    -- MODULES
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = false,
    },
    indent = { -- Still experimental feature https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#indentation
        enable = false
    },
}

return M
