local map = vim.api.nvim_set_keymap

map('n', '<leader>p', ':Prettier<cr>', { noremap = true, silent = true })
map('n', '<F9>', ':NvimTreeToggle<cr>', { noremap = true, silent = true })
