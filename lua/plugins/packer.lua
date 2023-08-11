return require('packer').startup(function(use)
  use("wbthomason/packer.nvim" ) -- packer can manage itself

  use("tpope/vim-fugitive")
  use("tpope/vim-surround")
  use("tpope/vim-commentary")

  use({
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate',
  })

  -- colorschemes
  use("nanotech/jellybeans.vim")
  use("AlexvZyl/nordic.nvim")
end)
