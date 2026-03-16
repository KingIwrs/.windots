return {
    "stevearc/oil.nvim",
    dependencies = {"nvim-tree/nvim-web-devicons"},
    config = function()
        local oil = require("oil")
        local actions = require("oil.actions")

        oil.setup({
            view_options = {
                show_hidden = true,
            },
            float = {
                padding = 5,
                max_height = 0.8,
                max_width = 0.8,
                border = "rounded",
            },
            keymaps = {
                ["<C-s>"] = { "actions.select", opts = { vertical = true } },
                ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
                ["<C-t>"] = { "actions.select", opts = { tab = true } },
                ["_"]     = { "actions.open_cwd", mode = "n" },
            }
        })

        vim.keymap.set('n', '<Leader>cc', function()
            actions.copy_entry_path.callback()
            vim.fn.setreg("+", vim.fn.getreg(vim.v.register))
        end)
        vim.keymap.set('n', '<Leader>ee', oil.toggle_float, {})
        vim.keymap.set('n', '<Leader>eo', function() actions.open_external.callback() end)
        vim.keymap.set('n', '<Leader>td', function() actions.open_terminal.callback() end)

        -- makes the floating window have a transparent background
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    end
}
