-- Archivo: ~/.config/nvim/lua/plugins/nvim-tree.lua
-- Creado con ayuda de Gemini

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- Deshabilita el explorador de archivos nativo de Neovim
    disable_netrw = true,

    -- Configuración de la vista
    view = {
      width = 30, -- Ancho del panel lateral
    },

    -- Configuración visual de los archivos y directorios
    renderer = {
      -- Muestra marcadores de indentación para una vista de árbol más clara
      indent_markers = {
        enable = true,
      },
      icons = {
        -- Desactiva los iconos de archivos y directorios si no los quieres
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
        },
      },
    },

    -- Configuración de filtros
    filters = {
      dotfiles = false, -- Oculta los archivos que empiezan con un punto
    },
  },
  
  -- Aquí definimos el atajo para abrir y cerrar el panel
  keys = {
    { "<leader>e","<CMD>NvimTreeFindFileToggle<CR>" , desc = "Toggle file explorer" },
  },
}
