

vim.keymap.set('n', '<C-j>', '<Cmd>NvimTreeToggle<CR>')
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd w<CR>')
vim.keymap.set('n', '<C-y>', '<Cmd>Telescope find_files<CR>')
vim.keymap.set('n', '<C-e>', "<Cmd>Telescope file_browser<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-f>", ":Format<CR>", { noremap = true, silent = true })



