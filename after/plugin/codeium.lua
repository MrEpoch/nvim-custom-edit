
-- Codeium accept of suggested keyword

vim.keymap.set("i", "<TAB>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true })

-- Codeium clears suggestions

vim.keymap.set("i", "<c-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true })
