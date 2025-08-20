-- ~/.config/nvim/lua/plugins/luasnip.lua

return {
  "L3MON4D3/LuaSnip",
  version = "v2.*", -- versión estable recomendada
  build = "make install_jsregexp", -- para soporte avanzado de regex en snippets
  config = function()
    local luasnip = require("luasnip")

    -- Opcional: carga snippets de formato VSCode si quieres en el futuro
    -- require("luasnip.loaders.from_vscode").lazy_load()

    -- Opcional: cambia las teclas de salto entre campos
    vim.keymap.set({ "i", "s" }, "<C-k>", function()
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      end
    end, { silent = true })

    vim.keymap.set({ "i", "s" }, "<C-j>", function()
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      end
    end, { silent = true })
  end,
}

