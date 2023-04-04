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
local opts = { noremap = true, silent = true}

vim.keymap.set('n', 'gl', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
-- teminal toggle
vim.keymap.set('n', '<Space>tt', '<Cmd>Lspsaga term_toggle<CR>', opts)

vim.keymap.set('n', 'gl', '<Cmd>Lspsaga show_diagnostic<CR>', opts)
