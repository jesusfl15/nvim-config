-- Archivo: ~/.config/nvim/lua/options.lua

local M = {}

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.number = true       -- Muestra los números de línea absolutos
vim.opt.relativenumber = true -- Muestra los números de línea relativos

-- Indents
-- 1. Número de espacios por tabulación
vim.opt.tabstop = 2
-- 2. Número de espacios que se usan para la indentación automática
vim.opt.shiftwidth = 2
-- 3. Usa espacios en lugar de tabulaciones
vim.opt.expandtab = true
-- 4. Indenta automáticamente el código cuando se presiona la tecla 'Enter'
vim.opt.autoindent = true
-- 5. Indenta automáticamente al pegar
vim.opt.paste = false

return M
