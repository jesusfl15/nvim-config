-- ~/.config/nvim/lua/plugins/lsp.lua

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")

      -- Inicializa Mason para gestionar la instalación de servidores LSP
      mason.setup()

      -- Configura mason-lspconfig para instalar automáticamente servidores
      mason_lspconfig.setup({
        ensure_installed = {
          "texlab",
          "lua_ls",
          "bashls",
        },
        automatic_installation = true,  -- instala servidores faltantes
        automatic_enable = false, -- desactivo la activación automática para evitar servidores duplicados
      })

      -- Capacidades básicas
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      -- Aquí más adelante añadirías
      -- capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

      -- Configura manualmente cada servidor
      -- Ya que setup_handlers se eliminó, configuras cada uno a mano
      -- lspconfig.lua_ls.setup({ capabilities = capabilities }) -- config básica, la sustituyo para añadir vim a variables globales

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- para evitar dignósticos innecesaios en archivos de configuración de nvim
            },
          },
        },
      })

      lspconfig.bashls.setup({ capabilities = capabilities })

      -- Configuración personalizada para texlab
      lspconfig.texlab.setup({
        capabilities = capabilities,
        settings = {
          texlab = {
            build = {
              onSave = false,
            },
          },
        },
      })
    end,
  },
}

