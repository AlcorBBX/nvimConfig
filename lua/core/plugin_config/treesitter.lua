require 'nvim-treesitter.configs'.setup {
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
    "rust",
    -- "html"
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  context_commentstring = {
    enable = true
  },
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
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
