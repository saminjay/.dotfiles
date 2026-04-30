return {
    -- {
    --     -- TODO: Convert it to native nvim configuration
    --     -- Main LSP Configuration
    --     "neovim/nvim-lspconfig",
    --     event = "BufReadPre",
    --     config = function()
    --
    --         local servers = {
    --             bashls = {},
    --             clangd = {},
    --             cssls = {},
    --             cssmodules_ls = {},
    --             dockerls = {},
    --             eslint = {},
    --             gopls = {},
    --             html = {},
    --             jsonls = {},
    --             lemminx = {},
    --             lua_ls = {},
    --             marksman = {},
    --             pyright = {},
    --             tailwindcss = {},
    --             taplo = {
    --                 -- INFO: this is required for taplo LSP to work in non-git repositories
    --                 root_dir = require("lspconfig.util").root_pattern(
    --                     "*.toml",
    --                     ".git"
    --                 ),
    --             },
    --             ts_ls = {},
    --         }
    --
    --         local ensure_installed = vim.tbl_keys(servers)
    --         require("mason-tool-installer").setup({
    --             ensure_installed = ensure_installed,
    --         })
    --
    --         require("mason-lspconfig").setup({
    --             handlers = {
    --                 function(server_name)
    --                     local server = servers[server_name] or {}
    --                     -- This handles overriding only values explicitly passed
    --                     -- by the server configuration above. Useful when disabling
    --                     -- certain features of an LSP (for example, turning off formatting for tsserver)
    --                     server.capabilities = vim.tbl_deep_extend(
    --                         "force",
    --                         {},
    --                         capabilities,
    --                         server.capabilities or {}
    --                     )
    --                     require("lspconfig")[server_name].setup(server)
    --                 end,
    --             },
    --         })
    --
    --         require("lspconfig.ui.windows").default_options = {
    --             border = _border,
    --         }
    --     end,
    -- },
    -- -- INFO: Dependencies
    {
        "mason-org/mason.nvim",
        lazy = true,
        opts = {
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        event = "VeryLazy",
        config = function()
            local ensure_installed = {
                "bashls",
                "clangd",
                "css_variables",
                "cssls",
                "cssmodules_ls",
                "dockerls",
                -- "eslint",
                "gopls",
                "html",
                "jsonls",
                "lemminx",
                "lua_ls",
                "marksman",
                "pyright",
                -- "tailwindcss",
                "taplo",
                "ts_ls",
            }
            require("mason-tool-installer").setup({
                ensure_installed = ensure_installed,
            })
        end,
    },
}
