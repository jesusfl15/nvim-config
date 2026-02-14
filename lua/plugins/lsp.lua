-- ~/.config/nvim/lua/plugins/lsp.lua

-- Configuración de servidores LSP mediante vim.lsp.config() (Neovim >= 0.11)

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      -- Capabilities globales para todos los servidores LSP
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })

      -- Diagnósticos flotantes al hacer pausa
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.diagnostic.open_float(nil, { focus = false, border = "rounded" })
        end,
      })

      -- texlab
      vim.lsp.config("texlab", {
        settings = {
          texlab = {
            build = {
              onSave = false,
            },
          },
        },
      })

      -- lua_ls
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
    end,
  },
}
