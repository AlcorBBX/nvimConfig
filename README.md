# nvimConfig

## Before installing
1. Install ![Node](https://nodejs.org/en)
2. Install ![LazyGit](https://github.com/jesseduffield/lazygit) - git ui toggle terminal (<Space>gg) (Optional!)
3. Install ![ripgrep](https://github.com/BurntSushi/ripgrep) - live grep telescope search (<Space>fw) (Optional!)
4. Install NerdFont (https://www.nerdfonts.com/font-downloads) (Optional!)

## Download
  1. Donwload ![neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)
  2. Put this config in .../.config/nvim/
  3. Open your terminal and write `nvim`
  4. After opened nvim, write this command `:Lazy`
  
## Configure novim
  You can configure your neovim. 
  1. Open `.../.config/nvim/lua/core`. 
  2. Then open `plugins.lua`
  3. Add plugins inside `local plugins` (`"author/repo-name"`) 
  
  #### Example: `"nvim-tree/nvim-tree.lua"`).
  
  4. Add file in `.../.config/nvim/lua/core/plugin_config` (`[pluginName.lua]` 
  
  #### Example file name: `nvim-tree.lua`.
  
  5. Then write inside this file `require("[pluginName]".setup({[options]}))`.
  
  #### Example: `require("nvim-tree").setup({view = {adaptive_size = true}))`
  
  If you want add keymap write `vim.kaymap.set('n', 'keymap', '[command]')` (idk what is 'n')
  
  #### Exaple: `vim.kaymap.set('n', '<Space>e', ':NvimTreeFindFileToggle<CR>')`

  6. Add new plugin file in `init.lua` (`require("core.plugin_config.[pluginName]") `)
  Example: `require("core_plugin_config.nvim-tree")`

## Keymaps
  Save file: `Space + w`</br>
  Exit neovim: `Space + q`
  
  ### Nvim-tree
  Open file tree (nvim-tree): `Space + e`
  
  ### Comment
  Comment line: `g + c + c`
  
  ### Telescope
  Find file in this directory: `Space + f + f`</br>
  Find file in all directorys: `Space + f + F`</br>
  Find word in this directory: `Space + f + w`</br>
  Find plugins help: `Space + f + h` 
  
  ### Bufferline
  Next buffer: `] + b`</br>
  Prev buffer: `[ + b`
  
  ## LSP
  Lsp finder: `g + d`</br>
  Lsp hover docs: `K`</br>
  Lsp code action: `Space + c + a`</br>
  Lsp rename: `Space + r + n`
  
  ## Lazygit
  Toggle lazygit: `Space + g + g`</br>
  Toggle lazygit config: `Space + g + c`
