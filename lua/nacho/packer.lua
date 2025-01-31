-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
}

use ({ "catppuccin/nvim", as = "catppuccin", config = function()
	  vim.cmd('colorscheme catppuccin-mocha')
end
})

 
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')
 use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
 use {
	 "ThePrimeagen/harpoon",
	 branch = "harpoon2",
	 requires = { {"nvim-lua/plenary.nvim"} }
 } 
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
end)
