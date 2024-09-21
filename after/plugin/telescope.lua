local builtin = require("telescope.builtin")

-- This is used for searching file in opened directory

vim.keymap.set("n", "<C-F>l", builtin.find_files, {})

-- This is used for searching git files in opened directory

vim.keymap.set("n", "<C-F>g", builtin.git_files, {})

-- Searches all files for some keyword

vim.keymap.set("n", "<C-F>s", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
