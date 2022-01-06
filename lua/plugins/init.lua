require('plugins.packer')
require('plugins.nvim-cmp')
require('plugins.luasnip')
require('telescope').load_extension('fzf')
require'nvim-tree'.setup {}

-- indent-blankline
vim.opt.list = true
vim.opt.listchars:append('eol:↴')
require('indent_blankline').setup {
  char = '¦',
  filetype = { 'html', 'javascript', 'scss', 'php', 'lua' },
  buftype_exclude = {'terminal'},
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = true,
}

-- emmet
vim.cmd 'au FileType html,css,php,javascript,scss EmmetInstall'
vim.g.user_emmet_install_global = 0
vim.g.user_emmet_leader_key = '<c-z>'

-- delimitMate
vim.g['delimitMate_expand_cr'] = 1
vim.g['delimitMate_expand_space'] = 1

-- prettier
vim.g['prettier#config#jsx_single_quote'] = 1
vim.g['prettier#config#arrow_parens'] = 'avoid'
vim.g['prettier#config#prose_wrap'] = 'preserve'
