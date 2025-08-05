-- Archivo: ~/.config/nvim/lua/config/color.lua
-- Función copiada de un vídeo de ThePrimeagen y módulo creado con la ayuda de Gemini.

local M = {}

function M.ColorMyPencils(color)
  color = color or "catppuccin" -- Usa catppuccin por defecto
  vim.cmd.colorscheme(color)

  -- Personalizaciones adicionales (transparencias)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTree", { bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "none" })

  -- El siguiente bloque es innecesario con lualine
  -- Víncula el color de la barra de estado inactiva a un grupo de resaltado tenue.
  -- Usamos 'Comment' como ejemplo, pero puedes cambiarlo por 'Pmenu' u otro.
  -- vim.cmd.hi('StatusLineNC guibg=none') -- Asegura que el fondo sea transparente
  -- vim.cmd.hi('link StatusLineNC Comment')
end

return M
