local map = vim.api.nvim_set_keymap
vim.g.mapleader = ' '

map('n', '<Space>', '', {})
map('n', '<leader>n', ':bnext<cr>', { noremap = true })
map('n', '<leader>b', ':buffers<cr>', { noremap = true })
map('n', '<leader><esc>', ':noh<cr>', { noremap = true })

-- Hard mode
map('n', '<up>', '<nop>', { noremap = true })
map('n', '<down>', '<nop>', { noremap = true })
map('n', '<left>', '<nop>', { noremap = true })
map('n', '<right>', '<nop>', { noremap = true })
map('n', '<home>', '<nop>', { noremap = true })
map('n', '<pageup>', '<nop>', { noremap = true })
map('n', '<pagedown>', '<nop>', { noremap = true })
map('n', '<end>', '<nop>', { noremap = true })
map('n', '<s-up>', '<nop>', { noremap = true })
map('n', '<s-down>', '<nop>', { noremap = true })
map('i', '<up>', '<nop>', { noremap = true })
map('i', '<down>', '<nop>', { noremap = true })
map('i', '<left>', '<nop>', { noremap = true })
map('i', '<right>', '<nop>', { noremap = true })
map('i', '<home>', '<nop>', { noremap = true })
map('i', '<pageup>', '<nop>', { noremap = true })
map('i', '<pagedown>', '<nop>', { noremap = true })
map('i', '<end>', '<nop>', { noremap = true })
map('i', '<s-up>', '<nop>', { noremap = true })
map('i', '<s-down>', '<nop>', { noremap = true })
map('i', '<c-l>', '<delete>', { noremap = true })

-- Nvimtree keymaps
map('n', '<F9>', ':NvimTreeToggle<cr>', { noremap = true, silent = true })

-- Telescope keymaps
map('n', '<leader>ff', ':Telescope find_files<cr>', { noremap = true, silent = true })
map('n', '<leader>fg', ':Telescope live_grep<cr>', { noremap = true, silent = true })
map('n', '<leader>fb', ':Telescope buffers<cr>', { noremap = true, silent = true })
