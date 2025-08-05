-- ~/.config/nvim/lua/plugins/lualine.lua

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
    },
    sections = {
      lualine_z = { -- mostrar la hora en la barra
        {'location'},
        {
          function()
            return " " .. os.date("%H:%M")
          end,
          cond = nil,
          refresh = {
            statusline = 1000,
          },
        },
      },
    },
  },
}
