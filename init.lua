require('plugins')

local g = vim.g
local opt = vim.opt
local cmd = vim.cmd
local map = vim.api.nvim_set_keymap

options = { noremap = true }

opt.number = true

-- Indent settings
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.shiftround = true

opt.swapfile = false
opt.writebackup = false

cmd [[au BufWritePre * :%s/\s\+$//e]]

-- Plugins settings

-- mattn/emmet-vim
g.user_emmet_install_global = 0
g.user_emmet_leader_key = '<C-Z>'
cmd 'au FileType html,css,php,javascript EmmetInstall'

-- lukas-reineke/indent-blankline.nvim
vim.opt.list = true
vim.opt.listchars:append('eol:↴')
require('indent_blankline').setup {
  char = '¦',
  filetype = { 'html', 'javascript', 'scss' },
  buftype_exclude = {'terminal'},
  show_end_of_line = true,
}
