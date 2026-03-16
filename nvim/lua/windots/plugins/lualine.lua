return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local lualine = require("lualine")
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count

        -- configure lualine with modified theme
        lualine.setup({
            options = {
                theme = "horizon",
                component_separators = { left = '|', right = '|'},
            },
            sections = {
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {
                    {
                        'filename',
                        file_status = true,
                        path = 1,
                        shorting_target = 40,
                    }
                },
                lualine_x = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                        color = { fg = "#ff9e64" },
                    },
                    {"encoding"},
                    {"fileformat"},
                    {"filetype"},
                },
            },
        })
    end,
}
