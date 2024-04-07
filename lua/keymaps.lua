local map = vim.keymap

map.set('n', '<leader>sn', ":set number!<CR>", { noremap = true, silent = true })
map.set('n', '<leader><Esc>', ":noh<CR>", { noremap = true, silent = true })
map.set('n', '<leader>n', ":bn<CR>", { noremap = true, silent = true })
map.set('n', '<leader>b', ":bp<CR>", { noremap = true, silent = true })
map.set('n', '<leader>l', ":ls<CR>", { noremap = true, silent = true })

-- NVIM TELESCOPE
local telescope = require('telescope.builtin')
map.set('n', '<leader>ff', telescope.find_files, { noremap = true, silent = true })
map.set('n', '<leader>fg', telescope.live_grep, { noremap = true, silent = true })
map.set('n', '<leader>fb', telescope.buffers, { noremap = true, silent = true })
map.set('n', '<leader>fh', telescope.help_tags, { noremap = true, silent = true })
