-- Archivo: ~/.config/nvim/lua/plugins/nvim-treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- Comando que se ejecuta después de la instalación
  event = { "BufReadPre", "BufNewFile" }, -- Se carga solo al abrir un archivo

  -- Aquí está la configuración, dentro de la tabla 'opts'
  opts = {
    ensure_installed = {
      "rust",
      "javascript",
      "typescript",
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "latex",
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },
    indents = {
        enable = true
    },
    folds = {
        enable = true
    },
    locals = {
        enable = true
    }
  },
}
