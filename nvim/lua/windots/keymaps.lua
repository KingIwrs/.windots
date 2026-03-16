-- leader key
vim.g.mapleader = ' '

local km = vim.keymap -- for conciseness

km.set('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- Terminal
km.set('t', '<esc><esc>', '<C-\\><C-n>', { desc = 'Return to normal mode in terminal' })

-- window management
km.set('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })     -- split window vertically
km.set('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })   -- split window horizontally
km.set('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' })      -- make split windows equal width & height
km.set('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' }) -- close current split window

-- Window navigation
-- terminal mode
km.set('t', '<A-C-h>', '<C-\\><C-N><C-w>h', { desc = 'Move dir' })
km.set('t', '<A-C-j>', '<C-\\><C-N><C-w>j', { desc = 'Move dir' })
km.set('t', '<A-C-k>', '<C-\\><C-N><C-w>k', { desc = 'Move dir' })
km.set('t', '<A-C-l>', '<C-\\><C-N><C-w>l', { desc = 'Move dir' })
-- insert mode
km.set('i', '<A-C-h>', '<C-\\><C-N><C-w>h', { desc = 'Move dir' })
km.set('i', '<A-C-j>', '<C-\\><C-N><C-w>j', { desc = 'Move dir' })
km.set('i', '<A-C-k>', '<C-\\><C-N><C-w>k', { desc = 'Move dir' })
km.set('i', '<A-C-l>', '<C-\\><C-N><C-w>l', { desc = 'Move dir' })
-- normal mode
km.set('n', '<A-C-h>', '<C-w>h', { desc = 'Move dir' })
km.set('n', '<A-C-j>', '<C-w>j', { desc = 'Move dir' })
km.set('n', '<A-C-k>', '<C-w>k', { desc = 'Move dir' })
km.set('n', '<A-C-l>', '<C-w>l', { desc = 'Move dir' })

-- save, quit, etc.
km.set('n', '<leader>o', ':update<CR>:source<CR>')
km.set('n', '<leader>w', ':write<CR>')
km.set('n', '<leader>W', ':wall<CR>')
km.set('n', '<leader>q', ':quit<CR>')
km.set('n', '<leader>Q', ':quit!<CR>')

km.set('n', '<leader>lf', vim.lsp.buf.format)

km.set('n', '<leader>rn', ':IncRename ')
