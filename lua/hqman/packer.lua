-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
   use { "nvim-tree/nvim-web-devicons"}
local opt = require("toogleterm").setup({
  open_mapping = [[<c-\>]],
    -- 打开新终端后自动进入插入模式
    start_in_insert = true,
    -- 在当前buffer的下方打开新终端
    direction = 'horizontal'
})
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
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
	  require("toggleterm").setup()
  end}
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ({ 'projekt0n/github-nvim-theme' })
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
    	  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	  }
  }
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
