return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'mattn/emmet-vim'
  use 'Raimondi/delimitMate'
  use 'lukas-reineke/indent-blankline.nvim'
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, }
end)

