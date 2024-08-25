vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'AlexvZyl/nordic.nvim'
  use 'windwp/nvim-autopairs'
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('theprimeagen/harpoon')
use ('mbbill/undotree')
use ('tpope/vim-fugitive')
use({'VonHeikemen/lsp-zero.nvim'})
use({'neovim/nvim-lspconfig'})
use({'williamboman/mason.nvim'})
use({'williamboman/mason-lspconfig.nvim'})
use({'hrsh7th/nvim-cmp'})
use({'hrsh7th/cmp-nvim-lsp'})
use({'hrsh7th/cmp-buffer'})
use({'hrsh7th/cmp-path'})
use({'saadparwaiz1/cmp_luasnip'})
use({'L3MON4D3/LuaSnip'})
use({'rafamadriz/friendly-snippets'})
end)

