local lsp = require("lsp-zero")

lsp.preset("recommended")

-- I installed tsserver globally

lsp.ensure_installed({
	"eslint",
	"rust_analyzer",
	"tsserver",
  "jsserver",
  "lua_ls",
  "cssls",
  "html",
  "jsonls",
  "java_language_server",
  "jdtls"
})

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<A-n>"] = cmp.mapping.select_prev_item(cmp.select),
	["<A-m>"] = cmp.mapping.select_prev_item(cmp.select),
	["<A-,>"] = cmp.mapping.confirm({ select = true }),
	["<A-.>"] = cmp.mapping.complete(),
})

cmp_mappings["<Tab>"] = nil
cmp_mappings["<S-Tab>"] = nil

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})
