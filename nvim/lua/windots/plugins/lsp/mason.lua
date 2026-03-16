return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            -- list of servers for mason to install
            ensure_installed = {
                "spyglassmc_language_server",
                "clangd",
                "pyright",
                "lua_ls",
                "html",
                "ts_ls",
                "eslint",
                "cssls",
                "jsonls",
                "jdtls",
                "slangd",
            },
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗",
                        },
                    },
                },
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "pylint",
                "eslint_d",
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
}
