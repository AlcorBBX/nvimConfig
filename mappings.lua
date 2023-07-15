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
    ["<A-j>"] = { "<cmd>m +1<CR>", "Move line up" },
    ["<A-k>"] = { "<cmd>m -2<CR>", "Move line down" },

    ["<leader>lr"] = {
      function()
        require("nvchad_ui.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ta"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },
    ["<leader>tr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>tl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },

    ["<leader>tK"] = {
      function()
        vim.cmd "WhichKey"
      end,
      "Which-key all keymaps",
    },
    ["<leader>tk"] = {
      function()
        local input = vim.fn.input "WhichKey: "
        vim.cmd("WhichKey " .. input)
      end,
      "Which-key query lookup",
    },
    ["<leader>h"] = { ":noh <CR>", "Clear highlights" },
    ["gl"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },
  },
}

M.disabled = {
  n = {
    ["<C-n>"] = { "" },
    ["<leader>fm"] = { "" },
    ["<leader>ca"] = { "" },
    ["<leader>wa"] = { "" },
    ["<leader>wt"] = { "" },
    ["<leader>wr"] = { "" },
    ["<leader>wl"] = { "" },
    ["<leader>wL"] = { "" },
    ["<leader>wK"] = { "" },
    ["<leader>wk"] = { "" },
    ["<leader>ra"] = { "" },
    ["<Esc>"] = { "" },
    ["<leader>h"] = { "" },
    ["<leader>f"] = { "" },
  },
}
-- more keybinds!

return M
