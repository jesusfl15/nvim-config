-- ~/.config/nvim/lua/plugins/lualine.lua

local function get_short_cwd()
  return vim.fn.fnamemodify(vim.fn.getcwd(), ':~')
end
local custom_nvimtree = {
  sections = {
    lualine_a = { get_short_cwd },
    lualine_z = {
      {
        function()
          return " " .. os.date("%H:%M")
        end,
        refresh = {
          statusline = 1000,
        },
      },
    }
  },
  filetypes = {'NvimTree'}
}

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
    },
    extensions = { custom_nvimtree },
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
