vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv","<cmd>Oil<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>y","+y")
vim.keymap.set("v", "<leader>y","+y")

vim.keymap.set("n","<C-d","<C-d>zz")
vim.keymap.set("n","<C-u","<C-u>zz")
