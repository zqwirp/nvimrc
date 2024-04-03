local map = vim.keymap

-- NVIM TELESCOPE
local telescope = require('telescope.builtin')
map.set('n', '<leader>ff', telescope.find_files, {})
map.set('n', '<leader>fg', telescope.live_grep, {})
map.set('n', '<leader>fb', telescope.buffers, {})
map.set('n', '<leader>fh', telescope.help_tags, {})
