require('plugins')
require('keymaps')

local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

opt.number = true
opt.hidden = true
opt.cursorline = true

cmd 'colorscheme jellybeans'
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
opt.completeopt = {'menuone', 'noinsert', 'noselect'} -- nvim-cmp
