-- ~/.config/nvim/lua/plugins/mason.lua
-- Gestión de binarios LSP: Mason y su integración con lspconfig

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "texlab", "lua_ls", "bashls", "clangd" },
        automatic_installation = true,
        automatic_enable = true,
      })
    end,
  },
}
