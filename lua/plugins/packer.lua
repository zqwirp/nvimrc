return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- command
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'

  -- completion
  use 'mattn/emmet-vim'
  use 'Raimondi/delimitMate'

  -- syntax
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-haml'
  use 'pangloss/vim-javascript'
  use 'prettier/vim-prettier'

  -- integration
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'kyazdani42/nvim-tree.lua'

  -- interface
  use 'lukas-reineke/indent-blankline.nvim'
  use 'kyazdani42/nvim-web-devicons' -- required by nvim-tree -- optional

  -- color
  use 'cocopon/iceberg.vim'
  use 'arcticicestudio/nord-vim'
  use 'nanotech/jellybeans.vim'

  use 'nvim-lua/plenary.nvim' -- required by nvim-telescope
end)



-- use 'lewis6991/gitsigns.nvim' -- plugin like gitgutter
