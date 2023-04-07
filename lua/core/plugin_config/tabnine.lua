require("lazy").setup({
  { 'codota/tabnine-nvim', build = "./dl_binaries.sh" }
})

local tabnine = require('tabnine')

tabnine.setup({
  disable_auto_comment = true,
  accept_kaymap = "<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt" }
})
