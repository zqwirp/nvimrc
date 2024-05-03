local opt = vim.opt

-- GENERAL
opt.encoding = "utf-8"
opt.compatible = false

opt.wrap = false
opt.number = false
opt.numberwidth = 1
-- opt.relativenumber = true

opt.backspace = "indent,eol,start"
opt.completeopt = "menu,menuone,noselect"

opt.showcmd = true
opt.showmode = true
opt.showmatch = true

-- WILDMENU
opt.wildmenu = true
opt.wildoptions = ""
opt.wildmode = "full"
-- opt.wildmode = "list,longest"

-- COLOR/THEME
opt.background = "dark"
vim.cmd("colorscheme kanagawa-wave")
opt.termguicolors = true

-- SPACE/TAB/INDENT
-- opt.tabstop = 2
-- opt.shiftwidth = 2
-- opt.softtabstop = 2
-- opt.expandtab = true
opt.shiftround = true
opt.smartindent = true
opt.autoindent = true
opt.smarttab = true

-- WINDOW
opt.splitright = true
opt.splitbelow = true

-- SEARCH
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- BACKUP
opt.backup = false
opt.swapfile = false
opt.writebackup = false
-- opt.backupdir = vim.fn.stdpath("data") .. "/backup"

-- CURSOR
opt.cursorline = true
-- opt.cursorcolumn = true
