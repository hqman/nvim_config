-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
   use { "nvim-tree/nvim-web-devicons"}
  use { "nvim-tree/nvim-tree.lua"}
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
  use {
	  'jose-elias-alvarez/null-ls.nvim',
	  requires = { 'neovim/nvim-lspconfig' }
  }
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
  end}
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ({ 'projekt0n/github-nvim-theme' })
  use {
	  'glepnir/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
		  require('dashboard').setup {
			  -- config
		  }
	  end,
	  requires = {'nvim-tree/nvim-web-devicons'}
  }
  use({
	  "kylechui/nvim-surround",
	  tag = "*", -- Use for stability; omit to use `main` branch for the latest features
	  config = function()
		  require("nvim-surround").setup({
			  -- Configuration here, or leave empty to use defaults
		  })
	  end
  })
  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('Comment').setup()
	  end
  }
end)
