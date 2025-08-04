-- Archivo: ~/.config/nvim/lua/plugins/nvim-tree.lua
-- Creado con ayuda de Gemini

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false, -- necesitamos esto para poder abrirlo al principio.
  opts = {

    -- Las siguientes líneas no son necesarias por estar activadas por defecto
    -- pero las dejo comentadas para recordarlas en caso de tener algún
    -- conflicto futuro.
    -- Deshabilita el explorador de archivos nativo de Neovim
    -- disable_netrw = true,
    -- Sustituye netrw por nvim-tree
    -- hijack_netrw = true,

    -- Configuración de la vista
    view = {
      width = 30, -- Ancho del panel lateral
    },

    actions = {
      open_file ={
        quit_on_open = true,
      },
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
