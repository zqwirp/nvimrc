return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim' -- required by gitsigns and telescope
  use {
    'kyazdani42/nvim-web-devicons', -- optional, for file nvim-tree icons
    config = function() require('nvim-tree').setup {} end
  }

  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'

  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use 'nvim-treesitter/nvim-treesitter'
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup {} end
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function() require('nvim-tree').setup {} end
  }

  use 'prettier/vim-prettier'

  -- use 'fatih/vim-go'
  use {
    'ray-x/go.nvim',
    config = function() require('go').setup {} end
  }

  use {
    'lewis6991/gitsigns.nvim', 
    config = function() require('gitsigns').setup() end
  }

  -- Colors
  use 'cocopon/iceberg.vim'
  use 'arcticicestudio/nord-vim'
  use 'nanotech/jellybeans.vim'
end)
