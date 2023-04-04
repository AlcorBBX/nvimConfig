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
  'ellisonleao/gruvbox.nvim',
  {
    'dracula/vim',
    lazy = false,
  },

  'nvim-lualine/lualine.nvim',
  'nvim-lua/plenary.nvim',
  'onsails/lspkind-nvim',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp', -- Completion

  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',

   'neovim/nvim-lspconfig', -- LSP
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
  -- { 
    'numToStr/Comment.nvim',
  --   requires = {
  --     'JoosepAlviste/nvim-ts-context-commentstring'
  --   }
  -- },
 'norcalli/nvim-colorizer.lua',
 'folke/zen-mode.nvim',
  -- ({
    "iamcco/markdown-preview.nvim",
    -- run = function() vim.fn["mkdp#util#install"]() end,
  -- })
  -- 'github/copilot.vim'
  -- 'akinsho/nvim-bufferline.lua',
 'lewis6991/gitsigns.nvim',
 'dinhhuy258/git.nvim', -- For git blame & browse


 

  'HerringtonDarkholme/yats.vim',
  -- 'windwp/nvim-ts-autotag',
  -- 'windwp/nvim-autopairs',
  'akinsho/bufferline.nvim',
  -- 'numToStr/Comment.nvim',
  'kdheepak/lazygit.nvim',
  'MunifTanjim/prettier.nvim',
  -- 'jose-elias-alvarez/null-ls.nvim',
  'folke/which-key.nvim',
  -- 'onsails/lspkind.nvim',

  'nvim-tree/nvim-tree.lua',
  -- 'nvim-tree/nvim-web-devicons',
  
  'nvim-treesitter/nvim-treesitter',
  'bluz71/vim-nightfly-colors',
  -- 'vim-test/vim-test',
  -- 'lewis6991/gitsigns.nvim',
  -- 'preservim/vimux',
  'christoomey/vim-tmux-navigator',
  -- 'tpope/vim-fugitive',
  -- completion
  -- 'hrsh7th/nvim-cmp',
  -- 'hrsh7th/cmp-nvim-lsp',
  -- 'L3MON4D3/LuaSnip',
  -- 'saadparwaiz1/cmp_luasnip',
  -- "rafamadriz/friendly-snippets",
  -- "github/copilot.vim",
  -- "williamboman/mason.nvim",
  -- "neovim/nvim-lspconfig",
  -- "williamboman/mason-lspconfig.nvim",
  -- "glepnir/lspsaga.nvim",
  -- {
	--   'nvim-telescope/telescope.nvim',
	--   tag = '0.1.0',
	--   dependencies = { {'nvim-lua/plenary.nvim'} }
  -- }
}

local opts = {}

require("lazy").setup(plugins, opts)
