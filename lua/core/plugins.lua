local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  'wbthomason/packer.nvim',
  {
    'dracula/vim',
    lazy = false,
  },
  -- "codota/tabnine-nvim",

  'nvim-lualine/lualine.nvim',
  'nvim-lua/plenary.nvim',
  'onsails/lspkind-nvim',

  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp', -- Completion

  'folke/todo-comments.nvim',

  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',

  'neovim/nvim-lspconfig',           -- LSP
  'jose-elias-alvarez/null-ls.nvim', -- Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  'glepnir/lspsaga.nvim', -- LSP UIs
  'L3MON4D3/LuaSnip',

  'kyazdani42/nvim-web-devicons', -- File icons
  'nvim-telescope/telescope.nvim',
  'nvim-telescope/telescope-file-browser.nvim',
  'windwp/nvim-autopairs',
  'windwp/nvim-ts-autotag',
  'numToStr/Comment.nvim',
  'norcalli/nvim-colorizer.lua',
  'folke/zen-mode.nvim',
  "iamcco/markdown-preview.nvim",
  -- 'github/copilot.vim'
  'lewis6991/gitsigns.nvim',
  'dinhhuy258/git.nvim', -- For git blame & browse

  'HerringtonDarkholme/yats.vim',

  'akinsho/bufferline.nvim',
  'kdheepak/lazygit.nvim',
  'MunifTanjim/prettier.nvim',
  'folke/which-key.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-treesitter/nvim-treesitter',
  'bluz71/vim-nightfly-colors',
  'christoomey/vim-tmux-navigator',

  'rust-lang/rust.vim',
  -- 'neoclide/coc.nvim',
  'dense-analysis/ale',
  'simrat39/rust-tools.nvim'

}

local opts = {}

require("lazy").setup(plugins, opts)
