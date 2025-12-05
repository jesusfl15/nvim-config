-- Archivo: ~/.config/nvim/lua/plugins/indent-blankline.lua
return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    enabled = function()
      if vim.bo.filetype == "markdown" then
        return false
      end
    end,
    opts = {},
}
