vim.api.nvim_set_keymap('n', '<Space>', '', {})
vim.g.mapleader = ' '

require('plugins')
require('settings')
require('keymaps')
require('snippets')
