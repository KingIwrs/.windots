vim.cmd("au BufRead,BufNewFile *.mcfunction setfiletype mcfunction")

vim.o.number = true         -- add line numbers
vim.o.relativenumber = true -- make line numbers relative
vim.o.wrap = false          -- make it not wrap
vim.o.tabstop = 4           -- number of columns occupied by a tab
vim.o.shiftwidth = 4        -- width for autoindents
vim.o.softtabstop = 4       -- see multiple spaces as tabstops so <BS> does the right thing
vim.o.signcolumn = 'yes'    -- adds some space at the side so it doesn't keep going back and forth when something shows up there
vim.o.expandtab = true      -- converts tabs to white space
vim.o.swapfile = false      -- disable creating swap file
vim.o.backupdir = vim.fn.stdpath('config') .. "/.cache/vim" -- Directory to store backup files.
