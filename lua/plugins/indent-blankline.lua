-- Archivo: ~/.config/nvim/lua/plugins/indent-blankline.lua
return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
   exclude = { filetypes = { "markdown" } },
  },
}
