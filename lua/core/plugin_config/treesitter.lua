require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "toml",
    "fish",
    -- "yaml",
    -- "javascript",
    "lua",
    -- "typescript",
    "vim",
    -- "html"
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  autotag = {
    enable = true
  },
  indent = {
    enable = true,
    disable = {},
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = {"javascript", "typescript.tsx"}
