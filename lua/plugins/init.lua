require'plugins.packer'
require'plugins.nvim-lspconfig'
require'plugins.nvim-cmp'
require'plugins.nvim-treesitter'
require'plugins.indent-blankline'
require'plugins.prettier'
require'plugins.keymaps'

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require'lspconfig'['gopls'].setup{
  cmd = {'gopls'},
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    gopls = {
      experimentalPostfixCompletions = true,
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
  init_options = {
    usePlaceholders = true,
  },
  flags = lsp_flags,
}
-- require('lspconfig')['pyright'].setup{
--   on_attach = on_attach,
--   flags = lsp_flags,
-- }
