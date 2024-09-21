vim.g.mapleader = " "

-- Exits file, but still in neovim instance

vim.keymap.set("n", "<leader>q", vim.cmd.Ex)

-- Saves file

vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Closes neovim instance

vim.keymap.set("n", "<C-q>", ":q<CR>")

-- Can move text up and down

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Exits insert mode

vim.keymap.set("i", "<C-a>", "<Esc>")

-- Updates all word instances

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Source

vim.keymap.set("n", "<A-t>", "<cmd>so<CR>")

-- Updates theme

vim.keymap.set("n", "<M-f>", function()
	vim.cmd("lua ColorMyPencils()")
end)

-- Creates nested tmux session

vim.keymap.set("n", "<A-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- File is executable

vim.keymap.set("n", "<A-e>", "<cmd>!chmod +x %<CR>", { silent = true })

-- Better yanking

vim.keymap.set("v", "<C-y>", '"+y')

-- Preview markdown file

vim.keymap.set("n", "<A-m>", "<cmd>MarkdownPreviewToggle<CR>")
