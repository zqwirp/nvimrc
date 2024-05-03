vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.expandtab = true

vim.keymap.set('n', "<leader>p", ":Prettier<CR>", { noremap = true, silent = true, buffer = true })
