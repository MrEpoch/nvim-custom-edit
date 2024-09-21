-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Telescop = used for searching files, git files, and grep keyword searching

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

  -- Catpuccin = color theme

	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin")
		end,
	})

  -- Treesitter = syntax highlighting

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

  -- Treesitter playground = 

	use("nvim-treesitter/playground")

  -- Harpoon = easier file navigation, can save file shortcut and with harpoon later navigate to it

	use("theprimeagen/harpoon")

  -- Undotree = better undo command, undo tree gives better visual representation of saved changes

	use("mbbill/undotree")

  -- vim-fugitive = better git management

	use("tpope/vim-fugitive")
  
  -- LSP = language server, together with mason can install more language servers

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v1.x",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				run = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "hrsh7th/cmp-buffer" }, -- Optional
			{ "hrsh7th/cmp-path" }, -- Optional
			{ "saadparwaiz1/cmp_luasnip" }, -- Optional
			{ "hrsh7th/cmp-nvim-lua" }, -- Optional

			-- Snippets
			{ "L3MON4D3/LuaSnip" }, -- Required
			{ "rafamadriz/friendly-snippets" }, -- Optional
		},
	})

  -- vCoolor = color picker, generally no longer used

	use("KabbAmine/vCoolor.vim")
  
  -- emmet = for html boilerplates

	use("mattn/emmet-vim")

  -- lspsaga = lsp ui, i usually use it with quick terminal

	use({
		"nvimdev/lspsaga.nvim",
		after = "nvim-lspconfig",
		config = function()
			require("lspsaga").setup({})
		end,
	})

  -- nvim-cmp = completions

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
	use("hrsh7th/vim-vsnip")


	-- Adds extra functionality over rust analyzer

  use("simrat39/rust-tools.nvim")

  -- yanky = better yank (copy) of text

  use("gbprod/yanky.nvim")

  -- html5 = for html boilerplates

	use("othree/html5.vim")

  -- javascript = for javascript boilerplates

	use("pangloss/vim-javascript")

  -- svelte = for svelte boilerplates

	use("evanleck/vim-svelte")

  -- typescript = for typescript boilerplates

	use("leafgarland/typescript-vim")

  -- vim-styled-components = for styled-components boilerplates

	use("styled-components/vim-styled-components")

  -- vim-jsx-typescript = for jsx boilerplates

	use("peitalin/vim-jsx-typescript")

  -- codeium = for AI code completion

	use("Exafunction/codeium.vim")

  -- markdown-preview = for markdown preview

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})

  -- nvim-jdtls = for java development

	use("mfussenegger/nvim-jdtls")


end)
