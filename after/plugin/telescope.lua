vim.keymap.set('n', "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })

-- vim.keymap.set('n', "<leader>ff", require('telescope.builtin').find_files, { noremap = true, silent = true })
-- vim.keymap.set('n', "<leader>fg", require('telescope.builtin').live_grep, { noremap = true, silent = true })
-- vim.keymap.set('n', "<leader>fb", require('telescope.builtin').buffers, { noremap = true, silent = true })
-- vim.keymap.set('n', "<leader>fh", require('telescope.builtin').help_tags, { noremap = true, silent = true })
