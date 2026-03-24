-- ~/.config/nvim/lua/plugins/auto-save.lua

return {
  "okuuva/auto-save.nvim",
  version = '^1.0.0',                       -- see https://devhints.io/semver, alternatively use '*' to use the latest tagged release
  cmd = "ASToggle",                         -- optional for lazy loading on command
  opts = {
    enabled = false,
    debounce_delay = 100,
  },
  keys = {
    { "<leader>as", "<cmd>ASToggle<CR>", desc = "Toggle autosave" },
  },
}
