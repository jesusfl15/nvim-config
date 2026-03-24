-- ~/.config/nvim/lua/plugins/auto-save.lua

return {
  "okuuva/auto-save.nvim",
  version = '^1.0.0',                       -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
  ft = {"tex"},
  cmd = "ASToggle",                         -- optional for lazy loading on command
  opts = {
    enabled = true,
    debounce_delay = 500,
  },
  keys = {
    { "<leader>as", "<cmd>ASToggle<CR>", desc = "Toggle autosave" },
  },
}
