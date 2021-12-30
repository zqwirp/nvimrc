local opt = vim.opt

opt.number = true
opt.cursorline = true

vim.cmd 'colorscheme jellybeans'
opt.background = 'dark'
opt.termguicolors = true

opt.wrap = false
opt.wildmode = {'list', 'longest'}

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftround = true
opt.splitright = true
opt.splitbelow = true
opt.smartindent = true

opt.backup = false
opt.swapfile = false
opt.writebackup = false

-- required settings for plugins
opt.completeopt = {'menuone', 'noinsert', 'noselect'}
