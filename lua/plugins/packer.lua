return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- tpope
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'

  -- completion
  use 'mattn/emmet-vim'
  use 'Raimondi/delimitMate'

  -- interface
  use 'lukas-reineke/indent-blankline.nvim'
  use { 'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }  -- like gitgutter

  -- syntax
  use 'sheerun/vim-polyglot' -- a collection of language packs for vim
  use 'prettier/vim-prettier'

  -- color
  use 'cocopon/iceberg.vim'
  use 'arcticicestudio/nord-vim'

  -- lsp and completion
  use 'neovim/nvim-lspconfig'
end)
