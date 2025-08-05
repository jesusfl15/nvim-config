-- Archivo: ~/.config/nvim/lua/plugins/vimtex.lua

return {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_compiler_latexmk = {
      options = {
        "-shell-escape",                 -- Permite la ejecución de comandos externos.
        "-synctex=1",                    -- Habilita la sincronización bidireccional.
        "-interaction=nonstopmode",      -- Evita que la compilación se detenga por errores.
      },
    }

    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_method = "latexmk"
  end,
}
