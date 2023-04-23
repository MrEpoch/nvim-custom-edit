local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed ({
	'tsserver',
	'eslint',
	'rust_analyzer',
  })

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-1>'] = cmp.mapping.select_prev_item(cmp.select),
	['<C-2>'] = cmp.mapping.select_prev_item(cmp.select),
	['<C-3>'] = cmp.mapping.confirm({select = true}),
	["<C-space>"] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

end)

lsp.setup()
	
	
