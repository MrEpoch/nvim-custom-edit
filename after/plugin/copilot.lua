vim.cmd[[imap <silent><script><expr <C-r> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true

vim.keymap.set('i', '<TAB>', function () return vim.fn['codeium#Accept']() end, { expr = true })
vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })


