return {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        require("noice").setup({
            lsp = {
                -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
                override = {
                    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
                    ["vim.lsp.util.stylize_markdown"] = true,
                    ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
                },

                hover = { enabled = false },     -- stops Noice from fucking up the hovers
                signature = { enabled = false }, -- stops Noice from auto showing the hover thingy while typing
            },
            messages = {
                enabled = false, -- this is fine
            },

            -- you can enable a preset for easier configuration
            presets = {
                inc_rename = true, -- enables an input dialog for inc-rename.nvim
            },
        })
    end,
}
