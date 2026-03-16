return {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
        require('nightfox').setup({
            options = {
                transparent = true
            }
        })
        -- load the colorscheme
        vim.cmd([[colorscheme carbonfox]])
        vim.cmd([[:highlight pmenu guibg=none]])
        vim.opt.winborder = "rounded"
    end
}
