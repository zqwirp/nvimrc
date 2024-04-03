local M = {}

M.telescope = {
    "nvim-telescope/telescope.nvim",
    dependency = {
        "nvim-lua/plenary.nvim",

        "nvim-telescope/telescope-fzf-native.nvim",

        "nvim-treesitter/nvim-treesitter",
        "neovim/nvim-lspconfig",

        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        pcall(require('telescope').load_extension, 'fzf')
    end,
}

M["fzf-telescope"] = {
    "nvim-telescope/telescope-fzf-native.nvim",
    
    build =
    "make -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
}

return M
