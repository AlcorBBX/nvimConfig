# nvimConfig

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
