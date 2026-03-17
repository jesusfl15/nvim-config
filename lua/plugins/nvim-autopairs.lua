-- ~/.config/nvim/lua/plugins/nvim-autopairs.lua

return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",

  config = function()
    local npairs = require("nvim-autopairs")
    -- local rule = require("nvim-autopairs.rule")

    npairs.setup({
      check_ts = true,
      fast_wrap = {},
      disable_filetype = { "tex", "markdown" },
    })

    -- integración con nvim-cmp
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = require("cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

    -- npairs.add_rules({
    --   rule("\\[", "\\]", "tex")  -- en latex estorba más de lo que ayuda
    -- })
  end
}
