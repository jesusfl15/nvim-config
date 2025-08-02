-- leader y localleader se definen en config.lazy y en options por redundancia

require("options")
require("keymaps")
require("config.lazy")

color = require("color")
color.ColorMyPencils()


-- Cambia el directorio de trabajo de Neovim automáticamente
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local git_dir = vim.fn.finddir(".git", ".;")
    if git_dir ~= "" and git_dir ~= "0" then
      -- Si se encuentra un repositorio de Git, cambia el directorio a la raíz del proyecto
      local root = vim.fn.fnamemodify(git_dir, ":h")
      vim.cmd.cd(root)
    else
      -- Si no se encuentra un repositorio, cambia el directorio a la carpeta del archivo
      vim.cmd.cd(vim.fn.expand('%:p:h'))
    end
  end,
})
