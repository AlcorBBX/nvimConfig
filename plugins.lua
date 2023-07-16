local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "ahmedkhalf/project.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope.nvim",
        event = "Bufenter",
        cmd = { "Telescope" },
      },
    },
    config = function()
      local project = require "project_nvim"
      project.setup {
        -- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
        detection_methods = { "pattern" },
        -- patterns used to detect root dir, when **"pattern"** is in detection_methods
        patterns = { ".git", "Makefile", "package.json" },
      }
      local telescope = require "telescope"
      telescope.load_extension "projects"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    -- commit = "40c31fdde93bcd85aeb3447bb3e2a3208395a868",
    event = "Bufenter",
    cmd = { "Telescope" },
    dependencies = {
      {
        "ahmedkhalf/project.nvim",
        -- commit = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "windwp/nvim-ts-autotag",
    },
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  { "kevinhwang91/nvim-ufo" },
  { "windwp/nvim-autopairs" },
  {
    -- like TODO HACK WARNING FIX
    "folke/todo-comments.nvim",
    lazy = false,
  },
  {
    -- Neovim plugin to improve the default vim.ui interfaces
    "stevearc/dressing.nvim",
    lazy = false,
  },
  {
    -- metrics, insights, and time tracking automatically generated from your programming activity
    "wakatime/vim-wakatime",
    lazy = false,
  },
  {
    "numToStr/Comment.nvim",
    dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
    config = function()
      require("Comment").setup {
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "stephenway/postcss.vim" },
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },
  -- RUST
  {
    "saecki/crates.nvim",
    ft = { "toml" },
    config = function(_, opts)
      local crates = require "crates"
      crates.setup(opts)
      require("cmp").setup.buffer {
        sources = { { name = "crates" } },
      }
      crates.show()
      require("core.utils").load_mappings "crates"
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  -- RUST
  --
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
