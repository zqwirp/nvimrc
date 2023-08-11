local map = vim.api.nvim_set_keymap

map("n", "<Space>", "", {})
vim.g.mapleader = " "

-- nvim-telescope/telescope
map('n', '<leader>ff', ':Telescope find_files<cr>', { noremap = true, silent = true })
map('n', '<leader>fi', ':Telescope git_files<cr>', { noremap = true, silent = true })
map('n', '<leader>fg', ':Telescope live_grep<cr>', { noremap = true, silent = true })
map('n', '<leader>fb', ':Telescope buffers<cr>', { noremap = true, silent = true })

-- nvim-tree/nvim-tree
map('n', '<F9>', ':NvimTreeToggle<cr>', { noremap = true, silent = true })

-- map('n', '<leader>p', ':Prettier<cr>', { noremap = true, silent = true })
