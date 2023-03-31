return {
  "nvim-treesitter/nvim-treesitter",
  require 'nvim-treesitter.configs'.setup {
    autotag = {
      enable = true
    }
  },
  -- opts = {
  --   autoClosingTags = {
  --     enable = true,
  --   }
  -- ensure_installed = { "lua" },
  -- },
}
