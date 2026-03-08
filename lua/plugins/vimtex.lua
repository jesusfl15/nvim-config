-- Archivo: ~/.config/nvim/lua/plugins/vimtex.lua

return {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-shell-escape",            -- Permite la ejecución de comandos externos.
        "-synctex=1",               -- Habilita la sincronización bidireccional.
        "-interaction=nonstopmode", -- Evita que la compilación se detenga por errores.
      },
    }

    vim.g.vimtex_imaps_leader = ";"
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_method = "latexmk"

    -- ejemplo de cómo añadir imaps custom usando lua
    -- (es un ejemplo de la documentación "traducido" a lua)
    vim.fn["vimtex#imaps#add_map"]({
      lhs = "r",
      rhs = 'vimtex#imaps#style_math("mathrm")',
      expr = 1,
      leader = '#',
      wrapper = 'vimtex#imaps#wrap_math'
    })
  end,
}
