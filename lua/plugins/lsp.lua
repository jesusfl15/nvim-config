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
      --reemplazado por vim.lsp.config
      --local lspconfig = require("lspconfig")

      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          vim.diagnostic.open_float(nil, { focus = false, border = "rounded" })
        end,
      })

      -- Inicializa Mason para gestionar la instalación de servidores LSP
      mason.setup()

      -- Configura mason-lspconfig para instalar automáticamente servidores
      mason_lspconfig.setup({
        ensure_installed = {
          "texlab",
          "lua_ls",
          "bashls",
          "clangd",
        },
        automatic_installation = true,  -- instala servidores faltantes
        -- creo que lo siguiente no tiene sentido desde que actualizaron a vim.lsp.config()
        -- automatic_enable = false, -- desactivo la activación automática para evitar servidores duplicados
        automatic_enable = true,
      })

      -- Capacidades básicas
      -- local capabilities = vim.lsp.protocol.make_client_capabilities()
      -- Aquí más adelante añadirías
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Configura manualmente cada servidor
      -- Ya que setup_handlers se eliminó, configuras cada uno a mano
      -- lspconfig.lua_ls.setup({ capabilities = capabilities }) -- config básica, la sustituyo para añadir vim a variables globales

      vim.lsp.config('lua_ls',{
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }, -- para evitar dignósticos innecesaios en archivos de configuración de nvim
            },
          },
        },
      })

      vim.lsp.config('bashls' ,{ capabilities = capabilities })

      -- Configuración personalizada para texlab
      vim.lsp.config('texlab',{
        capabilities = capabilities,
        -- root_dir = lspconfig.util.root_pattern("main.tex", ".git", ".latexmkrc"),
        root_dir = function(fname)
          return vim.lsp.config.util.root_pattern("main.tex", ".git", ".latexmkrc")(fname)
          or vim.fn.expand("%:p:h")
        end,
        settings = {
          texlab = {
            build = {
              onSave = false,
            },
          },
        },
      })

      vim.lsp.config('clangd',{
        capabilities = capabilities,
        root_dir = function(fname)
          return vim.lsp.config.util.root_pattern(
            "compile_commands.json",
            "compile_flags.txt",
            "CMakeLists.txt",
            "Makefile",
            ".git",
            "main.c"
          )(fname) or vim.fn.expand("%:p:h")
        end,
      })

    end,
  },
}

