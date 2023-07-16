-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim' 	

 use {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
 }

 use ({ 
	'EdenEast/nightfox.nvim',
	as = "nightfox",
	config = function()
		vim.cmd("colorscheme carbonfox")
	end
 })

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
 use ('github/copilot.vim')
 use('KabbAmine/vCoolor.vim')
 use('mattn/emmet-vim')
 use {
  "rest-nvim/rest.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    require("rest-nvim").setup({
      -- Open request results in a horizontal split
      result_split_horizontal = false,
      -- Keep the http file buffer above|left when split horizontal|vertical
      result_split_in_place = false,
      -- Skip SSL verification, useful for unknown certificates
      skip_ssl_verification = false,
      -- Encode URL before making request
      encode_url = true,
      -- Highlight request on run
      highlight = {
        enabled = true,
        timeout = 150,
      },
      result = {
        -- toggle showing URL, HTTP info, headers at top the of result window
        show_url = true,
        show_http_info = true,
        show_headers = true,
        -- executables or functions for formatting response body [optional]
        -- set them to false if you want to disable them
        formatters = {
          json = "jq",
          html = function(body)
            return vim.fn.system({"tidy", "-i", "-q", "-"}, body)
          end
        },
      },
      -- Jump to request line on run
      jump_to_request = false,
      env_file = '.env',
      custom_dynamic_variables = {},
      yank_dry_run = true,
    })
  end
 }
 
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
end)
