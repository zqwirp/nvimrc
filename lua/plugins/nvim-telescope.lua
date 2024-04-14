local M = {}

M.telescope = {
    "nvim-telescope/telescope.nvim",
    lazy = true,

    tag = '0.1.6',

    dependency = {
        "nvim-lua/plenary.nvim",

        "nvim-telescope/telescope-fzf-native.nvim",

        "nvim-treesitter/nvim-treesitter",
        "neovim/nvim-lspconfig",

        "nvim-tree/nvim-web-devicons",
    },

    cmd = "Telescope",

    config = function()
        pcall(require('telescope').load_extension, 'fzf')

        -- require('telescope').setup({
        --     defaults = {
        --         -- border = false,
        --         layout_config = {
        --             height = 0.75
        --         }
        --     }
        -- })
    end,
}

M["fzf-telescope"] = {
    "nvim-telescope/telescope-fzf-native.nvim",
    lazy = true,

    build =
    "make -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
}

return M
