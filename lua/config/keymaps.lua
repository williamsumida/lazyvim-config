-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
vim.g.mapleader = " "

keymap.set("n", "x", '"_x')
keymap.set("i", "jj", "<C-[>")
vim.keymap.set("n", "<Leader>k", "<C-w>k")
vim.keymap.set("n", "<Leader>h", "<C-w>h")
vim.keymap.set("n", "<Leader>j", "<C-w>j")
vim.keymap.set("n", "<Leader>l", "<C-w>l")
vim.keymap.set("n", "<Leader>sv", ":source $MYVIMRC<CR>")
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
