require("bufferline").setup({
  options = {
    separator_style = 'slant',
  }
})

vim.keymap.set('n', ']b', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '[b', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<Space>cv<CR>', ':BufferLinePickClose<CR>')
