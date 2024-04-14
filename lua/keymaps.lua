local map = vim.keymap

map.set('n', "<leader>sn", ":set number!<CR>", { noremap = true, silent = true })
map.set('n', "<leader><Esc>", ":noh<CR>", { noremap = true, silent = true })
map.set('n', "<leader>n", ":bn<CR>", { noremap = true, silent = true })
map.set('n', "<leader>b", ":bp<CR>", { noremap = true, silent = true })
map.set('n', "<leader>l", ":ls<CR>", { noremap = true, silent = true })
map.set({ 'n', 'v' }, "<leader>y", [["+y]], { noremap = true, silent = true })

map.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
map.set('n', 'J', "mzJ`z:delmarks z<CR>", { noremap = true, silent = true })
map.set('v', '>', ">gv", { noremap = true, silent = true })
map.set('v', '<', "<gv", { noremap = true, silent = true })

map.set('n', "<C-Left>", ":vertical resize +5<CR>", { noremap = true, silent = true })
map.set('n', "<C-Up>", ":resize -5<CR>", { noremap = true, silent = true })
map.set('n', "<C-Right>", ":vertical resize -5<CR>", { noremap = true, silent = true })
map.set('n', "<C-Down>", ":resize +5<CR>", { noremap = true, silent = true })

-- NVIM TELESCOPE
-- local telescope = require("telescope.builtin")
map.set('n', "<leader>ff", ":Telescope find_files<CR>", { noremap = true, silent = true })
map.set('n', "<leader>fg", ":Telescope live_grep<CR>", { noremap = true, silent = true })
map.set('n', "<leader>fb", ":Telescope buffers<CR>", { noremap = true, silent = true })
map.set('n', "<leader>fh", ":Telescope help_tags<CR>", { noremap = true, silent = true })

-- DISABLED
map.set({ 'n', 'i', 'v' }, "<Up>", "<nop>", { noremap = true, silent = true })
map.set({ 'n', 'i', 'v' }, "<Left>", "<nop>", { noremap = true, silent = true })
map.set({ 'n', 'i', 'v' }, "<Down>", "<nop>", { noremap = true, silent = true })
map.set({ 'n', 'i', 'v' }, "<Right>", "<nop>", { noremap = true, silent = true })
map.set('n', "<C-z>", "<nop>", { noremap = true, silent = true })
map.set('n', "Q", "<nop>", { noremap = true, silent = true })
