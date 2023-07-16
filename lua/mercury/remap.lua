vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", ":w<CR>")
vim.keymap.set("n", "<C-q>", ":q<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "<C-a>", "<Esc>")

vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<A-t>", "<cmd>so<CR>")

vim.keymap.set("n", "<M-f>", function()
    vim.cmd("lua ColorMyPencils()")
end)

vim.keymap.set("i", "<C-L>", "console.log('')");
vim.keymap.set("n", "<A-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<A-e>", "<cmd>!chmod +x %<CR>", { silent = true})
vim.keymap.set("n", "<A-+>", "<cmd>Copilot disable<CR>", { silent = true})

vim.keymap.set("n", "<A-1>", "<cmd>lua vim.lsp.buf.code_action() <CR>")

vim.keymap.set("v", "<C-y>", "\"+y")

