-- TODO
-- Add TABS keybildings
--
---@type MappingsTable
local M = {}

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = { "<cmd>w<CR>", "Save file", opts = { nowait = true } },
    ["<leader>q"] = { "<cmd>q<CR>", "Exit", opts = { nowait = true } },
    ["<leader>Q"] = { "<cmd>q!<CR>", "Exit without save", opts = { nowait = true } },
    ["<leader>gg"] = { "<cmd>lua _LAZYGIT_TOGGLE()<CR>", "LazyGit Toggle", opts = { silent = true } },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    ["<leader>/"] = {
      "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>",
      "Comment",
      opts = { silent = true },
    },
    ["<S-l>"] = { "<cmd>bnext<CR>", "Buffer next" },
    ["<S-h>"] = { "<cmd>bprev<CR>", "Buffer previous" },
    ["<S-q>"] = { "<cmd>bdelete!<CR>", "Buffer close" },
    ["<leader>la"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

M.disabled = {
  n = {
    ["<C-n>"] = { "" },
    ["<leader>fm"] = { "" },
    ["<leader>ca"] = { "" },
  },
}
-- more keybinds!

return M
