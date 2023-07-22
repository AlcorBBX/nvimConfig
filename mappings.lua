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
    ["<leader>tp"] = {
      ":Telescope projects<CR>",
      -- ":lua require('telescope').extensions.projects.projects()<CR>",
      "Projects",
      opts = { silent = true },
    },
    ["<leader>tc"] = { ":e $MYVIMRC <CR>", "Go to config", opts = { silent = true } },
    ["<leader>W"] = { ":noautocmd w <CR>", "Save without formating", opts = { silent = true } },

    -- lspsaga
    ["<leader>sk"] = { ":Lspsaga hover_doc <CR>", "LspSaga hover doc", opts = { silent = true } },
    ["<leader>spd"] = { ":Lspsaga peek_definition <CR>", "LspSaga peek definition", opts = { silent = true } },
    ["<leader>spD"] = { ":Lspsaga peek_type_definition <CR>", "LspSaga peek type definition", opts = { silent = true } },

    ["<leader>sD"] = {
      ":Lspsaga show_workplace_diagnostics <CR>",
      "LspSaga show workspace diagnostic",
      opts = { silent = true },
    },
    ["<leader>sdn"] = { ":Lspsaga diagnostic_jump_next <CR>", "LspSaga diagnostic next", opts = { silent = true } },
    ["<leader>sdp"] = { ":Lspsaga diagnostic_jump_prev <CR>", "LspSaga diagnostic prev ", opts = { silent = true } },

    ["<leader>sgD"] = { ":Lspsaga goto_type_definition<CR>", "LspSaga goto_type_definition", opts = { silent = true } },
    ["<leader>spr"] = { ":Lspsaga project_replace <CR>", "LspSaga project replace", opts = { silent = true } },
    ["<leader>sr"] = { ":Lspsaga rename <CR>", "LspSaga rename", opts = { silent = true } },
    ["<leader>soc"] = { ":Lspsaga outgoing_calls <CR>", "LspSaga outgoing calls", opts = { silent = true } },
    ["<leader>sic"] = { ":Lspsaga incomming_calls <CR>", "LspSaga incomming calls", opts = { silent = true } },
    ["<leader>sa"] = { ":Lspsaga code_action <CR>", "LspSaga code actions", opts = { silent = true } },
    ["<leader>sgl"] = { ":Lspsaga show_line_diagnostics <CR>", "LspSaga line diagnostic", opts = { silent = true } },
    -- ["<leader>s"] = { ":Lspsaga show_buf_diagnostics <CR>", "LspSaga ", opts = { silent = true } },
    -- ["<leader>s"] = { ":Lspsaga show_cursor_diagnostics <CR>", "LspSaga ", opts = { silent = true } },
    ["<leader>sgd"] = { ":Lspsaga goto_definition <CR>", "LspSaga go to definition", opts = { silent = true } },
    ["<leader>stt"] = { ":Lspsaga term_toggle <CR>", "LspSaga term toggle", opts = { silent = true } },
    ["<leader>sL"] = { ":Lspsaga open_log <CR>", "LspSaga open log", opts = { silent = true } },
    ["<leader>sf"] = { ":Lspsaga finder <CR>", "LspSaga finder", opts = { silent = true } },
    ["<leader>sO"] = { ":Lspsaga outline <CR>", "LspSaga outline", opts = { silent = true } },
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
