require('plugins')
require('keymaps')

local g = vim.g
local opt = vim.opt
local cmd = vim.cmd

opt.number = true
cmd 'colorscheme nord'
opt.background = 'dark'
opt.termguicolors = true
opt.cursorline = true

opt.wrap = false
opt.wildmode = {'list', 'longest'}
opt.completeopt = {'menuone', 'noinsert', 'noselect'}

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

