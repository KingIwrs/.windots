vim.keymap.set('n', '<leader>td', function() vim.cmd('TodoTelescope') end)

return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = { }
}
