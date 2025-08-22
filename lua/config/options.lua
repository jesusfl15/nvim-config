-- Archivo: ~/.config/nvim/lua/config/options.lua

local M = {}

vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.number = true       -- Muestra los números de línea absolutos
vim.opt.relativenumber = true -- Muestra los números de línea relativos

vim.opt.updatetime = 300

-- Indents
vim.opt.tabstop = 2 -- Número de espacios por tabulación
vim.opt.shiftwidth = 2 -- Número de espacios que se usan para la indentación automática
vim.opt.expandtab = true -- Usa espacios en lugar de tabulaciones
vim.opt.autoindent = true -- Indenta automáticamente el código cuando se presiona la tecla 'Enter'
vim.opt.paste = false -- Indenta automáticamente al pegar

-- Undofile
local undodir = vim.fn.stdpath('data') .. '/undo'
vim.opt.undodir = undodir
vim.opt.undofile = true

if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, 'p')
end

return M
