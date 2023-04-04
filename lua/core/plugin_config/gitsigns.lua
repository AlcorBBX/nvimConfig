require('gitsigns').setup()

vim.keymap.set('n', '<Space>g + t + l', ':Gitsigns toggle_current_line_blame<CR>', {})

