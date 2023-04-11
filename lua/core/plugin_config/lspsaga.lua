local saga = require("lspsaga")

saga.setup({
  ui = {
    windblend = 10,
    border = 'rounded',
    colors = {
      normal_bg = '#002b36'
    }
  }
})

local diagnostic = require('lspsaga.diagnostic')
local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'gl', '<Cmd>Lspsaga diagnostic_jump_prev<CR>', opts)
-- -- teminal toggle
-- vim.keymap.set('n', '<Space>tt', '<Cmd>Lspsaga term_toggle<CR>', opts)

-- vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_diagnostic<CR>', opts)


vim.keymap.set("n", "gd", "<cmd>Lspsaga lsp_finder<CR>", { silent = true })
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<cr>', { silent = true, noremap = true })
vim.keymap.set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("n", "lr", "<cmd>Lspsaga rename<CR>", { silent = true })
vim.keymap.set('n', 'lR', '<Cmd>Lspsaga goto_definition<cr>', { silent = true, noremap = true })
