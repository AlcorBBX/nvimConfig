require("prettier").setup({
  bin = 'prettierd',
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
    "sass",
    "lua",
    "vim"
  }
})


vim.keymap.set('n', '<Space>p', ':Prettier<CR>')

