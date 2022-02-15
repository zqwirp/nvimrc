local map = vim.api.nvim_set_keymap

map('n', '<leader>p', ':Prettier<cr>', { noremap = true, silent = true })
map('n', '<F9>', ':NvimTreeToggle<cr>', { noremap = true, silent = true })
map('n', '<leader>ff', ':Telescope find_files<cr>', { noremap = true, silent = true })
map('n', '<leader>fg', ':Telescope live_grep<cr>', { noremap = true, silent = true })
map('n', '<leader>fb', ':Telescope buffers<cr>', { noremap = true, silent = true })
