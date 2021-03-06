local opt = vim.opt

opt.encoding = 'utf-8'
opt.number = true
opt.cursorline = true
opt.wrap = false
opt.wildmenu = true
opt.wildmode = {'list', 'longest'}
opt.backspace = {'indent', 'eol', 'start'}

vim.cmd 'colorscheme jellybeans'
opt.background = 'dark'
opt.termguicolors = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.shiftround = true
opt.splitright = true
opt.splitbelow = true
opt.smartindent = true
opt.autoindent = true
opt.smarttab = true

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.backup = false
opt.swapfile = false
opt.writebackup = false
