-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- save file
vim.keymap.set('n', '<leader>w', ':Prettier<CR>:w<CR>')
-- exit nvim
vim.keymap.set('n', '<Space>q', ':q<CR>')

--toggle lazy git
vim.keymap.set('n', '<Space>gg', ':LazyGit<CR>')
-- toggle lazy git config
vim.keymap.set('n', '<Space>gc', ':LazyGitConfig<CR>')
-- vim.keymap.set('n', '<Space>ggf', ':LazyGitCurrentFile<CR>')
-- vim.keymap.set('n', '<Space>ggl', ':LazyGitFilter<CR>')
-- vim.keymap.set('n', '<Space>ggcl', ':LazyGitFilterCurrentFile<CR>')
