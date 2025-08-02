-- Archivo: ~/.config/nvim/lua/keymaps.lua

local M = {}

vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "Salir del modo de inserción" })
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

return M
