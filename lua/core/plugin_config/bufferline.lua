require("bufferline").setup({

})

vim.keymap.set('n', ']b', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '[b', ':BufferLineCyclePrev<CR>')
