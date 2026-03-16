return {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', function() builtin.find_files({ path_display = { 'truncate' } }) end,
            { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', function() builtin.live_grep({ path_display = { 'truncate' } }) end,
            { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope show keymaps' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
}
