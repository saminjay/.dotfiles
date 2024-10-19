return {
    {
        -- Main LSP Configuration
        'neovim/nvim-lspconfig',
        event = "BufReadPre",
        config = function()
            -- INFO: LSP keymaps
            vim.api.nvim_create_autocmd('LspAttach', {
                group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
                callback = function(e)
                    local opts = { buffer = e.buf }
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
                    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
                    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
                    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
                    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, opts)

                    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
                    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
                    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

                    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
                end,
            })

            -- INFO: LSP config
            local cmp_lsp = require("cmp_nvim_lsp")
            local capabilities = vim.tbl_deep_extend(
                "force",
                {},
                vim.lsp.protocol.make_client_capabilities(),
                cmp_lsp.default_capabilities()
            )

            local servers = {
                lua_ls = {},
                gopls = {},
                ts_ls = {},
                cssls = {},
                html = {},
                clangd = {},
                bashls = {},
                marksman = {},
                jsonls = {},
                pyright = {},
                taplo = {
                    -- IMPORTANT: this is required for taplo LSP to work in non-git repositories
                    root_dir = require('lspconfig.util').root_pattern('*.toml', '.git'),
                },
            }

            local ensure_installed = vim.tbl_keys(servers)
            require('mason-tool-installer').setup({ ensure_installed = ensure_installed })

            require("mason-lspconfig").setup({
                handlers = {
                    function(server_name)
                        local server = servers[server_name] or {}
                        -- This handles overriding only values explicitly passed
                        -- by the server configuration above. Useful when disabling
                        -- certain features of an LSP (for example, turning off formatting for tsserver)
                        server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                        require('lspconfig')[server_name].setup(server)
                    end,
                }
            })

            -- INFO: Diagnostics
            vim.diagnostic.config({
                -- update_in_insert = true,
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = true,
                    header = "",
                    prefix = "",
                },
            })

            -- Borders
            local _border = "rounded"

            vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
                vim.lsp.handlers.hover, {
                    border = _border
                }
            )

            vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
                vim.lsp.handlers.signature_help, {
                    border = _border
                }
            )

            vim.diagnostic.config {
                float = { border = _border }
            }

            require('lspconfig.ui.windows').default_options = {
                border = _border
            }
        end,
    },
    -- INFO: Dependencies
    {
        'williamboman/mason.nvim',
        lazy = true,
        opts = {
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                },
            },
        },
    },
    {
        'williamboman/mason-lspconfig.nvim',
        lazy = true,
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        lazy = true,
    },
    {
        -- Allows extra capabilities provided by nvim-cmp
        'hrsh7th/cmp-nvim-lsp',
        lazy = true,
    },
}
