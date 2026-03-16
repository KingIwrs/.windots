return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    event = { "BufReadPre", "BufNewFile" },
    build = ':TSUpdate',
    config = function()
        local treesitter = require('nvim-treesitter.configs')

        treesitter.setup {
            modules = {}, -- it complains without this, among other things...

            highlight = { enable = true },
            indent = { enable = true },

            sync_install = false,
            ignore_install = {},

            auto_install = true,
            ensure_installed = {
                'lua',
                'python',
                'c',
                'cpp',
                'vim',
                'vimdoc',
                'regex',
                'bash',
                'query',
                'markdown',
                'markdown_inline',
                "json",
                "javascript",
                "yaml",
                "html",
                "css",
                "dockerfile",
                "gitignore",
            },
        }

        vim.treesitter.language.register("bash", "zsh")
    end,
}
