-- Archivo: ~/.config/nvim/lua/plugins/render-markdown.lua
-- Creado con ayuda de Gemini

return {
  "MeanderingProgrammer/render-markdown.nvim",
  -- Se carga solo en archivos Markdown para mayor rapidez
  ft = { "markdown", "pandoc.markdown" },
  opts = {
  -- Si pones true, la previsualización se abrirá automáticamente
  -- al abrir un archivo markdown.
  },

  -- Atajos de teclado para usar el plugin
  keys = {
    { "<localleader>m", "<cmd>RenderMarkdown toggle<CR>", desc = "Toggle markdown preview" },
  },
}
