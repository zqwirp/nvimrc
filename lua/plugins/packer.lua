return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- lsp and completion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- tpope
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'

  -- completion
  use 'mattn/emmet-vim'
  -- use 'Raimondi/delimitMate'
  use 'windwp/nvim-autopairs'

  -- syntax
  use 'sheerun/vim-polyglot' -- a collection of language packs for vim
  use 'prettier/vim-prettier'

  -- integration
  use {'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  -- interface
  use 'lukas-reineke/indent-blankline.nvim'
  use {'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
  }  -- like gitgutter

  -- color
  use 'cocopon/iceberg.vim'
  use 'arcticicestudio/nord-vim'

end)
