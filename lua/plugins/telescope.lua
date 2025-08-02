-- Archivo: ~/.config/nvim/lua/plugins/telescope.lua
-- Creado con ayuda de Gemini

return {
  "nvim-telescope/telescope.nvim",
  -- Se carga solo cuando se llama a un atajo de teclado
  cmd = "Telescope",
  dependencies = {
    -- Es una dependencia necesaria para que Telescope funcione
    "nvim-lua/plenary.nvim" 
  },
  keys = {
    -- Tu atajo original para buscar archivos
    { "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "Find files" },
    
    -- Tu atajo para buscar archivos de Git
    { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Find git files" },
    
    -- Tu atajo para buscar texto, pero con live_grep que es más potente
    { "<leader>ps", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
    
    -- Un atajo muy útil para saltar entre los archivos abiertos (buffers)
    { "<leader>b", "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
    
     -- Atajo para buscar en el directorio superior
    { "<leader>pd", "<cmd>Telescope find_files cwd=../<cr>", desc = "Find files in parent directory" },

  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true, -- Muestra archivos y directorios ocultos por defecto
        },
      },
    })
  end,
}
