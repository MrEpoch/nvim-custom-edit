local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-F>l', builtin.find_files, {})
vim.keymap.set('n', '<C-F>g', builtin.git_files, {})
vim.keymap.set('n', '<C-F>s', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
