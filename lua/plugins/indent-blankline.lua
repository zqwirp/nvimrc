vim.opt.list = true
vim.opt.listchars:append('eol:↴')
require('indent_blankline').setup {
  char = '¦',
  filetype = { 'html', 'javascript', 'scss', 'php' },
  buftype_exclude = {'terminal'},
  show_end_of_line = true,
  show_current_context = true,
  show_current_context_start = true,
}

