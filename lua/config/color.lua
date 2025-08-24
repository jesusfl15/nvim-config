-- Archivo: ~/.config/nvim/lua/config/color.lua
-- Función actualizada gracias a sugerencias de Grok.
--
-- La función recorre los grupos de colores que especificamos,
-- copia sus propiedades y sustituye el background por nil(antes none).
--
-- En la versión anterior, al borrar el fondo se sobreescribían el resto de propiedades
-- resultando en que algunos colores quedaban indefinidos y neovim tomaba entonces
-- los colores de la consola, lo cual es problemático con pywal.

local M = {}

function M.ColorMyPencils(color)
  color = color or "catppuccin" -- Usa catppuccin por defecto
  vim.cmd.colorscheme(color)

  -- Lista de grupos de resaltado a los que aplicar fondo transparente
  local groups = {
    "Normal",
    "NormalFloat",
    "NormalNC",
    "NvimTreeNormal",
    "NvimTree",
    "NvimTreeWinSeparator",
  }

  -- Aplica fondo transparente a cada grupo, preservando el resto de propiedades.
  -- "_, group" equivale a "index, group", pero indica que index no se utiliza.
  for _, group in ipairs(groups) do
    local hl = vim.api.nvim_get_hl(0, { name = group }) or {}
    hl.bg = nil -- Equivalente a bg = "none"
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
