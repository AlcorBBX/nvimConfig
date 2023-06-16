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
  
## Configure neovim
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
  Open file tree (nvim-tree): `Space + e`</br>
  Hide/show config files: `H`
  
  ### Comment
  Comment line: `Space + /`</br>
  
  ### Telescope
  Find file in this directory: `Space + f + f`</br>
  Find projects: `Space + f + p`</br>
  Find text in this directory: `Space + f + t`</br>
  Find buffers: `Space + f + b` 
  
  ### Bufferline
  Next buffer: `L`</br>
  Prev buffer: `R`</br>
  Close buffer: `Q`
  
  ## LSP
  Lsp finder: `g + d`</br>
  Lsp hover info: `K`</br>
  Lsp code action: `Space + l + a`</br>
  Lsp rename: `Space + l + r` </br>
  LSP replace mode: `Space + l + R` </br>
  
  ## Lazygit
  Toggle lazygit: `Space + g + g`</br>
  Toggle lazygit config: `Space + g + c`
  
  ## Splits buffers
  Vertical splits: `Ctrl + w + v`</br>
  Horizontal splits: `Ctrl + w + s`</br>
  Horizontal buffer navigation: `Ctrl + l/j`</br>
  Vertical buffer navigation: `Ctrl + j/k`</br>
  Toggle window keymaps: `Ctrl + w`</br>

## 
Show cmp window: `ctrl + space`
