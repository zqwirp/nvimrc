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
    highlight = {
        enable = false,
    },
    incremental_selection = {
        enable = false,
    },
    indent = { -- STILL EXPERIMENTAL FEATURE https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#indentation
        enable = false
    },
}

return M
