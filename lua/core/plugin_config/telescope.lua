require('telescope').setup()
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<Space>ff', builtin.find_files, {})
vim.keymap.set('n', '<Space>fF', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>fw', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
