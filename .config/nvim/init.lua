require("dealbertt")
vim.api.nvim_set_hl(0, 'Normal', { bg = '#000000' })
vim.o.termguicolors = true
-- When entering visual mode, automatically select the entire line
vim.api.nvim_set_keymap('v', '<C-v>', 'V', { noremap = true, silent = true })
require("oil").setup()


-- GRAY #1E1E1E

