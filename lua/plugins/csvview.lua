-- Archivo: ~/.config/nvim/lua/plugins/csvview.lua
-- Creado con ayuda de Gemini

return {
  "hat0uma/csvview.nvim",
  cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
  ft = "csv",
  opts = {
    view = {
      display_mode = "border",
    },
    parser = { comments = { "#", "//" } },
    keymaps = {
      -- Aquí solo van los atajos de navegación internos del plugin
      textobject_field_inner = { "if", mode = { "o", "x" } },
      textobject_field_outer = { "af", mode = { "o", "x" } },
      jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
      jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
      jump_next_row = { "<Enter>", mode = { "n", "v" } },
      jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
    },
  },
  config = function(_, opts)
    require("csvview").setup(opts)
    -- El atajo para 'toggle' se define aquí, fuera de la tabla 'opts'
    vim.keymap.set('n', '<leader>vc', '<cmd>CsvViewToggle<cr>', { desc = 'Toggle CSV View' })


    -- Este autocmd abre el plugin al abrir un CSV.
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "csv",
      callback = function()
        vim.cmd("CsvViewEnable")
      end,
    })
  end,
}
