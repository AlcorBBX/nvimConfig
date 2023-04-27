local zenMode = require("zen-mode")

zenMode.setup({})

vim.keymap.set('n', 'zZ', '<cmd>ZenMode<cr>', { silent = true })
