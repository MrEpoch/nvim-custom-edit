-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' 	

 use {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
 }

 use ({ 
  "eldritch-theme/eldritch.nvim",
	as = "eldritch",
	config = function()
		vim.cmd("colorscheme eldritch")
	end
 })
 use { "catppuccin/nvim", as = "catppuccin" }

 use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 use ('nvim-treesitter/playground')
 use ('theprimeagen/harpoon')
 use ('mbbill/undotree')
 use ('tpope/vim-fugitive')
 use {
	 'VonHeikemen/lsp-zero.nvim',
	 branch = 'v1.x',
	 requires = {
		 -- LSP Support
		 {'neovim/nvim-lspconfig'},             -- Required
		 {                                      -- Optional
		 'williamboman/mason.nvim',
		 run = function()
			 pcall(vim.cmd, 'MasonUpdate')
		 end,
	 },
	 {'williamboman/mason-lspconfig.nvim'}, -- Optional

	 -- Autocompletion
	 {'hrsh7th/nvim-cmp'},         -- Required
	 {'hrsh7th/cmp-nvim-lsp'},     -- Required
	 {'hrsh7th/cmp-buffer'},       -- Optional
	 {'hrsh7th/cmp-path'},         -- Optional
	 {'saadparwaiz1/cmp_luasnip'}, -- Optional
	 {'hrsh7th/cmp-nvim-lua'},     -- Optional

	 -- Snippets
	 {'L3MON4D3/LuaSnip'},             -- Required
	 {'rafamadriz/friendly-snippets'}, -- Optional
  }
 }
 -- use ('github/copilot.vim')
 use('KabbAmine/vCoolor.vim')
 use('mattn/emmet-vim')
 
 use({
     "nvimdev/lspsaga.nvim",
     after = 'nvim-lspconfig',
     config = function()
         require("lspsaga").setup({})
     end,
 })

  use("hrsh7th/nvim-cmp")
  use({
    -- cmp LSP completion
    "hrsh7th/cmp-nvim-lsp",
    -- cmp Snippet completion
    "hrsh7th/cmp-vsnip",
    -- cmp Path completion
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    after = { "hrsh7th/nvim-cmp" },
    requires = { "hrsh7th/nvim-cmp" },
  })
  -- See hrsh7th other plugins for more great completion sources!
  -- Snippet engine
  use('hrsh7th/vim-vsnip')
  -- Adds extra functionality over rust analyzer
  use("simrat39/rust-tools.nvim")   

  use("gbprod/yanky.nvim")

  use("othree/html5.vim")
  use("pangloss/vim-javascript")
  use("evanleck/vim-svelte")
  use("leafgarland/typescript-vim")
  use("styled-components/vim-styled-components")
  use("peitalin/vim-jsx-typescript")
  use("Exafunction/codeium.vim")
end)
