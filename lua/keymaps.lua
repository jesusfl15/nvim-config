-- Archivo: ~/.config/nvim/lua/keymaps.lua

local M = {}

vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })

-- Atajos para mover líneas con Alt+j/k
vim.keymap.set("n", "<A-k>", ":move .-2<CR>==")
vim.keymap.set("n", "<A-j>", ":move .+1<CR>==")
vim.keymap.set("v", "<A-k>", ":move '<-2<CR>gv=gv")
vim.keymap.set("v", "<A-j>", ":move '>+1<CR>gv=gv")

return M
