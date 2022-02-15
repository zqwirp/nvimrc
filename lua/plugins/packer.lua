require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- lsp & completion
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- completion
  use { 'windwp/nvim-autopairs',
    config = function() require'nvim-autopairs'.setup {} end
  }
  use 'mattn/emmet-vim'

  -- syntax
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-haml'
  use 'pangloss/vim-javascript'
  use 'prettier/vim-prettier'

  -- integration
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'tpope/vim-fugitive'
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' },
    config = function() require'nvim-tree'.setup {} end -- initialize
  }
  use { 'nvim-telescope/telescope.nvim', requires = {'nvim-lua/plenary.nvim'} }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- interface
  use 'lukas-reineke/indent-blankline.nvim'

  -- command
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'

  -- color
  use 'cocopon/iceberg.vim'
  use 'arcticicestudio/nord-vim'
  use 'nanotech/jellybeans.vim'
end)
