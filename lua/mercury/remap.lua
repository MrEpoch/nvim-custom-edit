vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-q>", ":q<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<C-a>", "<Esc>")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>tr", function()
    vim.cmd("NERDTree")
end)

vim.keymap.set("n", "<C-b>", function()
    vim.cmd("NERDTreeToggle")
end)

vim.keymap.set("n", "<leader>co", function()
    vim.cmd("lua ColorMyPencils()")
end)

vim.keymap.set("i", "<C-L>", "console.log('')");





