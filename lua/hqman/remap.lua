
local keymap = vim.api.nvim_set_keymap
local opts ={noremap= true,silent=true}
keymap('n','H' ,'^',opts)
keymap('n','L', '$',opts)
keymap("t", "<Esc>", "<C-\\><C-n>",opts)

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
--  Ctrl-s 保存当前缓冲区/文件
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>', { noremap = true, silent = true })

--Nvim-tree--
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<cr>")
vim.keymap.set("n", "<leader>up", ":PackerSync")
