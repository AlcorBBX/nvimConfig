-- Neovim plugin to improve the default vim.ui interfaces
local M = {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
}

function M.config()
  local status_ok, dressing = pcall(require, "dressing")
  if not status_ok then
    return
  end

  dressing.setup {}
end

return M
