require('plugins.packer')
require('plugins.nvim-cmp')
require('plugins.emmet')
require('plugins.nvim-autopairs')
require('plugins.indent-blankline')
require('plugins.prettier')
require('plugins.nvim-hardline')


local nvim_lsp = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.html.setup {
  capabilities = capabilities,
}

nvim_lsp.tsserver.setup{}

nvim_lsp.cssls.setup {
  capabilities = capabilities,
}
