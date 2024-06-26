vim.keymap.set('n', "<leader>sn", ":set number!<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader><Esc>", ":noh<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader>n", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader>b", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<leader>l", ":ls<CR>", { noremap = true, silent = true })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set('n', 'J', "mzJ`z:delmarks z<CR>", { noremap = true, silent = true })
vim.keymap.set('v', '>', ">gv", { noremap = true, silent = true })
vim.keymap.set('v', '<', "<gv", { noremap = true, silent = true })
vim.keymap.set({ 'n', 'v' }, "<leader>y", [["+y]], { noremap = true, silent = true })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })

vim.keymap.set('n', "<C-Left>", ":vertical resize +5<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<C-Up>", ":resize -5<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<C-Right>", ":vertical resize -5<CR>", { noremap = true, silent = true })
vim.keymap.set('n', "<C-Down>", ":resize +5<CR>", { noremap = true, silent = true })

-- DISABLED / HARD MODE
vim.keymap.set({ 'n', 'i', 'v' }, "<Up>", "<nop>", { noremap = true, silent = true })
vim.keymap.set({ 'n', 'i', 'v' }, "<Left>", "<nop>", { noremap = true, silent = true })
vim.keymap.set({ 'n', 'i', 'v' }, "<Down>", "<nop>", { noremap = true, silent = true })
vim.keymap.set({ 'n', 'i', 'v' }, "<Right>", "<nop>", { noremap = true, silent = true })
vim.keymap.set('n', "<C-z>", "<nop>", { noremap = true, silent = true })
vim.keymap.set('n', "Q", "<nop>", { noremap = true, silent = true })

vim.keymap.set({ 'n', 'i', 'v', '' }, "<ScrollWheelUp>", "<nop>", { noremap = true, silent = true })
vim.keymap.set({ 'n', 'i', 'v', '' }, "<ScrollWheelDown>", "<nop>", { noremap = true, silent = true })

