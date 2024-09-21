
-- Harpoon is a plugin that lets you quickly jump between files

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- To add file to harpoon

vim.keymap.set("n", "<leader>a", mark.add_file)

-- To see menu of harpooned files

vim.keymap.set("n", "<C-w>", ui.toggle_quick_menu)

-- To jump between harpooned files
-- (1, 2, 3, 4, 5, 6, 7, 8, 9) = i use czech keyboard so letters are somewhat strange

vim.keymap.set("n", "<leader>+", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<leader>ě", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<leader>š", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<leader>č", function()
	ui.nav_file(4)
end)
vim.keymap.set("n", "<leader>ř", function()
	ui.nav_file(5)
end)
vim.keymap.set("n", "<leader>ž", function()
	ui.nav_file(6)
end)
vim.keymap.set("n", "<leader>ý", function()
	ui.nav_file(7)
end)
vim.keymap.set("n", "<leader>á", function()
	ui.nav_file(8)
end)
vim.keymap.set("n", "<leader>í", function()
	ui.nav_file(9)
end)
